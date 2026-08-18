# 26 - Disaster Recovery

## Scope

Covers recovery of FreClean's digital systems (`freclean-api` and its data, `freclean-payment`'s verification worker, hosted front-ends) in the event of an outage, data loss, or infrastructure failure. Physical business continuity (equipment, staff, facilities) is covered in `25-business-continuity.md`.

## Current state

No production infrastructure is provisioned yet (see `13-system-architecture.md`), so no formal disaster recovery drill has been run. This document sets requirements for before production launch, not a record of tested recovery times.

## Requirements before production launch

- [ ] Automated backups of the production database (once `freclean-data`/PostgreSQL replaces the in-memory store)
- [ ] Documented recovery time objective (RTO) and recovery point objective (RPO)
- [ ] Tested restore procedure, not just backup creation
- [ ] Redundant Celo RPC endpoint configuration for `freclean-payment` so a single provider outage doesn't halt Web3 verification
- [ ] Incident communication plan for customer-facing outages

## Treasury-specific recovery

A documented key-custody recovery procedure (see `17-treasury-policy.md`) is required before any meaningful treasury balance is held on-chain - this is treated as a launch blocker for scaling Web3 payment volume, not a nice-to-have.
