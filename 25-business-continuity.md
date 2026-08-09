# 25 — Business Continuity

## Key dependencies

| Dependency | Continuity concern | Current mitigation |
|---|---|---|
| Founder availability | Single point of decision-making today | Five-member management group being formalized — see `18-governance-policy.md` |
| Celo RPC endpoint | `freclean-payment` depends on a live RPC endpoint | Currently a public endpoint; moving to a dedicated provider is on the roadmap |
| CeloHT partnership | Web3 payments depend on this integration | Payment flow degrades gracefully to cash/card if Web3 is unavailable — Web3 is never the only payment method |
| Cleaning team capacity | Service delivery depends on trained staff | Checklist-driven process (`freclean-operations`) reduces reliance on any one individual's tacit knowledge |
| Hosting/infrastructure | No production environment provisioned yet | To be established alongside first production deployment |

## Principle

No single payment method, individual, or vendor is a hard dependency for FreClean's core cleaning-services revenue. Web3 payments, in particular, are additive — their unavailability degrades convenience, not the ability to transact.

## Not yet finalized

A formal business continuity plan (backup facilities, staff cross-training targets, vendor failover agreements) has not yet been written. This section identifies the dependencies that plan will need to address.
