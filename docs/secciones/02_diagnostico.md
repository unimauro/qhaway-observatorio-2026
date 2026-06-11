# 2. Diagnóstico

## 2.1 El QHAWAY original (2024): un mérito que debe reconocerse

En abril de 2024, la FIEECS-UNI anunció QHAWAY, el "Observatorio del Presupuesto Público del Perú", concebido como herramienta de docencia, investigación e incidencia pública[^diag-fieecs]. Fue una apuesta institucional valiosa y, en varios sentidos, pionera dentro de la universidad pública peruana: pocas facultades del país han intentado convertir los datos del MEF en un producto digital propio, con identidad de marca y vocación ciudadana.

La evidencia archivada del dashboard —snapshot de Wayback Machine del 30 de noviembre de 2024[^diag-wayback]— permite documentar con precisión lo que QHAWAY logró construir:

- **Cuatro tableros temáticos**: (1) Gastos MEF — Ejecución Presupuestal, (2) Inversión Verde — Impacto en el Cambio Climático, (3) Inversión en Transporte — Gobernanza del transporte urbano, y (4) Métricas del Estado — Densidad del Estado. La inclusión temprana de un tablero de inversión verde anticipó una agenda que QHAWAY 2.0 retoma como módulo central.
- **Vista territorial** de "Presupuesto por departamento y provincia 2023" (por ejemplo, Ucayali con sus cuatro provincias).
- **Glosario pedagógico** de PIA, PIM y Girado con enlaces directos al MEF: un gesto de alfabetización presupuestal coherente con la misión docente de la FIEECS.
- **Talleres participativos de diseño** con la comunidad académica, que dieron legitimidad al proyecto y dejaron capacidades instaladas en estudiantes y docentes.

Este diagnóstico parte, por tanto, del reconocimiento: QHAWAY validó la hipótesis de que existe demanda académica y ciudadana por un observatorio presupuestal con sello FIEECS-UNI. Lo que falló no fue la idea, sino decisiones técnicas y de sostenibilidad específicas e identificables.

## 2.2 Por qué quedó offline: cinco decisiones técnicas reversibles

El dominio `dashboard.qhaway-fieecs.pe` se encuentra hoy caído; solo sobrevive el snapshot archivado. Las causas son concretas y, lo más importante, todas tienen solución probada:

1. **Login obligatorio.** El dashboard exigía registro e inicio de sesión para ver cualquier dato. Para un observatorio de incidencia pública esto invierte la lógica del producto: el dato público quedaba detrás de una puerta, lo que reduce drásticamente el alcance, impide el enlace desde prensa o redes y desincentiva la visita casual.
2. **Alcance territorial limitado a provincia.** La unidad de decisión presupuestal más cercana al ciudadano es el distrito (1,891 distritos), pero QHAWAY se detenía en el nivel departamento/provincia, insuficiente para responder las preguntas que realmente moviliza la ciudadanía.
3. **Sin SEO ni URLs compartibles.** Al no existir URLs públicas por vista ni metadatos (Open Graph, schema.org), el observatorio era invisible para buscadores y no podía circular en redes sociales: cada gráfico era un callejón sin salida comunicacional.
4. **Costos recurrentes de dominio y hosting.** La arquitectura dependía de un dominio `.pe` y un hosting pagados; cuando caducaron, el proyecto desapareció íntegro. Un observatorio universitario no puede depender de renovaciones presupuestales menores para existir.
5. **Dependencia de mantenimiento activo.** Sin pipeline automatizado de datos ni infraestructura estática, el sistema requería operación humana continua; al diluirse el equipo inicial, no hubo mecanismo de degradación elegante: pasó de operativo a inexistente.

Ninguna de estas causas es estructural. La lección central —que la sostenibilidad técnica y de costos es tan importante como el contenido— es precisamente el punto de partida de QHAWAY 2.0.

## 2.3 QHAWAY 2024 frente al ecosistema actual del equipo proponente

El equipo proponente no ofrece promesas: ofrece productos en línea, verificables hoy por cualquier lector con un navegador. La comparación es directa:

| Criterio | QHAWAY 2024 | Ecosistema actual del equipo |
|---|---|---|
| Estado | Offline (solo archivo Wayback) | 7 observatorios live + 1 en repositorio |
| Acceso | Login obligatorio | Acceso abierto, sin registro |
| Alcance territorial | Departamento / provincia | Distrital (1,891 distritos con GeoJSON) |
| URLs compartibles / SEO | No | Sí (estado en URL, OG por vista) |
| Costo de hosting | Dominio + hosting pagados (caducaron) | US$ 0 (sitios estáticos en GitHub Pages) |
| Actualización de datos | Manual | ETL Python versionado y automatizable |

Los activos que sustentan la columna derecha, todos del proponente técnico (Carlos Cárdenas Fernández, egresado UNI):

| Activo | Qué demuestra para QHAWAY 2.0 |
|---|---|
| Perú Transparente[^diag-pt] | 213 mil servidores públicos; ECharts, MapLibre, Cytoscape; SEO/OG dinámico; export CSV; ETL Python (MEF, gob.pe, OECE) |
| Obs. de Poder Económico[^diag-ope] | Grafos offline (PageRank, Louvain) e índice compuesto EPI 0-100: metodología heredable para índices territoriales |
| Perú Riesgos[^diag-pr] | 14 secciones de riesgos (sismos, El Niño, huaicos, heladas) con 6 simuladores client-side y simulaciones compartibles por URL |
| Proyecto INTI[^diag-inti] | GeoJSON de 1,891 distritos + UBIGEO; IDH y pobreza distrital; prospectiva 2075 con escenarios |
| Obs. FONAFE[^diag-fonafe] | ETL modular versionado con snapshots y patrón anti-overclaiming (datos marcados *verified*/*estimate*); AskBot con IA |
| Obs. Defensa-Interior[^diag-odi] | Patrón de presupuesto sectorial + asistente IA client-side sin backend (costo operativo cero) |
| Obs. Smartphones Adolescentes[^diag-osa] | i18n en 10 idiomas con prerender; procedencia de datos por registro; biblioteca con DOI |
| Perú Finanzas Públicas (repo local, pre-publicación) | Series 1990-2025 de PBI/gasto/deuda; PIA/PIM/Devengado; ETL sobre Consulta Amigable del MEF y BCRP |

Precisión anti-overclaiming: los siete primeros activos están publicados y operativos a la fecha de este documento; el octavo existe como repositorio funcional aún no publicado. Se citan como **evidencia de capacidad ya ejecutada**, no como promesa de capacidad futura.

## 2.4 La brecha nacional que QHAWAY 2.0 debe cerrar

El Estado peruano publica sus datos presupuestales: la Consulta Amigable del MEF[^diag-ca] permite, en teoría, descender hasta el detalle del gasto. En la práctica, su uso exige conocer la jerarquía PIA/PIM/Devengado, navegar menús anidados y entender clasificadores funcionales-programáticos. El resultado es que hoy un ciudadano de a pie —un padre de familia en Churcampa, una regidora en Condorcanqui, un estudiante en El Agustino— **no puede responder la pregunta más básica de la rendición de cuentas: "¿cuánto invierte el Estado en mi distrito y en qué?"** sin entrenamiento previo en la herramienta del MEF.

Esa brecha entre dato disponible y dato comprensible es exactamente el espacio que el QHAWAY original intuyó en 2024 y que QHAWAY 2.0, con la base técnica ya demostrada, está en condiciones de cerrar a nivel distrital, en acceso abierto y a costo de infraestructura cercano a cero en su primera fase.

[^diag-fieecs]: FIEECS-UNI, "QHAWAY — Observatorio del Presupuesto Público del Perú" (abril 2024): <https://fieecs.uni.edu.pe/qhaway-observatorio-del-presupuesto-publico-del-peru/>
[^diag-wayback]: Snapshot del dashboard QHAWAY en Internet Archive (30-nov-2024): <https://web.archive.org/web/20241130224308/https://dashboard.qhaway-fieecs.pe/>
[^diag-pt]: Perú Transparente: <https://unimauro.github.io/peru-transparente>
[^diag-ope]: Observatorio de Poder Económico del Perú: <https://unimauro.github.io/observatorio-poder-economico>
[^diag-pr]: Perú Riesgos: <https://unimauro.github.io/unimaurox-peru-riesgos>
[^diag-inti]: Proyecto INTI — Gemelo Digital del Perú 2075: <https://unimauro.github.io/proyecto-inti>
[^diag-fonafe]: Observatorio de Empresas Públicas (FONAFE): <https://unimauro.github.io/observatorio-fonafe>
[^diag-odi]: Observatorio del Gasto en Defensa e Interior: <https://unimauro.github.io/observatorio-defensa-interior>
[^diag-osa]: Observatorio Global de Smartphones en Adolescentes: <https://unimauro.github.io/observatorio-smartphones-adolescentes>
[^diag-ca]: MEF, Consulta Amigable de Ejecución del Gasto: <https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx>
