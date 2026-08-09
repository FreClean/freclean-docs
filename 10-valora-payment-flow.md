# 10 — Valora Payment Flow

## Why Valora

Valora is a mobile wallet built specifically for Celo, making it the natural first wallet FreClean supports for non-technical customers and entrepreneurs.

## Flow (as implemented today)

```mermaid
sequenceDiagram
    participant C as Customer
    participant D as FreClean dApp
    participant W as Valora Wallet
    participant P as freclean-payment
    participant N as Celo Network

    C->>D: Selects amount + supported asset
    D->>P: Creates payment request (status: requested)
    C->>W: Confirms payment in Valora
    W->>N: Signs and submits transfer
    P->>N: Polls for matching transfer
    N-->>P: Transfer detected
    P->>P: Waits for confirmations
    P-->>D: Status: verified → confirmed
    D-->>C: Shows receipt
```

## Current limitation

`freclean-dapp` today only detects an already-injected wallet provider (a desktop extension or a wallet's in-app browser). The most common real Valora flow — scanning a QR code from a separate phone — requires a WalletConnect v2 session, which is not yet implemented. This is documented, not hidden, in `freclean-dapp/README.md` and `freclean-dapp/SECURITY.md`.

## What Valora never sees or sends to FreClean

FreClean never requests, stores, or transmits a private key or seed phrase at any point in this flow. Signing happens entirely inside Valora.
