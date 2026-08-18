# 23 - Privacy

## What FreClean collects

| Data | Purpose | Where |
|---|---|---|
| Name, phone, email, address | Booking and order fulfillment | `freclean-api` `/api/customers` |
| Payment method details (never card numbers or wallet keys) | Payment processing and verification | `freclean-api` `/api/payments` |
| Web3 wallet address, asset, transaction hash | Web3 payment verification | `freclean-payment`, `freclean-api` |
| Reviews and ratings | Quality control | `freclean-api` `/api/reviews` |

## What FreClean does not collect

- Wallet private keys or seed phrases, ever, under any circumstance.
- Full card numbers (handled by a card processor once one is integrated - not stored by FreClean systems).
- Government ID numbers, unless a future legal requirement makes this necessary, in which case this policy will be updated before that collection begins.

## Data sharing

Customer data is not sold to third parties. Data is shared only as needed to deliver the service (e.g. dispatching a team) or comply with law.

## Retention

Retention periods are to be finalized as part of a complete privacy policy - see the working draft on `freclean-website/policies.html`, marked explicitly as not yet reviewed by counsel.

## Your rights

A full statement of individual rights (access, correction, deletion requests) will be published once the privacy policy is finalized and legally reviewed.
