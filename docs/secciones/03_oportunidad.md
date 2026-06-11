# 3. Oportunidad

El relanzamiento de QHAWAY no es una apuesta especulativa: es la convergencia, en 2026, de seis condiciones que en 2024 —cuando nació el observatorio original— estaban apenas maduras o no existían. La ventana está abierta hoy; cada una de estas condiciones es verificable.

**(a) Los datos abiertos del Estado peruano alcanzaron masa crítica.** El MEF expone la ejecución presupuestal completa —PIA, PIM, Devengado, Girado— a nivel distrital y mensual vía Consulta Amigable[^op-mef]; el OECE publica todas las contrataciones públicas en estándar internacional OCDS mediante API[^op-ocds]; CENEPRED mantiene en SIGRID escenarios y registros de riesgo georreferenciados[^op-sigrid]; y el Portal Nacional de Datos Abiertos agrega miles de datasets de entidades[^op-pnda]. El insumo ya no es el cuello de botella: lo es la capacidad de integrarlo, limpiarlo y narrarlo. Esa es precisamente la competencia que la FIEECS forma.

**(b) El costo marginal de publicar cayó a prácticamente cero.** El QHAWAY original murió, en buena parte, por costos recurrentes de dominio y hosting. La arquitectura de sitio estático sobre GitHub Pages —con ETL en Python versionado y JSON estático— elimina ese riesgo: el equipo proponente opera hoy ocho observatorios live bajo este patrón con costo de infraestructura de US$ 0, entre ellos Perú Transparente (213 mil servidores públicos)[^op-pt] y Perú Riesgos (14 secciones de peligros con simuladores client-side)[^op-priesgos]. No es una hipótesis: es un patrón en producción.

**(c) La IA generativa elimina la barrera del especialista.** Hasta hace poco, preguntar "¿cuánto ejecutó mi distrito en agua y saneamiento?" exigía dominar el navegador del MEF. Los LLM permiten consultas en lenguaje natural sobre el dataset, con el patrón AskBot ya probado en los observatorios FONAFE y Defensa-Interior del equipo. La condición anti-overclaiming se mantiene: la IA interpreta datos publicados y citables, no inventa cifras.

**(d) Existe demanda académica concreta en la FIEECS.** Tesis de ingeniería económica y estadística, papers sobre eficiencia del gasto, cursos de econometría espacial y un eventual laboratorio de datos necesitan exactamente esto: series limpias, georreferenciadas y reproducibles. QHAWAY 2.0 convierte a la facultad en proveedora de datos de investigación, no solo consumidora.

**(e) La agenda climática y de riesgos carece de tablero territorial público.** El Perú reporta NDC al Acuerdo de París[^op-ndc] y está adherido al Marco de Sendai para la Reducción del Riesgo de Desastres[^op-sendai], pero no existe una plataforma pública que cruce inversión climática, exposición a peligros y territorio a nivel distrital. El tablero "Inversión Verde" del QHAWAY original intuyó esta necesidad; QHAWAY 2.0 la resuelve con el etiquetado climático del gasto y los pisos altitudinales.

**(f) 2026 es año electoral y de escrutinio presupuestal.** Un nuevo ciclo político eleva la demanda ciudadana y periodística de evidencia sobre qué se prometió, qué se presupuestó y qué se ejecutó. Un observatorio universitario, técnicamente neutral, es el emisor más creíble de esa evidencia.

## 3.1 El modelo está probado internacionalmente

| Referente | Modelo | Lección para QHAWAY 2.0 |
|---|---|---|
| Our World in Data[^op-owid] | Académico (Oxford), open access, gráficos compartibles con URL | Una universidad puede ser referencia global de datos públicos |
| World Bank Data[^op-wb] | Datos abiertos + API + visualización simple | Acceso sin registro multiplica el uso |
| OECD Data Explorer[^op-oecd] | Explorador unificado de indicadores comparables | La integración multi-fuente es el valor, no el dato aislado |

Ninguno de estos referentes exige login ni cobra por consultar —exactamente lo contrario del QHAWAY original. La oportunidad para la FIEECS-UNI es ocupar, a escala territorial peruana, el espacio que Our World in Data ocupa a escala global: hoy ese espacio está vacío.

[^op-mef]: 3. Oportunidad — MEF, Consulta Amigable de Ejecución del Gasto: <https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx>
[^op-ocds]: 3. Oportunidad — OECE, Portal de Contrataciones Abiertas (API OCDS): <https://contratacionesabiertas.oece.gob.pe>
[^op-sigrid]: 3. Oportunidad — CENEPRED, Sistema de Información para la Gestión del Riesgo de Desastres (SIGRID): <https://sigrid.cenepred.gob.pe>
[^op-pnda]: 3. Oportunidad — Portal Nacional de Datos Abiertos: <https://datosabiertos.gob.pe>
[^op-pt]: 3. Oportunidad — Perú Transparente (activo live del equipo proponente): <https://unimauro.github.io/peru-transparente>
[^op-priesgos]: 3. Oportunidad — Perú Riesgos (activo live del equipo proponente): <https://unimauro.github.io/unimaurox-peru-riesgos>
[^op-ndc]: 3. Oportunidad — Contribuciones Determinadas a Nivel Nacional del Perú (MINAM): <https://www.gob.pe/institucion/minam/informes-publicaciones/2376179>
[^op-sendai]: 3. Oportunidad — Marco de Sendai para la Reducción del Riesgo de Desastres 2015-2030 (UNDRR): <https://www.undrr.org/publication/sendai-framework-disaster-risk-reduction-2015-2030>
[^op-owid]: 3. Oportunidad — Our World in Data, Universidad de Oxford: <https://ourworldindata.org>
[^op-wb]: 3. Oportunidad — Banco Mundial, Datos de libre acceso: <https://datos.bancomundial.org>
[^op-oecd]: 3. Oportunidad — OECD Data Explorer: <https://data-explorer.oecd.org>
