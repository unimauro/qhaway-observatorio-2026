# 8. Módulos de la Plataforma

QHAWAY 2.0 se organiza en siete módulos que comparten una misma columna vertebral: el distrito como unidad mínima de análisis (1,891 distritos con GeoJSON y UBIGEO ya operativos en Proyecto INTI), ETL Python versionado y URLs compartibles por cada vista. Esta sección describe los tres primeros módulos; los restantes se desarrollan en la sección siguiente. Cada módulo distingue explícitamente qué está ya demostrado en productos live del equipo y qué queda por construir.

## 8.1 Presupuesto Público

**Objetivo.** Hacer legible el ciclo presupuestal completo del Estado peruano —PIA, PIM, Devengado, Girado— a nivel de distrito, sector, función y proyecto, con datos del MEF actualizados de forma programada. Es el módulo que recoge directamente el mandato fundacional del QHAWAY original (dashboard "Gastos MEF"), pero baja del nivel provincial al distrital y elimina la barrera de login.

**Preguntas que responde.** ¿Cuánto presupuesto recibe mi distrito y en qué se gasta? ¿Qué porcentaje del PIM llega efectivamente a devengarse y girarse? ¿Qué pliegos y municipalidades ejecutan mejor o peor? ¿Cómo se redistribuye el presupuesto entre el PIA aprobado y el PIM modificado a lo largo del año? ¿Qué funciones (educación, salud, transporte, saneamiento) concentran el gasto en cada territorio?

**Fuentes.** MEF Transparencia Económica / Consulta Amigable (gasto mensual y navegador por niveles)[^mod-mef]; INVIERTE.PE / SSI para el detalle de proyectos de inversión[^mod-ssi]; API OCDS del OECE para vincular gasto con procesos de contratación[^mod-oece]; Portal Nacional de Datos Abiertos como fuente complementaria[^mod-datos].

**Dimensiones y filtros.** Año (serie histórica), nivel de gobierno (nacional / regional / local), región, provincia, distrito, sector, pliego, función, programa presupuestal, genérica de gasto y proyecto. Toda combinación de filtros queda codificada en la URL para compartirse o citarse en investigación.

**Visualizaciones.** (a) Mapa coroplético distrital (Leaflet + MapLibre GL) de presupuesto per cápita y avance de ejecución; (b) series temporales PIA/PIM/Devengado por territorio; (c) diagrama Sankey del flujo PIA → PIM → Devengado → Girado, que vuelve visibles las modificaciones presupuestales y las brechas de ejecución; (d) treemap por función y programa presupuestal; (e) ranking de ejecución por pliego y municipalidad; (f) heatmap año × territorio para detectar patrones persistentes de subejecución.

**Base existente.** El repo unimaurox-peru-finanzas-publicas ya implementa series PIA/PIM/Devengado 1990-2025, heatmap año × sector, mapa coroplético regional y treemap ministerial con ETL del MEF Consulta Amigable y BCRP; Perú Transparente demuestra el mismo patrón (ECharts + MapLibre + export CSV) en producción con ~20 MB de JSON estático[^mod-pt]. Por construir: la desagregación distrital completa y el Sankey de cuatro etapas.

\newpage

Mockup descriptivo de la vista principal del módulo:

```text
+----------------------------------------------------------------------+
| QHAWAY 2.0 · Presupuesto Público                  [ES] [☾] [Compartir]|
+----------------------------------------------------------------------+
| Año:[2026 v] Nivel:[Todos v] Región:[Cusco v] Prov:[Calca v]         |
| Distrito:[Lares v] Función:[Saneamiento v] Prog.:[Todos v] [Limpiar] |
+----------------------------------------------------------------------+
| PIA: S/ 12.4 M | PIM: S/ 18.9 M | Devengado: 61.2% | Girado: 58.7%   |
+--------------------------------+-------------------------------------+
|  MAPA DISTRITAL (coroplético)  |  SANKEY  PIA ─┐                     |
|   [zoom] [capa: per cápita]    |          PIM ─┼─> Devengado ─> Girado|
|   ▓▓▒▒░░ avance de ejecución   |   brecha no ejecutada: S/ 7.3 M     |
+--------------------------------+-------------------------------------+
| SERIE 2015-2026 ▁▂▃▅▆▇ | TREEMAP funciones | RANKING ejecución (980) |
+----------------------------------------------------------------------+
| Fuente: MEF Consulta Amigable · corte 31-may-2026 · [Descargar CSV]  |
+----------------------------------------------------------------------+
```

\newpage

## 8.2 Cambio Climático

**Objetivo.** Cuantificar y territorializar la inversión pública relacionada con cambio climático —adaptación, mitigación, recursos hídricos, bosques, biodiversidad y gestión del riesgo—, dando continuidad al tablero "Inversión Verde" del QHAWAY original con una metodología explícita y auditable.

**Preguntas que responde.** ¿Cuánto invierte el Perú en cambio climático? ¿Qué territorios reciben esa inversión y cuáles quedan rezagados? ¿Cuál es la ejecución real del gasto etiquetado como climático? ¿Cómo evoluciona en el tiempo y frente a compromisos como las NDC?

**Metodología de etiquetado del gasto climático.** No existe en el presupuesto peruano una etiqueta única "gasto climático", de modo que el módulo construye una **estimación metodológica transparente**: (1) se parte del clasificador funcional-programático del MEF, identificando funciones, programas presupuestales y proyectos asociados a categorías climáticas (p. ej. gestión del riesgo de desastres, recursos hídricos, conservación de bosques); (2) se aplican marcadores climáticos siguiendo la referencia metodológica del MEF/MINAM y los marcadores de Río de la OCDE, asignando a cada partida un grado de relevancia (principal / significativa / no relevante)[^mod-rio]; (3) cada cifra publicada se marca con su nivel de confianza (`verified` cuando proviene de un programa inequívocamente climático; `estimate` cuando depende de criterios de asignación), patrón anti-overclaiming ya operativo en el Observatorio FONAFE[^mod-fonafe]. La taxonomía de etiquetado se publica como dato abierto para escrutinio académico.

**Fuentes.** MEF Consulta Amigable (gasto por programa presupuestal)[^mod-mef]; MINAM Geobosques para deforestación; SENAMHI para escenarios climáticos[^mod-senamhi]; CEPLAN para articulación con el PEDN al 2050[^mod-ceplan]; Banco Mundial y CEPAL para comparativos regionales[^mod-bm].

**Dimensiones y filtros.** Año, territorio (región → distrito), categoría climática (adaptación / mitigación / hídrico / bosques / biodiversidad / GRD), grado de relevancia del marcador, programa presupuestal.

**Visualizaciones.** Mapa distrital de inversión climática per cápita; series de evolución del gasto etiquetado vs. gasto total; Sankey desde categorías climáticas hacia territorios; treemap por categoría; ranking de ejecución de programas climáticos; heatmap año × región de inversión en adaptación.

**Base existente.** El patrón de procedencia por registro (verified/estimate + fuente) está demostrado en FONAFE y en el Observatorio de Smartphones; el pipeline MEF, en unimaurox-peru-finanzas-publicas. Por construir: la tabla de marcadores climáticos y su validación con investigadores FIEECS, oportunidad natural de tesis y publicaciones.

## 8.3 Riesgos Territoriales

**Objetivo.** Integrar en QHAWAY 2.0 un atlas de riesgos naturales del Perú —inundaciones, sequías, heladas y friajes, huaicos, deslizamientos, sismos, estrés hídrico y vulnerabilidad climática— que permita cruzar exposición al riesgo con presupuesto y prosperidad territorial.

**Preguntas que responde.** ¿Qué distritos concentran mayor exposición a cada peligro? ¿Coincide la inversión en gestión del riesgo con los territorios más expuestos? ¿Qué pasaría ante un escenario tipo El Niño costero o un sismo de gran magnitud en una zona dada?

**Fuentes.** CENEPRED/SIGRID (escenarios de riesgo)[^mod-sigrid]; IGP (sismicidad), SENAMHI y ENFEN (clima y El Niño), INDECI (emergencias), INAIGEM (glaciares), ANA (recursos hídricos) y MINAM Geobosques (deforestación)[^mod-riesgos].

**Dimensiones y filtros.** Tipo de peligro, territorio, temporada/año, severidad del escenario, población e infraestructura expuestas.

**Visualizaciones.** Mapas de peligro por capa (Leaflet), series históricas de eventos y emergencias, heatmap peligro × región, y el cruce diferencial: ranking de distritos por brecha entre exposición al riesgo y gasto en GRD.

**Base existente.** Este módulo no parte de cero: hereda íntegramente las **14 secciones temáticas** (sismos, El Niño, huaicos, friajes y heladas, sequías y glaciares, deforestación, pandemias, entre otras) y los **6 simuladores client-side** del producto live unimaurox-peru-riesgos, incluyendo compartir simulaciones por URL y generación de PDF en el navegador[^mod-upr]. Por construir: la integración de sus capas con el grafo presupuestal distrital de los módulos 8.1 y 8.2, que es justamente donde QHAWAY 2.0 aporta valor analítico nuevo.

[^mod-mef]: MEF — Transparencia Económica, Consulta Amigable de ejecución del gasto: https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx y gasto mensual: https://apps5.mineco.gob.pe/transparencia/mensual/
[^mod-ssi]: MEF — Sistema de Seguimiento de Inversiones (INVIERTE.PE/SSI): https://ofi5.mef.gob.pe/ssi/
[^mod-oece]: OECE — API de Contrataciones Abiertas (estándar OCDS): https://contratacionesabiertas.oece.gob.pe
[^mod-datos]: Portal Nacional de Datos Abiertos del Perú: https://datosabiertos.gob.pe
[^mod-pt]: Perú Transparente (producto live del equipo proponente): https://unimauro.github.io/peru-transparente
[^mod-rio]: OCDE — Marcadores de Río para el seguimiento de financiamiento climático (referencia metodológica, junto con los marcadores climáticos MEF/MINAM): https://www.oecd.org/dac/environment-development/rioconventions.htm
[^mod-fonafe]: Observatorio FONAFE (producto live; patrón de datos verified/estimate): https://unimauro.github.io/observatorio-fonafe
[^mod-senamhi]: SENAMHI — escenarios climáticos nacionales: https://www.senamhi.gob.pe
[^mod-ceplan]: CEPLAN — Plan Estratégico de Desarrollo Nacional al 2050 e información territorial: https://www.ceplan.gob.pe
[^mod-bm]: Banco Mundial — Datos: https://datos.bancomundial.org ; CEPAL — CEPALSTAT: https://statistics.cepal.org
[^mod-sigrid]: CENEPRED — SIGRID, Sistema de Información para la Gestión del Riesgo de Desastres: https://sigrid.cenepred.gob.pe
[^mod-riesgos]: Fuentes integradas en el atlas de riesgos: IGP (https://www.igp.gob.pe), SENAMHI (https://www.senamhi.gob.pe), INDECI (https://www.indeci.gob.pe), INAIGEM (https://www.inaigem.gob.pe), ANA (https://www.ana.gob.pe), MINAM Geobosques (https://geobosques.minam.gob.pe)
[^mod-upr]: Perú Riesgos (producto live del equipo proponente, 14 secciones y 6 simuladores): https://unimauro.github.io/unimaurox-peru-riesgos
