# 4. Visión Estratégica

**QHAWAY** toma su nombre del verbo quechua *qhaway* —"mirar, observar"— y esa raíz no es decorativa: define el mandato. La visión al 2030 es que QHAWAY 2.0 sea **el observatorio territorial de referencia del Perú**: el lugar donde un investigador, un funcionario, un periodista o un vecino de Chumbivilcas miran —con el mismo dato y la misma fuente— cuánto presupuesto llega a su territorio, qué riesgos lo amenazan y cómo evoluciona su prosperidad. Operado académicamente por la FIEECS-UNI, QHAWAY 2.0 recupera y amplía el mandato del observatorio anunciado en abril de 2024[^vis-qhaway1], esta vez sobre una base técnica ya demostrada en producción y con un modelo de sostenibilidad que evita repetir la caída del dashboard original.

**Misión**: producir y publicar, de forma continua y verificable, inteligencia territorial sobre presupuesto público, cambio climático, riesgos y desarrollo humano a nivel distrital (1,891 distritos), al servicio de la docencia, la investigación y la incidencia pública de la FIEECS-UNI y del país.

La visión se sostiene en cinco **principios operativos**, que son a la vez compromisos verificables:

1. **Datos abiertos por defecto**: sin registro ni inicio de sesión —la barrera que limitó al QHAWAY original—; todo dataset descargable (CSV/JSON) con licencia abierta y metadatos schema.org Dataset.
2. **Reproducibilidad**: cada cifra publicada es trazable a su fuente primaria (MEF, INEI, CENEPRED, SENAMHI[^vis-fuentes]) mediante ETL versionado en repositorios públicos; cualquier tercero puede regenerar el dataset y auditar el método.
3. **Neutralidad política**: QHAWAY describe brechas y ejecución presupuestal; no califica gestiones ni personas. El observatorio es instrumento de todos los actores, no de una causa partidaria.
4. **Anti-overclaiming**: todo registro lleva marca de procedencia (`verified` cuando proviene de fuente oficial, `estimate` cuando es cálculo propio); los supuestos del simulador y las proyecciones prospectivas se declaran explícitamente. Este patrón ya opera en los observatorios del equipo proponente.
5. **Accesibilidad**: mobile first, WCAG 2.1 AA, lenguaje claro con glosario (PIA/PIM/Devengado), URLs compartibles por gráfico y costo de acceso cero para el usuario.

El horizonte 2030 es ambicioso pero acotado: no se promete predecir el futuro ni reemplazar a los entes rectores de estadística; se promete **observar mejor** —con cobertura distrital, lente territorial y método público— lo que el Estado ya publica de forma fragmentada.

# 5. Propuesta de Valor

QHAWAY 2.0 no compite con la Consulta Amigable del MEF[^val-mef] ni con los portales del INEI: los **integra y traduce a territorio**. Su valor está en cruzar lo que hoy vive en silos —presupuesto, clima, riesgo, desarrollo humano— sobre una misma unidad de análisis: el distrito y su composición altitudinal.

| Audiencia | Dolor actual | Qué le entrega QHAWAY 2.0 |
|---|---|---|
| **Academia** (FIEECS-UNI y red nacional) | Cada tesis repite meses de limpieza de datos MEF/INEI | Datasets distritales limpios, versionados y citables, listos para investigación; insumo directo para cursos de economía pública y estadística |
| **Estado** (GORE, municipios, MEF, CEPLAN) | Brechas territoriales dispersas en sistemas no conversables | Tablero de brechas distrital (IPT + ejecución + riesgo) para priorización de inversión y cierre de brechas |
| **Ciudadanía y prensa** | El presupuesto público es ilegible para no especialistas | Entender el presupuesto de su distrito en 3 clics: buscar distrito → ver cuánto llega y en qué se gasta → compartir el gráfico por URL |
| **Cooperación y financiadores** | Difícil verificar a dónde llega la inversión climática comprometida | Trazabilidad territorial del gasto climático (taxonomía verde sobre el clasificador funcional del MEF[^val-clima]), con ejecución real por distrito y piso altitudinal |

El **diferencial único** —que ninguna plataforma pública o privada ofrece hoy en el Perú— es el **lente de pisos altitudinales aplicado al presupuesto**. Usando la clasificación de las ocho regiones naturales de Javier Pulgar Vidal[^val-pulgar] (Chala, Yunga, Quechua, Suni, Puna, Janca, Selva Alta, Selva Baja), QHAWAY 2.0 calcula la composición altitudinal de cada distrito cruzando los límites distritales con un modelo digital de elevación de 30 m[^val-dem], y prorratea el gasto público según esa composición. Eso habilita preguntas que hoy nadie puede responder con datos: **¿cuánto presupuesto recibe la puna? ¿Cuánta inversión climática llega a la selva baja? ¿La ejecución en Janca es proporcional a su vulnerabilidad ante el retroceso glaciar?** Cabe la honestidad metodológica: el prorrateo altitudinal es una **estimación** (el gasto se registra por entidad ejecutora, no por cota), y así se marcará; pero es una estimación reproducible, auditable y radicalmente más informativa que el vacío actual.

A esto se suma un segundo diferencial pragmático: la propuesta no parte de cero. Ocho observatorios live del equipo proponente —entre ellos Perú Transparente, Proyecto INTI y Perú Riesgos— demuestran que el patrón técnico (estático, abierto, costo de infraestructura cercano a US$ 0 en su primera fase) funciona y sobrevive sin presupuesto recurrente de hosting, exactamente el punto donde el QHAWAY original falló.

[^vis-qhaway1]: FIEECS-UNI, "QHAWAY — Observatorio del Presupuesto Público del Perú" (abril 2024): <https://fieecs.uni.edu.pe/qhaway-observatorio-del-presupuesto-publico-del-peru/>. Snapshot del dashboard original (30-nov-2024) en Wayback Machine: <https://web.archive.org/web/20241130224308/https://dashboard.qhaway-fieecs.pe/>.
[^vis-fuentes]: MEF Transparencia Económica: <https://apps5.mineco.gob.pe/transparencia/mensual/>; INEI: <https://www.inei.gob.pe>; CENEPRED-SIGRID: <https://sigrid.cenepred.gob.pe>; SENAMHI: <https://www.senamhi.gob.pe>.
[^val-mef]: MEF, Consulta Amigable de ejecución presupuestal: <https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx>.
[^val-clima]: Referencia metodológica: marcadores climáticos del MEF/MINAM sobre el clasificador funcional-programático y marcadores de Río de la OCDE: <https://www.oecd.org/dac/environment-development/rio-markers.htm>.
[^val-pulgar]: Javier Pulgar Vidal, *Las ocho regiones naturales del Perú* (1941 y ediciones posteriores), clasificación geográfica canónica del territorio peruano por pisos altitudinales.
[^val-dem]: Modelos digitales de elevación SRTM 30 m (<https://www.earthdata.nasa.gov/sensors/srtm>) y Copernicus GLO-30 (<https://dataspace.copernicus.eu/explore-data/data-collections/copernicus-contributing-missions/collections-description/COP-DEM>).
