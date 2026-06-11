#!/usr/bin/env bash
# Genera index.html (GitHub Pages) a partir de docs/QHAWAY_PROPUESTA.md.
# Renderiza Mermaid -> PNG en assets/diagrams/ (persistente) vía Kroki.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$ROOT/docs/QHAWAY_PROPUESTA.md"
OUT="$ROOT/index.html"
TMP="$ROOT/.site_tmp.md"
IMGDIR="$ROOT/assets/diagrams"

echo "Preprocesando (Mermaid -> PNG)..."
python3 "$ROOT/scripts/preprocess.py" "$SRC" "$TMP" "$IMGDIR" "${DIAGRAM_WIDTH:-90}"

# Rutas de imágenes relativas al root del sitio
python3 - "$TMP" "$IMGDIR" <<'EOF'
import sys, re
tmp, imgdir = sys.argv[1], sys.argv[2]
text = open(tmp, encoding='utf-8').read()
text = text.replace(imgdir + '/', 'assets/diagrams/')
open(tmp, 'w', encoding='utf-8').write(text)
EOF

echo "Compilando -> $OUT"
pandoc "$TMP" \
  -o "$OUT" \
  --standalone \
  --toc --toc-depth=2 \
  --css=assets/style.css \
  --include-in-header="$ROOT/assets/header.html" \
  --metadata lang=es \
  --shift-heading-level-by=0

# Banner de descarga del PDF tras el bloque de título
python3 - "$OUT" <<'EOF'
import sys
out = sys.argv[1]
html = open(out, encoding='utf-8').read()
banner = ('<div class="dl-banner">'
          '<a href="entregables/QHAWAY_PROPUESTA.pdf">Descargar propuesta (PDF)</a>'
          '<a class="secondary" href="https://github.com/unimauro/qhaway-observatorio-2026">Repositorio</a>'
          '</div>')
marker = '</header>'
if marker in html:
    html = html.replace(marker, marker + '\n' + banner, 1)
open(out, 'w', encoding='utf-8').write(html)
EOF

rm -f "$TMP"
echo "OK -> $OUT"
