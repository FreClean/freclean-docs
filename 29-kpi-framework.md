# 29 - KPI Framework

## Operational KPIs

| KPI | Source |
|---|---|
| Bookings completed | `freclean-api` `/api/bookings` |
| Repeat customer rate | `freclean-api` `/api/customers` + `/api/bookings` history |
| Average review rating | `freclean-api` `/api/reviews` |
| Checklist completion rate | `freclean-operations` process, tracked via end-of-job verification |
| Products sold | `freclean-api` `/api/orders` |
| Inventory turnover | `freclean-api` `/api/inventory` |

## Financial KPIs

| KPI | Source |
|---|---|
| Revenue | To be tracked once a production data layer and accounting process exist |
| Gross margin | Same |
| Average order value | `freclean-api` `/api/orders` |
| Payment volume by method (cash/card/Web3) | `freclean-api` `/api/payments` |
| Web3 / stablecoin payment volume | `freclean-payment` + `freclean-api` `/api/payments`, filtered |

## Entrepreneurship KPIs

See `freclean-entrepreneurship/docs/13-performance-metrics.md` - orders, payments, and reviews per entrepreneur, sourced from real transaction data rather than self-reporting.

## Dashboards

`freclean-admin`'s Reports and Analytics sections are built to consume these metrics once real data volume exists - see that repo's README. They currently render correctly-empty states rather than placeholder numbers.
