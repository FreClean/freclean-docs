# 15 - API Architecture

## Structure

`freclean-api` exposes REST resources under `/api`, plus `/auth` and `/health`. See `freclean-api/README.md` for the full endpoint table.

```
/auth/register, /auth/login
/api/users, /customers, /services, /bookings, /orders, /products,
    /inventory, /staff, /teams, /entrepreneurs, /payments, /assets,
    /reviews, /notifications, /reports, /analytics, /audit
```

## Cross-cutting concerns

| Concern | Implementation |
|---|---|
| Authentication | JWT (`requireAuth` middleware) |
| Authorization | Role-based, per resource and per HTTP method (`requireRole`) |
| Validation | Zod schemas on every write |
| Rate limiting | `express-rate-limit`, 300 req / 15 min / IP by default |
| Security headers | `helmet` |
| Audit logging | Automatic, on every successful mutating request |
| Error handling | Centralized `AppError` + handler, consistent JSON error shape |

## Design pattern: the CRUD factory

Sixteen of seventeen API modules are generated from one `createCrudRouter` factory (`src/core/createCrudRouter.ts`), configured per resource with its permission table and Zod schemas. The one exception, `/api/payments`, layers custom status-transition logic on top of the same underlying pattern (`src/modules/payments.ts`). This keeps the codebase small and consistent rather than seventeen hand-written, drifting route files.

## Versioning

No API versioning scheme is in place yet - the API is pre-production. A versioning strategy (e.g. `/v1`) will be adopted before any breaking change ships to a live client.
