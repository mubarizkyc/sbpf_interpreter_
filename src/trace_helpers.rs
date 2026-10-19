use crate::{
    AccountData, AccountsJson, Cli, CpiDecodeEntry, InsnTrace, MemDumpResult, MemTrace,
    RegSnapshot, SyscallTrace, TraceContext,
};
use anyhow::{Context, Result, anyhow};
use base64::{Engine, engine::general_purpose::STANDARD as BASE64};
use serde::Serialize;
use solana_account::{AccountSharedData, ReadableAccount, WritableAccount};
use solana_clock::Clock;
use solana_epoch_schedule::EpochSchedule;
use solana_instruction::AccountMeta;
use solana_program_runtime::{
    execution_budget::SVMTransactionExecutionBudget, sysvar_cache::SysvarCache,
};
use solana_pubkey::Pubkey;
use solana_rent::Rent;
use solana_sbpf::ebpf;
use std::cell::RefCell;
use std::{fs, rc::Rc, str::FromStr};

use solana_sdk_ids::bpf_loader_upgradeable;
use solana_svm_feature_set::SVMFeatureSet;
use solana_svm_log_collector::LogCollector;
use solana_transaction_context::{
    instruction_accounts::InstructionAccount, transaction_accounts::KeyedAccountSharedData,
};
#[derive(Serialize)]
pub struct DataFlowEntry {
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
pub struct DiffResult {
    diverged: bool,
    first_divergence_index: Option<usize>,
    trace_type: Option<String>,
    baseline_entry: Option<serde_json::Value>,
    actual_entry: Option<serde_json::Value>,
    baseline_len: usize,
    actual_len: usize,
}

pub struct ExecutionResults {
    pub compute_units_consumed: u64,
    pub result: solana_sbpf::error::ProgramResult,
    pub log_collector: Rc<RefCell<LogCollector>>,
    pub syscall_trace: Option<Vec<SyscallTrace>>,
    pub mem_trace: Option<Vec<MemTrace>>,
    pub insn_trace: Option<Vec<InsnTrace>>,
    pub insn_desc: Option<Vec<String>>,
    pub mem_dump_results: Option<Vec<MemDumpResult>>,
    pub reg_snapshots: Option<Vec<RegSnapshot>>,
    pub cpi_decode_trace: Option<Vec<CpiDecodeEntry>>,
    pub trace_context: Option<TraceContext>,
}
pub struct ExecutionTraces {
    pub syscall_trace: Option<Vec<SyscallTrace>>,
    pub mem_trace: Option<Vec<MemTrace>>,
    pub insn_trace: Option<Vec<InsnTrace>>,
    pub mem_dump_results: Option<Vec<MemDumpResult>>,
    pub reg_snapshots: Option<Vec<RegSnapshot>>,
    pub cpi_decode_trace: Option<Vec<CpiDecodeEntry>>,
}
pub fn parse_pubkey(s: &str) -> Result<Pubkey> {
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

pub fn build_account_shared_data(ad: &AccountData) -> Result<AccountSharedData> {
    let data = decode_account_data(&ad.data)?;
    let owner = parse_pubkey(&ad.owner)?;
    let mut account = AccountSharedData::new(ad.lamports, data.len(), &owner);
    account.set_data_from_slice(&data);
    account.set_executable(ad.executable);
    account.set_rent_epoch(ad.rent_epoch);
    Ok(account)
}
//prepare reasonable input and env for svm
pub fn prepare_inputs(
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
pub fn compute_diff_result(
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

pub fn compute_data_flow(
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
