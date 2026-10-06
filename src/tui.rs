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

struct App {
    trace_data: Output,
    insn_index: usize,
    registers: [u64; 11], // r0 to r10
    mem_events_by_pc: HashMap<u64, Vec<MemTrace>>,
    sys_events_by_pc: HashMap<u64, Vec<SyscallTrace>>,
    should_quit: bool,
    list_state: ListState,
}

impl App {
    fn new(mut trace_data: Output) -> Self {
        // 1. Take ownership of the Option<Vec> without cloning.
        // .take() replaces the Option with None and gives us the Vec.
        let mems = trace_data.mem_trace.take().unwrap_or_default();
        let syss = trace_data.syscall_trace.take().unwrap_or_default();
        let insns = trace_data.insn_trace.take().unwrap_or_default();

        // 2. Build the HashMaps by consuming the vectors
        let mut mem_events_by_pc: HashMap<u64, Vec<MemTrace>> = HashMap::new();
        for m in mems {
            mem_events_by_pc.entry(m.pc).or_default().push(m);
        }

        let mut sys_events_by_pc: HashMap<u64, Vec<SyscallTrace>> = HashMap::new();
        for s in syss {
            sys_events_by_pc.entry(s.pc).or_default().push(s);
        }

        // 3. Put the instructions back into trace_data so it remains valid
        trace_data.insn_trace = Some(insns);

        // 4. Initialize list state
        let mut list_state = ListState::default();
        if !trace_data
            .insn_trace
            .as_ref()
            .map_or(true, |v| v.is_empty())
        {
            list_state.select(Some(0));
        }

        // 5. Construct the App
        let mut app = Self {
            trace_data,
            insn_index: 0,
            registers: [0; 11],
            mem_events_by_pc,
            sys_events_by_pc,
            should_quit: false,
            list_state,
        };

        // 6. Initialize registers based on the first instruction
        app.update_registers_forward();

        app
    }

    fn current_insn(&self) -> Option<&InsnTrace> {
        self.trace_data.insn_trace.as_ref()?.get(self.insn_index)
    }

    fn update_registers_forward(&mut self) {
        if let Some(insn) = self.current_insn() {
            if (insn.dst as usize) < 11 {
                self.registers[insn.dst as usize] = insn.dst_val_after;
            }
        }
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

    fn next(&mut self) {
        if let Some(insns) = &self.trace_data.insn_trace {
            if self.insn_index < insns.len() - 1 {
                self.insn_index += 1;
                self.list_state.select(Some(self.insn_index));
                self.update_registers_forward();
            }
        }
    }

    fn previous(&mut self) {
        if self.insn_index > 0 {
            self.insn_index -= 1;
            self.list_state.select(Some(self.insn_index));
            self.recalculate_registers();
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
                    KeyCode::Char('q') => app.should_quit = true,
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

    let items: Vec<ListItem> = insns
        .iter()
        .map(|insn| {
            let content = Line::from(vec![
                Span::raw(format!("{:05} ", insn.pc)),
                Span::styled(
                    format!("{:<12}", insn.opcode_name),
                    Style::default().fg(Color::Cyan),
                ),
                Span::raw(format!(
                    "dst:r{} src:r{} imm:{}",
                    insn.dst, insn.src, insn.imm
                )),
            ]);
            ListItem::new(content)
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

    // --- BOTTOM SPLIT (Memory + Syscalls) ---
    let bottom_chunks = Layout::default()
        .direction(Direction::Horizontal)
        .constraints([Constraint::Percentage(50), Constraint::Percentage(50)])
        .split(chunks[2]);

    // 3. Memory Events
    let mut mem_lines = vec![];
    if let Some(insn) = current_insn {
        if let Some(mems) = app.mem_events_by_pc.get(&insn.pc) {
            for m in mems {
                let op_color = if m.op == "store" {
                    Color::Red
                } else {
                    Color::Blue
                };
                mem_lines.push(Line::from(vec![
                    Span::styled(
                        format!("[{}] ", m.op.to_uppercase()),
                        Style::default().fg(op_color).add_modifier(Modifier::BOLD),
                    ),
                    Span::raw(format!("{} bytes @ 0x{:X}", m.size, m.vm_addr)),
                ]));
                if let Some(acc) = m.account_idx {
                    mem_lines.push(Line::from(Span::raw(format!(
                        "  -> Acc #{}, Offset: {}",
                        acc,
                        m.account_offset.unwrap_or(0)
                    ))));
                }
                mem_lines.push(Line::from(Span::raw(format!(
                    "  Val: 0x{:X} ({})",
                    m.value, m.value
                ))));
            }
        }
    }
    if mem_lines.is_empty() {
        mem_lines.push(Line::from("No memory events for this PC."));
    }
    let mem_widget = Paragraph::new(mem_lines)
        .block(
            Block::default()
                .borders(Borders::ALL)
                .title("Memory Side-Effects"),
        )
        .wrap(Wrap { trim: true });
    f.render_widget(mem_widget, bottom_chunks[0]);

    // 4. Syscall Events
    let mut sys_lines = vec![];
    if let Some(insn) = current_insn {
        if let Some(syss) = app.sys_events_by_pc.get(&insn.pc) {
            for s in syss {
                sys_lines.push(Line::from(vec![
                    Span::styled(
                        "[SYSCALL] ",
                        Style::default()
                            .fg(Color::Yellow)
                            .add_modifier(Modifier::BOLD),
                    ),
                    Span::raw(format!("{} (Depth: {})", s.name, s.call_depth)),
                ]));
                sys_lines.push(Line::from(Span::raw(format!("  Args: {:?}", s.args))));
                sys_lines.push(Line::from(Span::raw(format!("  Result: {}", s.result))));
            }
        }
    }
    if sys_lines.is_empty() {
        sys_lines.push(Line::from("No syscalls for this PC."));
    }

    let sys_widget = Paragraph::new(sys_lines)
        .block(
            Block::default()
                .borders(Borders::ALL)
                .title("Syscall Side-Effects"),
        )
        .wrap(Wrap { trim: true });
    f.render_widget(sys_widget, bottom_chunks[1]);
}
