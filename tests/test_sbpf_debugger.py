"""End-to-end tests for sbpf_debugger.py against tessera_v DEX program."""

from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path

import pytest

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "python"))
from sbpf_debugger import (
    CpiDecodeEntry,
    DataFlowEntry,
    DiffResult,
    ExecutionResult,
    InsnTraceEntry,
    MemDumpResult,
    MemTraceEntry,
    RegSnapshot,
    SbpfDebugger,
    SyscallTraceEntry,
)

FIXTURES = Path(__file__).resolve().parent / "fixtures"
PROGRAM = str(FIXTURES / "tessera_v.so")
ACCOUNTS = str(FIXTURES / "tessera_v_swap.json")
TRACE_PROGRAM = "TessVdML9pBGgG9yGks7o4HewRaXVAMuoVj4x83GLQH"


@pytest.fixture(scope="module")
def dbg():
    return SbpfDebugger()


class TestBasicExecution:

    def test_no_trace_data_without_flags(self, dbg: SbpfDebugger):
        r = dbg.execute(program=PROGRAM, accounts=ACCOUNTS)
        assert r.syscall_trace == []
        assert r.mem_trace == []
        assert r.insn_trace == []
    def test_failure_case_invalid_program(self, dbg: SbpfDebugger):
       """This test PASSES (green) by proving the system handles failure correctly."""
       r = dbg.execute(program="/nonexistent/fake.so", accounts=ACCOUNTS)

            # These assertions MUST be true for the test to pass
       assert r.success is False          # ✅ Proves it didn't crash silently
       assert r.error is not None         # ✅ Proves it returned an error message

class TestTraceInsn:
    def test_all_categories(self, dbg: SbpfDebugger):
        r = dbg.execute(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
            trace_insn=["call", "jump", "alu"],
        )
        assert r.success
        assert len(r.insn_trace) > 0
        cats = {e.category for e in r.insn_trace}
        assert cats == {"call", "jump", "alu"}

    def test_entry_types(self, dbg: SbpfDebugger):
        r = dbg.execute(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
            trace_insn=["call", "jump", "alu"],
        )
        e = r.insn_trace[0]
        assert isinstance(e, InsnTraceEntry)
        assert isinstance(e.pc, int)
        assert isinstance(e.opcode, int)
        assert isinstance(e.opcode_name, str) and len(e.opcode_name) > 0
        assert e.category in ("call", "jump", "alu")
        assert isinstance(e.dst, int)
        assert isinstance(e.src, int)
        assert isinstance(e.imm, int)
        assert isinstance(e.off, int)
        assert isinstance(e.dst_val_before, int)
        assert isinstance(e.dst_val_after, int)
        assert isinstance(e.src_val, int)
        assert isinstance(e.function_pc, int)
        assert isinstance(e.call_depth, int)

    def test_jump_only(self, dbg: SbpfDebugger):
        r = dbg.execute(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
            trace_insn=["jump"],
        )
        assert r.success
        assert len(r.insn_trace) > 0
        assert all(e.category == "jump" for e in r.insn_trace)

    def test_call_only(self, dbg: SbpfDebugger):
        r = dbg.execute(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
            trace_insn=["call"],
        )
        assert r.success
        assert len(r.insn_trace) > 0
        assert all(e.category == "call" for e in r.insn_trace)

    def test_alu_only(self, dbg: SbpfDebugger):
        r = dbg.execute(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
            trace_insn=["alu"],
        )
        assert r.success
        assert len(r.insn_trace) > 0
        assert all(e.category == "alu" for e in r.insn_trace)


    def test_call_jump_subset(self, dbg: SbpfDebugger):
        r_all = dbg.execute(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
            trace_insn=["call", "jump", "alu"],
        )
        r_cj = dbg.execute(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
            trace_insn=["call", "jump"],
        )
        assert len(r_cj.insn_trace) < len(r_all.insn_trace)
        assert {e.category for e in r_cj.insn_trace} <= {"call", "jump"}

    def test_convenience_method(self, dbg: SbpfDebugger):
        r = dbg.trace_instructions(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
            categories=["call", "jump"],
        )
        assert r.success
        assert len(r.insn_trace) > 0
        assert {e.category for e in r.insn_trace} <= {"call", "jump"}

    def test_convenience_default_all_categories(self, dbg: SbpfDebugger):
        r = dbg.trace_instructions(
            program=PROGRAM,
            accounts=ACCOUNTS,
            trace_program=TRACE_PROGRAM,
        )
        assert r.success
        assert {e.category for e in r.insn_trace} == {"call", "jump", "alu"}
