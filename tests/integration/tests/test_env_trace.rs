use litesvm::LiteSVM;
use solana_instruction::{AccountMeta, Instruction};
use solana_keypair::Keypair;
use solana_message::Message;
use solana_pubkey::Pubkey;
use solana_signer::Signer;
use solana_transaction::Transaction;
use std::str::FromStr;

#[test]
fn test_memo_trace() {
    let mut svm = LiteSVM::new();

    let payer = Keypair::new();
    svm.airdrop(&payer.pubkey(), 10_000_000_000).unwrap();

    let memo_program = Pubkey::from_str("MemoSq4gqABAXKb96qnH8TysNcWxMyWCqXgDLGmfcHr").unwrap();
    let memo_ix = Instruction {
        program_id: memo_program,
        accounts: vec![AccountMeta::new_readonly(payer.pubkey(), true)],
        data: b"hello litesvm-dbg trace".to_vec(),
    };

    let blockhash = svm.latest_blockhash();
    let msg = Message::new(&[memo_ix], Some(&payer.pubkey()));
    let tx = Transaction::new(&[&payer], msg, blockhash);
    assert!(svm.send_transaction(tx).is_ok());
}
