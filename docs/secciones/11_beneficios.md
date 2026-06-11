# 11. Beneficios Académicos

QHAWAY 2.0 convierte a la FIEECS-UNI en propietaria de un laboratorio de datos abierto sobre presupuesto, territorio y clima — un activo que ninguna otra facultad de economía del país posee hoy con cobertura distrital. Los beneficios concretos:

**Tesis de pregrado y posgrado.** Los datasets versionados (PIA/PIM/Devengado por distrito, composición altitudinal, IPT) reducen de meses a días la fase de recolección de datos de una tesis en Ingeniería Económica o Estadística. Cada snapshot de datos es reproducible: un jurado puede verificar exactamente la versión usada.

**Publicaciones indexadas con datasets citables.** Cada release del dataset puede depositarse en Zenodo con DOI propio[^ben-zenodo], siguiendo el patrón ya operativo en el Observatorio de Smartphones en Adolescentes (biblioteca con DOI)[^ben-obs-adol]. Esto habilita artículos en revistas indexadas donde los datos —no solo el paper— son citables, sumando métricas de impacto para la UNI.

**Laboratorio de datos y docencia.** Casos reales para cursos de políticas públicas, presupuesto público, econometría espacial y ciencia de datos: los estudiantes trabajan sobre la Consulta Amigable del MEF[^ben-mef] ya estructurada en JSON, en lugar de descargas manuales.

**Semilleros de investigación.** El ETL en Python y el frontend abierto (GitHub) permiten que semilleros contribuyan código y módulos con revisión por pares técnica, formando perfiles de ingeniería de datos demandados por el mercado.

**Visibilidad internacional.** Un observatorio open access con URLs compartibles y SEO posiciona a la UNI ante PNUD, BID y CEPAL como contraparte académica con infraestructura de datos propia — algo que el QHAWAY original, con login obligatorio, no logró.

Cinco preguntas de investigación que la plataforma habilita (hoy difíciles de responder sin meses de procesamiento):

1. ¿Cuánto presupuesto público por habitante recibe la puna frente a la chala, controlando por pobreza y población?
2. ¿La ejecución del gasto etiquetado como climático es menor en los distritos más vulnerables a heladas y huaicos?
3. ¿Qué elasticidad muestra el IPT distrital ante variaciones del devengado en educación con rezagos de 2-4 años?
4. ¿Existen patrones espaciales de baja ejecución persistente (clústeres distritales) explicables por capacidad institucional?
5. ¿Cómo se redistribuyó territorialmente la inversión en gestión del riesgo después de eventos El Niño, según pisos altitudinales?

# 12. Beneficios para el Estado

QHAWAY 2.0 no compite con los sistemas del MEF: los complementa con una capa analítica territorial que hoy no existe en ningún portal oficial.

**Tablero de brechas para priorizar inversión.** Cruzar IPT, riesgos territoriales y ejecución presupuestal por distrito permite a gobiernos regionales y locales identificar dónde la brecha de servicios coincide con baja inversión — insumo directo para carteras de INVIERTE.PE[^ben-invierte].

**Insumo para la programación multianual.** Las series PIA/PIM/Devengado con desagregación distrital y funcional ofrecen evidencia para la Programación Multianual de Inversiones y para los planes territoriales que CEPLAN articula con el PEDN al 2050[^ben-ceplan].

**Trazabilidad del gasto climático.** El etiquetado del gasto con el clasificador funcional-programático del MEF y la referencia de los marcadores de Río de la OCDE[^ben-rio] genera una serie verificable de inversión en adaptación y mitigación — insumo para reportar avances de las NDC ante la CMNUCC y para sustentar solicitudes de financiamiento climático internacional (Fondo Verde del Clima, cooperación bilateral). Cabe precisar: la plataforma sistematiza y visualiza; la validación oficial del marcador corresponde al MEF/MINAM.

**Alerta temprana de baja ejecución.** Actualizaciones programadas del ETL permiten detectar, dentro del año fiscal, distritos y programas con devengado anómalamente bajo, cuando aún hay margen de corrección — no en la autopsia de diciembre.

**Neutralidad académica como valor.** Al ser un observatorio universitario público, sin filiación partidaria ni fines comerciales, sus cifras pueden ser citadas por ministerios, contralores y congresistas de cualquier bancada sin costo reputacional. La FIEECS-UNI aporta lo que ningún consultor privado puede: legitimidad institucional neutral.

# 13. Beneficios para la Ciudadanía

**Transparencia que cabe en el bolsillo.** El portal del MEF existe y es público, pero exige navegar menús de escritorio y conocer la jerga presupuestal. QHAWAY 2.0 es mobile first: una madre de familia en Huancavelica puede ver desde su celular cuánto se devengó en agua y saneamiento en su distrito, sin registro ni login — exactamente la barrera que hundió al QHAWAY original.

**Periodismo de datos.** Cada gráfico tiene URL única compartible y exportación CSV, de modo que un periodista regional puede verificar, citar y embeber la evidencia en minutos. Los datos llevan marca de procedencia (fuente y fecha por registro), lo que permite distinguir cifra oficial de estimación — práctica ya operativa en los observatorios del equipo[^ben-fonafe].

**Vigilancia ciudadana informada.** Juntas vecinales, frentes de defensa y comités de vigilancia de presupuesto participativo obtienen un lenguaje común con la autoridad: la misma cifra de PIM y devengado que maneja el gerente municipal, en formato comprensible.

**Educación cívica presupuestal.** El glosario interactivo (PIA, PIM, devengado, girado) — heredero del glosario del QHAWAY original — y los módulos visuales sirven como material para colegios y universidades: entender el presupuesto público deja de ser privilegio de especialistas.

**La IA elimina la barrera técnica.** El asistente de consultas en lenguaje natural (patrón ya probado en los observatorios FONAFE y Defensa-Interior) permite preguntar "¿cuánto invirtió mi distrito en prevención de huaicos el año pasado?" y recibir respuesta con la fuente citada. Importante: el asistente responde sobre el dataset publicado y muestra siempre su fuente; no genera cifras propias — el dato manda, la IA solo traduce.

[^ben-zenodo]: Zenodo, repositorio de datos de investigación operado por el CERN, asigna DOI a cada versión de un dataset: <https://zenodo.org>.
[^ben-obs-adol]: Observatorio Global de Smartphones en Adolescentes, biblioteca científica con DOI y procedencia de datos por registro: <https://unimauro.github.io/observatorio-smartphones-adolescentes>.
[^ben-mef]: MEF, Consulta Amigable de ejecución presupuestal: <https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx>.
[^ben-invierte]: MEF, Sistema de Seguimiento de Inversiones (INVIERTE.PE/SSI): <https://ofi5.mef.gob.pe/ssi/>.
[^ben-ceplan]: CEPLAN, Plan Estratégico de Desarrollo Nacional al 2050 e información territorial: <https://www.ceplan.gob.pe>.
[^ben-rio]: OCDE, marcadores de Río para el seguimiento del financiamiento climático: <https://www.oecd.org/dac/environment-development/rioconventions.htm>.
[^ben-fonafe]: Observatorio FONAFE, patrón de procedencia de datos (verified/estimate) y AskBot sobre dataset: <https://unimauro.github.io/observatorio-fonafe>.
