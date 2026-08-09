# 17 — Treasury Policy

## Structure

FreClean will hold both a corporate bank account and a corporate Web3 wallet / treasury. Neither is controlled by one person alone for significant transactions.

| Fund category | Purpose |
|---|---|
| Operating funds | Day-to-day business expenses |
| Reserves | Buffer against shortfalls or emergencies |
| Growth / reinvestment funds | Product development, entrepreneur program expansion, equipment |
| Approved expenses | Pre-approved recurring costs |

No balances are published here — see the realism principle in `24-legal-policy-framework.md`. This document describes structure, not invented figures.

## Governance controls

- Multi-signature approval required for transactions above a threshold to be defined in the finalized policy.
- Spending limits per role, aligned with `18-governance-policy.md`'s responsibilities table.
- All transactions recorded and reviewable — see `freclean-admin`'s Audit Logs and Treasury Overview sections.

## Web3 treasury handling

FreClean's Web3 treasury wallet address is public information (safe to publish once assigned) — a receiving address is not a secret. What is never published, stored in a repository, or handled by any automated FreClean system is the treasury's private key or seed phrase. Outbound Web3 transfers (including refunds — see `freclean-payment/SECURITY.md`) are executed manually through the multi-signature process, not automated.

## Key management

- Private keys and seed phrases are never committed to any FreClean repository.
- Key custody arrangement (hardware wallet, multi-sig service) is to be finalized as part of the treasury's operational rollout.
- A documented recovery procedure will exist before any meaningful treasury balance is held on-chain.

## Emergency procedures

To be finalized alongside the five-member management group's operational rollout — see `18-governance-policy.md`.
