# Anexos

## Anexo A. Catálogo de Fuentes de Datos

El catálogo siguiente consolida las fuentes identificadas para QHAWAY 2.0. La columna "Granularidad" indica el nivel territorial mínimo verificado en la fuente; cuando la desagregación distrital requiere procesamiento adicional (cruces con UBIGEO, agregación de microdatos), se indica el nivel publicado por la fuente, no el que QHAWAY 2.0 derivará. Las frecuencias corresponden al calendario de publicación de cada institución y pueden variar; el ETL las tratará como supuestos verificables, no como garantías.

| Fuente | Institución | Contenido | Granularidad | Frecuencia |
|---|---|---|---|---|
| Consulta Amigable / Transparencia Económica[^anx-mef] | MEF | PIA, PIM, Certificado, Devengado, Girado por pliego, función, programa y proyecto | Distrital | Mensual (gasto); anual (cierre) |
| Portal Nacional de Datos Abiertos[^anx-pnda] | PCM/SGTD | Datasets multisectoriales del Estado | Variable por dataset | Variable |
| Censos, ENAHO, ENDES (microdatos)[^anx-inei] | INEI | Población, pobreza, empleo, ingreso, vivienda, salud materno-infantil | Distrital (censos); inferencia departamental (encuestas) | Censal; anual (ENAHO/ENDES) |
| ESCALE / Censo Educativo[^anx-escale] | MINEDU | Matrícula, locales escolares, logro de aprendizaje | Distrital / por institución educativa | Anual |
| REUNIS / SIEN[^anx-minsa] | MINSA | Anemia, desnutrición crónica, indicadores sanitarios | Distrital (según indicador) | Anual; algunos semestrales |
| REDinforma / IDD[^anx-midis] | MIDIS | Desarrollo e inclusión social, cobertura de programas | Distrital | Anual |
| SIGRID[^anx-sigrid] | CENEPRED | Escenarios de riesgo, peligros, vulnerabilidad (capas geoespaciales) | Distrital / capa geográfica | Por evento y por estudio |
| Datos hidrometeorológicos y escenarios climáticos[^anx-senamhi] | SENAMHI | Clima observado, pronósticos, escenarios | Estaciones / grillas interpoladas | Diaria a anual según producto |
| PEDN al 2050 e información territorial[^anx-ceplan] | CEPLAN | Prospectiva, brechas, fichas territoriales | Departamental / provincial | Por actualización de planes |
| INVIERTE.PE / SSI[^anx-ssi] | MEF | Inversión pública: cartera, avance físico-financiero | Por proyecto (georreferenciable) | Continua |
| API OCDS[^anx-oece] | OECE | Contrataciones públicas en estándar abierto | Por proceso / entidad | Continua |
| OECD Data, Banco Mundial, BID, CEPAL[^anx-multi] | Multilaterales | Comparables internacionales, elasticidades de referencia | Nacional | Anual |
| Cartografía oficial y GeoJSON distrital[^anx-geo] | IGN / geo GOB.PE | Límites distritales (1,891 distritos, ya operativos en Proyecto INTI) | Distrital | Por actualización demarcatoria |
| DEM SRTM / Copernicus 30 m[^anx-dem] | NASA / ESA | Modelo digital de elevación para pisos altitudinales | Píxel de 30 m | Estático (misiones) |
| Clasificador funcional-programático y marcadores climáticos[^anx-clasif] | MEF / MINAM | Taxonomía para etiquetar gasto climático (referencia: marcadores de Río, OCDE) | Aplica al gasto (no territorial) | Anual |

[^anx-mef]: MEF — Transparencia Económica, gasto mensual: <https://apps5.mineco.gob.pe/transparencia/mensual/>; Consulta Amigable: <https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx>.
[^anx-pnda]: Portal Nacional de Datos Abiertos: <https://datosabiertos.gob.pe>.
[^anx-inei]: INEI: <https://www.inei.gob.pe>; microdatos: <https://proyectos.inei.gob.pe/microdatos/>.
[^anx-escale]: MINEDU — ESCALE: <https://escale.minedu.gob.pe>.
[^anx-minsa]: MINSA: <https://www.minsa.gob.pe>.
[^anx-midis]: MIDIS: <https://www.midis.gob.pe>.
[^anx-sigrid]: CENEPRED — SIGRID: <https://sigrid.cenepred.gob.pe>.
[^anx-senamhi]: SENAMHI: <https://www.senamhi.gob.pe>.
[^anx-ceplan]: CEPLAN: <https://www.ceplan.gob.pe>.
[^anx-ssi]: MEF — Sistema de Seguimiento de Inversiones (SSI): <https://ofi5.mef.gob.pe/ssi/>.
[^anx-oece]: OECE — Contrataciones Abiertas (estándar OCDS): <https://contratacionesabiertas.oece.gob.pe>.
[^anx-multi]: OECD Data: <https://data.oecd.org>; Banco Mundial: <https://datos.bancomundial.org>; BID: <https://data.iadb.org>; CEPAL: <https://statistics.cepal.org>.
[^anx-geo]: GeoJSON distrital ya integrado en Proyecto INTI: <https://unimauro.github.io/proyecto-inti>; cartografía oficial: IGN y geo GOB.PE.
[^anx-dem]: SRTM 30 m (NASA) y Copernicus DEM GLO-30 (ESA), de acceso abierto.
[^anx-clasif]: Metodología de marcadores climáticos MEF/MINAM y marcadores de Río de la OCDE, aplicadas sobre el clasificador funcional-programático del MEF.

## Anexo B. Inventario de Activos Reutilizables

Los ocho productos siguientes están live y verificables a junio de 2026; constituyen la base demostrada sobre la que se construye QHAWAY 2.0 — en contraste con el QHAWAY original (cuatro tableros, nivel provincial, login obligatorio, hoy fuera de línea).

| Activo (live) | Componentes que aporta a QHAWAY 2.0 | Módulo destino |
|---|---|---|
| Perú Transparente[^anx-pt] | Stack React+TS+Vite+Tailwind, ECharts, MapLibre, Cytoscape; OG/SEO por sección; export CSV; ETL Python (MEF, OECE/OCDS, gob.pe) sobre ~20 MB de JSON estático | Plataforma base; M1 Presupuesto |
| Observatorio de Poder Económico[^anx-ope] | Índice compuesto EPI 0-100, grafos NetworkX offline, treemaps | M5 Índice de Prosperidad Territorial |
| Perú Riesgos[^anx-pr] | 14 secciones de riesgos, 6 simuladores client-side, Leaflet, URLs compartibles, PDF en cliente; fuentes IGP, SENAMHI, CENEPRED, INDECI | M3 Riesgos Territoriales; M6 Simulador |
| Proyecto INTI[^anx-inti] | GeoJSON de 1,891 distritos + UBIGEO; indicadores distritales (IDH, pobreza); prospectiva 2075 con escenarios; consultas IA por distrito | M4 Inteligencia Territorial; M7 Prospectivo |
| Perú Finanzas Públicas[^anx-pfp] | Series 1990-2025; PIA/PIM/Devengado; heatmap año×sector; coroplético regional; ETL MEF + BCRP (repo local, no publicado) | M1 Presupuesto |
| Observatorio FONAFE[^anx-fonafe] | ETL modular versionado (seed → build → snapshots/manifest); marcado verified/estimate; AskBot con dataset como contexto | Capa de datos e IA transversal |
| Observatorio Defensa-Interior[^anx-odi] | Patrón de presupuesto sectorial; AskBot client-side sin backend | M1 Presupuesto; IA transversal |
| Obs. Smartphones Adolescentes[^anx-osa] | i18n con prerender; mapa Leaflet; biblioteca con DOI; procedencia por registro | Internacionalización; rigor documental |

[^anx-pt]: <https://unimauro.github.io/peru-transparente>.
[^anx-ope]: <https://unimauro.github.io/observatorio-poder-economico>.
[^anx-pr]: <https://unimauro.github.io/unimaurox-peru-riesgos>.
[^anx-inti]: <https://unimauro.github.io/proyecto-inti>.
[^anx-pfp]: Repositorio local `unimaurox-peru-finanzas-publicas`; único activo del inventario sin URL pública a la fecha.
[^anx-fonafe]: <https://unimauro.github.io/observatorio-fonafe>.
[^anx-odi]: <https://unimauro.github.io/observatorio-defensa-interior>.
[^anx-osa]: <https://unimauro.github.io/observatorio-smartphones-adolescentes>.

## Anexo C. Glosario

| Término | Definición |
|---|---|
| **PIA** | Presupuesto Institucional de Apertura: presupuesto inicial aprobado por ley para cada entidad pública al comenzar el año fiscal. |
| **PIM** | Presupuesto Institucional Modificado: PIA actualizado con las modificaciones presupuestarias (créditos suplementarios, transferencias) durante el año. |
| **Certificado** | Certificación presupuestal: acto que garantiza que existe crédito disponible para comprometer un gasto; paso previo al compromiso. |
| **Devengado** | Fase de ejecución en la que la obligación de pago se reconoce formalmente tras la recepción conforme del bien o servicio. Es el indicador estándar de "ejecución" del gasto público peruano. |
| **Girado** | Fase en la que se emite la orden de pago (giro) contra la cuenta del Tesoro; antesala del pago efectivo al proveedor o servidor. |
| **UBIGEO** | Código de ubicación geográfica del INEI (6 dígitos: departamento-provincia-distrito) que identifica de forma única cada distrito del Perú; llave maestra para cruzar fuentes territoriales. |
| **DEM** | Modelo Digital de Elevación (*Digital Elevation Model*): malla raster con la altitud del terreno (SRTM/Copernicus, 30 m por píxel); insumo para calcular la composición altitudinal de cada distrito. |
| **Piso altitudinal** | Cada una de las ocho regiones naturales del Perú según Javier Pulgar Vidal (Chala, Yunga, Quechua, Suni, Puna, Janca, Selva Alta, Selva Baja), definidas por rangos de altitud y características ecológicas. |
| **NDC** | Contribuciones Determinadas a Nivel Nacional (*Nationally Determined Contributions*): compromisos climáticos del Perú ante el Acuerdo de París, referencia para clasificar el gasto en adaptación y mitigación. |
| **ETL** | Extracción, Transformación y Carga (*Extract, Transform, Load*): proceso programado que toma datos de las fuentes, los limpia y estandariza, y los publica en formatos consumibles por la plataforma. |
| **GeoJSON** | Formato abierto basado en JSON para representar geometrías geográficas (polígonos distritales, puntos, líneas) directamente consumible por bibliotecas web de mapas. |
| **Coroplético** | Tipo de mapa temático que colorea unidades territoriales (distritos, provincias) según el valor de un indicador, permitiendo comparar territorios de un vistazo. |
