# QHAWAY 2.0 — Propuesta de Relanzamiento (FIEECS-UNI)

Propuesta institucional y técnica para relanzar **QHAWAY — Observatorio del
Presupuesto Público del Perú** (FIEECS-UNI, 2024, hoy offline) como
**QHAWAY 2.0: Observatorio Nacional de Inteligencia Territorial, Presupuesto
Público, Cambio Climático, Riesgos y Desarrollo Humano**.

## Entregable

- `entregables/QHAWAY_PROPUESTA.pdf` — documento de propuesta (~15-25 pp.)
- `docs/QHAWAY_PROPUESTA.md` — fuente Markdown del documento

## Estructura

```
docs/
  QHAWAY_PROPUESTA.md     # documento ensamblado (fuente del PDF)
  secciones/              # secciones individuales (fuente de edición)
  CONTEXTO.md             # brief de redacción (no forma parte del PDF)
scripts/
  build_pdf.sh            # pandoc + xelatex
  preprocess.py           # renderiza Mermaid -> PNG (Kroki) y limpia Unicode
entregables/
  QHAWAY_PROPUESTA.pdf
```

## Compilar el PDF

Requisitos (macOS): `brew install pandoc && brew install --cask basictex`

```bash
make pdf
```

## Antecedentes

- QHAWAY original: <https://fieecs.uni.edu.pe/qhaway-observatorio-del-presupuesto-publico-del-peru/>
- Dashboard archivado (nov-2024): <https://web.archive.org/web/20241130224308/https://dashboard.qhaway-fieecs.pe/>
- Activos base del equipo: [peru-transparente](https://unimauro.github.io/peru-transparente),
  [observatorio-poder-economico](https://unimauro.github.io/observatorio-poder-economico),
  [unimaurox-peru-riesgos](https://unimauro.github.io/unimaurox-peru-riesgos),
  [proyecto-inti](https://unimauro.github.io/proyecto-inti), entre otros.
