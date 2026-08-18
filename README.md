# FreClean Docs

FreClean's single reference whitepaper, roadmap, and cross-ecosystem documentation. Every other FreClean repository points here for the "why" behind its "what."

## Get the PDF

A full, professionally typeset PDF of this whitepaper is built automatically by CI on every change and attached to [GitHub Releases](../../releases) - that's the version to hand to an investor. It's also available as a downloadable build artifact on the [Actions](../../actions/workflows/build-whitepaper-pdf.yml) tab for any commit.

To build it yourself locally: run `./build-pdf.sh` from this repository root.

## Structure

```
00-*.md        33 numbered sections - the whitepaper itself (see table below)
ROADMAP.md     Phased execution plan (Phase 0 - Phase 9)
build-pdf.sh   Combines the numbered docs and roadmap into one PDF via pandoc
```

## Whitepaper contents

| # | Section |
|---|---|
| 00 | Executive Summary |
| 01 | Vision & Positioning |
| 02 | Company Profile |
| 03 | Business Model |
| 04 | Product Strategy |
| 05 | Services Strategy |
| 06 | Entrepreneurship Model |
| 07 | Web3 Strategy |
| 08 | Celo Integration |
| 09 | CeloHT Partnership |
| 10 | Valora Payment Flow |
| 11 | Payment Architecture |
| 12 | Technical Architecture |
| 13 | System Architecture |
| 14 | Database Architecture |
| 15 | API Architecture |
| 16 | Security Architecture |
| 17 | Treasury Policy |
| 18 | Governance Policy |
| 19 | Risk Management |
| 20 | Operations Manual (Summary) |
| 21 | Quality Control (Summary) |
| 22 | Product Safety (Summary) |
| 23 | Privacy |
| 24 | Legal / Policy Framework |
| 25 | Business Continuity |
| 26 | Disaster Recovery |
| 27 | Sustainability |
| 28 | Impact |
| 29 | KPI Framework |
| 30 | Glossary |
| 31 | FAQ |
| 32 | References |

## The one rule this whole repository follows

**A status is stated as current, in development, planned, or demo - never presented as more advanced than it actually is.** See `24-legal-policy-framework.md` for the full statement of this principle. If you find a claim anywhere in this repository (or any other FreClean repository) that overstates FreClean's actual status, it should be corrected - that's a bug, not a style choice.

## How this connects to the rest of the ecosystem

This repo is documentation-only - it has no code that other repositories depend on. It exists so that `freclean-website`, `freclean-api`, `freclean-payment`, `freclean-products`, `freclean-operations`, and `freclean-entrepreneurship` all have one shared, authoritative explanation of the business and technical strategy behind them, instead of that context living only in each repo's own README.

## License

Not provided.
