use {crate::mem_pool::VmMemoryPool, std::cell::RefCell};
thread_local! {
    pub static MEMORY_POOL: RefCell<VmMemoryPool> = RefCell::new(VmMemoryPool::new());
}

pub mod tracing {
    use solana_sbpf::vm::{
        CallTraceEntry, CpiDecodeEntry, InsnTraceEntry, MemDumpResult, MemTraceEntry, RegSnapshot,
        SyscallTraceEntry, TraceConfig,
    };
    use std::cell::RefCell;

    #[derive(Debug, Default, Clone)]
    pub struct TraceResults {
        pub syscall_trace: Vec<SyscallTraceEntry>,
        pub mem_trace: Vec<MemTraceEntry>,
        pub insn_trace: Vec<InsnTraceEntry>,
        pub call_trace: Vec<CallTraceEntry>,
        pub mem_dump_results: Vec<MemDumpResult>,
        pub reg_snapshots: Vec<RegSnapshot>,
        pub cpi_decode_trace: Vec<CpiDecodeEntry>,
        pub program_elf_hashes: Vec<([u8; 32], [u8; 32])>,
    }

    thread_local! {
        static TRACE_CONFIG: RefCell<Option<TraceConfig>> = RefCell::new(None);
        static TRACE_RESULTS: RefCell<Option<TraceResults>> = RefCell::new(None);
    }

    pub fn set_trace_config(config: TraceConfig) {
        TRACE_CONFIG.with(|c| *c.borrow_mut() = Some(config));
    }

    pub fn clear_trace_config() {
        TRACE_CONFIG.with(|c| *c.borrow_mut() = None);
    }

    pub fn take_trace_results() -> Option<TraceResults> {
        TRACE_RESULTS.with(|r| r.borrow_mut().take())
    }

    pub(crate) fn apply_trace_config_to_vm<C: solana_sbpf::vm::ContextObject>(
        vm: &mut solana_sbpf::vm::EbpfVm<'_, C>,
    ) {
        TRACE_CONFIG.with(|c| {
            if let Some(config) = c.borrow().as_ref() {
                vm.trace_config = config.clone();
            }
        });
    }

    pub(crate) fn extract_traces_from_vm<C: solana_sbpf::vm::ContextObject>(
        vm: &mut solana_sbpf::vm::EbpfVm<'_, C>,
    ) {
        TRACE_CONFIG.with(|c| {
            if c.borrow().is_some() {
                TRACE_RESULTS.with(|r| {
                    let mut results = r.borrow_mut();
                    if let Some(ref mut existing) = *results {
                        existing
                            .syscall_trace
                            .extend(std::mem::take(&mut vm.syscall_trace));
                        existing.mem_trace.extend(std::mem::take(&mut vm.mem_trace));
                        existing
                            .insn_trace
                            .extend(std::mem::take(&mut vm.insn_trace));
                        existing
                            .call_trace
                            .extend(std::mem::take(&mut vm.call_trace));
                        existing
                            .mem_dump_results
                            .extend(std::mem::take(&mut vm.mem_dump_results));
                        existing
                            .reg_snapshots
                            .extend(std::mem::take(&mut vm.reg_snapshots));
                        existing
                            .cpi_decode_trace
                            .extend(std::mem::take(&mut vm.cpi_decode_trace));
                        existing.program_elf_hashes = Vec::new();
                    } else {
                        *results = Some(TraceResults {
                            syscall_trace: std::mem::take(&mut vm.syscall_trace),
                            mem_trace: std::mem::take(&mut vm.mem_trace),
                            insn_trace: std::mem::take(&mut vm.insn_trace),
                            call_trace: std::mem::take(&mut vm.call_trace),
                            mem_dump_results: std::mem::take(&mut vm.mem_dump_results),
                            reg_snapshots: std::mem::take(&mut vm.reg_snapshots),
                            cpi_decode_trace: std::mem::take(&mut vm.cpi_decode_trace),
                            program_elf_hashes: Vec::new(),
                        });
                    }
                });
            }
        });
    }
}
