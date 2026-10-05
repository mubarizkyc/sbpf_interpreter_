use anyhow::{Context, Result, anyhow};
use base64::{Engine, engine::general_purpose::STANDARD as BASE64};
use clap::Parser;
use serde::{Deserialize, Serialize};
use solana_sbpf::error::ProgramResult;
use std::cell::RefCell;
use std::{fs, mem, rc::Rc, str::FromStr, sync::Arc};
// Build memory mapping
use solana_account::{AccountSharedData, ReadableAccount, WritableAccount};
use solana_clock::Clock;
use solana_epoch_schedule::EpochSchedule;
use solana_fee_structure::FeeStructure;
use solana_hash::Hash;
use solana_instruction::AccountMeta;
use solana_program_runtime::{
    execution_budget::{SVMTransactionExecutionBudget, SVMTransactionExecutionCost},
    invoke_context::{BpfAllocator, EnvironmentConfig, InvokeContext},
    loaded_programs::{ProgramCacheForTxBatch, ProgramRuntimeEnvironments},
    memory_context::MemoryContext,
    program_cache_entry::ProgramCacheEntry,
    program_metrics::LoadProgramMetrics,
    serialization,
    sysvar_cache::SysvarCache,
};
use solana_pubkey::Pubkey;
use solana_rent::Rent;
use solana_sbpf::{
    ebpf,
    memory_region::{MemoryMapping, MemoryRegion},
    program::SBPFVersion,
};
use solana_sbpf::{
    ebpf::MM_INPUT_START, elf::Executable, memory_region::HostBuffer, verifier::RequisiteVerifier,
};
use solana_sdk_ids::bpf_loader_upgradeable;
use solana_svm_callback::InvokeContextCallback;
use solana_svm_feature_set::SVMFeatureSet;
use solana_svm_log_collector::LogCollector;
use solana_syscalls::create_program_runtime_environment;
use solana_transaction_context::{
    instruction_accounts::InstructionAccount, transaction::TransactionContext,
    transaction_accounts::KeyedAccountSharedData,
};
const MAX_PERMITTED_DATA_INCREASE: usize = 10240; //from crate solana_account_info
#[derive(Parser, Debug)]
#[command(
    name = "sbpf-interpreter",
    about = "Execute sBPF ELF programs in interpreter mode"
)]
struct Cli {
    /// Path to the sBPF ELF .so file
    #[arg(long)]
    program: String,

    /// Path to accounts JSON file
    #[arg(long)]
    accounts: String,

    /// Base64-encoded instruction data (overrides instructionData in JSON)
    #[arg(long)]
    instruction_data: Option<String>,

    /// Compute unit limit
    #[arg(long, default_value_t = 1_400_000)]
    compute_units: u64,

    /// Enable register tracing
    #[arg(long, default_value_t = false)]
    trace: bool,

    /// Clock slot override
    #[arg(long)]
    clock_slot: Option<u64>,

    /// Clock unix timestamp override
    #[arg(long)]
    clock_unix_timestamp: Option<i64>,

    /// Trace all syscall invocations (name, args, result)
    #[arg(long, default_value_t = false, requires = "trace_program")]
    trace_syscalls: bool,

    /// Trace memory loads and stores
    #[arg(long, default_value_t = false, requires = "trace_program")]
    trace_mem: bool,

    /// Only trace memory reads (default: both read and write)
    #[arg(long, default_value_t = false)]
    trace_mem_read: bool,

    /// Only trace memory writes (default: both read and write)
    #[arg(long, default_value_t = false)]
    trace_mem_write: bool,

    /// Filter memory trace by access size in bytes, comma-separated (e.g. "1,4,8")
    #[arg(long, value_delimiter = ',')]
    trace_mem_size: Vec<u8>,

    /// Filter memory trace by account-internal offset range: start,end (hex, half-open [start,end))
    #[arg(long)]
    trace_mem_offset: Option<String>,

    /// Target program pubkey (required when any trace flag is used)
    #[arg(long)]
    trace_program: Option<String>,

    /// Only trace memory access to this account index (0-based instruction account index)
    #[arg(long)]
    trace_mem_account: Option<usize>,

    /// Trace instruction execution by category, comma-separated: call,jump,alu
    #[arg(long, requires = "trace_program")]
    trace_insn: Option<String>,

    /// Dump memory at a specific PC: format "PC,vm_addr_hex,len" (can be repeated)
    #[arg(long, value_name = "PC,ADDR,LEN")]
    dump_mem_at_pc: Vec<String>,

    /// Trace register snapshots at specific PCs (comma-separated)
    #[arg(long, value_delimiter = ',', value_name = "PC")]
    trace_regs_at_pc: Vec<u64>,

    /// Only include memory trace entries where value matches this hex value
    #[arg(long, value_name = "HEX")]
    trace_mem_value_match: Option<String>,

    /// Filter all traces to only include instructions within PC range: start-end (decimal)
    #[arg(long, value_name = "START-END", requires = "trace_program")]
    trace_pc_range: Option<String>,

    /// Only trace instructions within this function (entry PC, decimal)
    #[arg(long, value_name = "ENTRY_PC", requires = "trace_program")]
    trace_function: Option<u64>,

    /// Compare output to a baseline trace JSON and output first divergence point
    #[arg(long, value_name = "BASELINE_JSON")]
    diff_trace: Option<String>,

    /// Trace data flow for a register (0-10): outputs all instructions writing to that register
    #[arg(long, value_name = "REG")]
    trace_data_flow: Option<u8>,

    /// Decode CPI (sol_invoke_signed) calls: program_id, accounts, data preview
    #[arg(long, default_value_t = false)]
    trace_cpi_decode: bool,
}
// ---------------------------------------------------------------------------
// JSON input types
// ---------------------------------------------------------------------------

#[derive(Deserialize, Debug)]
struct AccountsJson {
    accounts: Vec<KeyedAccount>,
    #[serde(rename = "programId")]
    program_id: Option<String>,
    #[serde(rename = "instructionData")]
    instruction_data: Option<String>,
    #[serde(rename = "instructionDataHex")]
    instruction_data_hex: Option<String>,
    #[serde(rename = "clockUnixTimestamp")]
    clock_unix_timestamp: Option<i64>,
    #[serde(rename = "clockSlot")]
    clock_slot: Option<u64>,
}

#[derive(Deserialize, Debug)]
struct KeyedAccount {
    pubkey: String,
    #[serde(default)]
    is_signer: bool,
    #[serde(default)]
    is_writable: bool,
    account: AccountData,
}

#[derive(Deserialize, Debug)]
struct AccountData {
    /// [base64_data, "base64"] or just a string
    data: serde_json::Value,
    owner: String,
    lamports: u64,
    executable: bool,
    #[serde(rename = "rentEpoch")]
    rent_epoch: u64,
}

// ---------------------------------------------------------------------------
// JSON output types
// ---------------------------------------------------------------------------

#[derive(Serialize)]
struct SyscallTrace {
    pc: u64,
    name: String,
    args: [u64; 5],
    result: u64,
    function_pc: u64,
    call_depth: u64,
}

#[derive(Serialize)]
struct MemTrace {
    pc: u64,
    op: &'static str,
    size: u8,
    vm_addr: u64,
    value: u64,
    #[serde(skip_serializing_if = "Option::is_none")]
    account_idx: Option<usize>,
    #[serde(skip_serializing_if = "Option::is_none")]
    account_offset: Option<u64>,
    function_pc: u64,
    call_depth: u64,
}

#[derive(Serialize)]
struct InsnTrace {
    pc: u64,
    opcode: u8,
    opcode_name: &'static str,
    category: &'static str,
    dst: u8,
    src: u8,
    imm: i64,
    off: i16,
    dst_val_before: u64,
    dst_val_after: u64,
    src_val: u64,
    #[serde(skip_serializing_if = "Option::is_none")]
    branch_taken: Option<bool>,
    #[serde(skip_serializing_if = "Option::is_none")]
    branch_target: Option<u64>,
    function_pc: u64,
    call_depth: u64,
}

#[derive(Serialize)]
struct MemDumpResult {
    pc: u64,
    vm_addr: u64,
    bytes: Vec<u8>,
}

#[derive(Serialize)]
struct RegSnapshot {
    pc: u64,
    regs: [u64; 12],
}

#[derive(Serialize)]
struct CpiDecodeEntry {
    pc: u64,
    program_id: String,
    accounts_len: u64,
    data_len: u64,
    data_preview: String,
}

#[derive(Serialize)]
struct DataFlowEntry {
    pc: u64,
    reg: u8,
    value_after: u64,
    opcode: u8,
    opcode_name: &'static str,
    src_reg: Option<u8>,
    src_val: Option<u64>,
    function_pc: u64,
}

#[derive(Serialize)]
struct DiffResult {
    diverged: bool,
    first_divergence_index: Option<usize>,
    trace_type: Option<String>,
    baseline_entry: Option<serde_json::Value>,
    actual_entry: Option<serde_json::Value>,
    baseline_len: usize,
    actual_len: usize,
}

#[derive(Serialize)]
struct Output {
    success: bool,
    return_code: u64,
    compute_units_consumed: u64,
    logs: Vec<String>,
    error: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    syscall_trace: Option<Vec<SyscallTrace>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    mem_trace: Option<Vec<MemTrace>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    insn_trace: Option<Vec<InsnTrace>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    mem_dump_results: Option<Vec<MemDumpResult>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    reg_snapshots: Option<Vec<RegSnapshot>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    cpi_decode_trace: Option<Vec<CpiDecodeEntry>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    data_flow: Option<Vec<DataFlowEntry>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    diff_result: Option<DiffResult>,
}

// ---------------------------------------------------------------------------
// Mock InvokeContextCallback (all methods have default impls)
// ---------------------------------------------------------------------------

struct MockCallback;
impl InvokeContextCallback for MockCallback {}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

fn parse_pubkey(s: &str) -> Result<Pubkey> {
    Pubkey::from_str(s).map_err(|e| anyhow!("Invalid pubkey '{}': {}", s, e))
}

fn decode_account_data(data: &serde_json::Value) -> Result<Vec<u8>> {
    match data {
        serde_json::Value::String(s) => {
            // plain base64 string
            BASE64
                .decode(s)
                .context("Failed to decode account data as base64")
        }
        serde_json::Value::Array(arr) => {
            // ["base64_data", "base64"] format
            let b64 = arr
                .first()
                .and_then(|v| v.as_str())
                .ok_or_else(|| anyhow!("Expected [base64_string, encoding] array"))?;
            BASE64
                .decode(b64)
                .context("Failed to decode account data from array")
        }
        _ => Err(anyhow!("Unexpected account data format: {:?}", data)),
    }
}

fn build_account_shared_data(ad: &AccountData) -> Result<AccountSharedData> {
    let data = decode_account_data(&ad.data)?;
    let owner = parse_pubkey(&ad.owner)?;
    let mut account = AccountSharedData::new(ad.lamports, data.len(), &owner);
    account.set_data_from_slice(&data);
    account.set_executable(ad.executable);
    account.set_rent_epoch(ad.rent_epoch);
    Ok(account)
}
use solana_sbpf::aligned_memory::AlignedMemory;
use solana_sbpf::ebpf::HOST_ALIGN;
use solana_sbpf::vm::{AccountVmRange, TraceConfig};
fn main() {
    let result = run();
    match result {
        Ok(output) => {
            println!("{}", serde_json::to_string_pretty(&output).unwrap());
        }
        Err(e) => {
            let output = Output {
                success: false,
                return_code: 0,
                compute_units_consumed: 0,
                logs: vec![],
                error: Some(format!("{:#}", e)),
                syscall_trace: None,
                mem_trace: None,
                insn_trace: None,
                mem_dump_results: None,
                reg_snapshots: None,
                cpi_decode_trace: None,
                data_flow: None,
                diff_result: None,
            };
            println!("{}", serde_json::to_string_pretty(&output).unwrap());
            std::process::exit(1);
        }
    }
}

pub struct ExecutionResults {
    pub compute_units_consumed: u64,
    pub result: solana_sbpf::error::ProgramResult,
    pub log_collector: Rc<RefCell<LogCollector>>,
    pub syscall_trace: Option<Vec<SyscallTrace>>,
    pub mem_trace: Option<Vec<MemTrace>>,
    pub insn_trace: Option<Vec<InsnTrace>>,
    pub mem_dump_results: Option<Vec<MemDumpResult>>,
    pub reg_snapshots: Option<Vec<RegSnapshot>>,
    pub cpi_decode_trace: Option<Vec<CpiDecodeEntry>>,
}
struct ExecutionTraces {
    syscall_trace: Option<Vec<SyscallTrace>>,
    mem_trace: Option<Vec<MemTrace>>,
    insn_trace: Option<Vec<InsnTrace>>,
    mem_dump_results: Option<Vec<MemDumpResult>>,
    reg_snapshots: Option<Vec<RegSnapshot>>,
    cpi_decode_trace: Option<Vec<CpiDecodeEntry>>,
}
//prepare reasonable input and env for svm
fn prepare_inputs(
    cli: &Cli,
) -> Result<(
    Vec<u8>,                       // elf_bytes
    Vec<KeyedAccountSharedData>,   // transaction_accounts
    Vec<InstructionAccount>,       // instruction_accounts
    Vec<AccountMeta>,              // instruction_account_metas
    Vec<u8>,                       // instruction_data
    Pubkey,                        // program_id
    SVMFeatureSet,                 // feature_set
    SVMTransactionExecutionBudget, // compute_budget
    SysvarCache,                   // sysvar_cache
)> {
    // Load ELF bytes
    let elf_bytes = fs::read(&cli.program)
        .with_context(|| format!("Failed to read program file: {}", cli.program))?;

    // Load accounts JSON
    let accounts_json_str = fs::read_to_string(&cli.accounts)
        .with_context(|| format!("Failed to read accounts file: {}", cli.accounts))?;
    let accounts_json: AccountsJson =
        serde_json::from_str(&accounts_json_str).context("Failed to parse accounts JSON")?;

    let instruction_data: Vec<u8> = if let Some(ref b64) = cli.instruction_data {
        BASE64
            .decode(b64)
            .context("Failed to decode --instruction-data")?
    } else if let Some(ref b64) = accounts_json.instruction_data {
        BASE64
            .decode(b64)
            .context("Failed to decode instructionData from JSON")?
    } else if let Some(ref hex) = accounts_json.instruction_data_hex {
        hex::decode(hex).context("Failed to decode instructionDataHex from JSON")?
    } else {
        vec![]
    };

    // Resolve program ID
    let program_id: Pubkey = if let Some(ref pid) = accounts_json.program_id {
        parse_pubkey(pid)?
    } else {
        accounts_json
            .accounts
            .iter()
            .find(|ka| ka.account.executable)
            .map(|ka| parse_pubkey(&ka.pubkey))
            .transpose()?
            .ok_or_else(|| anyhow!("No programId in JSON and no executable account found"))?
    };

    // Build accounts list — program account must be at index 0
    let mut transaction_accounts: Vec<KeyedAccountSharedData> = Vec::new();

    let program_account_pos = accounts_json
        .accounts
        .iter()
        .position(|ka| parse_pubkey(&ka.pubkey).ok().as_ref() == Some(&program_id));

    let program_account = if let Some(pos) = program_account_pos {
        let ka = &accounts_json.accounts[pos];
        build_account_shared_data(&ka.account)?
    } else {
        let mut acc = AccountSharedData::new(1, elf_bytes.len(), &bpf_loader_upgradeable::id());
        acc.set_data_from_slice(&elf_bytes);
        acc.set_executable(true);
        acc
    };
    transaction_accounts.push((program_id, program_account));

    let mut instruction_account_metas: Vec<AccountMeta> = Vec::new();
    let mut instruction_accounts: Vec<InstructionAccount> = Vec::new();
    let mut pubkey_to_tx_index: std::collections::HashMap<Pubkey, u16> =
        std::collections::HashMap::new();
    pubkey_to_tx_index.insert(program_id, 0);

    for ka in accounts_json.accounts.iter() {
        let pubkey = parse_pubkey(&ka.pubkey)?;
        if pubkey == program_id {
            continue;
        }

        let tx_index = if let Some(&idx) = pubkey_to_tx_index.get(&pubkey) {
            idx
        } else {
            let account = build_account_shared_data(&ka.account)?;
            let idx = transaction_accounts.len() as u16;
            transaction_accounts.push((pubkey, account));
            pubkey_to_tx_index.insert(pubkey, idx);
            idx
        };

        instruction_account_metas.push(AccountMeta {
            pubkey,
            is_signer: ka.is_signer,
            is_writable: ka.is_writable,
        });
        instruction_accounts.push(InstructionAccount::new(
            tx_index,
            ka.is_signer,
            ka.is_writable,
        ));
    }

    // Auto-fix Sysvar Instructions account
    let sysvar_ix_id = solana_sdk_ids::sysvar::instructions::id();
    if let Some(&sysvar_tx_idx) = pubkey_to_tx_index.get(&sysvar_ix_id) {
        let (_, ref mut acc) = transaction_accounts[sysvar_tx_idx as usize];
        if *acc.owner() != solana_sdk_ids::sysvar::id() {
            acc.set_owner(solana_sdk_ids::sysvar::id());
        }
        if acc.data().len() < 2 {
            let mut minimal_data = vec![0u8; 4];
            minimal_data[0..2].copy_from_slice(&0u16.to_le_bytes());
            minimal_data[2..4].copy_from_slice(&0u16.to_le_bytes());
            acc.set_data_from_slice(&minimal_data);
        }
    }

    // Feature set + compute budget
    let feature_set = SVMFeatureSet::default();
    let mut compute_budget =
        SVMTransactionExecutionBudget::new_with_defaults(feature_set.raise_cpi_nesting_limit_to_8);
    compute_budget.compute_unit_limit = cli.compute_units;

    // Sysvar cache
    let mut sysvar_cache = SysvarCache::default();
    let mut clock = Clock::default();
    if let Some(slot) = cli.clock_slot.or(accounts_json.clock_slot) {
        clock.slot = slot;
    }
    if let Some(ts) = cli
        .clock_unix_timestamp
        .or(accounts_json.clock_unix_timestamp)
    {
        clock.unix_timestamp = ts;
    }
    sysvar_cache.set_sysvar_for_tests(&clock);
    sysvar_cache.set_sysvar_for_tests(&Rent::default());
    sysvar_cache.set_sysvar_for_tests(&EpochSchedule::default());

    Ok((
        elf_bytes,
        transaction_accounts,
        instruction_accounts,
        instruction_account_metas,
        instruction_data,
        program_id,
        feature_set,
        compute_budget,
        sysvar_cache,
    ))
}

fn build_memory_mapping<'a>(
    invoke_context: &'a mut InvokeContext,
    executable: &Executable<InvokeContext>,
    feature_set: &SVMFeatureSet,
) -> Result<(AlignedMemory<HOST_ALIGN>, Vec<AccountVmRange>)> {
    let instruction_context = invoke_context
        .transaction_context
        .get_current_instruction_context()
        .map_err(|e| anyhow!("get_current_instruction_context failed: {:?}", e))?;
    //translating the host runtime's data structures into the raw memory layout that the svm expects
    let (parameter_bytes, regions, accounts_metadata, _instruction_data_offset) =
        serialization::serialize_parameters(
            &instruction_context,
            feature_set.virtual_address_space_adjustments,
            feature_set.account_data_direct_mapping,
            feature_set.direct_account_pointers_in_program_input,
        )
        .map_err(|e| anyhow!("serialize_parameters failed: {:?}", e))?;

    let is_loader_deprecated =
        instruction_context.get_program_owner()? == solana_sdk_ids::bpf_loader_deprecated::id();
    let account_ranges: Vec<AccountVmRange> = accounts_metadata
        .iter()
        .enumerate()
        .filter(|(_, m)| m.original_data_len > 0)
        .map(|(idx, m)| AccountVmRange {
            vm_start: m.vm_data_addr,
            vm_end: m
                .vm_data_addr
                .saturating_add(m.original_data_len as u64)
                .saturating_add(if !is_loader_deprecated {
                    MAX_PERMITTED_DATA_INCREASE as u64
                } else {
                    0
                }),
            account_idx: idx,
        })
        .collect();
    //copied from solana_program_runtime::vm::set_mem_regions
    let heap_size = invoke_context.get_compute_budget().heap_size;
    let regions = [
        MemoryRegion::new_empty(solana_sbpf::ebpf::MM_RODATA_START),
        MemoryRegion::new_empty(solana_sbpf::ebpf::MM_STACK_START),
        MemoryRegion::new_empty(solana_sbpf::ebpf::MM_HEAP_START),
    ]
    .into_iter()
    .chain(regions) //additional_initialized_regions
    .collect();
    let memory_mapping = unsafe {
        // SAFETY: all memory regions are `default` (and thus implicitly valid) or valid by
        // delegating the safety invariant upon the caller.
        MemoryMapping::new_uninitialized(
            regions,
            executable.get_config(),
            executable.get_sbpf_version(),
            invoke_context.transaction_context.access_violation_handler(
                feature_set.virtual_address_space_adjustments,
                feature_set.account_data_direct_mapping,
            ),
        )
    };

    invoke_context
        .memory_contexts
        .set_memory_context_abi_v1(MemoryContext::new(
            BpfAllocator::new(heap_size as u64),
            accounts_metadata,
            memory_mapping,
        ))
        .map_err(|err| Box::new(err) as Box<dyn std::error::Error>);
    Ok((parameter_bytes, account_ranges))
}

fn extract_traces(cli: &Cli, vm: &solana_sbpf::vm::EbpfVm<InvokeContext>) -> ExecutionTraces {
    let syscall_trace = if cli.trace_syscalls {
        Some(
            vm.syscall_trace
                .iter()
                .map(|e| SyscallTrace {
                    pc: e.pc,
                    name: e.name.clone(),
                    args: e.args,
                    result: e.result,
                    function_pc: e.function_pc,
                    call_depth: e.call_depth,
                })
                .collect(),
        )
    } else {
        None
    };

    let mem_trace = if cli.trace_mem {
        Some(
            vm.mem_trace
                .iter()
                .map(|e| MemTrace {
                    pc: e.pc,
                    op: if e.is_store { "store" } else { "load" },
                    size: e.size,
                    vm_addr: e.vm_addr,
                    value: e.value,
                    account_idx: e.account_idx,
                    account_offset: e.account_offset,
                    function_pc: e.function_pc,
                    call_depth: e.call_depth,
                })
                .collect(),
        )
    } else {
        None
    };

    let insn_trace = if cli.trace_insn.is_some() {
        Some(
            vm.insn_trace
                .iter()
                .map(|e| InsnTrace {
                    pc: e.pc,
                    opcode: e.opcode,
                    opcode_name: e.opcode_name,
                    category: e.category,
                    dst: e.dst,
                    src: e.src,
                    imm: e.imm,
                    off: e.off,
                    dst_val_before: e.dst_val_before,
                    dst_val_after: e.dst_val_after,
                    src_val: e.src_val,
                    branch_taken: e.branch_taken,
                    branch_target: e.branch_target,
                    function_pc: e.function_pc,
                    call_depth: e.call_depth,
                })
                .collect(),
        )
    } else {
        None
    };

    let mem_dump_results = if !cli.dump_mem_at_pc.is_empty() {
        Some(
            vm.mem_dump_results
                .iter()
                .map(|e| MemDumpResult {
                    pc: e.pc,
                    vm_addr: e.vm_addr,
                    bytes: e.bytes.clone(),
                })
                .collect(),
        )
    } else {
        None
    };

    let reg_snapshots = if !cli.trace_regs_at_pc.is_empty() {
        Some(
            vm.reg_snapshots
                .iter()
                .map(|e| RegSnapshot {
                    pc: e.pc,
                    regs: e.regs,
                })
                .collect(),
        )
    } else {
        None
    };

    let cpi_decode_trace = if cli.trace_cpi_decode {
        Some(
            vm.cpi_decode_trace
                .iter()
                .map(|e| CpiDecodeEntry {
                    pc: e.pc,
                    program_id: hex::encode(&e.program_id),
                    accounts_len: e.accounts_len,
                    data_len: e.data_len,
                    data_preview: hex::encode(&e.data_preview),
                })
                .collect(),
        )
    } else {
        None
    };

    ExecutionTraces {
        syscall_trace,
        mem_trace,
        insn_trace,
        mem_dump_results,
        reg_snapshots,
        cpi_decode_trace,
    }
}

fn build_trace_config(
    cli: &Cli,
    program_id: Pubkey,
    executable: &Executable<InvokeContext>,
    account_ranges: Vec<AccountVmRange>,
) -> Result<TraceConfig> {
    let target_program_addr: Option<u64> = if let Some(ref pk_str) = cli.trace_program {
        let target_pk = parse_pubkey(pk_str)?;
        if target_pk == program_id {
            Some(executable.get_text_bytes().0)
        } else {
            None
        }
    } else {
        None
    };

    let (mem_offset_start, mem_offset_end) = if let Some(ref offset_str) = cli.trace_mem_offset {
        let parts: Vec<&str> = offset_str.split(',').collect();
        if parts.len() == 2 {
            let parse_hex = |s: &str| -> Result<u64> {
                let s = s.trim().trim_start_matches("0x").trim_start_matches("0X");
                u64::from_str_radix(s, 16).map_err(|e| anyhow!("bad hex offset '{}': {}", s, e))
            };
            (Some(parse_hex(parts[0])?), Some(parse_hex(parts[1])?))
        } else {
            return Err(anyhow!(
                "--trace-mem-offset expects start,end (hex), got '{}'",
                offset_str
            ));
        }
    } else {
        (None, None)
    };

    use solana_sbpf::vm::InsnTraceCategories;
    let insn_categories = if let Some(ref cats_str) = cli.trace_insn {
        let mut cats = InsnTraceCategories::default();
        for c in cats_str.split(',') {
            match c.trim() {
                "call" => cats.call = true,
                "jump" => cats.jump = true,
                "alu" => cats.alu = true,
                other => {
                    return Err(anyhow!(
                        "unknown --trace-insn category '{}', valid: call,jump,alu",
                        other
                    ));
                }
            }
        }
        cats
    } else {
        InsnTraceCategories::default()
    };

    let dump_mem_specs: Vec<(u64, u64, u64)> = cli
        .dump_mem_at_pc
        .iter()
        .map(|s| {
            let parts: Vec<&str> = s.splitn(3, ',').collect();
            if parts.len() != 3 {
                return Err(anyhow!(
                    "--dump-mem-at-pc expects PC,vm_addr_hex,len, got '{}'",
                    s
                ));
            }
            let pc = parts[0]
                .trim()
                .parse::<u64>()
                .map_err(|e| anyhow!("bad PC '{}': {}", parts[0], e))?;
            let addr_s = parts[1]
                .trim()
                .trim_start_matches("0x")
                .trim_start_matches("0X");
            let vm_addr = u64::from_str_radix(addr_s, 16)
                .map_err(|e| anyhow!("bad vm_addr '{}': {}", parts[1], e))?;
            let len = parts[2]
                .trim()
                .parse::<u64>()
                .map_err(|e| anyhow!("bad len '{}': {}", parts[2], e))?;
            Ok((pc, vm_addr, len))
        })
        .collect::<Result<Vec<_>>>()?;

    let trace_mem_value_match: Option<u64> = if let Some(ref hex_str) = cli.trace_mem_value_match {
        let s = hex_str
            .trim()
            .trim_start_matches("0x")
            .trim_start_matches("0X");
        Some(
            u64::from_str_radix(s, 16)
                .map_err(|e| anyhow!("bad --trace-mem-value-match hex '{}': {}", hex_str, e))?,
        )
    } else {
        None
    };

    let trace_pc_range: Option<(u64, u64)> = if let Some(ref range_str) = cli.trace_pc_range {
        let parts: Vec<&str> = range_str.splitn(2, '-').collect();
        if parts.len() != 2 {
            return Err(anyhow!(
                "--trace-pc-range expects start-end (decimal), got '{}'",
                range_str
            ));
        }
        let start = parts[0]
            .trim()
            .parse::<u64>()
            .map_err(|e| anyhow!("bad range start: {}", e))?;
        let end = parts[1]
            .trim()
            .parse::<u64>()
            .map_err(|e| anyhow!("bad range end: {}", e))?;
        Some((start, end))
    } else {
        None
    };

    Ok(TraceConfig {
        trace_syscalls: cli.trace_syscalls,
        trace_mem: cli.trace_mem,
        trace_stream: false,
        trace_mem_read: cli.trace_mem_read,
        trace_mem_write: cli.trace_mem_write,
        trace_mem_sizes: cli.trace_mem_size.clone(),
        trace_mem_offset_start: mem_offset_start,
        trace_mem_offset_end: mem_offset_end,
        trace_insn: cli.trace_insn.is_some(),
        insn_categories,
        target_program_addr,
        trace_filter_program_id: None,
        trace_mem_account_idx: cli.trace_mem_account,
        account_ranges,
        dump_mem_specs,
        trace_regs_at_pcs: cli.trace_regs_at_pc.clone(),
        trace_mem_value_match,
        trace_pc_range,
        trace_function_pc: cli.trace_function,
        trace_cpi_decode: cli.trace_cpi_decode,
        current_program_id: [0; 32],
        trace_calls: false,
        capture_regs_on_mem_match: false,
        trace_alu_value_match: None,
    })
}
fn execute(
    cli: &Cli,
    elf_bytes: &[u8],
    transaction_accounts: Vec<KeyedAccountSharedData>,
    instruction_accounts: Vec<InstructionAccount>,
    instruction_data: Vec<u8>,
    program_id: Pubkey,
    feature_set: SVMFeatureSet,
    compute_budget: SVMTransactionExecutionBudget,
    sysvar_cache: SysvarCache,
) -> Result<ExecutionResults> {
    //initalize & configure the svm
    let env = create_program_runtime_environment(&feature_set, &compute_budget, false, cli.trace)
        .map_err(|e| anyhow!("Failed to create program runtime environment: {}", e))?;
    //load and verify executable
    let executable = Executable::<InvokeContext>::load(elf_bytes, Arc::clone(&*env))
        .map_err(|e| anyhow!("Failed to load ELF: {}", e))?;
    executable
        .verify::<RequisiteVerifier>()
        .map_err(|e| anyhow!("ELF verification failed: {}", e))?;
    //runtime prep metrices
    let mut load_metrics = LoadProgramMetrics::default();
    //cache entry for programs
    //It contains the actual program in [ProgramCacheEntryType] and a bunch of meta-data.
    let cache_entry = ProgramCacheEntry::load(
        &bpf_loader_upgradeable::id(),
        env.clone(),
        0,
        elf_bytes,
        &mut load_metrics,
    )
    .map_err(|e| anyhow!("Failed to create ProgramCacheEntry: {}", e))?;
    //temporary, localized cache used for processing a single batch of tx's
    let mut program_cache = ProgramCacheForTxBatch::new(0); //empty cache for slot 0
    //load program into cache
    program_cache.replenish(program_id, Arc::new(cache_entry));

    let program_runtime_environments = ProgramRuntimeEnvironments::new(env.clone(), env);
    /*
    Note on Mem Scratchpads:
    When Program A calls Program B, it must pass instruction data and account metadata.
    The TransactionFrame sets up specific memory regions (cpi_data_scratchpad and cpi_accounts_scratchpad)
    in the virtual machine's address space to safely pass this data between the caller and the callee.
    */
    //for single transaction
    //holds the data, accounts, and call-stack state that change as the transaction runs.
    let mut transaction_context = TransactionContext::new(
        transaction_accounts,
        Rent::default(),
        compute_budget.max_instruction_stack_depth,
        compute_budget.max_instruction_trace_length,
        1,
    );
    //runtime env for current block
    let environment_config = EnvironmentConfig::new(
        Hash::default(),
        FeeStructure::default().lamports_per_signature,
        false,
        &MockCallback {},
        &feature_set,
        &program_runtime_environments,
        &sysvar_cache,
    );
    //collect logs ,throughout the way
    let log_collector = LogCollector::new_ref();
    /*
    The InvokeContext is the central orchestrator for executing a single instruction
    (and all its nested CPI calls) within a Solana transaction.
    It bundles together everything the runtime needs to safely and deterministically execute a program:
    state, configuration, budgets, and diagnostics.
    */
    /*
    we added "register_traces" here
    register_traces: Vec<(usize, Vec<[u64; 12]>)>,
    index of ix in the transaction, and a vector of register snapshots for that ix(as we have many snapshots for one ix)
    */
    let mut invoke_context = InvokeContext::new(
        &mut transaction_context,
        &mut program_cache,
        environment_config,
        Some(log_collector.clone()),
        compute_budget,
        SVMTransactionExecutionCost::default(),
    );
    //put an ix
    invoke_context
        .transaction_context
        .configure_top_level_instruction_for_tests(0, instruction_accounts, instruction_data)
        .map_err(|e| anyhow!("configure_next_instruction_for_tests failed: {:?}", e))?;
    //push to the stack
    invoke_context
        .push()
        .map_err(|e| anyhow!("invoke_context.push() failed: {:?}", e))?;
    let executable_ref = unsafe {
        mem::transmute::<
            &Executable<InvokeContext<'static, 'static>>,
            &Executable<InvokeContext<'_, '_>>,
        >(&executable)
    };
    let (parameter_bytes, account_ranges) =
        build_memory_mapping(&mut invoke_context, &executable, &feature_set)?;
    // Safety: we drop the VM before invoke_context goes out of scope

    let mut vm = solana_sbpf::vm::EbpfVm::new(
        executable_ref.get_loader().clone(),
        executable.get_sbpf_version(),
        &mut invoke_context,
        executable_ref.get_config().stack_size(),
    );
    vm.registers[1] = MM_INPUT_START;
    vm.trace_config = build_trace_config(cli, program_id, executable_ref, account_ranges)?;

    let mut call_frames = solana_program_runtime::vm::MEMORY_POOL
        .with_borrow_mut(|memory_pool| memory_pool.get_call_frames());

    let (compute_units_consumed, result) = vm.execute_program(
        executable_ref,
        &mut solana_sbpf::vm::ExecutionMode::Interpreted,
        &mut call_frames,
    );

    // --- CRITICAL STEP: Extract traces BEFORE dropping `vm` ---
    // We map the internal VM trace buffers into our owned structs.
    let traces = extract_traces(cli, &vm);
    // Now it is safe to let `vm`, `invoke_context`, and `transaction_context` drop.
    drop(parameter_bytes);
    drop(vm);

    return Ok(ExecutionResults {
        compute_units_consumed,
        result,
        log_collector,
        syscall_trace: traces.syscall_trace,
        mem_trace: traces.mem_trace,
        insn_trace: traces.insn_trace,
        mem_dump_results: traces.mem_dump_results,
        reg_snapshots: traces.reg_snapshots,
        cpi_decode_trace: traces.cpi_decode_trace,
    });
}
fn collect_output(cli: &Cli, exec_results: ExecutionResults) -> Result<Output> {
    // 1. Extract logs from the collector
    let logs: Vec<String> = exec_results
        .log_collector
        .borrow()
        .get_recorded_content()
        .iter()
        .map(|s| s.to_string())
        .collect();

    // 2. Diff against baseline
    let diff_result = compute_diff_result(
        cli,
        &exec_results.syscall_trace,
        &exec_results.mem_trace,
        &exec_results.insn_trace,
    )?;

    // 3. Data flow analysis
    let data_flow = compute_data_flow(cli, &exec_results.insn_trace)?;

    // 4. Construct final Output
    match exec_results.result {
        solana_sbpf::error::ProgramResult::Ok(return_code) => Ok(Output {
            success: true,
            return_code,
            compute_units_consumed: exec_results.compute_units_consumed,
            logs,
            error: None,
            syscall_trace: exec_results.syscall_trace,
            mem_trace: exec_results.mem_trace,
            insn_trace: exec_results.insn_trace,
            mem_dump_results: exec_results.mem_dump_results,
            reg_snapshots: exec_results.reg_snapshots,
            cpi_decode_trace: exec_results.cpi_decode_trace,
            data_flow,
            diff_result,
        }),
        solana_sbpf::error::ProgramResult::Err(e) => Ok(Output {
            success: false,
            return_code: 0,
            compute_units_consumed: exec_results.compute_units_consumed,
            logs,
            error: Some(format!("{}", e)),
            syscall_trace: exec_results.syscall_trace,
            mem_trace: exec_results.mem_trace,
            insn_trace: exec_results.insn_trace,
            mem_dump_results: exec_results.mem_dump_results,
            reg_snapshots: exec_results.reg_snapshots,
            cpi_decode_trace: exec_results.cpi_decode_trace,
            data_flow,
            diff_result,
        }),
    }
}

fn compute_diff_result(
    cli: &Cli,
    syscall_trace: &Option<Vec<SyscallTrace>>,
    mem_trace: &Option<Vec<MemTrace>>,
    insn_trace: &Option<Vec<InsnTrace>>,
) -> Result<Option<DiffResult>> {
    let diff_result: Option<DiffResult> = if let Some(ref baseline_path) = cli.diff_trace {
        let baseline_str = fs::read_to_string(baseline_path)
            .with_context(|| format!("Failed to read baseline: {}", baseline_path))?;
        let baseline: serde_json::Value =
            serde_json::from_str(&baseline_str).context("Failed to parse baseline JSON")?;

        let mut found: Option<DiffResult> = None;

        if found.is_none() {
            if let (Some(actual_trace), Some(baseline_arr)) = (
                &syscall_trace, //collected syscall trace
                baseline.get("syscall_trace").and_then(|v| v.as_array()),
            ) {
                let baseline_len = baseline_arr.len();
                let actual_len = actual_trace.len();
                for (i, (a, b)) in actual_trace.iter().zip(baseline_arr.iter()).enumerate() {
                    let a_val = serde_json::to_value(a).unwrap_or(serde_json::Value::Null);
                    if &a_val != b {
                        found = Some(DiffResult {
                            diverged: true,
                            first_divergence_index: Some(i),
                            trace_type: Some("syscall".to_string()),
                            baseline_entry: Some(b.clone()),
                            actual_entry: Some(a_val),
                            baseline_len,
                            actual_len,
                        });
                        break;
                    }
                }
                if found.is_none() && baseline_len != actual_len {
                    found = Some(DiffResult {
                        diverged: true,
                        first_divergence_index: Some(baseline_len.min(actual_len)),
                        trace_type: Some("syscall".to_string()),
                        baseline_entry: None,
                        actual_entry: None,
                        baseline_len,
                        actual_len,
                    });
                }
            }
        }

        if found.is_none() {
            if let (Some(actual_trace), Some(baseline_arr)) = (
                &mem_trace,
                baseline.get("mem_trace").and_then(|v| v.as_array()),
            ) {
                let baseline_len = baseline_arr.len();
                let actual_len = actual_trace.len();
                for (i, (a, b)) in actual_trace.iter().zip(baseline_arr.iter()).enumerate() {
                    let a_val = serde_json::to_value(a).unwrap_or(serde_json::Value::Null);
                    if &a_val != b {
                        found = Some(DiffResult {
                            diverged: true,
                            first_divergence_index: Some(i),
                            trace_type: Some("mem".to_string()),
                            baseline_entry: Some(b.clone()),
                            actual_entry: Some(a_val),
                            baseline_len,
                            actual_len,
                        });
                        break;
                    }
                }
                if found.is_none() && baseline_len != actual_len {
                    found = Some(DiffResult {
                        diverged: true,
                        first_divergence_index: Some(baseline_len.min(actual_len)),
                        trace_type: Some("mem".to_string()),
                        baseline_entry: None,
                        actual_entry: None,
                        baseline_len,
                        actual_len,
                    });
                }
            }
        }

        if found.is_none() {
            if let (Some(actual_trace), Some(baseline_arr)) = (
                &insn_trace,
                baseline.get("insn_trace").and_then(|v| v.as_array()),
            ) {
                let baseline_len = baseline_arr.len();
                let actual_len = actual_trace.len();
                for (i, (a, b)) in actual_trace.iter().zip(baseline_arr.iter()).enumerate() {
                    let a_val = serde_json::to_value(a).unwrap_or(serde_json::Value::Null);
                    if &a_val != b {
                        found = Some(DiffResult {
                            diverged: true,
                            first_divergence_index: Some(i),
                            trace_type: Some("insn".to_string()),
                            baseline_entry: Some(b.clone()),
                            actual_entry: Some(a_val),
                            baseline_len,
                            actual_len,
                        });
                        break;
                    }
                }
                if found.is_none() && baseline_len != actual_len {
                    found = Some(DiffResult {
                        diverged: true,
                        first_divergence_index: Some(baseline_len.min(actual_len)),
                        trace_type: Some("insn".to_string()),
                        baseline_entry: None,
                        actual_entry: None,
                        baseline_len,
                        actual_len,
                    });
                }
            }
        }

        Some(found.unwrap_or(DiffResult {
            diverged: false,
            first_divergence_index: None,
            trace_type: None,
            baseline_entry: None,
            actual_entry: None,
            baseline_len: 0,
            actual_len: 0,
        }))
    } else {
        None
    };
    return Ok(diff_result);
}

fn compute_data_flow(
    cli: &Cli,
    insn_trace: &Option<Vec<InsnTrace>>,
) -> Result<Option<Vec<DataFlowEntry>>> {
    let Some(target_reg) = cli.trace_data_flow else {
        return Ok(None);
    };
    let Some(insn_trace_vec) = insn_trace else {
        return Err(anyhow!(
            "--trace-data-flow requires --trace-insn to be enabled"
        ));
    };

    Ok(Some(
        insn_trace_vec
            .iter()
            .filter(|e| e.dst == target_reg && e.dst_val_before != e.dst_val_after)
            .map(|e| {
                let has_src = (e.opcode & ebpf::BPF_X) != 0;
                DataFlowEntry {
                    pc: e.pc,
                    reg: e.dst,
                    value_after: e.dst_val_after,
                    opcode: e.opcode,
                    opcode_name: e.opcode_name,
                    src_reg: has_src.then_some(e.src),
                    src_val: has_src.then_some(e.src_val),
                    function_pc: e.function_pc,
                }
            })
            .collect(),
    ))
}
fn run() -> Result<Output> {
    let cli = Cli::parse();

    // Step 1: Input Preparation
    let (
        elf_bytes,
        transaction_accounts,
        instruction_accounts,
        _instruction_account_metas,
        instruction_data,
        program_id,
        feature_set,
        compute_budget,
        sysvar_cache,
    ) = prepare_inputs(&cli)?;

    // Step 2: Execution (Returns owned traces)
    let exec_results = execute(
        &cli,
        &elf_bytes,
        transaction_accounts,
        instruction_accounts,
        instruction_data,
        program_id,
        feature_set,
        compute_budget,
        sysvar_cache,
    )?;

    // Step 3: Post-Processing & Output Generation
    collect_output(&cli, exec_results)
}
fn legacy_run() -> Result<Output> {
    let cli = Cli::parse();

    // Load ELF bytes
    let elf_bytes = fs::read(&cli.program)
        .with_context(|| format!("Failed to read program file: {}", cli.program))?;

    // Load accounts JSON
    let accounts_json_str = fs::read_to_string(&cli.accounts)
        .with_context(|| format!("Failed to read accounts file: {}", cli.accounts))?;
    let accounts_json: AccountsJson =
        serde_json::from_str(&accounts_json_str).context("Failed to parse accounts JSON")?;

    let instruction_data: Vec<u8> = if let Some(ref b64) = cli.instruction_data {
        BASE64
            .decode(b64)
            .context("Failed to decode --instruction-data")?
    } else if let Some(ref b64) = accounts_json.instruction_data {
        BASE64
            .decode(b64)
            .context("Failed to decode instructionData from JSON")?
    } else if let Some(ref hex) = accounts_json.instruction_data_hex {
        hex::decode(hex).context("Failed to decode instructionDataHex from JSON")?
    } else {
        vec![]
    };

    // Resolve program ID (first executable account or explicit field)
    let program_id: Pubkey = if let Some(ref pid) = accounts_json.program_id {
        parse_pubkey(pid)?
    } else {
        // Find first executable account
        accounts_json
            .accounts
            .iter()
            .find(|ka| ka.account.executable)
            .map(|ka| parse_pubkey(&ka.pubkey))
            .transpose()?
            .ok_or_else(|| anyhow!("No programId in JSON and no executable account found"))?
    };

    // Build accounts list
    // We need: [program_account, ...user_accounts]
    // The program account must be at index 0 in TransactionContext
    let mut transaction_accounts: Vec<KeyedAccountSharedData> = Vec::new();

    // Find or create program account
    let program_account_pos = accounts_json
        .accounts
        .iter()
        .position(|ka| parse_pubkey(&ka.pubkey).ok().as_ref() == Some(&program_id));

    let program_account = if let Some(pos) = program_account_pos {
        let ka = &accounts_json.accounts[pos];
        build_account_shared_data(&ka.account)?
    } else {
        // Create a minimal program account
        let mut acc = AccountSharedData::new(1, elf_bytes.len(), &bpf_loader_upgradeable::id());
        acc.set_data_from_slice(&elf_bytes);
        acc.set_executable(true);
        acc
    };
    transaction_accounts.push((program_id, program_account));

    // Add remaining user accounts (skip program account if already added)
    let mut instruction_account_metas: Vec<AccountMeta> = Vec::new();
    let mut instruction_accounts: Vec<InstructionAccount> = Vec::new();
    let mut pubkey_to_tx_index: std::collections::HashMap<Pubkey, u16> =
        std::collections::HashMap::new();
    pubkey_to_tx_index.insert(program_id, 0);

    for ka in accounts_json.accounts.iter() {
        let pubkey = parse_pubkey(&ka.pubkey)?;
        if pubkey == program_id {
            continue;
        }

        let tx_index = if let Some(&idx) = pubkey_to_tx_index.get(&pubkey) {
            idx
        } else {
            let account = build_account_shared_data(&ka.account)?;
            let idx = transaction_accounts.len() as u16;
            transaction_accounts.push((pubkey, account));
            pubkey_to_tx_index.insert(pubkey, idx);
            idx
        };

        instruction_account_metas.push(AccountMeta {
            pubkey,
            is_signer: ka.is_signer,
            is_writable: ka.is_writable,
        });

        instruction_accounts.push(InstructionAccount::new(
            tx_index,
            ka.is_signer,
            ka.is_writable,
        ));
    }

    // Auto-fix Sysvar Instructions account: owner must be sysvar program,
    // data must be at least 2 bytes (for current_index storage)
    let sysvar_ix_id = solana_sdk_ids::sysvar::instructions::id();
    if let Some(&sysvar_tx_idx) = pubkey_to_tx_index.get(&sysvar_ix_id) {
        let (_, ref mut acc) = transaction_accounts[sysvar_tx_idx as usize];
        if *acc.owner() != solana_sdk_ids::sysvar::id() {
            acc.set_owner(solana_sdk_ids::sysvar::id());
        }
        if acc.data().len() < 2 {
            let mut minimal_data = vec![0u8; 4];
            minimal_data[0..2].copy_from_slice(&0u16.to_le_bytes());
            minimal_data[2..4].copy_from_slice(&0u16.to_le_bytes());
            acc.set_data_from_slice(&minimal_data);
        }
    }

    // Feature set
    let feature_set = SVMFeatureSet::default();

    // Compute budget
    let mut compute_budget =
        SVMTransactionExecutionBudget::new_with_defaults(feature_set.raise_cpi_nesting_limit_to_8);
    compute_budget.compute_unit_limit = cli.compute_units;

    // Build program runtime environment
    let env = create_program_runtime_environment(&feature_set, &compute_budget, false, cli.trace)
        .map_err(|e| anyhow!("Failed to create program runtime environment: {}", e))?;

    // Load and verify the ELF
    let executable = Executable::<InvokeContext>::load(&elf_bytes, Arc::clone(&*env))
        .map_err(|e| anyhow!("Failed to load ELF: {}", e))?;
    executable
        .verify::<RequisiteVerifier>()
        .map_err(|e| anyhow!("ELF verification failed: {}", e))?;

    // Build ProgramCacheEntry
    let mut load_metrics = LoadProgramMetrics::default();
    let cache_entry = ProgramCacheEntry::load(
        &bpf_loader_upgradeable::id(),
        env.clone(),
        0,
        &elf_bytes,
        &mut load_metrics,
    )
    .map_err(|e| anyhow!("Failed to create ProgramCacheEntry: {}", e))?;

    // Build ProgramCacheForTxBatch
    let mut program_cache = ProgramCacheForTxBatch::new(0);
    program_cache.replenish(program_id, Arc::new(cache_entry));

    // Build ProgramRuntimeEnvironments
    let program_runtime_environments = ProgramRuntimeEnvironments::new(env.clone(), env);

    // Build SysvarCache
    let mut sysvar_cache = SysvarCache::default();
    let mut clock = Clock::default();
    if let Some(slot) = cli.clock_slot.or(accounts_json.clock_slot) {
        clock.slot = slot;
    }
    if let Some(ts) = cli
        .clock_unix_timestamp
        .or(accounts_json.clock_unix_timestamp)
    {
        clock.unix_timestamp = ts;
    }
    sysvar_cache.set_sysvar_for_tests(&clock);
    sysvar_cache.set_sysvar_for_tests(&Rent::default());
    sysvar_cache.set_sysvar_for_tests(&EpochSchedule::default());

    let mut transaction_context = TransactionContext::new(
        transaction_accounts,
        Rent::default(),
        compute_budget.max_instruction_stack_depth,
        compute_budget.max_instruction_trace_length,
        1, //let say 1 ix only
    );

    // Configure the instruction
    let fee_structure = FeeStructure::default();
    let environment_config = EnvironmentConfig::new(
        Hash::default(),
        fee_structure.lamports_per_signature,
        false,
        &MockCallback {},
        &feature_set,
        &program_runtime_environments,
        &sysvar_cache,
    );

    let log_collector = LogCollector::new_ref();

    let mut invoke_context = InvokeContext::new(
        &mut transaction_context,
        &mut program_cache,
        environment_config,
        Some(log_collector.clone()),
        compute_budget,
        SVMTransactionExecutionCost::default(),
    );

    invoke_context
        .transaction_context
        .configure_top_level_instruction_for_tests(0, instruction_accounts, instruction_data)
        .map_err(|e| anyhow!("configure_next_instruction_for_tests failed: {:?}", e))?;
    invoke_context
        .push()
        .map_err(|e| anyhow!("invoke_context.push() failed: {:?}", e))?;

    // Serialize parameters
    let instruction_context = invoke_context
        .transaction_context
        .get_current_instruction_context()
        .map_err(|e| anyhow!("get_current_instruction_context failed: {:?}", e))?;

    let (parameter_bytes, regions, accounts_metadata, _instruction_data_offset) =
        serialization::serialize_parameters(
            &instruction_context,
            feature_set.virtual_address_space_adjustments,
            feature_set.account_data_direct_mapping,
            feature_set.direct_account_pointers_in_program_input,
        )
        .map_err(|e| anyhow!("serialize_parameters failed: {:?}", e))?;

    let heap_size = compute_budget.heap_size as usize;
    use solana_sbpf::vm::{AccountVmRange, EbpfVm, TraceConfig};
    let account_ranges: Vec<AccountVmRange> = accounts_metadata
        .iter()
        .enumerate()
        .filter(|(_, m)| m.original_data_len > 0)
        .map(|(idx, m)| AccountVmRange {
            vm_start: m.vm_data_addr,
            vm_end: m.vm_data_addr + m.original_data_len as u64,
            account_idx: idx,
        })
        .collect();

    // Get stack size from executable config
    let stack_size = executable.get_config().stack_size();

    // Allocate stack and heap
    let mut stack_data = vec![0u8; stack_size];
    let stack = HostBuffer::Mutable(std::ptr::slice_from_raw_parts_mut(
        stack_data.as_mut_ptr(),
        stack_size,
    ));
    let mut heap_data = vec![0u8; heap_size];
    let heap = HostBuffer::Mutable(std::ptr::slice_from_raw_parts_mut(
        heap_data.as_mut_ptr(),
        heap_size,
    ));

    let sbpf_version = executable.get_sbpf_version();
    let config = executable.get_config();
    //dynamic stack frames ,are aviable in all version ,other than v0
    let mut all_regions: Vec<MemoryRegion> = vec![
        executable.get_ro_region(),
        MemoryRegion::new_gapped(
            stack,
            ebpf::MM_STACK_START,
            if !(sbpf_version >= SBPFVersion::V1) && config.enable_stack_frame_gaps {
                config.stack_frame_size as u64
            } else {
                0
            },
        ),
        MemoryRegion::new(heap, ebpf::MM_HEAP_START),
    ];
    all_regions.extend(regions);

    let memory_mapping = unsafe {
        MemoryMapping::new(all_regions, config, sbpf_version)
            .map_err(|e| anyhow!("Failed to create memory mapping: {}", e))?
    };
    invoke_context
        .memory_contexts
        .set_memory_context_abi_v1(MemoryContext::new(
            BpfAllocator::new(compute_budget.heap_size as u64), //from solana_program_entrypoint crate
            accounts_metadata,
            memory_mapping,
        ))
        .unwrap();

    // Transmute executable to match invoke_context lifetime
    // Safety: we drop the VM before invoke_context goes out of scope
    let executable_ref = unsafe {
        mem::transmute::<
            &Executable<InvokeContext<'static, 'static>>,
            &Executable<InvokeContext<'_, '_>>,
        >(&executable)
    };

    // Create VM
    let mut vm = EbpfVm::new(
        executable_ref.get_loader().clone(),
        sbpf_version,
        &mut invoke_context,
        stack_size,
    );
    vm.registers[1] = MM_INPUT_START;

    let target_program_addr: Option<u64> = if let Some(ref pk_str) = cli.trace_program {
        let target_pk = parse_pubkey(pk_str)?;
        if target_pk == program_id {
            Some(executable_ref.get_text_bytes().0)
        } else {
            None
        }
    } else {
        None
    };

    let (mem_offset_start, mem_offset_end) = if let Some(ref offset_str) = cli.trace_mem_offset {
        let parts: Vec<&str> = offset_str.split(',').collect();
        if parts.len() == 2 {
            let parse_hex = |s: &str| -> Result<u64> {
                let s = s.trim().trim_start_matches("0x").trim_start_matches("0X");
                u64::from_str_radix(s, 16).map_err(|e| anyhow!("bad hex offset '{}': {}", s, e))
            };
            (Some(parse_hex(parts[0])?), Some(parse_hex(parts[1])?))
        } else {
            return Err(anyhow!(
                "--trace-mem-offset expects start,end (hex), got '{}'",
                offset_str
            ));
        }
    } else {
        (None, None)
    };

    use solana_sbpf::vm::InsnTraceCategories;
    let insn_categories = if let Some(ref cats_str) = cli.trace_insn {
        let mut cats = InsnTraceCategories::default();
        for c in cats_str.split(',') {
            match c.trim() {
                "call" => cats.call = true,
                "jump" => cats.jump = true,
                "alu" => cats.alu = true,
                other => {
                    return Err(anyhow!(
                        "unknown --trace-insn category '{}', valid: call,jump,alu",
                        other
                    ));
                }
            }
        }
        cats
    } else {
        InsnTraceCategories::default()
    };

    let dump_mem_specs: Vec<(u64, u64, u64)> = cli
        .dump_mem_at_pc
        .iter()
        .map(|s| {
            let parts: Vec<&str> = s.splitn(3, ',').collect();
            if parts.len() != 3 {
                return Err(anyhow!(
                    "--dump-mem-at-pc expects PC,vm_addr_hex,len, got '{}'",
                    s
                ));
            }
            let pc = parts[0]
                .trim()
                .parse::<u64>()
                .map_err(|e| anyhow!("bad PC '{}': {}", parts[0], e))?;
            let addr_s = parts[1]
                .trim()
                .trim_start_matches("0x")
                .trim_start_matches("0X");
            let vm_addr = u64::from_str_radix(addr_s, 16)
                .map_err(|e| anyhow!("bad vm_addr '{}': {}", parts[1], e))?;
            let len = parts[2]
                .trim()
                .parse::<u64>()
                .map_err(|e| anyhow!("bad len '{}': {}", parts[2], e))?;
            Ok((pc, vm_addr, len))
        })
        .collect::<Result<Vec<_>>>()?;

    let trace_mem_value_match: Option<u64> = if let Some(ref hex_str) = cli.trace_mem_value_match {
        let s = hex_str
            .trim()
            .trim_start_matches("0x")
            .trim_start_matches("0X");
        Some(
            u64::from_str_radix(s, 16)
                .map_err(|e| anyhow!("bad --trace-mem-value-match hex '{}': {}", hex_str, e))?,
        )
    } else {
        None
    };

    let trace_pc_range: Option<(u64, u64)> = if let Some(ref range_str) = cli.trace_pc_range {
        let parts: Vec<&str> = range_str.splitn(2, '-').collect();
        if parts.len() != 2 {
            return Err(anyhow!(
                "--trace-pc-range expects start-end (decimal), got '{}'",
                range_str
            ));
        }
        let start = parts[0]
            .trim()
            .parse::<u64>()
            .map_err(|e| anyhow!("bad range start: {}", e))?;
        let end = parts[1]
            .trim()
            .parse::<u64>()
            .map_err(|e| anyhow!("bad range end: {}", e))?;
        Some((start, end))
    } else {
        None
    };

    vm.trace_config = TraceConfig {
        trace_syscalls: cli.trace_syscalls,
        trace_mem: cli.trace_mem,
        trace_stream: false,
        trace_mem_read: cli.trace_mem_read,
        trace_mem_write: cli.trace_mem_write,
        trace_mem_sizes: cli.trace_mem_size.clone(),
        trace_mem_offset_start: mem_offset_start,
        trace_mem_offset_end: mem_offset_end,
        trace_insn: cli.trace_insn.is_some(),
        insn_categories,
        target_program_addr,
        trace_filter_program_id: None,
        trace_mem_account_idx: cli.trace_mem_account,
        account_ranges,
        dump_mem_specs,
        trace_regs_at_pcs: cli.trace_regs_at_pc.clone(),
        trace_mem_value_match,
        trace_pc_range,
        trace_function_pc: cli.trace_function,
        trace_cpi_decode: cli.trace_cpi_decode,
        current_program_id: [0; 32],
        trace_calls: false,
        capture_regs_on_mem_match: false,
        trace_alu_value_match: None,
    };

    let mut call_frames = solana_program_runtime::vm::MEMORY_POOL
        .with_borrow_mut(|memory_pool| memory_pool.get_call_frames());
    // Execute in interpreter mode (use_jit = false)
    let (compute_units_consumed, result) = vm.execute_program(
        executable_ref,
        &mut solana_sbpf::vm::ExecutionMode::Interpreted,
        &mut call_frames,
    );

    let collected_syscall_trace: Option<Vec<SyscallTrace>> = if cli.trace_syscalls {
        Some(
            vm.syscall_trace
                .iter()
                .map(|e| SyscallTrace {
                    pc: e.pc,
                    name: e.name.clone(),
                    args: e.args,
                    result: e.result,
                    function_pc: e.function_pc,
                    call_depth: e.call_depth,
                })
                .collect(),
        )
    } else {
        None
    };
    let collected_mem_trace: Option<Vec<MemTrace>> = if cli.trace_mem {
        Some(
            vm.mem_trace
                .iter()
                .map(|e| MemTrace {
                    pc: e.pc,
                    op: if e.is_store { "store" } else { "load" },
                    size: e.size,
                    vm_addr: e.vm_addr,
                    value: e.value,
                    account_idx: e.account_idx,
                    account_offset: e.account_offset,
                    function_pc: e.function_pc,
                    call_depth: e.call_depth,
                })
                .collect(),
        )
    } else {
        None
    };
    let collected_insn_trace: Option<Vec<InsnTrace>> = if cli.trace_insn.is_some() {
        Some(
            vm.insn_trace
                .iter()
                .map(|e| InsnTrace {
                    pc: e.pc,
                    opcode: e.opcode,
                    opcode_name: e.opcode_name,
                    category: e.category,
                    dst: e.dst,
                    src: e.src,
                    imm: e.imm,
                    off: e.off,
                    dst_val_before: e.dst_val_before,
                    dst_val_after: e.dst_val_after,
                    src_val: e.src_val,
                    branch_taken: e.branch_taken,
                    branch_target: e.branch_target,
                    function_pc: e.function_pc,
                    call_depth: e.call_depth,
                })
                .collect(),
        )
    } else {
        None
    };

    let collected_mem_dump: Option<Vec<MemDumpResult>> = if !cli.dump_mem_at_pc.is_empty() {
        Some(
            vm.mem_dump_results
                .iter()
                .map(|e| MemDumpResult {
                    pc: e.pc,
                    vm_addr: e.vm_addr,
                    bytes: e.bytes.clone(),
                })
                .collect(),
        )
    } else {
        None
    };

    let collected_reg_snapshots: Option<Vec<RegSnapshot>> = if !cli.trace_regs_at_pc.is_empty() {
        Some(
            vm.reg_snapshots
                .iter()
                .map(|e| RegSnapshot {
                    pc: e.pc,
                    regs: e.regs,
                })
                .collect(),
        )
    } else {
        None
    };

    let collected_cpi_decode: Option<Vec<CpiDecodeEntry>> = if cli.trace_cpi_decode {
        Some(
            vm.cpi_decode_trace
                .iter()
                .map(|e| CpiDecodeEntry {
                    pc: e.pc,
                    program_id: hex::encode(&e.program_id),
                    accounts_len: e.accounts_len,
                    data_len: e.data_len,
                    data_preview: hex::encode(&e.data_preview),
                })
                .collect(),
        )
    } else {
        None
    };

    let diff_result: Option<DiffResult> = if let Some(ref baseline_path) = cli.diff_trace {
        let baseline_str = fs::read_to_string(baseline_path)
            .with_context(|| format!("Failed to read baseline: {}", baseline_path))?;
        let baseline: serde_json::Value =
            serde_json::from_str(&baseline_str).context("Failed to parse baseline JSON")?;

        let mut found: Option<DiffResult> = None;

        if found.is_none() {
            if let (Some(actual_trace), Some(baseline_arr)) = (
                &collected_syscall_trace,
                baseline.get("syscall_trace").and_then(|v| v.as_array()),
            ) {
                let baseline_len = baseline_arr.len();
                let actual_len = actual_trace.len();
                for (i, (a, b)) in actual_trace.iter().zip(baseline_arr.iter()).enumerate() {
                    let a_val = serde_json::to_value(a).unwrap_or(serde_json::Value::Null);
                    if &a_val != b {
                        found = Some(DiffResult {
                            diverged: true,
                            first_divergence_index: Some(i),
                            trace_type: Some("syscall".to_string()),
                            baseline_entry: Some(b.clone()),
                            actual_entry: Some(a_val),
                            baseline_len,
                            actual_len,
                        });
                        break;
                    }
                }
                if found.is_none() && baseline_len != actual_len {
                    found = Some(DiffResult {
                        diverged: true,
                        first_divergence_index: Some(baseline_len.min(actual_len)),
                        trace_type: Some("syscall".to_string()),
                        baseline_entry: None,
                        actual_entry: None,
                        baseline_len,
                        actual_len,
                    });
                }
            }
        }

        if found.is_none() {
            if let (Some(actual_trace), Some(baseline_arr)) = (
                &collected_mem_trace,
                baseline.get("mem_trace").and_then(|v| v.as_array()),
            ) {
                let baseline_len = baseline_arr.len();
                let actual_len = actual_trace.len();
                for (i, (a, b)) in actual_trace.iter().zip(baseline_arr.iter()).enumerate() {
                    let a_val = serde_json::to_value(a).unwrap_or(serde_json::Value::Null);
                    if &a_val != b {
                        found = Some(DiffResult {
                            diverged: true,
                            first_divergence_index: Some(i),
                            trace_type: Some("mem".to_string()),
                            baseline_entry: Some(b.clone()),
                            actual_entry: Some(a_val),
                            baseline_len,
                            actual_len,
                        });
                        break;
                    }
                }
                if found.is_none() && baseline_len != actual_len {
                    found = Some(DiffResult {
                        diverged: true,
                        first_divergence_index: Some(baseline_len.min(actual_len)),
                        trace_type: Some("mem".to_string()),
                        baseline_entry: None,
                        actual_entry: None,
                        baseline_len,
                        actual_len,
                    });
                }
            }
        }

        if found.is_none() {
            if let (Some(actual_trace), Some(baseline_arr)) = (
                &collected_insn_trace,
                baseline.get("insn_trace").and_then(|v| v.as_array()),
            ) {
                let baseline_len = baseline_arr.len();
                let actual_len = actual_trace.len();
                for (i, (a, b)) in actual_trace.iter().zip(baseline_arr.iter()).enumerate() {
                    let a_val = serde_json::to_value(a).unwrap_or(serde_json::Value::Null);
                    if &a_val != b {
                        found = Some(DiffResult {
                            diverged: true,
                            first_divergence_index: Some(i),
                            trace_type: Some("insn".to_string()),
                            baseline_entry: Some(b.clone()),
                            actual_entry: Some(a_val),
                            baseline_len,
                            actual_len,
                        });
                        break;
                    }
                }
                if found.is_none() && baseline_len != actual_len {
                    found = Some(DiffResult {
                        diverged: true,
                        first_divergence_index: Some(baseline_len.min(actual_len)),
                        trace_type: Some("insn".to_string()),
                        baseline_entry: None,
                        actual_entry: None,
                        baseline_len,
                        actual_len,
                    });
                }
            }
        }

        Some(found.unwrap_or(DiffResult {
            diverged: false,
            first_divergence_index: None,
            trace_type: None,
            baseline_entry: None,
            actual_entry: None,
            baseline_len: 0,
            actual_len: 0,
        }))
    } else {
        None
    };

    let data_flow: Option<Vec<DataFlowEntry>> = if let Some(target_reg) = cli.trace_data_flow {
        if let Some(ref insn_trace_vec) = collected_insn_trace {
            Some(
                insn_trace_vec
                    .iter()
                    .filter(|e| e.dst == target_reg && e.dst_val_before != e.dst_val_after)
                    .map(|e| DataFlowEntry {
                        pc: e.pc,
                        reg: e.dst,
                        value_after: e.dst_val_after,
                        opcode: e.opcode,
                        opcode_name: e.opcode_name,
                        src_reg: if e.src != 0 || e.src_val != 0 {
                            Some(e.src)
                        } else {
                            None
                        },
                        src_val: if e.src != 0 || e.src_val != 0 {
                            Some(e.src_val)
                        } else {
                            None
                        },
                        function_pc: e.function_pc,
                    })
                    .collect(),
            )
        } else {
            return Err(anyhow!(
                "--trace-data-flow requires --trace-insn to be enabled"
            ));
        }
    } else {
        None
    };

    // Drop VM before accessing invoke_context
    drop(vm);

    // Keep parameter_bytes alive until after VM execution
    drop(parameter_bytes);

    // Collect logs
    let logs: Vec<String> = log_collector
        .borrow()
        .get_recorded_content()
        .iter()
        .map(|s| s.to_string())
        .collect();

    // Interpret result
    use solana_sbpf::error::ProgramResult;
    match result {
        ProgramResult::Ok(return_code) => Ok(Output {
            success: true,
            return_code,
            compute_units_consumed,
            logs,
            error: None,
            syscall_trace: collected_syscall_trace,
            mem_trace: collected_mem_trace,
            insn_trace: collected_insn_trace,
            mem_dump_results: collected_mem_dump,
            reg_snapshots: collected_reg_snapshots,
            cpi_decode_trace: collected_cpi_decode,
            data_flow,
            diff_result,
        }),
        ProgramResult::Err(e) => Ok(Output {
            success: false,
            return_code: 0,
            compute_units_consumed,
            logs,
            error: Some(format!("{}", e)),
            syscall_trace: collected_syscall_trace,
            mem_trace: collected_mem_trace,
            insn_trace: collected_insn_trace,
            mem_dump_results: collected_mem_dump,
            reg_snapshots: collected_reg_snapshots,
            cpi_decode_trace: collected_cpi_decode,
            data_flow,
            diff_result,
        }),
    }
}
