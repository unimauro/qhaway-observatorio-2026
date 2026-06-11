# CONTEXTO COMPARTIDO — Propuesta QHAWAY 2.0 (NO incluir este archivo en el PDF)

Este archivo es el brief compartido para todos los redactores del documento
"QHAWAY 2.0 — Observatorio Nacional de Inteligencia Territorial, Presupuesto
Público, Cambio Climático, Riesgos y Desarrollo Humano", propuesta institucional
y técnica para la FIEECS-UNI (Facultad de Ingeniería Económica, Estadística y
Ciencias Sociales de la Universidad Nacional de Ingeniería).

## 1. QHAWAY original (qué fue)

- Anunciado por FIEECS-UNI en abril 2024 como "Observatorio del Presupuesto
  Público del Perú", herramienta para docencia, investigación e incidencia
  pública. URL institucional:
  https://fieecs.uni.edu.pe/qhaway-observatorio-del-presupuesto-publico-del-peru/
- Inició con talleres participativos de diseño con la comunidad académica.
- El dashboard vivió en https://dashboard.qhaway-fieecs.pe/ (HOY CAÍDO; solo
  queda snapshot en Wayback Machine del 30-nov-2024:
  https://web.archive.org/web/20241130224308/https://dashboard.qhaway-fieecs.pe/).
- Contenido del dashboard archivado (evidencia verificada del snapshot):
  - 4 dashboards: (1) "Gastos MEF — Ejecución Presupuestal MEF",
    (2) "Inversión Verde — Impacto en el Cambio Climático",
    (3) "Inversión en Transporte — Gobernanza del transporte urbano",
    (4) "Métricas del estado — Densidad del estado".
  - Vista "Presupuesto por departamento y provincia 2023" (ej. Ucayali, 4 provincias).
  - Glosario PIA / PIM / Girado con enlaces al MEF.
  - Requería REGISTRO E INICIO DE SESIÓN para acceder (barrera de entrada).
  - © 2024 QHAWAY — FIEECS.
- Diagnóstico honesto: alcance limitado (depto/provincia, no distrito), login
  obligatorio, sin URLs compartibles, sin SEO, sin móvil optimizado, dominio y
  hosting pagados que caducaron → el proyecto quedó offline. Lección: la
  sostenibilidad técnica y de costos es central.

## 2. Activos existentes del equipo (repos de unimauro — base demostrable)

Estos productos YA ESTÁN LIVE y demuestran capacidad de ejecución; QHAWAY 2.0
los reutiliza como componentes. Compararlos explícitamente con lo que tenía el
QHAWAY original (mucho más limitado):

| Activo (live) | URL | Qué aporta a QHAWAY 2.0 |
|---|---|---|
| Perú Transparente | https://unimauro.github.io/peru-transparente | React+TS+Vite+Tailwind, ECharts, MapLibre, Cytoscape; 213k servidores públicos; dark mode; OG/SEO dinámico por sección; export CSV; ~20 MB JSON estático; ETL Python (PTE, gob.pe, OECE/OCDS, MEF) |
| Observatorio de Poder Económico | https://unimauro.github.io/observatorio-poder-economico | Grafos NetworkX offline (PageRank, Louvain, betweenness), índice compuesto EPI 0-100, treemaps, detección de conflictos. Patrón para índices territoriales compuestos |
| Perú Riesgos (unimaurox) | https://unimauro.github.io/unimaurox-peru-riesgos | 14 secciones de riesgos: sismos, El Niño, huaicos, friajes/heladas, sequías/glaciares, deforestación, pandemias; 6 simuladores client-side; Leaflet; fuentes IGP, SENAMHI, ENFEN, CENEPRED, INDECI, INAIGEM, ANA, MINAM Geobosques; compartir simulación por URL; PDF client-side (jsPDF) |
| Proyecto INTI | https://unimauro.github.io/proyecto-inti | GeoJSON de 1,891/1,892 distritos + UBIGEO; indicadores distritales (IDH PNUD, pobreza/población INEI); prospectiva a 2075 con 3 escenarios; consultas IA por distrito |
| Perú Finanzas Públicas (unimaurox) | repo local unimaurox-peru-finanzas-publicas | Series 1990-2025 PBI/gasto/deuda; PIA/PIM/Devengado; heatmap año×sector; mapa coroplético regional; treemap ministerial; ETL MEF Consulta Amigable + BCRP |
| Observatorio FONAFE | https://unimauro.github.io/observatorio-fonafe | ETL modular versionado (seed → build_dataset → snapshots/manifest); patrón anti-overclaiming (datos marcados verified/estimate); AskBot IA con dataset como contexto |
| Observatorio Defensa-Interior | https://unimauro.github.io/observatorio-defensa-interior | Patrón presupuesto sectorial + AskBot Gemini client-side sin backend |
| Obs. Smartphones Adolescentes | https://unimauro.github.io/observatorio-smartphones-adolescentes | i18n 10 idiomas con prerender; mapa mundial Leaflet; biblioteca científica con DOI; procedencia de datos (verified/estimate + fuente por registro) |

Mensaje clave del diagnóstico: el QHAWAY original (4 tableros, nivel provincia,
login, hoy caído) vs. el ecosistema ya operativo del equipo (8+ observatorios
live, nivel distrital, open access, costo de hosting US$ 0 en GitHub Pages).
QHAWAY 2.0 = relanzar la marca institucional FIEECS-UNI sobre esta base probada.

## 3. Alcance solicitado de QHAWAY 2.0 (mandato del documento)

Observatorio Nacional de Inteligencia Territorial, Presupuesto Público, Cambio
Climático, Riesgos y Desarrollo Humano. 7 módulos:

1. **Presupuesto Público**: PIA, PIM, Devengado, Girado, Ejecutado. Filtros:
   año, región, provincia, distrito, sector, función, programa presupuestal,
   proyecto. Visualizaciones: mapas interactivos, series temporales, Sankey,
   treemap, rankings, heatmaps.
2. **Cambio Climático**: adaptación, mitigación, recursos hídricos, bosques,
   biodiversidad, gestión del riesgo. Preguntas guía: ¿cuánto invierte el Perú
   en cambio climático?, ¿qué territorios reciben inversión?, ¿cuál es la
   ejecución real?, ¿cómo evoluciona? (Continuidad del tablero "Inversión
   Verde" del QHAWAY original.)
3. **Riesgos Territoriales** (base: unimaurox-peru-riesgos): inundaciones,
   sequías, heladas, huaicos, deslizamientos, estrés hídrico, vulnerabilidad
   climática.
4. **Inteligencia Territorial — Pisos Altitudinales**: Chala, Yunga, Quechua,
   Suni, Puna, Janca, Selva Alta, Selva Baja (clasificación de Javier Pulgar
   Vidal, "Las ocho regiones naturales del Perú"). Cada distrito con composición
   porcentual (ej.: 40% Puna, 30% Quechua, 20% Suni, 10% Selva Alta), calculada
   cruzando límites distritales con modelo digital de elevación (DEM). Permite
   responder: ¿cuánto presupuesto recibe la puna?, ¿cuánto se invierte en
   territorios amazónicos?, ¿cuánto presupuesto climático llega a territorios
   vulnerables? ESTE ES EL DIFERENCIAL ÚNICO de QHAWAY 2.0 — nadie lo hace.
5. **Índice de Prosperidad Territorial (IPT)**: compuesto de Educación
   (escolarización, logro, PISA, analfabetismo), Salud (anemia, desnutrición,
   mortalidad infantil), Economía (pobreza, empleo, ingreso), Servicios (agua,
   saneamiento, electricidad, internet). Rankings distrito/provincia/región.
   (Metodología heredable del EPI del Observatorio de Poder Económico.)
6. **Simulador de Políticas Públicas**: escenarios (más educación, más salud,
   más agua, más conectividad, más resiliencia climática) con elasticidades de
   literatura OCDE/BM — siempre marcando supuestos (anti-overclaiming).
7. **Observatorio Prospectivo**: escenarios 2030/2040/2050 con IA y análisis
   predictivo (patrón heredable de Proyecto INTI 2075).

## 4. Fuentes de datos a integrar

- MEF Transparencia Económica / Consulta Amigable:
  https://apps5.mineco.gob.pe/transparencia/mensual/ (gasto mensual);
  Consulta Amigable https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx
- Portal Nacional de Datos Abiertos: https://datosabiertos.gob.pe
- INEI (censos, ENAHO, ENDES): https://www.inei.gob.pe / https://proyectos.inei.gob.pe/microdatos/
- MINEDU (ESCALE, censo educativo): https://escale.minedu.gob.pe
- MINSA (REUNIS, SIEN): https://www.minsa.gob.pe
- MIDIS (REDinforma, IDD): https://www.midis.gob.pe
- CENEPRED (SIGRID, escenarios de riesgo): https://sigrid.cenepred.gob.pe
- SENAMHI (clima, escenarios): https://www.senamhi.gob.pe
- CEPLAN (PEDN al 2050, información territorial): https://www.ceplan.gob.pe
- INVIERTE.PE / SSI (inversión pública): https://ofi5.mef.gob.pe/ssi/
- OECD: https://data.oecd.org | Banco Mundial: https://datos.bancomundial.org
- BID: https://data.iadb.org | CEPAL: https://statistics.cepal.org
- Geoespacial: IGN, geo GOB.PE, GeoJSON distrital ya disponible en Proyecto INTI;
  DEM: SRTM/Copernicus 30 m para pisos altitudinales.
- API OCDS del OECE (contrataciones): https://contratacionesabiertas.oece.gob.pe
- Clasificador funcional-programático del MEF para etiquetar gasto climático
  (taxonomía verde; referencia: metodología de marcadores climáticos del MEF/MINAM
  y marcadores de Río de la OCDE).

## 5. Arquitectura tecnológica (3 fases)

- **Fase 1 (0-6 meses, costo infra ≈ US$ 0)**: GitHub Pages estático. React 18+,
  TypeScript, Vite, Tailwind, Apache ECharts (series, Sankey, treemap, heatmap),
  Leaflet + MapLibre GL (mapas vectoriales distritales), JSON estático versionado
  generado por ETL Python (GitHub Actions programado). Patrón ya probado en los
  8 observatorios live del equipo.
- **Fase 2 (6-12 meses)**: Backend FastAPI (Python) + PostgreSQL (+PostGIS),
  ETL automatizado con orquestación (cron/Actions), API pública documentada
  (OpenAPI), capa de caché.
- **Fase 3 (12-24 meses)**: AWS — CloudFront (CDN), S3 (datos/estáticos),
  Lambda (APIs serverless), RDS PostgreSQL. Alternativa de contención de costos
  documentada (VPS). IaC con Terraform.
- **IA transversal**: consultas en lenguaje natural sobre los datos (patrón
  AskBot ya probado), resúmenes automáticos por territorio, interpretación de
  indicadores, generación de informes PDF. Modelos: APIs comerciales de LLM
  (Anthropic, OpenAI, Google) y modelos open source (Llama, Qwen) para
  independencia; arquitectura agnóstica del proveedor. En el documento decir
  "IA"/"LLM" como categoría; los nombres de modelos solo como opciones técnicas.

## 6. UX/UI y SEO

Referentes: World Bank Data, OECD Data Explorer, Our World in Data, UNDP Data
Futures Exchange. Mobile first, responsive, accesibilidad WCAG 2.1 AA, dark
mode, alto rendimiento (Core Web Vitals), navegación intuitiva. SEO: Open Graph
+ Twitter Cards por vista, rich snippets (schema.org Dataset), sitemap XML,
metadata dinámica, cada gráfico con URL única compartible (estado en la URL,
patrón ya probado en peru-riesgos y peru-transparente) y botón "compartir" que
genera imagen OG del gráfico.

## 7. Requisitos editoriales del documento (OBLIGATORIOS)

- Idioma: español (Perú). Tono: consultoría estratégica senior, dirigido a
  autoridades FIEECS-UNI, investigadores, aliados y financiadores.
- RIGOR ANTI-OVERCLAIMING: no prometer lo no demostrable; marcar supuestos y
  estimaciones como tales; distinguir "ya construido/demostrado" vs "por construir".
- Notas al pie con URLs de TODAS las fuentes citadas (sintaxis pandoc `[^id]`).
- Tablas en formato pipe (GFM) — compactas, máx ~6 columnas.
- Diagramas: bloques ```mermaid (serán renderizados a PNG automáticamente).
  Para cada figura/diagrama grande: colocarla en página propia usando `\newpage`
  antes y después.
- Mockups: describirlos como "mockups descriptivos" en bloques de código ASCII
  (```text) — wireframes de texto.
- NO mencionar herramientas con las que se redactó el documento. La IA aparece
  solo como funcionalidad de la plataforma.
- Cada sección empieza con `# N. Título` (encabezado nivel 1, numerado).
- Los identificadores de footnotes deben llevar prefijo de sección (ej.
  `[^diag-mef]`, `[^arq-aws]`) para evitar colisiones al ensamblar.
- Moneda: S/ (soles) y US$ cuando aplique.
- Fecha del documento: junio 2026.
- Autor institucional: equipo proponente para FIEECS-UNI (no inventar nombres de
  autoridades; referirse a "el Decanato", "la comunidad FIEECS").
- Carlos Cárdenas Fernández (GitHub: unimauro), egresado UNI, es el proponente
  técnico; los activos listados en §2 son su portafolio demostrable.
