# FreClean Roadmap

Every phase below follows the same structure: Objective, Deliverables, Dependencies, KPIs, Risks, Evidence, Status. No phase is marked complete until its Evidence column points to something real and checkable in this ecosystem - matching the realism principle in `whitepaper/24-legal-policy-framework.md`.

---

## Phase 0 - Foundation

- **Objective:** Establish the company and its core documentation.
- **Deliverables:** Company registration decision, founding documentation, this repository structure.
- **Dependencies:** None.
- **KPIs:** N/A (foundational).
- **Risks:** Incomplete legal foundation before scaling.
- **Evidence:** Company founded April 16, 2025 (`whitepaper/02-company-profile.md`).
- **Status:** Complete (founding); business registration still Not provided.

## Phase 1 - Business MVP

- **Objective:** Prove the core cleaning-services business works without any technology dependency.
- **Deliverables:** First real bookings, first real customers, initial checklists.
- **Dependencies:** Phase 0.
- **KPIs:** Bookings completed, repeat customer rate.
- **Risks:** Insufficient team capacity; inconsistent service quality.
- **Evidence:** `freclean-operations` checklists in active use.
- **Status:** Active - cleaning services (Airbnb, residential, office) live.

## Phase 2 - Website + API + Admin

- **Objective:** Give the business a digital backbone.
- **Deliverables:** `freclean-website`, `freclean-api`, `freclean-admin`.
- **Dependencies:** Phase 1.
- **KPIs:** API uptime, admin adoption by staff.
- **Risks:** Building software ahead of real operational need.
- **Evidence:** All three repositories scaffolded with working code, tests, and CI.
- **Status:** In development - functional scaffolds exist; production data layer pending.

## Phase 3 - Products

- **Objective:** Launch FreClean's own product line.
- **Deliverables:** Finalized SKU, packaging, SDS, and `available` status for the Multi-Surface Cleaner.
- **Dependencies:** Phase 2 (`freclean-products` catalog + validation).
- **KPIs:** Products at `available` status, units sold.
- **Risks:** Formulation, packaging, or safety data delays.
- **Evidence:** `freclean-products/catalog/products.yaml` entry moves from `development` to `available`, passing CI validation.
- **Status:** In development.

## Phase 4 - Operations

- **Objective:** Formalize operations so quality doesn't depend on any one person.
- **Deliverables:** Complete checklist library, quality control process, staff procedures.
- **Dependencies:** Phase 1.
- **KPIs:** Checklist completion rate, incident rate.
- **Risks:** Checklists not followed in practice.
- **Evidence:** `freclean-operations` documentation set.
- **Status:** Complete (documentation); ongoing refinement as field experience accumulates.

## Phase 5 - Celo / Web3 Payments

- **Objective:** Offer a genuinely working, verified Web3 payment option.
- **Deliverables:** `freclean-payment` verification worker live against real Celo, first Supported Assets Registry entry, `freclean-dapp` connected to a public checkout endpoint.
- **Dependencies:** Phase 2, CeloHT integration details.
- **KPIs:** Verified Web3 transaction volume, time-to-confirmation.
- **Risks:** CeloHT integration details delayed; regulatory uncertainty; low customer adoption of a new payment method.
- **Evidence:** A real, non-empty Supported Assets Registry entry with a verified contract address.
- **Status:** In development - infrastructure built, no asset verified yet.

## Phase 6 - Entrepreneur Program

- **Objective:** Launch the Entrepreneur Program with real participants.
- **Deliverables:** Finalized starter packages and pricing, first cohort of entrepreneurs at `active` status.
- **Dependencies:** Phase 3 (products to sell), Phase 5 (digital payment option for entrepreneurs).
- **KPIs:** Entrepreneurs at `active` status, orders placed by entrepreneurs.
- **Risks:** Starter package economics not viable; insufficient support capacity.
- **Evidence:** `freclean-api` `/api/entrepreneurs` records with real, non-demo activity.
- **Status:** Planned.

## Phase 7 - Business Growth

- **Objective:** Grow all four pillars from initial validation to sustained operation.
- **Deliverables:** Expanded team capacity, expanded product range, growing entrepreneur cohort, meaningful Web3 payment volume.
- **Dependencies:** Phases 3–6.
- **KPIs:** See `whitepaper/29-kpi-framework.md`.
- **Risks:** Overextension beyond operational capacity; quality drop under growth pressure.
- **Evidence:** KPI dashboards in `freclean-admin` populated with real, growing figures.
- **Status:** Planned.

## Phase 8 - Regional Expansion

- **Objective:** Extend beyond Léogâne within Haiti.
- **Deliverables:** Operating procedures validated in a second location; expanded team and entrepreneur base.
- **Dependencies:** Phase 7 demonstrating a repeatable model.
- **KPIs:** Bookings and entrepreneurs by region.
- **Risks:** Logistics and quality control across distance; local market differences.
- **Evidence:** A second operating area recorded in `freclean-api`.
- **Status:** Planned.

## Phase 9 - Caribbean Expansion

- **Objective:** Extend FreClean's model beyond Haiti within the Caribbean.
- **Deliverables:** Market assessment, localized operating and legal setup, adapted Web3 payment support for the new jurisdiction.
- **Dependencies:** Phase 8 demonstrating expansion works domestically first.
- **KPIs:** To be defined once this phase is scoped.
- **Risks:** Regulatory differences across jurisdictions; brand and operational dilution if expansion outpaces capability.
- **Evidence:** Not applicable yet.
- **Status:** Planned - no specific timeline committed.

---

## How to read "Status" across this roadmap

- **Complete** - the deliverable exists and is in real use, with evidence.
- **Active** - currently operating, not finished (ongoing pillars like cleaning services don't have a discrete "done").
- **In development** - being built; partial evidence exists.
- **Planned** - intended, not yet started.

No phase is marked "Complete" based on intention or documentation alone - see the Evidence column for what "Complete" is actually anchored to in each case.
