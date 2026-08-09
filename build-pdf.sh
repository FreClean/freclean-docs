#!/usr/bin/env bash
# Builds the complete FreClean whitepaper (whitepaper/*.md, in numeric order)
# plus the roadmap into a single PDF: dist/freclean-whitepaper.pdf
#
# Requires: pandoc + a LaTeX engine with lmodern available, e.g.:
#   macOS:  brew install pandoc; brew install --cask mactex-no-gui
#   Debian/Ubuntu: sudo apt install pandoc texlive-xetex texlive-fonts-recommended texlive-latex-recommended texlive-latex-extra
#
# This exact command runs automatically in CI on every push to whitepaper/ or
# roadmap/, and attaches the PDF to GitHub Releases — see
# .github/workflows/build-whitepaper-pdf.yml. Running it locally is only
# needed for a preview before pushing.
#
# Usage: ./scripts/build-pdf.sh

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="$ROOT_DIR/dist"
mkdir -p "$OUT_DIR"

FILES=$(ls "$ROOT_DIR"/whitepaper/*.md | sort)
FILES="$FILES $ROOT_DIR/roadmap/ROADMAP.md"

pandoc $FILES \
  --from=markdown \
  --to=pdf \
  --pdf-engine=xelatex \
  --toc \
  --toc-depth=2 \
  --number-sections \
  --metadata title="FreClean Whitepaper" \
  --metadata author="FreClean" \
  --metadata date="$(date +%Y-%m-%d)" \
  -V geometry:margin=1in \
  -o "$OUT_DIR/freclean-whitepaper.pdf"

echo "Built $OUT_DIR/freclean-whitepaper.pdf"
