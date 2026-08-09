# 07 — Web3 Strategy

## Scope, deliberately narrow

FreClean's entire Web3 strategy fits in one sentence: **accept Celo stablecoin payments, through CeloHT, verified the same way any other payment is verified.** Everything else — no token, no lending, no yield product, no proprietary chain — is a deliberate exclusion, not an oversight.

| In scope | Out of scope |
|---|---|
| Celo stablecoin payments via CeloHT | A FreClean token |
| Valora wallet support | A FreClean blockchain |
| Payment verification and status tracking | Lending or yield products |
| A public Supported Assets Registry | Speculative trading features |

## Why Celo

Celo is a public blockchain designed around low-cost, mobile-first payments — a good technical fit for a customer base where mobile access often outpaces traditional banking access. FreClean did not evaluate or select alternative chains as part of this documentation; Celo, via the CeloHT partnership, is the chain in use.

## Why CeloHT

CeloHT is FreClean's Web3 infrastructure partner, handling the technical integration between FreClean's checkout flow and the Celo network. Partnership terms and CeloHT's own technical documentation are held by CeloHT, not duplicated here — see `09-celoht-partnership.md` for what is and isn't yet documented on FreClean's side.

## Adoption strategy

1. Ship Web3 as a genuinely optional third payment method alongside cash and card — never the only option, so no customer or entrepreneur is forced into it.
2. Make the "Learn" content in `freclean-dapp` good enough that a first-time crypto user can complete a payment without external help.
3. Prove the flow internally (staff, then a small group of customers) before promoting it broadly.
4. Publish the Supported Assets Registry honestly — empty until an asset is verified, exactly as it stands in `freclean-payment` and `freclean-api` today.

## Success looks like

Real, growing, verifiable transaction volume on real bookings and orders — not press coverage, not a token price, not a follower count. See `29-kpi-framework.md` for the specific metrics FreClean will track once volume exists.
