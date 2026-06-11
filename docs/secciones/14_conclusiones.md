# 14. Conclusiones

1. **La marca QHAWAY tiene valor institucional y debe relanzarse.** FIEECS-UNI invirtió en 2024 en el diseño participativo y el lanzamiento del Observatorio del Presupuesto Público[^conc-qhaway]; ese capital simbólico —una marca quechua propia, asociada a la facultad y a la vigilancia del gasto público— no debe perderse por la caída del hosting original. Relanzar es más barato y más creíble que empezar de cero.

2. **La base técnica ya existe y está demostrada en producción.** No se propone una promesa: ocho observatorios live del equipo proponente (Perú Transparente, Perú Riesgos, Proyecto INTI, Observatorio FONAFE, entre otros)[^conc-pt] operan hoy con el mismo stack (React, ECharts, Leaflet/MapLibre, ETL Python). QHAWAY 2.0 reutiliza componentes probados, no parte de un prototipo.

3. **El diferencial de pisos altitudinales es inédito.** Cruzar la clasificación de Pulgar Vidal con el modelo digital de elevación y los límites distritales para responder "¿cuánto presupuesto recibe la puna?" no lo ofrece hoy ningún portal público peruano. Es una contribución original con sello FIEECS-UNI.

4. **El modelo estático garantiza sostenibilidad con costo de infraestructura ≈ US$ 0 en Fase 1.** La lección central del QHAWAY original —dominio y hosting pagados que caducaron— se resuelve con GitHub Pages y datos JSON versionados: si nadie paga una factura, el observatorio sigue en línea.

5. **El acceso abierto corrige las barreras del original.** Sin login obligatorio, con URLs compartibles, SEO y diseño móvil, el alcance pasa de usuarios registrados a toda la ciudadanía, prensa y academia.

6. **La IA democratiza el acceso a los datos.** El patrón AskBot ya probado permite que un usuario sin formación presupuestal pregunte en lenguaje natural y obtenga respuestas ancladas en el dataset, con supuestos marcados (anti-overclaiming).

7. **FIEECS-UNI gana un laboratorio permanente.** Docencia (cursos que usan datos reales), investigación (tesis e índices como el IPT) e incidencia pública convergen en una sola plataforma institucional.

8. **El riesgo principal no es técnico sino de gobernanza.** La continuidad depende de decisiones institucionales —convenio, comité, dominio— que se detallan en las recomendaciones siguientes.

# 15. Recomendaciones

Se recomienda al Decanato y a las instancias competentes de FIEECS-UNI adoptar las siguientes acciones, ordenadas por precedencia. Los plazos se cuentan desde la aprobación formal del relanzamiento (R1); los responsables son roles institucionales, no personas.

| # | Recomendación | Responsable | Plazo |
|---|---|---|---|
| R1 | Aprobar formalmente el relanzamiento de QHAWAY como QHAWAY 2.0, con el alcance de 7 módulos descrito en este documento | Decanato FIEECS | Mes 0 (junio–julio 2026) |
| R2 | Designar un comité académico del observatorio (3–5 docentes/investigadores) con funciones de validación metodológica y priorización | Decanato FIEECS | Mes 1 |
| R3 | Firmar convenio o emitir resolución que formalice la colaboración con el equipo técnico proponente y la titularidad institucional de la marca | Decanato / Asesoría legal UNI | Mes 1–2 |
| R4 | Recuperar el dominio `qhaway-fieecs.pe` o, preferentemente, crear `qhaway.uni.edu.pe` bajo el dominio institucional (sin renovaciones pagadas externas) | Oficina de TI UNI + comité | Mes 1–3 |
| R5 | Lanzar el MVP público (Fase 1: módulos de Presupuesto, Riesgos y Pisos Altitudinales) | Equipo técnico + comité | Mes 6 |
| R6 | Aprobar una política de datos abiertos: datasets descargables, ETL público y licencia CC BY 4.0[^rec-cc] para datos y visualizaciones derivadas | Comité académico | Mes 3–4 |
| R7 | Gestionar financiamiento para Fases 2–3 ante BID, CAF y cooperación internacional[^rec-bid], usando el MVP live como evidencia de capacidad de ejecución | Decanato + comité | Mes 6–12 |
| R8 | Ejecutar un plan de comunicación (lanzamiento público, redes institucionales, prensa) y dictar un curso piloto FIEECS que use la plataforma como material de trabajo | Comité + docente designado | Mes 6–9 |

Tres precisiones. Primero, R1–R4 no requieren presupuesto significativo: son decisiones administrativas que destraban todo lo demás. Segundo, el MVP de R5 es alcanzable en 6 meses porque reutiliza componentes ya operativos; cualquier ampliación de alcance debe pasar por el comité (R2) para no comprometer el plazo. Tercero, R7 se condiciona deliberadamente a R5: solicitar financiamiento con un producto público funcionando es una posición sustancialmente más fuerte que hacerlo con un documento. Si alguna gestión de financiamiento no prospera, la Fase 1 sigue siendo sostenible por sí sola, que es precisamente la garantía de continuidad que el QHAWAY original no tuvo.

[^conc-qhaway]: FIEECS-UNI, "QHAWAY — Observatorio del Presupuesto Público del Perú" (abril 2024): <https://fieecs.uni.edu.pe/qhaway-observatorio-del-presupuesto-publico-del-peru/>. Snapshot del dashboard original (30-nov-2024) en Wayback Machine: <https://web.archive.org/web/20241130224308/https://dashboard.qhaway-fieecs.pe/>.
[^conc-pt]: Activos live verificables: Perú Transparente <https://unimauro.github.io/peru-transparente>; Perú Riesgos <https://unimauro.github.io/unimaurox-peru-riesgos>; Proyecto INTI <https://unimauro.github.io/proyecto-inti>; Observatorio FONAFE <https://unimauro.github.io/observatorio-fonafe>.
[^rec-cc]: Licencia Creative Commons Atribución 4.0 Internacional (CC BY 4.0): <https://creativecommons.org/licenses/by/4.0/deed.es>.
[^rec-bid]: Datos abiertos y líneas de cooperación: BID <https://data.iadb.org>; CAF — Banco de Desarrollo de América Latina <https://www.caf.com>; CEPAL <https://statistics.cepal.org>.
