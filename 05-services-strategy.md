# 05 - Services Strategy

## Service lines and current status

| Service | Status |
|---|---|
| Airbnb turnover cleaning | Active |
| Residential cleaning | Active |
| Office cleaning | Active |
| Hotel cleaning | In development |
| Kitchen deep cleaning | In development |
| Specialized cleaning | Planned |

Full checklists and workflows: `freclean-operations`.

## Strategic priorities

1. **Consistency over speed.** Every job follows a written checklist (`freclean-operations/docs/checklists/`) so quality doesn't depend on which team is dispatched.
2. **Airbnb as the growth engine.** Short-term rental turnover cleaning has naturally recurring, schedulable demand and is FreClean's primary near-term growth channel.
3. **Hotel as a deliberate next step, not a rush.** Hotel cleaning remains in development until FreClean has the team capacity and a validated checklist for a first real hotel partner - see `freclean-operations/docs/checklists/hotel-cleaning.md`.
4. **Quality control as a system, not a hope.** End-of-job verification, spot-checks, and review monitoring (see `freclean-operations/docs/quality-control.md`) exist specifically so quality is measured, not assumed.

## Capacity planning

Team capacity, scheduling, and dispatch are managed through `freclean-admin`'s Bookings and Teams sections, backed by `freclean-api`. No service commitment is made to a customer that current team capacity cannot support - see the dispatch rules in `freclean-operations/docs/booking-and-dispatch.md`.
