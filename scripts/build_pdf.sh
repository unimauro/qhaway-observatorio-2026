#!/usr/bin/env bash
# Genera el PDF de la propuesta QHAWAY 2.0 a partir de Markdown usando pandoc + xelatex.
#
#   ./scripts/build_pdf.sh            -> entregables/QHAWAY_PROPUESTA.pdf
#
# Requiere: pandoc, xelatex (MacTeX/BasicTeX), python3.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
export PATH="/Library/TeX/texbin:$PATH"

SRC="$ROOT/docs/QHAWAY_PROPUESTA.md"
PDF="$ROOT/entregables/QHAWAY_PROPUESTA.pdf"
TOC="--toc --toc-depth=2"
MARGIN="2.0cm"
DOCCLASS="article"
FONTSIZE="11pt"

[[ -f "$SRC" ]] || { echo "ERROR: no existe $SRC"; exit 1; }
command -v pandoc >/dev/null || { echo "ERROR: pandoc no instalado"; exit 1; }
command -v xelatex >/dev/null || { echo "ERROR: xelatex no encontrado"; exit 1; }

TMP="$ROOT/.build_tmp.md"
IMGDIR="$ROOT/.build_diagrams"
echo "Preprocesando (render de diagramas Mermaid + Unicode)..."
python3 "$ROOT/scripts/preprocess.py" "$SRC" "$TMP" "$IMGDIR" "${DIAGRAM_WIDTH:-90}"

echo "Compilando -> $PDF"
pandoc "$TMP" \
  -o "$PDF" \
  --pdf-engine=xelatex \
  --resource-path="$ROOT:$ROOT/diagramas/rendered:$IMGDIR" \
  $TOC \
  -V geometry:margin=$MARGIN \
  -V mainfont="Helvetica Neue" \
  -V monofont="Menlo" \
  -V colorlinks=true -V linkcolor=blue -V urlcolor=blue \
  -V documentclass=$DOCCLASS \
  -V fontsize=$FONTSIZE \
  --highlight-style=tango \
  || { echo "Reintentando sin fuentes custom..."; \
       pandoc "$TMP" -o "$PDF" --pdf-engine=xelatex \
       --resource-path="$ROOT:$ROOT/diagramas/rendered:$IMGDIR" \
       $TOC -V geometry:margin=$MARGIN -V colorlinks=true; }

rm -f "$TMP"; rm -rf "$IMGDIR"
echo "OK -> $PDF"
