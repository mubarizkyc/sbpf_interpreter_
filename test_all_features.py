#!/usr/bin/env python3
"""
Comprehensive test suite for sbpf_debugger.py — all features.
"""

import sys
import traceback

sys.path.insert(0, "python")
from sbpf_debugger import SbpfDebugger, SyscallTraceEntry, MemTraceEntry, InsnTraceEntry

PROGRAM = "/home/mubariz/Documents/SolDev/solana_interpreter/sbpf_interpreter/tessera_v.so"
ACCOUNTS = (
    "/home/mubariz/Documents/SolDev/solana_interpreter/sbpf_interpreter/test_tesserav_swap.json"
)
TRACE_PROGRAM = "TessVdML9pBGgG9yGks7o4HewRaXVAMuoVj4x83GLQH"


passed = 0
failed = 0
errors = []


def test(name, func):
    global passed, failed, errors
    print(f"\n{'=' * 60}")
    print(f"TEST: {name}")
    print(f"{'=' * 60}")
    try:
        func()
        passed += 1
        print(f"  ✅ PASSED")
    except Exception as e:
        failed += 1
        errors.append((name, str(e)))
        print(f"  ❌ FAILED: {e}")
        traceback.print_exc()


def test_basic_execution():
    dbg = SbpfDebugger()
    result = dbg.execute(program=PROGRAM, accounts=ACCOUNTS, compute_units=1_400_000)
    print(f"  success={result.success}, return_code={result.return_code}")
    print(f"  compute_units_consumed={result.compute_units_consumed}")
    print(f"  logs count={len(result.logs)}")
    assert result.success, f"Execution failed: {result.error}"
    assert result.compute_units_consumed > 0, "No compute units consumed"
    assert len(result.syscall_trace) == 0, "syscall_trace should be empty"
    assert len(result.mem_trace) == 0, "mem_trace should be empty"
    assert len(result.insn_trace) == 0, "insn_trace should be empty"


def test_basic_execution_early_exit():
    """obsidian has anti-arb and exits early with rc=10 — still success=True, just no syscalls"""
    dbg = SbpfDebugger()
    result = dbg.execute(program=OBSIDIAN_PROGRAM, accounts=OBSIDIAN_ACCOUNTS)
    print(f"  success={result.success}, return_code={result.return_code}")
    print(f"  compute_units_consumed={result.compute_units_consumed}")
    assert result.success, f"Execution should succeed even with early exit"
    assert result.compute_units_consumed > 0


def test_trace_syscalls_execute():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_syscalls=True,
    )
    print(
        f"  success={result.success}, syscall_trace count={len(result.syscall_trace)}"
    )
    assert result.success, f"Execution failed: {result.error}"
    assert len(result.syscall_trace) > 0, "No syscall trace entries"

    e = result.syscall_trace[0]
    assert isinstance(e, SyscallTraceEntry)
    assert isinstance(e.pc, int)
    assert isinstance(e.name, str)
    assert isinstance(e.args, list)
    assert isinstance(e.result, int)
    assert isinstance(e.function_pc, int)
    assert isinstance(e.call_depth, int)

    for i, entry in enumerate(result.syscall_trace[:5]):
        print(
            f"  [{i}] PC={entry.pc} {entry.name}({entry.args}) -> {entry.result}"
            f" func_pc={entry.function_pc} depth={entry.call_depth}"
        )


def test_trace_syscalls_convenience():
    dbg = SbpfDebugger()
    result = dbg.trace_syscalls(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
    )
    print(f"  syscall_trace count={len(result.syscall_trace)}")
    assert result.success
    assert len(result.syscall_trace) > 0, (
        "No syscall trace entries from convenience method"
    )
    log_entries = [e for e in result.syscall_trace if "log" in e.name.lower()]
    print(f"  sol_log entries: {len(log_entries)}")


def test_trace_mem_all():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_mem=True,
    )
    print(f"  mem_trace count={len(result.mem_trace)}")
    assert result.success
    assert len(result.mem_trace) > 0, "No mem trace entries"

    e = result.mem_trace[0]
    assert isinstance(e, MemTraceEntry)
    assert e.op in ("load", "store")
    assert isinstance(e.size, int)
    assert isinstance(e.vm_addr, int)
    assert isinstance(e.value, int)
    assert isinstance(e.function_pc, int)
    assert isinstance(e.call_depth, int)

    loads = sum(1 for e in result.mem_trace if e.op == "load")
    stores = sum(1 for e in result.mem_trace if e.op == "store")
    print(f"  loads={loads}, stores={stores}")

    for i, entry in enumerate(result.mem_trace[:5]):
        print(
            f"  [{i}] PC={entry.pc} {entry.op} size={entry.size} "
            f"addr=0x{entry.vm_addr:x} val=0x{entry.value:x} "
            f"acct={entry.account_idx} off={entry.account_offset}"
        )


def test_trace_mem_write_only():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_mem=True,
        trace_mem_write=True,
    )
    print(f"  mem_trace count={len(result.mem_trace)}")
    assert result.success
    for e in result.mem_trace:
        assert e.op == "store", f"Expected store, got {e.op} at pc={e.pc}"
    print(f"  All {len(result.mem_trace)} entries are stores ✓")


def test_trace_mem_read_only():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_mem=True,
        trace_mem_read=True,
    )
    print(f"  mem_trace count={len(result.mem_trace)}")
    assert result.success
    for e in result.mem_trace:
        assert e.op == "load", f"Expected load, got {e.op} at pc={e.pc}"
    print(f"  All {len(result.mem_trace)} entries are loads ✓")


def test_trace_mem_account_size_filter():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_mem=True,
        trace_mem_read=True,
        trace_mem_size=[8],
        trace_mem_account=7,
    )
    print(f"  mem_trace count={len(result.mem_trace)}")
    assert result.success
    for e in result.mem_trace:
        assert e.size == 8, f"Expected size=8, got {e.size}"
        assert e.account_idx == 7, f"Expected account_idx=7, got {e.account_idx}"
        assert e.op == "load", f"Expected load, got {e.op}"
    if result.mem_trace:
        print(f"  All entries: size=8, account_idx=7, op=load ✓")
        for i, entry in enumerate(result.mem_trace[:5]):
            print(
                f"  [{i}] PC={entry.pc} addr=0x{entry.vm_addr:x} val=0x{entry.value:x} off={entry.account_offset}"
            )
    else:
        print(f"  No entries matched filter (may be expected)")


def test_trace_mem_offset_filter():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_mem=True,
        trace_mem_offset=(0x0, 0x10),
    )
    print(f"  mem_trace count={len(result.mem_trace)}")
    assert result.success
    for e in result.mem_trace:
        if e.account_offset is not None:
            assert e.account_offset < 0x10, (
                f"offset=0x{e.account_offset:x} out of range"
            )
    print(f"  All offset entries within [0x0, 0x10) ✓")


def test_trace_mem_convenience():
    dbg = SbpfDebugger()
    result = dbg.trace_memory(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        mem_write=True,
        mem_size=[8],
    )
    print(f"  mem_trace count={len(result.mem_trace)}")
    assert result.success
    for e in result.mem_trace:
        assert e.op == "store", f"Expected store, got {e.op}"
        assert e.size == 8, f"Expected size=8, got {e.size}"
    print(f"  Convenience method filters working ✓")


def test_trace_insn_all():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_insn=["call", "jump", "alu"],
    )
    print(f"  insn_trace count={len(result.insn_trace)}")
    assert result.success
    assert len(result.insn_trace) > 0

    e = result.insn_trace[0]
    assert isinstance(e, InsnTraceEntry)
    assert e.category in ("call", "jump", "alu")
    assert isinstance(e.opcode, int)
    assert isinstance(e.opcode_name, str) and len(e.opcode_name) > 0

    cats = {}
    for entry in result.insn_trace:
        cats[entry.category] = cats.get(entry.category, 0) + 1
    print(f"  Categories: {cats}")

    for i, entry in enumerate(result.insn_trace[:5]):
        print(
            f"  [{i}] PC={entry.pc} {entry.opcode_name}({entry.category}) "
            f"dst_before={entry.dst_val_before} dst_after={entry.dst_val_after} "
            f"branch={entry.branch_taken} func_pc={entry.function_pc} depth={entry.call_depth}"
        )


def test_trace_insn_jump_only():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_insn=["jump"],
    )
    print(f"  insn_trace count={len(result.insn_trace)}")
    assert result.success
    for e in result.insn_trace:
        assert e.category == "jump", f"Expected jump, got {e.category}"
    print(f"  All {len(result.insn_trace)} entries are jump ✓")
    has_branch = sum(1 for e in result.insn_trace if e.branch_taken is not None)
    print(f"  Entries with branch_taken: {has_branch}/{len(result.insn_trace)}")


def test_trace_insn_call_only():
    dbg = SbpfDebugger()
    result = dbg.execute(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        trace_insn=["call"],
    )
    print(f"  insn_trace count={len(result.insn_trace)}")
    assert result.success
    for e in result.insn_trace:
        assert e.category == "call", f"Expected call, got {e.category}"
    print(f"  All {len(result.insn_trace)} entries are call ✓")


def test_trace_insn_convenience():
    dbg = SbpfDebugger()
    result = dbg.trace_instructions(
        program=PROGRAM,
        accounts=ACCOUNTS,
        trace_program=TRACE_PROGRAM,
        categories=["call", "jump"],
    )
    print(f"  insn_trace count={len(result.insn_trace)}")
    assert result.success
    assert len(result.insn_trace) > 0
    cats = set(e.category for e in result.insn_trace)
    print(f"  Categories present: {cats}")
    assert cats <= {"call", "jump"}, f"Unexpected categories: {cats}"


def test_no_trace_program_error():
    dbg = SbpfDebugger()

    try:
        dbg.execute(program=PROGRAM, accounts=ACCOUNTS, trace_syscalls=True)
        assert False, "Should have raised ValueError"
    except ValueError as e:
        print(f"  trace_syscalls: ValueError ✓ ({e})")

    try:
        dbg.execute(program=PROGRAM, accounts=ACCOUNTS, trace_mem=True)
        assert False, "Should have raised ValueError"
    except ValueError as e:
        print(f"  trace_mem: ValueError ✓ ({e})")

    try:
        dbg.execute(program=PROGRAM, accounts=ACCOUNTS, trace_insn=["call"])
        assert False, "Should have raised ValueError"
    except ValueError as e:
        print(f"  trace_insn: ValueError ✓ ({e})")


def test_function_pc_and_call_depth():
    dbg = SbpfDebugger()

    r1 = dbg.trace_syscalls(
        program=PROGRAM, accounts=ACCOUNTS, trace_program=TRACE_PROGRAM
    )
    assert r1.success and len(r1.syscall_trace) > 0
    has_depth_s = any(e.call_depth > 0 for e in r1.syscall_trace)
    print(f"  syscall: count={len(r1.syscall_trace)}, has_nonzero_depth={has_depth_s}")

    r2 = dbg.trace_memory(
        program=PROGRAM, accounts=ACCOUNTS, trace_program=TRACE_PROGRAM
    )
    assert r2.success and len(r2.mem_trace) > 0
    has_depth_m = any(e.call_depth > 0 for e in r2.mem_trace)
    print(f"  mem: count={len(r2.mem_trace)}, has_nonzero_depth={has_depth_m}")

    r3 = dbg.trace_instructions(
        program=PROGRAM, accounts=ACCOUNTS, trace_program=TRACE_PROGRAM
    )
    assert r3.success and len(r3.insn_trace) > 0
    has_depth_i = any(e.call_depth > 0 for e in r3.insn_trace)
    print(f"  insn: count={len(r3.insn_trace)}, has_nonzero_depth={has_depth_i}")


def test_cli_entry_point():
    import subprocess, json

    cmd = [
        sys.executable,
        "-m",
        "sbpf_debugger",
        "--program",
        PROGRAM,
        "--accounts",
        ACCOUNTS,
        "--trace-program",
        TRACE_PROGRAM,
        "--trace-syscalls",
    ]
    proc = subprocess.run(
        cmd,
        capture_output=True,
        text=True,
        timeout=120,
        cwd="/Users/pingzi/Developer/work/solana/sbpf-interpreter/python",
    )
    print(f"  returncode={proc.returncode}")
    if proc.returncode != 0:
        print(f"  stderr: {proc.stderr[:500]}")
    data = json.loads(proc.stdout)
    print(
        f"  success={data.get('success')}, syscall_trace_count={data.get('syscall_trace_count')}"
    )
    assert data.get("success") is True, f"CLI failed: {data.get('error')}"
    assert data.get("syscall_trace_count", 0) > 0, "No syscall trace from CLI"


def test_cli_trace_insn():
    import subprocess, json

    cmd = [
        sys.executable,
        "-m",
        "sbpf_debugger",
        "--program",
        PROGRAM,
        "--accounts",
        ACCOUNTS,
        "--trace-program",
        TRACE_PROGRAM,
        "--trace-insn",
        "call,jump",
    ]
    proc = subprocess.run(
        cmd,
        capture_output=True,
        text=True,
        timeout=120,
        cwd="/Users/pingzi/Developer/work/solana/sbpf-interpreter/python",
    )
    data = json.loads(proc.stdout)
    print(
        f"  success={data.get('success')}, insn_trace_count={data.get('insn_trace_count')}"
    )
    assert data.get("success") is True
    assert data.get("insn_trace_count", 0) > 0, "No insn trace from CLI"
    print(f"  First sample: {data.get('insn_trace_sample', [{}])[0]}")


def test_cli_trace_mem():
    import subprocess, json

    cmd = [
        sys.executable,
        "-m",
        "sbpf_debugger",
        "--program",
        PROGRAM,
        "--accounts",
        ACCOUNTS,
        "--trace-program",
        TRACE_PROGRAM,
        "--trace-mem",
        "--trace-mem-write",
        "--trace-mem-size",
        "8",
    ]
    proc = subprocess.run(
        cmd,
        capture_output=True,
        text=True,
        timeout=120,
        cwd="/Users/pingzi/Developer/work/solana/sbpf-interpreter/python",
    )
    data = json.loads(proc.stdout)
    print(
        f"  success={data.get('success')}, mem_trace_count={data.get('mem_trace_count')}"
    )
    assert data.get("success") is True
    if data.get("mem_trace_count", 0) > 0:
        for e in data.get("mem_trace", [])[:3]:
            print(f"    {e}")


if __name__ == "__main__":
    tests = [
        ("1. Basic execution (no trace)", test_basic_execution),
        ("2. Early exit program (obsidian anti-arb)", test_basic_execution_early_exit),
        ("3. trace_syscalls via execute()", test_trace_syscalls_execute),
        ("4. trace_syscalls convenience method", test_trace_syscalls_convenience),
        ("5. trace_mem (all reads+writes)", test_trace_mem_all),
        ("6. trace_mem (write only)", test_trace_mem_write_only),
        ("7. trace_mem (read only)", test_trace_mem_read_only),
        ("8. trace_mem (account + size filter)", test_trace_mem_account_size_filter),
        ("9. trace_mem (offset range filter)", test_trace_mem_offset_filter),
        ("10. trace_memory convenience method", test_trace_mem_convenience),
        ("11. trace_insn (all categories)", test_trace_insn_all),
        ("12. trace_insn (jump only)", test_trace_insn_jump_only),
        ("13. trace_insn (call only)", test_trace_insn_call_only),
        ("14. trace_instructions convenience method", test_trace_insn_convenience),
        ("15. ValueError without trace_program", test_no_trace_program_error),
        ("16. function_pc + call_depth populated", test_function_pc_and_call_depth),
        ("17. CLI __main__ trace-syscalls", test_cli_entry_point),
        ("18. CLI __main__ trace-insn", test_cli_trace_insn),
        ("19. CLI __main__ trace-mem", test_cli_trace_mem),
    ]

    print(f"\n{'#' * 60}")
    print(f"# sbpf_debugger.py — Full Feature Test Suite")
    print(f"# Program: tessera_v.so | Trace: {TRACE_PROGRAM}")
    print(f"{'#' * 60}")

    for name, func in tests:
        test(name, func)

    print(f"\n{'=' * 60}")
    print(f"RESULTS: {passed} passed, {failed} failed, {passed + failed} total")
    print(f"{'=' * 60}")
    if errors:
        print("\nFailed tests:")
        for name, err in errors:
            print(f"  ❌ {name}: {err}")
    sys.exit(0 if failed == 0 else 1)
