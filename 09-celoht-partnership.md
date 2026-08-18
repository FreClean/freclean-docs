# 09 - CeloHT Partnership

## What is documented on FreClean's side

FreClean's checkout and payment systems are built to integrate with CeloHT as the Web3 infrastructure and payment partner (see `07-web3-strategy.md`). CeloHT's own product documentation, API contracts, and webhook specifications are owned and published by CeloHT - FreClean does not restate or guess at them here.

## What is not yet documented

| Item | Status |
|---|---|
| CeloHT webhook payload schema | Not provided - placeholder pattern implemented in `freclean-payment/src/webhook/celoHtWebhook.ts` pending CeloHT's real specification |
| CeloHT API credentials/endpoints | Not provided in any repository - must never be committed once issued; see `16-security-architecture.md` |
| Formal partnership terms | Not provided in this whitepaper |

## Integration pattern (ready to receive real specifications)

FreClean has implemented the *shape* of a CeloHT integration - HMAC-signed webhook verification, a typed placeholder payload, and a clear seam in `freclean-payment` where the real payload type replaces the placeholder - without inventing details CeloHT hasn't published. This means the remaining integration work is filling in a known gap, not redesigning the payment flow.

## Brand usage

The CeloHT mark appears in FreClean materials (website, dApp) only where the partnership is real and only using assets FreClean is authorized to use - see `freclean-brand` for asset provenance once published there.
