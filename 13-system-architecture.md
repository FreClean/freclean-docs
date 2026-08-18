# 13 - System Architecture

## Request flow (typical booking + payment)

```mermaid
sequenceDiagram
    participant U as Customer (freclean-website)
    participant A as freclean-api
    participant Ad as freclean-admin (staff)
    participant P as freclean-payment
    participant N as Celo

    U->>A: POST /api/bookings
    A-->>U: Booking created (status: requested)
    Ad->>A: PATCH /api/bookings/:id (assign team)
    U->>A: POST /api/payments (method: web3)
    P->>A: GET /api/payments (poll pending)
    P->>N: Check for matching transfer
    N-->>P: Transfer detected + confirmed
    P->>A: POST /api/payments/:id/transition
    A-->>U: Payment confirmed, receipt available
```

## Environments

| Environment | Purpose | Status |
|---|---|---|
| Local development | Each repo runnable independently against in-memory/demo data | Available today |
| Staging | Shared environment for integration testing across repos | Not yet provisioned |
| Production | Live customer-facing environment | Not yet provisioned |

## Service boundaries

- `freclean-api` owns all business data and is the single source of truth other services read from or write to.
- `freclean-payment` never writes directly to `freclean-api`'s data store - it calls the same authenticated REST endpoints any other client would, keeping the boundary honest and auditable.
- `freclean-admin` and `freclean-dapp` are pure clients of `freclean-api`; neither holds business logic that duplicates what the API enforces.
