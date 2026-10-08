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
use serde::Deserialize;
use std::{collections::HashMap, env, fs, io};

// ==========================================
// 1. DATA STRUCTURES (Matching your JSON)
// ==========================================
// ==========================================
// 2. APP STATE & VIRTUAL MACHINE
// ==========================================
use crate::TraceContext;
use std::collections::VecDeque;
#[derive(PartialEq, Clone, Copy)]
pub enum ActiveView {
    Stack,
    Params,
    Account(usize), // Index into vmem.accounts
}
#[derive(Clone)]
pub struct MemRegion {
    pub name: String,
    pub vm_start: u64,
    pub data: Vec<u8>,
}

pub struct VirtualMemory {
    pub stack: MemRegion,
    pub params: MemRegion,
    pub accounts: Vec<MemRegion>,
    pub ix_data_offset: usize,
}

impl VirtualMemory {
    pub fn new(ctx: &TraceContext) -> Self {
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
            params: MemRegion {
                name: "Params & IX Data".into(),
                vm_start: ctx.param_vm_addr,
                data: ctx.param_bytes.clone(),
            },
            accounts,
            ix_data_offset: ctx.ix_data_offset,
        }
    }

    /// Routes memory events to the correct buffer
    pub fn apply(&mut self, m: &MemTrace) {
        if m.op != "store" {
            return;
        }
        let addr = m.vm_addr;
        let le = m.value.to_le_bytes();

        // 1. Check Stack
        if addr >= self.stack.vm_start && addr < self.stack.vm_start + self.stack.data.len() as u64
        {
            let off = (addr - self.stack.vm_start) as usize;
            for i in 0..(m.size as usize) {
                if off + i < self.stack.data.len() {
                    self.stack.data[off + i] = le[i];
                }
            }
            return;
        }

        // 2. Check Params
        if addr >= self.params.vm_start
            && addr < self.params.vm_start + self.params.data.len() as u64
        {
            let off = (addr - self.params.vm_start) as usize;
            for i in 0..(m.size as usize) {
                if off + i < self.params.data.len() {
                    self.params.data[off + i] = le[i];
                }
            }
            return;
        }

        // 3. Check Accounts
        for acc in &mut self.accounts {
            if addr >= acc.vm_start && addr < acc.vm_start + acc.data.len() as u64 {
                let off = (addr - acc.vm_start) as usize;
                for i in 0..(m.size as usize) {
                    if off + i < acc.data.len() {
                        acc.data[off + i] = le[i];
                    }
                }
                return;
            }
        }
    }
}

pub struct App {
    pub trace_data: Output,
    pub trace_ctx: TraceContext, // ADD THIS: Needed to rebuild memory on backward steps
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
}

impl App {
    fn new(mut trace_data: Output) -> Self {
        let trace_ctx = trace_data.trace_context.take().unwrap();
        let insns = trace_data.insn_trace.take().unwrap_or_default();
        let mems = trace_data.mem_trace.take().unwrap_or_default();
        let syss = trace_data.syscall_trace.take().unwrap_or_default();

        // ... (Keep your existing Queue building logic here) ...
        // Build Queues for 1-to-1 chronological pairing
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
        };
        app.update_registers_forward();
        app
    }

    fn update_registers_forward(&mut self) {
        if let Some(insn) = self.current_insn() {
            if (insn.dst as usize) < 11 {
                self.registers[insn.dst as usize] = insn.dst_val_after;
            }
        }
    }
    // Call this when pressing 'n' (Next)
    pub fn next(&mut self) {
        if let Some(insns) = &self.trace_data.insn_trace {
            if self.insn_index < insns.len().saturating_sub(1) {
                self.insn_index += 1;
                self.update_registers_forward();

                // Apply ONLY the new memory events for this step
                if let Some(indices) = self.step_mem_indices.get(self.insn_index) {
                    for &idx in indices {
                        self.vmem.apply(&self.mem_trace[idx]);
                    }
                }
                self.list_state.select(Some(self.insn_index));
            }
        }
    }

    // Call this when pressing 'p' (Previous)
    pub fn previous(&mut self) {
        if self.insn_index > 0 {
            self.insn_index -= 1;
            self.recalculate_registers();

            // Rebuild memory from scratch (Safest way to time-travel backward)
            self.vmem = VirtualMemory::new(&self.trace_ctx);
            for i in 0..=self.insn_index {
                if let Some(indices) = self.step_mem_indices.get(i) {
                    for &idx in indices {
                        self.vmem.apply(&self.mem_trace[idx]);
                    }
                }
            }
            self.list_state.select(Some(self.insn_index));
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
// 3. MAIN & TERMINAL SETUP
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
                        app.active_view = match app.active_view {
                            ActiveView::Stack => ActiveView::Params,
                            ActiveView::Params => {
                                if app.vmem.accounts.is_empty() {
                                    ActiveView::Stack
                                } else {
                                    ActiveView::Account(0)
                                }
                            }
                            ActiveView::Account(idx) => {
                                if idx + 1 < app.vmem.accounts.len() {
                                    ActiveView::Account(idx + 1)
                                } else {
                                    ActiveView::Stack
                                }
                            }
                        };
                        app.mem_scroll = 0; // Reset scroll when switching tabs
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
                    KeyCode::Char('g') => {
                        app.insn_index = 0;
                        app.list_state.select(Some(0));
                        app.recalculate_registers();
                    }
                    KeyCode::Char('G') => {
                        if let Some(insns) = &app.trace_data.insn_trace {
                            if !insns.is_empty() {
                                app.insn_index = insns.len() - 1;
                                app.list_state.select(Some(app.insn_index));
                                app.recalculate_registers();
                            }
                        }
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
        Span::raw(" | "),
        Span::raw(format!("CUs: {}", app.trace_data.compute_units_consumed)),
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
    let empty_insns: Vec<InsnTrace> = vec![];
    let insns = app
        .trace_data
        .insn_trace
        .as_ref()
        .map_or(&empty_insns, |v| v);

    // 1. Disassembly (Smart Formatting)
    let items: Vec<ListItem> = insns
        .iter()
        .map(|insn| {
            let mut spans = vec![
                Span::raw(format!("{:05} ", insn.pc)),
                Span::styled(
                    format!("{:<12}", insn.opcode_name),
                    Style::default().fg(Color::Cyan),
                ),
            ];

            // Smart formatting based on instruction type
            if insn.category == "jump" {
                // Show Branch Taken status and Target
                if let Some(taken) = insn.branch_taken {
                    let (symbol, color) = if taken {
                        ("✔", Color::Green)
                    } else {
                        ("✘", Color::Red)
                    };
                    spans.push(Span::styled(
                        format!(" [{}] ", symbol),
                        Style::default().fg(color),
                    ));
                    if let Some(target) = insn.branch_target {
                        spans.push(Span::styled(
                            format!("-> {:05}", target),
                            Style::default().fg(Color::Yellow),
                        ));
                    }
                } else {
                    spans.push(Span::raw(" (Unconditional)"));
                }
            } else if insn.opcode_name.starts_with("LD_") {
                // LOAD: reg[dst] = mem[reg[src] + off]
                spans.push(Span::styled(
                    format!("r{} = ", insn.dst),
                    Style::default().fg(Color::Green),
                ));
                spans.push(Span::raw(format!("mem[r{} + {}]", insn.src, insn.off)));
            } else if insn.opcode_name.starts_with("ST_") {
                // STORE: mem[reg[dst] + off] = reg[src]
                spans.push(Span::raw(format!("mem[r{} + {}] = ", insn.dst, insn.off)));
                spans.push(Span::styled(
                    format!("r{}", insn.src),
                    Style::default().fg(Color::Red),
                ));
            } else {
                // ALU / Call (Standard format)
                spans.push(Span::raw(format!(
                    "dst:r{} src:r{} imm:{}",
                    insn.dst, insn.src, insn.imm
                )));
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
    let (current_buf, current_base, title) = match app.active_view {
        ActiveView::Stack => (&app.vmem.stack.data, app.vmem.stack.vm_start, "STACK"),
        ActiveView::Params => (
            &app.vmem.params.data,
            app.vmem.params.vm_start,
            "PARAMS & IX DATA",
        ),
        ActiveView::Account(idx) => (
            &app.vmem.accounts[idx].data,
            app.vmem.accounts[idx].vm_start,
            app.vmem.accounts[idx].name.as_str(),
        ),
    };

    app.mem_scroll &= !15; // Align to 16-byte rows
    let max_scroll = current_buf.len().saturating_sub(visible_rows * 16);
    if app.mem_scroll > max_scroll {
        app.mem_scroll = max_scroll;
    }

    let start = app.mem_scroll;
    let end = std::cmp::min(start + visible_rows * 16, current_buf.len());

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
        Span::styled(" Params ", tab_style(app.active_view == ActiveView::Params)),
        Span::raw(" | "),
        Span::styled(
            " Accounts ",
            tab_style(matches!(app.active_view, ActiveView::Account(_))),
        ),
        // In ui(), replace the existing tab hint span:
        Span::styled(
            "  [Tab] switch | [j/k] scroll mem | [n/p] step",
            Style::default().fg(Color::DarkGray),
        ),
    ]));
    lines.push(Line::from(""));

    // Status Line
    match cur_event {
        Some(m) => {
            let in_view =
                m.vm_addr >= current_base && m.vm_addr < current_base + current_buf.len() as u64;
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

                // Base styling
                let mut style = if b == 0 {
                    Style::default().fg(Color::DarkGray)
                } else {
                    Style::default()
                };

                // AUDITOR TRICK: Highlight Instruction Data in the Params tab!
                if app.active_view == ActiveView::Params && byte_offset >= app.vmem.ix_data_offset {
                    style = style
                        .fg(Color::Black)
                        .bg(Color::Cyan)
                        .add_modifier(Modifier::BOLD);
                }

                // Live Step Highlighting (Red for Write, Blue for Read)
                if let Some(m) = cur_event {
                    if addr >= m.vm_addr && addr < m.vm_addr + m.size as u64 {
                        style = if m.op == "store" {
                            Style::default()
                                .fg(Color::Black)
                                .bg(Color::Red)
                                .add_modifier(Modifier::BOLD)
                        } else {
                            Style::default()
                                .fg(Color::Black)
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
