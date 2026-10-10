use crate::TraceContext;
use crate::{InsnTrace, MemTrace, Output, SyscallTrace};
use anyhow::Result;
use crossterm::{
    event::{self, DisableMouseCapture, EnableMouseCapture, Event, KeyCode, KeyEventKind},
    execute,
    terminal::{EnterAlternateScreen, LeaveAlternateScreen, disable_raw_mode, enable_raw_mode},
};
use ratatui::{
    Frame, Terminal,
    backend::CrosstermBackend,
    layout::{Constraint, Direction, Layout},
    style::{Color, Modifier, Style},
    text::{Line, Span},
    widgets::{Block, Borders, List, ListItem, ListState, Paragraph, Row, Table, Wrap},
};
use std::{
    collections::{HashMap, VecDeque},
    io,
};
// ==========================================
//  APP STATE & VIRTUAL MACHINE
// ==========================================
#[derive(PartialEq, Clone, Copy)]
pub enum ActiveView {
    Stack,
    IxData,
    RawInput,
    Account(usize),
}

#[derive(Clone)]
pub struct MemRegion {
    pub name: String,
    pub vm_start: u64,
    pub data: Vec<u8>,
}
pub struct VirtualMemory {
    pub stack: MemRegion,
    pub input: MemRegion,
    pub accounts: Vec<MemRegion>,
    pub ix_data_offset: usize,
    pub ix_data_len: usize,
    pub program_id_offset: usize,
}

impl VirtualMemory {
    pub fn new(ctx: &TraceContext) -> Self {
        let base = ctx.param_vm_addr; // 17179869184 (0x400000000)
        // Helper: Converts Absolute VM Address -> Buffer-Relative Index
        let to_relative = |addr: usize| -> usize {
            if (addr as u64) >= base {
                addr - base as usize
            } else {
                addr // Fallback if it's already relative
            }
        };

        let accounts = ctx
            .accounts
            .iter()
            .map(|acc| MemRegion {
                name: format!(
                    "Acc #{} {}",
                    acc.idx,
                    if acc.is_writable { "(W)" } else { "(R)" }
                ),
                vm_start: acc.vm_start,
                data: acc.initial_data.clone(),
            })
            .collect();
        Self {
            stack: MemRegion {
                name: "Stack".into(),
                vm_start: ctx.stack_base,
                data: vec![0; ctx.stack_size],
            },
            input: MemRegion {
                name: "Input".into(),
                vm_start: base,
                data: ctx.param_bytes.clone(),
            },
            accounts,
            ix_data_offset: to_relative(ctx.ix_data_offset),
            ix_data_len: ctx.ix_data_len,
            program_id_offset: to_relative(ctx.program_id_offset),
        }
    }

    pub fn apply(&mut self, m: &MemTrace) {
        if m.op != "store" {
            return;
        }
        let addr = m.vm_addr;
        let le = m.value.to_le_bytes();
        let n = m.size.min(8) as usize;

        // 1. Stack
        if addr >= self.stack.vm_start && addr < self.stack.vm_start + self.stack.data.len() as u64
        {
            let off = (addr - self.stack.vm_start) as usize;
            for i in 0..n {
                if off + i < self.stack.data.len() {
                    self.stack.data[off + i] = le[i];
                }
            }
            return;
        }

        // 2. Account windows and input OVERLAP (inline serialization):
        //    mirror the write into both so Raw Input and Account tabs agree.
        for acc in self.accounts.iter_mut() {
            if addr >= acc.vm_start && addr < acc.vm_start + acc.data.len() as u64 {
                let off = (addr - acc.vm_start) as usize;
                for i in 0..n {
                    if off + i < acc.data.len() {
                        acc.data[off + i] = le[i];
                    }
                }
                break;
            }
        }

        // 3. Input (the whole serialized blob)
        if addr >= self.input.vm_start && addr < self.input.vm_start + self.input.data.len() as u64
        {
            let off = (addr - self.input.vm_start) as usize;
            for i in 0..n {
                if off + i < self.input.data.len() {
                    self.input.data[off + i] = le[i];
                }
            }
        }
    }
}

pub struct App {
    pub trace_data: Output,
    pub trace_ctx: TraceContext,
    pub insn_index: usize,
    pub registers: [u64; 11],
    pub mem_trace: Vec<MemTrace>,
    pub sys_trace: Vec<SyscallTrace>,
    pub step_mem_indices: Vec<Vec<usize>>,
    pub step_sys_indices: Vec<Vec<usize>>,
    pub should_quit: bool,
    pub list_state: ListState,
    pub vmem: VirtualMemory,
    pub active_view: ActiveView,
    pub mem_scroll: usize,
    pub mem_viewport_rows: usize,
    pub flow_rows: Vec<u64>,            // unique PCs, first-seen (flow) order
    pub pc_to_row: HashMap<u64, usize>, // pc -> display row
    pub first_idx: Vec<usize>,          // row -> first trace idx (for static desc)
    pub latest_exec: Vec<Option<usize>>, // row -> latest executed step <= current
    pub exec_counts: Vec<u32>,          // row -> executions so far
}

impl App {
    fn new(mut trace_data: Output) -> Self {
        let trace_ctx = trace_data.trace_context.take().unwrap();
        let insns = trace_data.insn_trace.take().unwrap_or_default();
        let mems = trace_data.mem_trace.take().unwrap_or_default();
        let syss = trace_data.syscall_trace.take().unwrap_or_default();

        let mut mem_q: HashMap<u64, VecDeque<usize>> = HashMap::new();
        for (i, m) in mems.iter().enumerate() {
            mem_q.entry(m.pc).or_default().push_back(i);
        }

        let mut sys_q: HashMap<u64, VecDeque<usize>> = HashMap::new();
        for (i, s) in syss.iter().enumerate() {
            sys_q.entry(s.pc).or_default().push_back(i);
        }

        let mut step_mem_indices = Vec::with_capacity(insns.len());
        let mut step_sys_indices = Vec::with_capacity(insns.len());

        for insn in &insns {
            let mut m_indices = Vec::new();
            if let Some(q) = mem_q.get_mut(&insn.pc) {
                if let Some(idx) = q.pop_front() {
                    m_indices.push(idx);
                }
            }
            step_mem_indices.push(m_indices);

            let mut s_indices = Vec::new();
            if let Some(q) = sys_q.get_mut(&insn.pc) {
                if let Some(idx) = q.pop_front() {
                    s_indices.push(idx);
                }
            }
            step_sys_indices.push(s_indices);
        }
        let mut flow_rows: Vec<u64> = Vec::new();
        let mut pc_to_row: HashMap<u64, usize> = HashMap::new();
        let mut first_idx: Vec<usize> = Vec::new();
        for (i, insn) in insns.iter().enumerate() {
            if !pc_to_row.contains_key(&insn.pc) {
                pc_to_row.insert(insn.pc, flow_rows.len());
                flow_rows.push(insn.pc);
                first_idx.push(i);
            }
        }
        let latest_exec = vec![None; flow_rows.len()];
        let exec_counts = vec![0u32; flow_rows.len()];
        trace_data.insn_trace = Some(insns);

        let mut list_state = ListState::default();
        if !trace_data
            .insn_trace
            .as_ref()
            .map_or(true, |v| v.is_empty())
        {
            list_state.select(Some(0));
        }

        // INITIALIZE THE NEW FIELDS
        let vmem = VirtualMemory::new(&trace_ctx);

        let mut app = Self {
            trace_data,
            trace_ctx, // Save context
            insn_index: 0,
            registers: [0; 11],
            mem_trace: mems,
            sys_trace: syss,
            step_mem_indices,
            step_sys_indices,
            should_quit: false,
            list_state,
            vmem,
            active_view: ActiveView::Stack, // Default to Stack
            mem_scroll: 0,
            mem_viewport_rows: 0,
            exec_counts,
            first_idx,
            flow_rows,
            latest_exec,
            pc_to_row,
        };
        app.update_registers_forward();
        app.rebuild_flow();
        app
    }
    /// O(n) rescan — backward steps and seeks only
    pub fn rebuild_flow(&mut self) {
        for r in self.latest_exec.iter_mut() {
            *r = None;
        }
        for c in self.exec_counts.iter_mut() {
            *c = 0;
        }
        if let Some(insns) = &self.trace_data.insn_trace {
            for s in 0..=self.insn_index.min(insns.len().saturating_sub(1)) {
                if let Some(&r) = self.pc_to_row.get(&insns[s].pc) {
                    self.latest_exec[r] = Some(s);
                    self.exec_counts[r] += 1;
                }
            }
        }
    }

    /// O(1) — after a single forward step
    fn flow_step_forward(&mut self) {
        if let Some(insn) = self.current_insn() {
            if let Some(&r) = self.pc_to_row.get(&insn.pc) {
                self.latest_exec[r] = Some(self.insn_index);
                self.exec_counts[r] += 1;
            }
        }
    }

    /// Central jump helper
    pub fn seek(&mut self, idx: usize) {
        let len = self
            .trace_data
            .insn_trace
            .as_ref()
            .map(|v| v.len())
            .unwrap_or(0);
        if idx < len {
            self.insn_index = idx;
            self.recalculate_registers();
            self.vmem = VirtualMemory::new(&self.trace_ctx);
            for i in 0..=self.insn_index {
                if let Some(indices) = self.step_mem_indices.get(i) {
                    for &mi in indices {
                        self.vmem.apply(&self.mem_trace[mi]);
                    }
                }
            }
            self.rebuild_flow();
            if let Some(pc) = self.current_insn().map(|i| i.pc) {
                self.list_state
                    .select(Some(self.pc_to_row.get(&pc).copied().unwrap_or(0)));
            }
        }
    }
    fn view_spec(&self) -> (usize, usize, usize, String, bool) {
        match self.active_view {
            ActiveView::Stack => (
                0,
                0,
                self.vmem.stack.data.len(),
                format!(
                    "STACK @0x{:X} ({} B)",
                    self.vmem.stack.vm_start,
                    self.vmem.stack.data.len()
                ),
                false,
            ),
            ActiveView::IxData => (
                1,
                self.vmem.ix_data_offset,
                self.vmem.ix_data_len,
                format!(
                    "IX DATA @0x{:X} ({} B)",
                    self.vmem.input.vm_start + self.vmem.ix_data_offset as u64,
                    self.vmem.ix_data_len
                ),
                false,
            ),
            ActiveView::RawInput => (
                1,
                0,
                self.vmem.input.data.len(),
                format!(
                    "RAW INPUT @0x{:X} ({} B) [r to collapse]",
                    self.vmem.input.vm_start,
                    self.vmem.input.data.len()
                ),
                false,
            ),
            ActiveView::Account(i) => match self.vmem.accounts.get(i) {
                Some(w) => (
                    2 + i,          // region index (0=stack, 1=input, 2+=accounts)
                    0,              // start offset (always 0 for the MemRegion buffer)
                    w.data.len(),   // length of the account data
                    w.name.clone(), // title (e.g., "Acc #0 (W)")
                    false,          // dim_ro flag (false = normal rendering)
                ),
                None => (0, 0, 0, "no accounts".into(), false),
            },
        }
    }
    fn update_registers_forward(&mut self) {
        if let Some(insn) = self.current_insn() {
            if (insn.dst as usize) < 11 {
                self.registers[insn.dst as usize] = insn.dst_val_after;
            }
        }
    }
    pub fn next(&mut self) {
        // Extract length first — ends the immutable borrow immediately
        let len = self
            .trace_data
            .insn_trace
            .as_ref()
            .map(|v| v.len())
            .unwrap_or(0);

        if self.insn_index < len.saturating_sub(1) {
            self.insn_index += 1;
            self.update_registers_forward();

            if let Some(indices) = self.step_mem_indices.get(self.insn_index) {
                for &idx in indices {
                    self.vmem.apply(&self.mem_trace[idx]);
                }
            }

            self.flow_step_forward();

            // Re-borrow immutably for just the PC lookup
            let pc = self.trace_data.insn_trace.as_ref().unwrap()[self.insn_index].pc;
            self.list_state
                .select(Some(self.pc_to_row.get(&pc).copied().unwrap_or(0)));
        }
    }

    pub fn previous(&mut self) {
        if self.insn_index > 0 {
            let target = self.insn_index - 1;
            self.seek(target);
        }
    }
    fn current_insn(&self) -> Option<&InsnTrace> {
        self.trace_data.insn_trace.as_ref()?.get(self.insn_index)
    }
    fn recalculate_registers(&mut self) {
        self.registers = [0; 11];
        if let Some(insns) = &self.trace_data.insn_trace {
            for i in 0..=self.insn_index {
                let insn = &insns[i];
                if (insn.dst as usize) < 11 {
                    self.registers[insn.dst as usize] = insn.dst_val_after;
                }
            }
        }
    }
}
// ==========================================
//  MAIN & TERMINAL SETUP
// ==========================================
/// Launches the interactive Ratatui TUI debugger directly from the Output struct.
/// No JSON serialization/deserialization needed — data flows straight from the VM.
pub fn launch_tui(output: Output) -> Result<()> {
    // Convert Option<Vec<...>> into the flat TraceData the TUI expects

    // Validate that we actually have instruction data to display
    /*
        if output.insn_trace.as_ref().map_or(true, |v| v.is_empty()) {
            return Err(anyhow!(
                "No instruction trace data available. \
                 Re-run with --trace-program <PUBKEY> --trace-insn call,jump,alu"
            ));
        }
    */
    // Setup terminal
    enable_raw_mode()?;
    let mut stdout = io::stdout();
    execute!(stdout, EnterAlternateScreen, EnableMouseCapture)?;
    let backend = CrosstermBackend::new(stdout);
    let mut terminal = Terminal::new(backend)?;

    // Create app and run event loop
    //
    let mut app = App::new(output);
    let res = run_app(&mut terminal, &mut app);

    // Restore terminal
    disable_raw_mode()?;
    execute!(
        terminal.backend_mut(),
        LeaveAlternateScreen,
        DisableMouseCapture
    )?;
    terminal.show_cursor()?;

    if let Err(err) = res {
        eprintln!("TUI error: {:?}", err);
    }

    Ok(())
}
fn run_app<B: ratatui::backend::Backend>(
    terminal: &mut Terminal<B>,
    app: &mut App,
) -> io::Result<()> {
    loop {
        terminal.draw(|f| ui(f, app))?;

        if let Event::Key(key) = event::read()? {
            if key.kind == KeyEventKind::Press {
                match key.code {
                    KeyCode::Char('s') => {
                        // Force view to Stack
                        app.active_view = ActiveView::Stack;
                        app.mem_scroll = 0; // Reset first

                        let sp = app.registers[10]; // r10 = frame/stack pointer
                        let stack_base = app.vmem.stack.vm_start;
                        let len = app.vmem.stack.data.len() as u64;
                        // If SP is within our tracked stack bounds, center it on the screen
                        if sp >= stack_base && sp < stack_base + len {
                            let offset = (sp - stack_base) as usize;
                            // center SP: half the visible window, in bytes (16 bytes per row)
                            let half_window = app.mem_viewport_rows.saturating_mul(16) / 2;
                            app.mem_scroll = offset.saturating_sub(half_window) & !15; // keep row-aligned
                        }
                    }
                    KeyCode::Tab => {
                        app.mem_scroll = 0;
                        app.active_view = match app.active_view {
                            ActiveView::Stack => ActiveView::IxData,
                            ActiveView::IxData | ActiveView::RawInput => {
                                if app.vmem.accounts.is_empty() {
                                    ActiveView::Stack
                                } else {
                                    ActiveView::Account(0)
                                }
                            }
                            ActiveView::Account(i) => {
                                if i + 1 < app.vmem.accounts.len() {
                                    ActiveView::Account(i + 1)
                                } else {
                                    ActiveView::Stack
                                }
                            }
                        };
                    }
                    KeyCode::Char('r') => {
                        app.mem_scroll = 0;
                        app.active_view = match app.active_view {
                            ActiveView::IxData => ActiveView::RawInput,
                            _ => ActiveView::IxData,
                        };
                    }

                    KeyCode::Char('q') => app.should_quit = true,
                    KeyCode::Char('j') | KeyCode::PageDown => {
                        // Scroll memory view DOWN (16 bytes = 1 row)
                        app.mem_scroll = app.mem_scroll.saturating_add(16);
                    }
                    KeyCode::Char('k') | KeyCode::PageUp => {
                        // Scroll memory view UP (16 bytes = 1 row)
                        app.mem_scroll = app.mem_scroll.saturating_sub(16);
                    }
                    KeyCode::Char('n') | KeyCode::Down => app.next(),
                    KeyCode::Char('p') | KeyCode::Up => app.previous(),
                    KeyCode::Char('g') => app.seek(0),
                    KeyCode::Char('G') => {
                        let last = app
                            .trace_data
                            .insn_trace
                            .as_ref()
                            .map(|v| v.len().saturating_sub(1))
                            .unwrap_or(0);
                        app.seek(last);
                    }

                    _ => {}
                }
            }
        }

        if app.should_quit {
            return Ok(());
        }
    }
}
// ==========================================
// 4. UI RENDERING
// ==========================================
fn signed_off_str(value: i16) -> String {
    if value < 0 {
        format!("-{:#x}", -(value as isize))
    } else {
        format!("+{value:#x}")
    }
}
/// Dynamic annotation column: the live values for ONE executed instruction.
/// Shared by the trace view and the flow view.
fn annotate_spans(insn: &InsnTrace) -> Vec<Span> {
    let dim = Style::default().fg(Color::DarkGray);
    // Fix 1: effective address = base register + signed offset
    let eff = |base: u64| base.wrapping_add(insn.off as i64 as u64);

    let mut spans: Vec<Span> = Vec::new();
    match insn.category {
        // if your field is String, use insn.category.as_str()
        "alu" => {
            // only signal when the value actually changed
            if insn.dst_val_before != insn.dst_val_after {
                spans.push(Span::styled(format!("{:#018x}", insn.dst_val_before), dim));
                spans.push(Span::styled(" → ", dim));
                spans.push(Span::styled(
                    format!("{:#018x}", insn.dst_val_after),
                    Style::default()
                        .fg(Color::Green)
                        .add_modifier(Modifier::BOLD),
                ));
            }
            // reg-reg ops: show the source operand's value
            // (is_imm == true covers IMM variants AND unary ops: neg/le/be)
            if !insn.is_imm && insn.src != insn.dst {
                spans.push(Span::styled(
                    format!("   r{}={:#x}", insn.src, insn.src_val),
                    dim,
                ));
            }
        }

        "load" => {
            if insn.opcode_name == "lddw" {
                // lddw is an IMMEDIATE load — it touches NO memory.
                // Showing [addr] here would be a lie; show the reg mutation only.
                if insn.dst_val_before != insn.dst_val_after {
                    spans.push(Span::styled(format!("{:#018x}", insn.dst_val_before), dim));
                    spans.push(Span::styled(" → ", dim));
                    spans.push(Span::styled(
                        format!("{:#018x}", insn.dst_val_after),
                        Style::default()
                            .fg(Color::Green)
                            .add_modifier(Modifier::BOLD),
                    ));
                }
            } else {
                // real memory read: [effective address] → loaded value
                spans.push(Span::styled(format!("[{:#x}]", eff(insn.src_val)), dim));
                spans.push(Span::styled(" → ", dim));
                spans.push(Span::styled(
                    format!("{:#018x}", insn.dst_val_after),
                    Style::default()
                        .fg(Color::Cyan)
                        .add_modifier(Modifier::BOLD),
                ));
            }
        }

        "store" => {
            // imm stores write insn.imm; reg stores write insn.src_val
            let written = if insn.is_imm {
                format!("{:#x}", insn.imm)
            } else {
                format!("{:#018x}", insn.src_val)
            };
            spans.push(Span::styled(
                written,
                Style::default()
                    .fg(Color::Yellow)
                    .add_modifier(Modifier::BOLD),
            ));
            spans.push(Span::styled(" → ", dim));
            // real memory write: value → [effective address]
            spans.push(Span::styled(
                format!("[{:#x}]", eff(insn.dst_val_before)),
                dim,
            ));
        }

        "jump" => {
            // Fix 2: verdict ONLY for conditional jumps
            if insn.opcode_name != "ja" {
                match insn.branch_taken {
                    Some(true) => spans.push(Span::styled(
                        "✔ ",
                        Style::default()
                            .fg(Color::Green)
                            .add_modifier(Modifier::BOLD),
                    )),
                    Some(false) => spans.push(Span::styled(
                        "✘ ",
                        Style::default().fg(Color::Red).add_modifier(Modifier::BOLD),
                    )),
                    None => {}
                }
                // the operands that drove the decision
                spans.push(Span::styled(
                    format!("r{}={:#x}", insn.dst, insn.dst_val_before),
                    dim,
                ));
                if !insn.is_imm {
                    spans.push(Span::styled(
                        format!("  r{}={:#x}", insn.src, insn.src_val),
                        dim,
                    ));
                }
            } else if let Some(t) = insn.branch_target {
                // unconditional: no verdict, just where it goes
                spans.push(Span::styled(
                    format!("→ {:#x}", t),
                    Style::default()
                        .fg(Color::LightBlue)
                        .add_modifier(Modifier::BOLD),
                ));
            }
        }

        "call" => {
            if insn.opcode_name == "exit" {
                // exit lives in the call category — show the return value
                spans.push(Span::styled(
                    format!("r0={:#018x}", insn.dst_val_before),
                    Style::default()
                        .fg(Color::Yellow)
                        .add_modifier(Modifier::BOLD),
                ));
            } else {
                spans.push(Span::styled(
                    format!("fn@{:#x}", insn.function_pc),
                    Style::default().fg(Color::Magenta),
                ));
                spans.push(Span::styled(format!("  depth={}", insn.call_depth), dim));
            }
        }

        _ => {}
    }
    spans
}
fn ui(f: &mut Frame, app: &mut App) {
    let chunks = Layout::default()
        .direction(Direction::Vertical)
        .constraints([
            Constraint::Length(3),
            Constraint::Min(10),
            Constraint::Length(12),
        ])
        .split(f.area());

    // --- HEADER ---
    let status_str = if app.trace_data.success {
        "SUCCESS"
    } else {
        "FAILED"
    };
    let status_color = if app.trace_data.success {
        Color::Green
    } else {
        Color::Red
    };

    // Extract first 8 bytes of Program ID for the header
    let pid_str = app
        .vmem
        .input
        .data
        .get(app.vmem.program_id_offset..app.vmem.program_id_offset + 32)
        .map(|b| {
            bs58::encode(b)
                .into_string()
                .chars()
                .take(8)
                .collect::<String>()
        })
        .unwrap_or_else(|| "unknown".into());
    let header_text = Line::from(vec![
        Span::raw("SBPF Time-Travel Debugger | "),
        Span::styled(
            format!(
                "Step: {}/{}",
                app.insn_index + 1,
                app.trace_data.insn_trace.as_ref().map_or(0, |v| v.len())
            ),
            Style::default()
                .fg(Color::Yellow)
                .add_modifier(Modifier::BOLD),
        ),
        Span::raw(format!(
            " | CUs: {} | ",
            app.trace_data.compute_units_consumed
        )),
        Span::styled(
            format!("Prog: …{} ", pid_str),
            Style::default().fg(Color::Magenta),
        ), // ADD THIS
        Span::raw(" | Status: "),
        Span::styled(
            status_str,
            Style::default()
                .fg(status_color)
                .add_modifier(Modifier::BOLD),
        ),
    ]);
    let header = Paragraph::new(header_text)
        .block(Block::default().borders(Borders::ALL).title("Trace Info"));
    f.render_widget(header, chunks[0]);

    // --- MAIN SPLIT (Disassembly + Registers) ---
    let main_chunks = Layout::default()
        .direction(Direction::Horizontal)
        .constraints([Constraint::Percentage(70), Constraint::Percentage(30)])
        .split(chunks[1]);

    // 1. Disassembly
    /*
    let empty_insns: Vec<InsnTrace> = vec![];
    let insns = app
        .trace_data
        .insn_trace
        .as_ref()
        .map_or(&empty_insns, |v| v);
    let empty_descs: Vec<String> = vec![];
    */

    // ── Build deduplicated view ──────────────────────────────────────────────
    // unique_pcs: ordered by first execution — shows control flow as it was
    // actually taken, not static address order. Loops collapse to one row,
    // untaken branches stay dimmed.
    // pc_to_row:  PC → index in the display list
    // row_to_trace_idx: display row → current trace index for that PC
    //             (updated each step so annotations always show current values)

    let descs = app
        .trace_data
        .insn_desc
        .as_ref()
        .cloned()
        .unwrap_or_default();
    let insns_rc = app.trace_data.insn_trace.as_ref(); // or restructure borrows; clone is fine once/frame

    let items: Vec<ListItem> = app
        .flow_rows
        .iter()
        .enumerate()
        .map(|(row, &pc)| {
            let desc = descs
                .get(app.first_idx[row])
                .map(|s| s.as_str())
                .unwrap_or("");
            let reached = app.latest_exec[row].is_some();
            let mut spans = vec![
                if app.exec_counts[row] > 1 {
                    Span::styled(
                        format!("×{:<3} ", app.exec_counts[row]),
                        Style::default().fg(Color::Magenta),
                    )
                } else {
                    Span::styled("     ", Style::default())
                },
                Span::styled(format!("{:05} ", pc), Style::default().fg(Color::DarkGray)),
                Span::styled(
                    format!("{:<40}", desc),
                    if reached {
                        Style::default().fg(Color::White)
                    } else {
                        Style::default().fg(Color::DarkGray)
                    },
                ),
                Span::styled("│ ", Style::default().fg(Color::DarkGray)),
            ];
            if let Some(s) = app.latest_exec[row] {
                if let Some(insn) = insns_rc.as_ref().and_then(|v| v.get(s)) {
                    spans.extend(annotate_spans(insn)); // your existing category match, extracted once
                }
            }
            ListItem::new(Line::from(spans))
        })
        .collect();

    let disassembly = List::new(items)
        .block(
            Block::default()
                .borders(Borders::ALL)
                .title("Disassembly (n/p to step, q to quit)"),
        )
        .highlight_style(
            Style::default()
                .bg(Color::DarkGray)
                .add_modifier(Modifier::BOLD),
        );

    f.render_stateful_widget(disassembly, main_chunks[0], &mut app.list_state);

    // 2. Registers
    let current_insn = app.current_insn();
    let reg_rows: Vec<Row> = app
        .registers
        .iter()
        .enumerate()
        .map(|(i, &val)| {
            let mut style = Style::default();
            if let Some(insn) = current_insn {
                if insn.dst as usize == i {
                    style = Style::default()
                        .fg(Color::Green)
                        .add_modifier(Modifier::BOLD);
                }
            }
            Row::new(vec![
                format!("r{}", i),
                format!("0x{:016X}", val),
                format!("{}", val),
            ])
            .style(style)
        })
        .collect();

    let registers = Table::new(
        reg_rows,
        [
            Constraint::Length(4),
            Constraint::Length(18),
            Constraint::Min(10),
        ],
    )
    .block(Block::default().borders(Borders::ALL).title("Registers"))
    .header(
        Row::new(vec!["Reg", "Hex", "Decimal"])
            .style(Style::default().add_modifier(Modifier::BOLD)),
    );

    f.render_widget(registers, main_chunks[1]);
    // --- BOTTOM SPLIT (Live Hex Dump + Syscalls) ---
    let bottom_chunks = Layout::default()
        .direction(Direction::Horizontal)
        .constraints([Constraint::Percentage(60), Constraint::Percentage(40)])
        .split(chunks[2]);
    // --- BOTTOM LEFT: STACK & INPUT INSPECTOR ---
    let mem_area = bottom_chunks[0];

    // Subtract 6 for: Top border, Bottom border, Tabs line, Empty line, Status line, Empty line
    let visible_rows = mem_area.height.saturating_sub(6) as usize;
    app.mem_viewport_rows = visible_rows;

    // 1. Resolve current buffer based on Active Tab
    // 1. Resolve current buffer AND the specific window we are allowed to scroll within
    let (current_buf, current_base, title, view_start, view_len) = match app.active_view {
        ActiveView::Stack => (
            &app.vmem.stack.data,
            app.vmem.stack.vm_start,
            "STACK".to_string(),
            0,
            app.vmem.stack.data.len(),
        ),
        ActiveView::IxData => (
            &app.vmem.input.data,
            app.vmem.input.vm_start,
            "IX DATA".to_string(),
            app.vmem.ix_data_offset,
            app.vmem.ix_data_len, // ONLY SCROLL WITHIN IX DATA
        ),
        ActiveView::RawInput => (
            &app.vmem.input.data,
            app.vmem.input.vm_start,
            "RAW INPUT [r to collapse]".to_string(),
            0,
            app.vmem.input.data.len(),
        ),
        ActiveView::Account(idx) => {
            let acc = &app.vmem.accounts[idx];
            (&acc.data, acc.vm_start, acc.name.clone(), 0, acc.data.len())
        }
    };
    app.mem_scroll &= !15; // Align to 16-byte rows

    // FIX 1: Max scroll must be based on the VIEW length, not the entire buffer length!
    let max_scroll = view_len.saturating_sub(visible_rows * 16);
    if app.mem_scroll > max_scroll {
        app.mem_scroll = max_scroll;
    }

    // FIX 2: Apply view_start offset here, and DO NOT overwrite it below!
    let start = view_start + app.mem_scroll;
    let end = std::cmp::min(start + visible_rows * 16, view_start + view_len);

    // 2. Get current step's memory event for live highlighting
    let cur_event = app
        .step_mem_indices
        .get(app.insn_index)
        .and_then(|v| v.first())
        .map(|&i| &app.mem_trace[i]);

    let mut lines: Vec<Line> = vec![];

    // Render Tabs Header
    let tab_style = |active: bool| {
        if active {
            Style::default()
                .fg(Color::Yellow)
                .add_modifier(Modifier::BOLD | Modifier::UNDERLINED)
        } else {
            Style::default().fg(Color::DarkGray)
        }
    };
    lines.push(Line::from(vec![
        Span::styled(" Stack ", tab_style(app.active_view == ActiveView::Stack)),
        Span::raw(" | "),
        Span::styled(
            " IX Data ",
            tab_style(app.active_view == ActiveView::IxData),
        ),
        Span::raw(" | "),
        Span::styled(" Raw ", tab_style(app.active_view == ActiveView::RawInput)),
        Span::raw(" | "),
        Span::styled(
            " Accounts ",
            tab_style(matches!(app.active_view, ActiveView::Account(_))),
        ),
        Span::styled(
            "  [Tab] switch | [r] raw/ix | [j/k] scroll | [n/p] step",
            Style::default().fg(Color::DarkGray),
        ),
    ]));
    lines.push(Line::from(""));

    // Status Line
    match cur_event {
        Some(m) => {
            // FIX 3: Check if the event is inside the specific VIEW window, not the whole buffer
            let view_vm_start = current_base + view_start as u64;
            let view_vm_end = view_vm_start + view_len as u64;
            let in_view = m.vm_addr >= view_vm_start && m.vm_addr < view_vm_end;

            let color = if m.op == "store" {
                Color::Red
            } else {
                Color::Blue
            };
            lines.push(Line::from(vec![
                Span::styled(
                    format!("[{}] ", m.op.to_uppercase()),
                    Style::default().fg(color).add_modifier(Modifier::BOLD),
                ),
                Span::raw(format!(
                    "{}B @ 0x{:X} = 0x{:X}  ",
                    m.size, m.vm_addr, m.value
                )),
                Span::styled(
                    if in_view {
                        "<- in current view"
                    } else {
                        "(in another region)"
                    },
                    Style::default().fg(if in_view {
                        Color::Green
                    } else {
                        Color::DarkGray
                    }),
                ),
            ]));
        }
        None => lines.push(Line::from(Span::styled(
            "No memory event this step.",
            Style::default().fg(Color::DarkGray),
        ))),
    }
    lines.push(Line::from(""));

    // Render Hex Dump (O(visible_rows) - Extremely Fast!)
    for i in (start..end).step_by(16) {
        let mut spans = vec![Span::styled(
            format!("0x{:09X}: ", current_base + i as u64),
            Style::default()
                .fg(Color::Cyan)
                .add_modifier(Modifier::BOLD),
        )];

        for j in 0..16 {
            if i + j < end {
                let b = current_buf[i + j];
                let addr = current_base + (i + j) as u64;
                let byte_offset = i + j;

                // 1. Base styling (dim zeros)
                let mut style = if b == 0 {
                    Style::default().fg(Color::DarkGray)
                } else {
                    Style::default()
                };

                // 2. Instruction Data Highlighting (Cyan)
                // Only applies when viewing the Raw Input or IxData buffers
                let is_ix_data =
                    matches!(app.active_view, ActiveView::RawInput | ActiveView::IxData)
                        && byte_offset >= app.vmem.ix_data_offset
                        && byte_offset < app.vmem.ix_data_offset + app.vmem.ix_data_len;

                if is_ix_data {
                    style = style
                        .fg(Color::Black)
                        .bg(Color::Cyan)
                        .add_modifier(Modifier::BOLD);
                }

                // 3. Live Step Highlighting (Red for Write, Blue for Read)
                // This is checked LAST so it overrides the Cyan background.
                // This lets you see exactly when the program reads/writes the IX data!
                if let Some(m) = cur_event {
                    if addr >= m.vm_addr && addr < m.vm_addr + m.size as u64 {
                        style = if m.op == "store" {
                            Style::default()
                                .fg(Color::White) // White on Red is much easier to read
                                .bg(Color::Red)
                                .add_modifier(Modifier::BOLD)
                        } else {
                            Style::default()
                                .fg(Color::White) // White on Blue
                                .bg(Color::Blue)
                                .add_modifier(Modifier::BOLD)
                        };
                    }
                }

                spans.push(Span::styled(format!("{:02x} ", b), style));
            } else {
                spans.push(Span::raw("   "));
            }
        }

        spans.push(Span::raw(" |"));

        // ASCII Column
        for j in 0..16 {
            if i + j < end {
                let b = current_buf[i + j];
                spans.push(Span::raw(
                    (if b.is_ascii_graphic() || b == b' ' {
                        b as char
                    } else {
                        '.'
                    })
                    .to_string(),
                ));
            }
        }

        lines.push(Line::from(spans));
    }

    let mem_widget = Paragraph::new(lines)
        .block(
            Block::default()
                .borders(Borders::ALL)
                .title(format!(" {} ", title)),
        )
        .wrap(Wrap { trim: false });
    f.render_widget(mem_widget, mem_area);
}
