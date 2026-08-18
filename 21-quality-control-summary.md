# 21 - Quality Control (Summary)

Full detail: `freclean-operations/docs/quality-control.md`.

## Mechanism

1. End-of-job verification on every booking (`freclean-operations/docs/checklists/end-of-job-verification.md`).
2. Spot-checks on a subset of jobs.
3. Review monitoring through `freclean-api`'s `/api/reviews` - any low rating triggers follow-up per `freclean-operations/docs/incident-and-complaints.md`.

## Metrics tracked once volume exists

Checklist completion rate, repeat-customer rate, average review rating, incident rate per completed job - see `29-kpi-framework.md`. No figures are published until real operational data exists.
