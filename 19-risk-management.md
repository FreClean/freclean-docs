# 19 — Risk Management

## Risk matrix

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| Customer/entrepreneur loses funds via a scam impersonating FreClean's Web3 payment flow | Medium | High | Clear "Learn" content in `freclean-dapp`; FreClean never asks for a private key or seed phrase; public Supported Assets Registry so a fake asset is detectable |
| A product is sold before safety data is verified | Low (blocked by process) | High | CI-enforced lifecycle rule in `freclean-products` — a product cannot be marked available without a real SKU and in-production status |
| Treasury funds mismanaged or misappropriated | Low (mitigated by design) | High | Multi-signature requirement, no single-person control — see `17-treasury-policy.md` |
| CeloHT integration details change before implementation | Medium | Medium | Integration built as a documented placeholder pattern (`09-celoht-partnership.md`) designed to absorb the real spec without a redesign |
| Team capacity overcommitted, service quality drops | Medium | Medium | Capacity-aware dispatch (`05-services-strategy.md`), checklist-driven quality control |
| Regulatory treatment of stablecoin payments in Haiti changes | Medium | Medium | Web3 kept strictly optional alongside cash/card; no token issuance to minimize regulatory surface area |
| Key person risk (founder-dependent decisions) | Medium | Medium | Five-member management group with defined responsibilities — see `18-governance-policy.md` |
| Data breach of customer information | Low (mitigated by design) | High | RBAC, JWT auth, rate limiting, no unnecessary PII collected — see `16-security-architecture.md` |

## Approach

Risks are tracked here at the level FreClean can honestly assess today — likelihood and impact ratings are qualitative judgment calls, not modeled probabilities, and will be revisited as real operating data accumulates.

## What is deliberately out of scope for risk mitigation right now

Speculative risks tied to a FreClean token, lending product, or yield mechanism are out of scope because none of those products exist or are planned — see `07-web3-strategy.md`'s explicit exclusions.
