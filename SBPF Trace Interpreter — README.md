# SBPF Trace Interpreter

## What Is This

This is a **sBPF trace interpreter and time-travel debugger** , a CLI tool for offline, deterministic re-execution and deep dynamic analysis of compiled Solana programs (`.so` ELF files).

This tool captures a *full execution trace* at the instruction level and lets you replay it step by step inside an interactive TUI, or emit it as structured JSON for automated analysis.

**Why it exists.** The Solana program runtime is a hostile debugging environment.This tool bridges that gap by:

- Reconstructing the exact memory layout the VM would use (stack, heap, serialized account input buffer)
- Executing the program inside a real `solana-sbpf` VM instance with instrumented trace hooks
- Capturing every register mutation, memory access, syscall, and CPI invocation in order
- Providing a terminal UI that lets you walk forward and backward through execution, watching registers and memory update in real time


## Architecture

The tool is structured as a single Rust binary with three clearly separated phases:

```
┌─────────────────────────────────────────────────────┐
│  1. INPUT PREPARATION  (prepare_inputs)             │
│     CLI args + JSON accounts file → runtime structs │
├─────────────────────────────────────────────────────┤
│  2. EXECUTION          (execute)                    │
│     Real solana-sbpf VM + instrumented trace hooks  │
│     Memory mapping ← serialize_parameters()         │
│     build_trace_config() → TraceConfig              │
│     EbpfVm::execute_program()                       │
│     extract_traces() → owned trace vecs             │
├─────────────────────────────────────────────────────┤
│  3. OUTPUT             (collect_output)             │
│     JSON to stdout  OR  TUI debugger (--tui)        │
└─────────────────────────────────────────────────────┘
```

### Key components

**`prepare_inputs`** reads the ELF file and the accounts JSON, builds `TransactionContext` and `InvokeContext` , populates a `SysvarCache` with configurable clock values.

**`build_memory_mapping`** calls `serialization::serialize_parameters()` to lay out the serialized input buffer exactly as the SVM would (accounts metadata, instruction data, program ID), then allocates stack and heap regions and wires them all into a `MemoryMapping` that the VM will use for address translation. It also records a `TraceContext` that maps every VM address back to its logical meaning , which bytes are instruction data, which are account data, what offset the program ID lives at , so the TUI can label memory regions without re-parsing the binary format.

**`build_trace_config`** converts the CLI flags into a `TraceConfig` struct that the forked `solana-sbpf` VM reads during execution to decide what to record. The fork extends the stock VM with five new ring buffers: `syscall_trace`, `mem_trace`, `insn_trace`, `reg_snapshots`, and `cpi_decode_trace`.

**`extract_traces`** drains those ring buffers into owned Rust structs after the VM completes. This must happen before `vm` is dropped, since the buffers live inside the VM.

**`tui`** (the `App` + `VirtualMemory` types) replays the trace entirely in user space. `VirtualMemory` maintains a shadow copy of stack, input buffer, and each account's data and fast-forwards it by applying the `mem_trace` stores in order as you step through instructions.

## Inputs and Outputs

### Program input: the accounts JSON

Every run requires two files:

1. **The compiled sBPF ELF** — the `.so` built by `cargo build-sbf`.
2. **An accounts JSON file** — a snapshot of the on-chain state the instruction would see.

The accounts file has the shape:

```json
{
  "programId": "8SiG8nxNCnwJem4WfGySgUyDkwVtAD5kX2xC2vrXguNQ",
  "instructionData": "<base64>",
  "instructionDataHex": "<hex alternative>",
  "clockUnixTimestamp": 1700000000,
  "clockSlot": 300000000,
  "accounts": [
    {
      "pubkey": "<base58>",
      "is_signer": false,
      "is_writable": true,
      "account": {
        "data": ["<base64_data>", "base64"],
        "owner": "<base58_owner>",
        "lamports": 1000000,
        "executable": false,
        "rentEpoch": 0
      }
    }
  ]
}
```

CLI flags `--instruction-data`, `--clock-slot`, and `--clock-unix-timestamp` override the corresponding JSON fields, making it easy to vary inputs without editing the file.

### Execution output: JSON

With no `--tui` flag the tool writes a single JSON object to stdout:

```json
{
  "success": true,
  "return_code": 0,
  "compute_units_consumed": 42318,
  "logs": ["Program log: ..."],
  "error": null,
  "syscall_trace": [...],
  "mem_trace": [...],
  "insn_trace": [...],
  "mem_dump_results": [...],
  "reg_snapshots": [...],
  "cpi_decode_trace": [...],
  "data_flow": [...],
  "diff_result": null,
  "trace_context": { ... }
}
```

All trace arrays are omitted (`null`) unless their corresponding flag was passed, keeping the output minimal for runs that only need logs and a return code.

## Tracing Flags

All trace flags except `--trace` require `--trace-program <PUBKEY>` to be set. This tells the VM which program's text section to instrument — in a CPI chain, only the target program's instructions are recorded.

### Prerequisite

| Flag | Description |
| --- | --- |
| `--trace-program <PUBKEY>` | Target program pubkey. Required by all trace flags below. |
| `--trace` | Enable sBPF register tracing (used internally by the VM). Required alongside trace flags. |

### Instruction-level tracing

| Flag | Description |
| --- | --- |
| `--trace-insn <CATEGORIES>` | Record every instruction execution. Categories are comma-separated: `call`, `jump`, `alu`, `mem`. Use `call,jump,alu,mem` to capture everything. Each entry records opcode, src/dst registers, before/after values, branch outcome, and call depth. |
| `--trace-pc-range <START-END>` | Restrict instruction trace to a PC range (decimal). |
| `--trace-function <ENTRY_PC>` | Restrict instruction trace to a single function by its entry PC. |
| `--trace-regs-at-pc <PC,...>` | Capture a full 12-register snapshot at specific PCs (comma-separated). |
| `--trace-data-flow <REG>` | Output all instructions that write to register 0–10 — useful for tracing where a value comes from. |

### Memory tracing

| Flag | Description |
| --- | --- |
| `--trace-mem` | Record every VM memory load and store. Each entry includes the VM address, value, size, and which account the address maps to. |
| `--trace-mem-read` | Only record loads. |
| `--trace-mem-write` | Only record stores. |
| `--trace-mem-size <1,4,8,...>` | Filter by access size in bytes (comma-separated). |
| `--trace-mem-offset <start,end>` | Filter by account-internal byte offset (hex, half-open range). |
| `--trace-mem-account <IDX>` | Only trace accesses to account at index IDX (0-based). |
| `--trace-mem-value-match <HEX>` | Only include entries where the value matches this hex constant. |
| `--dump-mem-at-pc <PC,ADDR,LEN>` | Dump `LEN` bytes from VM address `ADDR` at the moment instruction `PC` executes. Repeatable. |

### Syscall and CPI tracing

| Flag | Description |
| --- | --- |
| `--trace-syscalls` | Record every syscall invocation: name, five arguments, return value, call depth. |
| `--trace-cpi-decode` | Decode every `sol_invoke_signed` call: target program ID, number of accounts, data length, first 64 bytes of instruction data as hex. |

### Differential analysis

| Flag | Description |
| --- | --- |
| `--diff-trace <BASELINE_JSON>` | Compare this run's traces against a previously captured JSON output. Reports the first divergence point across syscall, memory, and instruction traces — useful for bisecting a regression between two builds or two inputs. |

## TUI Debugger

Pass `--tui` to launch the interactive terminal debugger instead of printing JSON. The TUI receives the same `Output` struct directly — no JSON round-trip.

### Layout

```
┌──────────────────────────────────────────────────────────┐
│ HEADER: step / total, CUs consumed, program ID, status  │
├─────────────────────────────────┬────────────────────────┤
│                                 │                        │
│  DISASSEMBLY (flow view)        │  REGISTERS             │
│  deduplicated by PC, annotated  │  r0–r10 hex + decimal  │
│                                 │                        │
├─────────────────────────────────┴────────────────────────┤
│  MEMORY INSPECTOR  (tabbed)  │  SYSCALL SIDE-EFFECTS     │
│  Stack / IX Data / Raw / Acct│  current step only        │
└──────────────────────────────┴───────────────────────────┘
```

### Navigation keybindings

| Key | Action |
| --- | --- |
| `n` / `↓` | Step forward one instruction |
| `p` / `↑` | Step backward one instruction (time-travel) |
| `g` | Jump to first instruction |
| `G` | Jump to last instruction |
| `Tab` | Cycle memory view tabs: Stack → IX Data → Accounts → Stack |
| `r` | Toggle between IX Data and Raw Input views |
| `s` | Switch to Stack view and center on the current stack pointer (r10) |
| `j` / `PageDown` | Scroll memory view down 16 bytes |
| `k` / `PageUp` | Scroll memory view up 16 bytes |
| `q` | Quit |

### Disassembly view (flow mode)

Instructions are shown **deduplicated by PC**, in first-execution order. Loops do not produce repeated rows; instead a `×N` counter on the left shows how many times a given PC has been reached up to the current step. The right column shows live annotations:

- **ALU** — old value → new value, source register when it differs
- **Load** — `[effective_addr]` → loaded value
- **Store** — written value → `[effective_addr]`
- **Jump** — ✔/✘ verdict, operand values, branch target for unconditional jumps
- **Call/Exit** — function PC, call depth, or r0 return value

### Memory inspector tabs

| Tab | What you see |
| --- | --- |
| **Stack** | The full stack region starting at `0x200000000`. Pressing `s` auto-scrolls to the current frame pointer. |
| **IX Data** | Just the instruction data bytes inside the serialized input buffer, highlighted in cyan. |
| **Raw Input** | The entire serialized parameter buffer (`0x400000000`), with instruction data highlighted. Useful for understanding the Solana serialization format at a glance. |
| **Account(s)** | One tab per account in the instruction. Shows the account's live data window — stores are applied in real time as you step forward. |

**Live memory highlighting:** the byte range touched by the current step's memory event is highlighted red (store) or blue (load) on top of any other coloring, letting you see exactly which bytes the instruction is touching.

### Time-travel mechanics

Stepping backward is O(n) in the number of stores up to the current step: the `VirtualMemory` shadow is reset to its initial state and all stores up to `insn_index - 1` are replayed. Register state is similarly recalculated from the beginning of the trace. For forward steps both operations are O(1).

## Output JSON Schema

All fields except `success`, `return_code`, `compute_units_consumed`, `logs`, and `error` are omitted from the output unless their corresponding flag was passed.

### Top-level

| Field | Type | Description |
| --- | --- | --- |
| `success` | bool | `true` if the VM returned exit code 0 |
| `return_code` | u64 | Raw sBPF return value |
| `compute_units_consumed` | u64 | CUs used by this execution |
| `logs` | string\[\] | Program log output in order |
| `error` | string? | Error description if execution failed |
| `syscall_trace` | SyscallTrace\[\]? | Emitted with `--trace-syscalls` |
| `mem_trace` | MemTrace\[\]? | Emitted with `--trace-mem` |
| `insn_trace` | InsnTrace\[\]? | Emitted with `--trace-insn` |
| `insn_desc` | string\[\]? | Human-readable disassembly of each `insn_trace` entry |
| `mem_dump_results` | MemDumpResult\[\]? | Emitted with `--dump-mem-at-pc` |
| `reg_snapshots` | RegSnapshot\[\]? | Emitted with `--trace-regs-at-pc` |
| `cpi_decode_trace` | CpiDecodeEntry\[\]? | Emitted with `--trace-cpi-decode` |
| `data_flow` | DataFlowEntry\[\]? | Emitted with `--trace-data-flow` |
| `diff_result` | DiffResult? | Emitted with `--diff-trace` |
| `trace_context` | TraceContext? | Always emitted when any trace flag is active |

### `SyscallTrace`

```json
{ "pc": 1042, "name": "sol_log_", "args": [4398046547024, 5, 0, 0, 0],
  "result": 0, "function_pc": 900, "call_depth": 1 }
```

### `MemTrace`

```json
{ "pc": 510, "op": "store", "size": 8, "vm_addr": 549755879424,
  "value": 1000000, "account_idx": 0, "account_offset": 8,
  "function_pc": 400, "call_depth": 1 }
```

`op` is `"load"` or `"store"`. `account_idx` and `account_offset` are omitted when the access falls outside any account window.

### `InsnTrace`

```json
{ "pc": 510, "opcode": 97, "opcode_name": "stxdw", "category": "store",
  "is_imm": false, "dst": 1, "src": 2, "imm": 0, "off": -8,
  "dst_val_before": 549755813888, "dst_val_after": 549755813888,
  "src_val": 1000000, "branch_taken": null, "branch_target": null,
  "function_pc": 400, "call_depth": 1 }
```

### `TraceContext`

Documents the VM memory layout for this run. Used internally by the TUI but also useful for offline analysis:

```json
{
  "stack_base": 8589934592,
  "stack_size": 524288,
  "param_vm_addr": 17179869184,
  "param_bytes": "<hex>",
  "ix_data_offset": 3280,
  "ix_data_len": 32,
  "program_id_offset": 3312,
  "accounts": [
    { "idx": 0, "vm_start": 17179873280, "initial_data": "...", "is_writable": true }
  ]
}
```

All VM addresses are decimal. `param_vm_addr` is `MM_INPUT_START` (`0x400000000`). `stack_base` is `MM_STACK_START` (`0x200000000`).

## Examples

### Example 1 — Fibonacci (TUI)

A simple recursive Fibonacci program. Useful for understanding call depth tracking and register usage patterns.

```bash
cargo run -- \
  --program examples/fibonacci/deploy/fibonacci.so \
  --accounts examples/fibonacci/input_vector.json \
  --trace-program 8SiG8nxNCnwJem4WfGySgUyDkwVtAD5kX2xC2vrXguNQ \
  --trace-mem \
  --trace-syscalls \
  --trace-insn call,jump,alu,mem \
  --trace \
  --trace-cpi-decode \
  --tui
```

**What to look for in the TUI:**

- Open the **Disassembly** pane. Each recursive call increments `call_depth` in the annotation column. Pressing `n` through a `call` instruction will show the function PC in the annotation.
- Press `s` to jump to the stack and observe the frame pointer walking down as recursion deepens.
- The `×N` counter in the disassembly view shows which PCs are executed on every recursion — hotspots are immediately visible.
- Press `Tab` to switch to **IX Data** to inspect the input argument.

### Example 2 — Tessera V swap (JSON output)

A real AMM swap instruction. This produces a large JSON trace that is more convenient to post-process with `jq` or a script than to view in the TUI.

```bash
cargo run -- \
  --program examples/tessera_v/tessera_v.so \
  --accounts examples/tessera_v/test_tesserav_swap.json \
  --trace-program TessVdML9pBGgG9yGks7o4HewRaXVAMuoVj4x83GLQH \
  --trace-mem \
  --trace-syscalls \
  --trace-insn call,jump,alu,mem \
  --trace \
  --trace-cpi-decode
```

**Useful follow-up queries:**

Extract all CPI calls the swap makes:

```bash
... | jq '.cpi_decode_trace[] | {pc, program_id, data_preview}'
```

Find every store to account 1 (e.g. the pool state account):

```bash
... | jq '[.mem_trace[] | select(.op == "store" and .account_idx == 1)]'
```

Count CUs between two syscalls:

```bash
... | jq '[.syscall_trace[] | .pc] | [indices(.[0]) - indices(.[1])]'
```

Save a baseline, change the input, and diff:

```bash
cargo run -- ... > baseline.json
# edit input_vector.json
cargo run -- ... --diff-trace baseline.json | jq '.diff_result'
```

## Build and Run

### Prerequisites

- This repo links against a **forked `solana-sbpf`** that exposes the trace ring buffers. The fork must be referenced in `Cargo.toml` — it is not the upstream crate.

### Build

```bash
cargo build --release
```

The binary is at `target/release/sbpf-trace`.

### Minimal run (no tracing, just logs)

```bash
cargo run -- \
  --program path/to/program.so \
  --accounts path/to/accounts.json
```

Outputs:

```json
{ "success": true, "return_code": 0, "compute_units_consumed": 12345,
  "logs": ["Program log: ..."], "error": null }
```

### Full trace run

```bash
cargo run -- \
  --program path/to/program.so \
  --accounts path/to/accounts.json \
  --trace-program <PROGRAM_PUBKEY> \
  --trace \
  --trace-insn call,jump,alu,mem \
  --trace-mem \
  --trace-syscalls \
  --trace-cpi-decode \
  > trace.json
```

### TUI

Append `--tui` to any command. The TUI reads the same data the JSON mode would print — no separate invocation needed.

```bash
cargo run -- --program ... --accounts ... --trace-program ... \
  --trace --trace-insn call,jump,alu,mem --trace-mem --trace-syscalls --tui
```

### Clock overrides

Programs that branch on `Clock::unix_timestamp` or `Clock::slot` can be tested against specific values:

```bash
--clock-unix-timestamp 1700000000 --clock-slot 300000000
```

These override both the CLI value and the value in the JSON file.

### Generating an accounts JSON from a live transaction

The accounts JSON is a snapshot of on-chain state. The recommended workflow is:

1. Fetch the transaction signature from an RPC node.
2. Use `solana confirm -v <sig>` or the `getParsedTransaction` RPC method to get all account addresses.
3. Use `solana account --output json <pubkey>` for each account to get its lamports, owner, and base64 data.
4. Assemble the JSON in the format shown in **Inputs and Outputs** above, including the instruction data from the transaction.

Some teams maintain scripts that automate this from a transaction signature. The tool accepts any accounts file that conforms to the schema — the source doesn't matter.
