#!/usr/bin/env python3
"""
Python wrapper for sbpf-interpreter CLI.

Provides a convenient interface to execute sBPF programs via the Rust
interpreter binary, with JSON-based input/output and structured trace data.

Usage:
    from sbpf_debugger import SbpfDebugger

    dbg = SbpfDebugger()

    # Basic execution
    result = dbg.execute(
        program="path/to/program.so",
        accounts="path/to/accounts.json",
        compute_units=1_400_000,
        clock_slot=300_000_000,
    )
    print(result.return_code)
    print(result.logs)

    # Syscall tracing
    result = dbg.trace_syscalls(
        program="path/to/program.so",
        accounts="path/to/accounts.json",
        trace_program="HBVw6bZtcCaezhcBrmfyXBSBRWCdv72271xQ4GPvms2z",
    )
    for sc in result.syscall_trace:
        print(f"PC={sc.pc} {sc.name}({sc.args}) -> {sc.result}")

    # Memory tracing (write-only, 8-byte, specific account)
    result = dbg.trace_memory(
        program="path/to/program.so",
        accounts="path/to/accounts.json",
        trace_program="HBVw6bZtcCaezhcBrmfyXBSBRWCdv72271xQ4GPvms2z",
        mem_write=True,
        mem_size=[8],
        mem_account=7,
    )
    for m in result.mem_trace:
        print(f"PC={m.pc} {m.op} size={m.size} addr=0x{m.vm_addr:x} val=0x{m.value:x}")

    # Instruction tracing
    result = dbg.trace_instructions(
        program="path/to/program.so",
        accounts="path/to/accounts.json",
        trace_program="HBVw6bZtcCaezhcBrmfyXBSBRWCdv72271xQ4GPvms2z",
        categories=["call", "jump"],
    )
    for insn in result.insn_trace:
        print(f"PC={insn.pc} {insn.opcode_name} depth={insn.call_depth}")
"""

from __future__ import annotations

import json
import os
import subprocess
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any, Optional


# ---------------------------------------------------------------------------
# Trace entry dataclasses (mirror Rust output structs)
# ---------------------------------------------------------------------------


@dataclass
class SyscallTraceEntry:
    """A single syscall invocation record."""

    pc: int
    name: str
    args: list[int]
    result: int
    function_pc: int
    call_depth: int

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "SyscallTraceEntry":
        return cls(
            pc=d["pc"],
            name=d["name"],
            args=d["args"],
            result=d["result"],
            function_pc=d["function_pc"],
            call_depth=d["call_depth"],
        )


@dataclass
class MemTraceEntry:
    """A single memory access record."""

    pc: int
    op: str  # "load" or "store"
    size: int
    vm_addr: int
    value: int
    account_idx: Optional[int]
    account_offset: Optional[int]
    function_pc: int
    call_depth: int

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "MemTraceEntry":
        return cls(
            pc=d["pc"],
            op=d["op"],
            size=d["size"],
            vm_addr=d["vm_addr"],
            value=d["value"],
            account_idx=d.get("account_idx"),
            account_offset=d.get("account_offset"),
            function_pc=d["function_pc"],
            call_depth=d["call_depth"],
        )


@dataclass
class InsnTraceEntry:
    """A single instruction execution record."""

    pc: int
    opcode: int
    opcode_name: str
    category: str  # "call", "jump", or "alu"
    dst: int
    src: int
    imm: int
    off: int
    dst_val_before: int
    dst_val_after: int
    src_val: int
    branch_taken: Optional[bool]
    branch_target: Optional[int]
    function_pc: int
    call_depth: int

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "InsnTraceEntry":
        return cls(
            pc=d["pc"],
            opcode=d["opcode"],
            opcode_name=d["opcode_name"],
            category=d["category"],
            dst=d["dst"],
            src=d["src"],
            imm=d["imm"],
            off=d["off"],
            dst_val_before=d["dst_val_before"],
            dst_val_after=d["dst_val_after"],
            src_val=d["src_val"],
            branch_taken=d.get("branch_taken"),
            branch_target=d.get("branch_target"),
            function_pc=d["function_pc"],
            call_depth=d["call_depth"],
        )


@dataclass
class MemDumpResult:
    pc: int
    vm_addr: int
    bytes: list[int]

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "MemDumpResult":
        return cls(pc=d["pc"], vm_addr=d["vm_addr"], bytes=d["bytes"])


@dataclass
class RegSnapshot:
    pc: int
    regs: list[int]

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "RegSnapshot":
        return cls(pc=d["pc"], regs=d["regs"])


@dataclass
class CpiDecodeEntry:
    pc: int
    program_id: str
    accounts_len: int
    data_len: int
    data_preview: str

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "CpiDecodeEntry":
        return cls(
            pc=d["pc"],
            program_id=d["program_id"],
            accounts_len=d["accounts_len"],
            data_len=d["data_len"],
            data_preview=d["data_preview"],
        )


@dataclass
class DataFlowEntry:
    pc: int
    reg: int
    value_after: int
    opcode: int
    opcode_name: str
    src_reg: Optional[int]
    src_val: Optional[int]
    function_pc: int

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "DataFlowEntry":
        return cls(
            pc=d["pc"],
            reg=d["reg"],
            value_after=d["value_after"],
            opcode=d["opcode"],
            opcode_name=d["opcode_name"],
            src_reg=d.get("src_reg"),
            src_val=d.get("src_val"),
            function_pc=d["function_pc"],
        )


@dataclass
class DiffResult:
    diverged: bool
    first_divergence_index: Optional[int]
    trace_type: Optional[str]
    baseline_entry: Optional[dict]
    actual_entry: Optional[dict]
    baseline_len: int
    actual_len: int

    @classmethod
    def from_dict(cls, d: dict[str, Any]) -> "DiffResult":
        return cls(
            diverged=d["diverged"],
            first_divergence_index=d.get("first_divergence_index"),
            trace_type=d.get("trace_type"),
            baseline_entry=d.get("baseline_entry"),
            actual_entry=d.get("actual_entry"),
            baseline_len=d.get("baseline_len", 0),
            actual_len=d.get("actual_len", 0),
        )


# ---------------------------------------------------------------------------
# Execution result
# ---------------------------------------------------------------------------


@dataclass
class ExecutionResult:
    success: bool
    return_code: int
    compute_units_consumed: int
    logs: list[str] = field(default_factory=list)
    error: Optional[str] = None
    syscall_trace: list[SyscallTraceEntry] = field(default_factory=list)
    mem_trace: list[MemTraceEntry] = field(default_factory=list)
    insn_trace: list[InsnTraceEntry] = field(default_factory=list)
    mem_dump_results: Optional[list[MemDumpResult]] = None
    reg_snapshots: Optional[list[RegSnapshot]] = None
    cpi_decode_trace: Optional[list[CpiDecodeEntry]] = None
    data_flow: Optional[list[DataFlowEntry]] = None
    diff_result: Optional[DiffResult] = None
    raw: dict[str, Any] = field(default_factory=dict)

    @classmethod
    def from_json(cls, data: dict[str, Any]) -> "ExecutionResult":
        syscall_trace = [
            SyscallTraceEntry.from_dict(e) for e in data.get("syscall_trace") or []
        ]
        mem_trace = [MemTraceEntry.from_dict(e) for e in data.get("mem_trace") or []]
        insn_trace = [InsnTraceEntry.from_dict(e) for e in data.get("insn_trace") or []]
        mem_dump_results = (
            [MemDumpResult.from_dict(e) for e in data["mem_dump_results"]]
            if "mem_dump_results" in data
            else None
        )
        reg_snapshots = (
            [RegSnapshot.from_dict(e) for e in data["reg_snapshots"]]
            if "reg_snapshots" in data
            else None
        )
        cpi_decode_trace = (
            [CpiDecodeEntry.from_dict(e) for e in data["cpi_decode_trace"]]
            if "cpi_decode_trace" in data
            else None
        )
        data_flow = (
            [DataFlowEntry.from_dict(e) for e in data["data_flow"]]
            if "data_flow" in data
            else None
        )
        diff_result = (
            DiffResult.from_dict(data["diff_result"]) if "diff_result" in data else None
        )
        return cls(
            success=data.get("success", False),
            return_code=data.get("return_code", -1),
            compute_units_consumed=data.get("compute_units_consumed", 0),
            logs=data.get("logs", []),
            error=data.get("error"),
            syscall_trace=syscall_trace,
            mem_trace=mem_trace,
            insn_trace=insn_trace,
            mem_dump_results=mem_dump_results,
            reg_snapshots=reg_snapshots,
            cpi_decode_trace=cpi_decode_trace,
            data_flow=data_flow,
            diff_result=diff_result,
            raw=data,
        )


# ---------------------------------------------------------------------------
# Main debugger class
# ---------------------------------------------------------------------------


class SbpfDebugger:
    """
    Wrapper around the sbpf-interpreter Rust CLI binary.

    The binary is located by searching:
    1. Explicit path passed to constructor
    2. SBPF_INTERPRETER_BIN environment variable
    3. ../target/debug/sbpf-interpreter (relative to this script)
    4. ../target/release/sbpf-interpreter (relative to this script)
    """

    def __init__(self, binary_path: Optional[str] = None):
        self.binary = self._resolve_binary(binary_path)
        if not os.path.isfile(self.binary):
            raise FileNotFoundError(
                f"sbpf-interpreter binary not found at {self.binary}. "
                f"Build it with: cargo build (in the project root)"
            )

    # Well-known skill directory where the pre-built binary may live.
    _SKILL_BIN_DIR = (
        Path.home() / ".config" / "Claude" / "skills" / "sbpf-trace" / "bin"
    )

    @staticmethod
    def _resolve_binary(explicit: Optional[str]) -> str:
        if explicit:
            return explicit

        env = os.environ.get("SBPF_INTERPRETER_BIN")
        if env:
            return env

        script_dir = Path(__file__).resolve().parent
        project_root = script_dir.parent

        candidates = [
            # 1. Project build outputs (dev workflow)
            project_root / "target" / "debug" / "sbpf_interpreter_",
            project_root / "target" / "release" / "sbpf_interpreter_",
            # 2. Skill directory pre-built binary (skill install)
            SbpfDebugger._SKILL_BIN_DIR / "sbpf_interpreter_",
            # 3. User local bin (manual install)
            Path.home() / ".local" / "bin" / "sbpf_interpreter_",
        ]
        for c in candidates:
            if c.is_file():
                return str(c)

        return str(candidates[0])

    def execute(
        self,
        program: str,
        accounts: str,
        *,
        instruction_data: Optional[str] = None,
        compute_units: int = 1_400_000,
        trace: bool = False,
        clock_slot: Optional[int] = None,
        clock_unix_timestamp: Optional[int] = None,
        trace_program: Optional[str] = None,
        trace_syscalls: bool = False,
        trace_mem: bool = False,
        trace_mem_read: bool = False,
        trace_mem_write: bool = False,
        trace_mem_size: Optional[list[int]] = None,
        trace_mem_offset: Optional[tuple[int, int]] = None,
        trace_mem_account: Optional[int] = None,
        trace_insn: Optional[list[str]] = None,
        dump_mem_at_pc: Optional[list[tuple[int, int, int]]] = None,
        trace_regs_at_pc: Optional[list[int]] = None,
        trace_mem_value_match: Optional[int] = None,
        trace_pc_range: Optional[tuple[int, int]] = None,
        trace_function: Optional[int] = None,
        diff_trace: Optional[str] = None,
        trace_data_flow: Optional[int] = None,
        trace_cpi_decode: bool = False,
        timeout: int = 120,
    ) -> ExecutionResult:
        """
        Execute an sBPF program and return the result.

        Args:
            program: Path to the .so ELF file
            accounts: Path to accounts JSON file (sbpf2host format)
            instruction_data: Base64-encoded instruction data (overrides JSON)
            compute_units: Compute unit limit (default 1.4M)
            trace: Enable legacy register tracing
            clock_slot: Override Clock sysvar slot
            clock_unix_timestamp: Override Clock sysvar unix_timestamp
            trace_program: Target program pubkey (REQUIRED for any trace flag)
            trace_syscalls: Trace all syscall invocations
            trace_mem: Trace memory loads and stores
            trace_mem_read: Only trace memory reads
            trace_mem_write: Only trace memory writes
            trace_mem_size: Filter by access size in bytes (e.g. [1, 4, 8])
            trace_mem_offset: Filter by account-internal offset range (start, end) in hex
            trace_mem_account: Only trace access to this account index (0-based)
            trace_insn: Trace instructions by category (["call", "jump", "alu"])
            timeout: Subprocess timeout in seconds
        """
        has_trace = trace_syscalls or trace_mem or trace_insn is not None
        if has_trace and not trace_program:
            raise ValueError(
                "--trace-program is required when using trace flags "
                "(trace_syscalls, trace_mem, trace_insn)"
            )

        cmd = [
            self.binary,
            "--program",
            str(program),
            "--accounts",
            str(accounts),
            "--compute-units",
            str(compute_units),
        ]

        if instruction_data:
            cmd.extend(["--instruction-data", instruction_data])
        if trace:
            cmd.append("--trace")
        if clock_slot is not None:
            cmd.extend(["--clock-slot", str(clock_slot)])
        if clock_unix_timestamp is not None:
            cmd.extend(["--clock-unix-timestamp", str(clock_unix_timestamp)])

        if trace_program:
            cmd.extend(["--trace-program", trace_program])
        if trace_syscalls:
            cmd.append("--trace-syscalls")
        if trace_mem:
            cmd.append("--trace-mem")
        if trace_mem_read:
            cmd.append("--trace-mem-read")
        if trace_mem_write:
            cmd.append("--trace-mem-write")
        if trace_mem_size:
            cmd.extend(["--trace-mem-size", ",".join(str(s) for s in trace_mem_size)])
        if trace_mem_offset is not None:
            start, end = trace_mem_offset
            cmd.extend(["--trace-mem-offset", f"0x{start:x},0x{end:x}"])
        if trace_mem_account is not None:
            cmd.extend(["--trace-mem-account", str(trace_mem_account)])
        if trace_insn is not None:
            cmd.extend(["--trace-insn", ",".join(trace_insn)])
        if dump_mem_at_pc:
            for pc, addr, length in dump_mem_at_pc:
                cmd.extend(["--dump-mem-at-pc", f"{pc},0x{addr:x},{length}"])
        if trace_regs_at_pc:
            cmd.extend(
                ["--trace-regs-at-pc", ",".join(str(p) for p in trace_regs_at_pc)]
            )
        if trace_mem_value_match is not None:
            cmd.extend(["--trace-mem-value-match", f"0x{trace_mem_value_match:x}"])
        if trace_pc_range:
            cmd.extend(["--trace-pc-range", f"{trace_pc_range[0]}-{trace_pc_range[1]}"])
        if trace_function is not None:
            cmd.extend(["--trace-function", str(trace_function)])
        if diff_trace:
            cmd.extend(["--diff-trace", diff_trace])
        if trace_data_flow is not None:
            cmd.extend(["--trace-data-flow", str(trace_data_flow)])
        if trace_cpi_decode:
            cmd.append("--trace-cpi-decode")

        try:
            proc = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=timeout,
            )
        except subprocess.TimeoutExpired:
            return ExecutionResult(
                success=False,
                return_code=-1,
                compute_units_consumed=0,
                error=f"Execution timed out after {timeout}s",
            )

        stdout = proc.stdout.strip()
        if not stdout:
            return ExecutionResult(
                success=False,
                return_code=proc.returncode,
                compute_units_consumed=0,
                error=proc.stderr.strip() or f"No output, exit code {proc.returncode}",
            )

        try:
            data = json.loads(stdout)
            return ExecutionResult.from_json(data)
        except json.JSONDecodeError:
            return ExecutionResult(
                success=False,
                return_code=proc.returncode,
                compute_units_consumed=0,
                error=f"Failed to parse JSON output: {stdout[:500]}",
            )

    # -------------------------------------------------------------------
    # Convenience methods
    # -------------------------------------------------------------------

    def trace_syscalls(
        self,
        program: str,
        accounts: str,
        trace_program: str,
        **kwargs,
    ) -> ExecutionResult:
        """
        Execute with syscall tracing enabled.

        Returns result with populated ``syscall_trace`` list.

        Args:
            program: Path to .so ELF file
            accounts: Path to accounts JSON
            trace_program: Target program pubkey
            **kwargs: Forwarded to ``execute()``
        """
        return self.execute(
            program,
            accounts,
            trace_program=trace_program,
            trace_syscalls=True,
            **kwargs,
        )

    def trace_memory(
        self,
        program: str,
        accounts: str,
        trace_program: str,
        *,
        mem_read: bool = False,
        mem_write: bool = False,
        mem_size: Optional[list[int]] = None,
        mem_offset: Optional[tuple[int, int]] = None,
        mem_account: Optional[int] = None,
        **kwargs,
    ) -> ExecutionResult:
        """
        Execute with memory tracing enabled.

        Returns result with populated ``mem_trace`` list.

        Args:
            program: Path to .so ELF file
            accounts: Path to accounts JSON
            trace_program: Target program pubkey
            mem_read: Only trace reads
            mem_write: Only trace writes
            mem_size: Filter by access size in bytes (e.g. [1, 4, 8])
            mem_offset: Filter by account-internal offset range (start, end)
            mem_account: Only trace this account index (0-based)
            **kwargs: Forwarded to ``execute()``
        """
        return self.execute(
            program,
            accounts,
            trace_program=trace_program,
            trace_mem=True,
            trace_mem_read=mem_read,
            trace_mem_write=mem_write,
            trace_mem_size=mem_size,
            trace_mem_offset=mem_offset,
            trace_mem_account=mem_account,
            **kwargs,
        )

    def trace_instructions(
        self,
        program: str,
        accounts: str,
        trace_program: str,
        *,
        categories: Optional[list[str]] = None,
        **kwargs,
    ) -> ExecutionResult:
        """
        Execute with instruction tracing enabled.

        Returns result with populated ``insn_trace`` list.

        Args:
            program: Path to .so ELF file
            accounts: Path to accounts JSON
            trace_program: Target program pubkey
            categories: Instruction categories to trace (["call", "jump", "alu"]).
                         Defaults to all three.
            **kwargs: Forwarded to ``execute()``
        """
        cats = categories or ["call", "jump", "alu"]
        return self.execute(
            program,
            accounts,
            trace_program=trace_program,
            trace_insn=cats,
            **kwargs,
        )

    def dump_mem_at_pc(
        self,
        program: str,
        accounts: str,
        pc: int,
        vm_addr: int,
        length: int,
        **kwargs,
    ) -> ExecutionResult:
        """
        Dump memory at a specific PC during execution.

        Returns result with populated ``mem_dump_results`` list.

        Args:
            program: Path to .so ELF file
            accounts: Path to accounts JSON
            pc: Program counter at which to dump memory
            vm_addr: VM address to dump from
            length: Number of bytes to dump
            **kwargs: Forwarded to ``execute()``
        """
        return self.execute(
            program,
            accounts,
            dump_mem_at_pc=[(pc, vm_addr, length)],
            **kwargs,
        )

    def trace_regs_at_pc(
        self,
        program: str,
        accounts: str,
        pcs: list[int],
        **kwargs,
    ) -> ExecutionResult:
        """
        Capture register snapshots at specific PCs.

        Returns result with populated ``reg_snapshots`` list.

        Args:
            program: Path to .so ELF file
            accounts: Path to accounts JSON
            pcs: List of program counters at which to snapshot registers
            **kwargs: Forwarded to ``execute()``
        """
        return self.execute(
            program,
            accounts,
            trace_regs_at_pc=pcs,
            **kwargs,
        )

    def watch_value(
        self,
        program: str,
        accounts: str,
        trace_program: str,
        hex_value: int,
        **kwargs,
    ) -> ExecutionResult:
        """
        Trace memory accesses that match a specific value.

        Returns result with populated ``mem_trace`` list filtered to matching values.

        Args:
            program: Path to .so ELF file
            accounts: Path to accounts JSON
            trace_program: Target program pubkey
            hex_value: Integer value to match in memory traces
            **kwargs: Forwarded to ``execute()``
        """
        return self.execute(
            program,
            accounts,
            trace_program=trace_program,
            trace_mem=True,
            trace_mem_value_match=hex_value,
            **kwargs,
        )

    def trace_function_only(
        self,
        program: str,
        accounts: str,
        trace_program: str,
        entry_pc: int,
        **kwargs,
    ) -> ExecutionResult:
        """
        Trace instructions only within a specific function.

        Returns result with trace entries filtered to the given function.

        Args:
            program: Path to .so ELF file
            accounts: Path to accounts JSON
            trace_program: Target program pubkey
            entry_pc: Entry PC of the function to trace
            **kwargs: Forwarded to ``execute()``
        """
        return self.execute(
            program,
            accounts,
            trace_program=trace_program,
            trace_function=entry_pc,
            **kwargs,
        )

    def decode_cpi(
        self,
        program: str,
        accounts: str,
        **kwargs,
    ) -> ExecutionResult:
        """
        Decode CPI (Cross-Program Invocation) calls during execution.

        Returns result with populated ``cpi_decode_trace`` list.

        Args:
            program: Path to .so ELF file
            accounts: Path to accounts JSON
            **kwargs: Forwarded to ``execute()``
        """
        return self.execute(
            program,
            accounts,
            trace_cpi_decode=True,
            **kwargs,
        )


# ---------------------------------------------------------------------------
# CLI entry point for quick testing
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description="Quick sBPF execution & tracing")
    parser.add_argument("--program", required=True, help="Path to .so file")
    parser.add_argument("--accounts", required=True, help="Path to accounts JSON")
    parser.add_argument("--compute-units", type=int, default=1_400_000)
    parser.add_argument("--clock-slot", type=int, default=None)
    parser.add_argument("--trace", action="store_true", help="Legacy register tracing")
    parser.add_argument(
        "--binary", default=None, help="Path to sbpf-interpreter binary"
    )

    parser.add_argument(
        "--trace-program",
        default=None,
        help="Target program pubkey (required for trace)",
    )
    parser.add_argument(
        "--trace-syscalls", action="store_true", help="Trace syscall invocations"
    )
    parser.add_argument("--trace-mem", action="store_true", help="Trace memory access")
    parser.add_argument(
        "--trace-mem-read", action="store_true", help="Only trace reads"
    )
    parser.add_argument(
        "--trace-mem-write", action="store_true", help="Only trace writes"
    )
    parser.add_argument(
        "--trace-mem-size",
        default=None,
        help="Filter by size, comma-separated (e.g. 1,4,8)",
    )
    parser.add_argument(
        "--trace-mem-offset",
        default=None,
        help="Offset range hex: start,end (e.g. 0x0,0x100)",
    )
    parser.add_argument(
        "--trace-mem-account",
        type=int,
        default=None,
        help="Only trace this account index",
    )
    parser.add_argument(
        "--trace-insn",
        default=None,
        help="Trace insn categories, comma-separated: call,jump,alu",
    )

    args = parser.parse_args()

    mem_size = None
    if args.trace_mem_size:
        mem_size = [int(s) for s in args.trace_mem_size.split(",")]

    mem_offset = None
    if args.trace_mem_offset:
        parts = args.trace_mem_offset.split(",")
        if len(parts) == 2:
            mem_offset = (
                int(parts[0].strip(), 16),
                int(parts[1].strip(), 16),
            )

    insn_cats = None
    if args.trace_insn:
        insn_cats = [c.strip() for c in args.trace_insn.split(",")]

    dbg = SbpfDebugger(binary_path=args.binary)
    result = dbg.execute(
        program=args.program,
        accounts=args.accounts,
        compute_units=args.compute_units,
        clock_slot=args.clock_slot,
        trace=args.trace,
        trace_program=args.trace_program,
        trace_syscalls=args.trace_syscalls,
        trace_mem=args.trace_mem,
        trace_mem_read=args.trace_mem_read,
        trace_mem_write=args.trace_mem_write,
        trace_mem_size=mem_size,
        trace_mem_offset=mem_offset,
        trace_mem_account=args.trace_mem_account,
        trace_insn=insn_cats,
    )

    output: dict[str, Any] = {
        "success": result.success,
        "return_code": result.return_code,
        "compute_units_consumed": result.compute_units_consumed,
        "logs": result.logs,
    }
    if result.error:
        output["error"] = result.error
    if result.syscall_trace:
        output["syscall_trace"] = [
            {
                "pc": e.pc,
                "name": e.name,
                "args": e.args,
                "result": e.result,
                "function_pc": e.function_pc,
                "call_depth": e.call_depth,
            }
            for e in result.syscall_trace
        ]
        output["syscall_trace_count"] = len(result.syscall_trace)
    if result.mem_trace:
        output["mem_trace"] = [
            {
                "pc": e.pc,
                "op": e.op,
                "size": e.size,
                "vm_addr": f"0x{e.vm_addr:x}",
                "value": f"0x{e.value:x}",
                "account_idx": e.account_idx,
                "account_offset": e.account_offset,
                "function_pc": e.function_pc,
                "call_depth": e.call_depth,
            }
            for e in result.mem_trace
        ]
        output["mem_trace_count"] = len(result.mem_trace)
    if result.insn_trace:
        output["insn_trace_count"] = len(result.insn_trace)
        output["insn_trace_sample"] = [
            {
                "pc": e.pc,
                "opcode_name": e.opcode_name,
                "category": e.category,
                "dst_val_before": e.dst_val_before,
                "dst_val_after": e.dst_val_after,
                "branch_taken": e.branch_taken,
                "function_pc": e.function_pc,
                "call_depth": e.call_depth,
            }
            for e in result.insn_trace[:20]
        ]

    print(json.dumps(output, indent=2))
