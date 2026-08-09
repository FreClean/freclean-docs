# 04 — Product Strategy

Full product data lives in `freclean-products` (schema, catalog, SDS template) — this section summarizes strategy, not the catalog itself, to avoid two sources of truth drifting apart.

## Strategy

1. **Start narrow.** Launch with one strong multi-surface cleaner before expanding the line — avoids spreading formulation, safety, and supply-chain effort too thin.
2. **Formalize before scaling.** No product moves to `available` status (see `freclean-products/docs/PRODUCT-LIFECYCLE.md`) without a real SKU, finalized packaging, and a published Safety Data Sheet.
3. **Fragrance as a second line.** Once the cleaning line is stable, a complementary fragrance line extends the catalog using the same manufacturing and quality discipline.
4. **Local-first sourcing.** Suppliers are evaluated for reliability within Haiti first; approved-supplier status is tracked per product in `freclean-products/catalog/products.yaml`.

## Product lifecycle discipline

| Status | Can be sold to customers? | Can be marketed as available? |
|---|---|---|
| Planned | No | No |
| Development | No | No |
| Prototype | No (sampling only) | No |
| Available | Yes | Yes |
| Discontinued | No | No |

This table is enforced mechanically, not just documented — see the CI validation in `freclean-products/scripts/validate-catalog.ts`.

## Quality and safety

Every product requires a completed Safety Data Sheet (`freclean-products/docs/SDS-TEMPLATE.md`) before reaching `available` status. Packaging must meet the label requirements in `freclean-products/docs/PACKAGING-GUIDELINES.md`, including batch/lot coding once batch tracking is enabled.
