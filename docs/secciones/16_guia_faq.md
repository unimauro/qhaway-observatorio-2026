# 16. Cómo Leer los Gráficos: Guía de Uso

QHAWAY 2.0 está pensado para públicos diversos: estudiantes de la FIEECS-UNI, investigadores, periodistas, autoridades locales y ciudadanía. Esta guía explica, para cada tipo de visualización, qué muestra, cómo interactuar con ella y —tan importante como lo anterior— cómo **no** malinterpretarla. La alfabetización de datos es parte del mandato académico del observatorio, no un accesorio.

## 16.1 Tooltips (detalle al pasar el cursor)

Toda visualización del observatorio muestra un recuadro de detalle al pasar el cursor (en móvil, al tocar el elemento): valor exacto, unidad, año, fuente del dato y definición breve del indicador. Si una cifra parece sorprendente, el primer paso es leer su tooltip: allí consta si es un dato verificado de fuente oficial o una estimación del equipo, siguiendo el patrón de procedencia por registro ya aplicado en los observatorios del portafolio. **No malinterpretar:** el valor del tooltip corresponde al corte de fecha indicado, no necesariamente al dato "en vivo" del MEF.

## 16.2 Mapa coroplético (mapa de colores por distrito)

La intensidad del color representa el valor del indicador en cada territorio; la leyenda indica los cortes (cuantiles o intervalos definidos, siempre explicitados). Se puede hacer zoom, desplazarse y hacer clic en un distrito para abrir su ficha territorial. **No malinterpretar:** un distrito de área grande no es más importante ni recibe más presupuesto por verse más grande en el mapa — Ucayali ocupa mucho mapa y poca población; un distrito limeño densísimo es apenas un punto. Para comparar magnitudes use los rankings o el modo per cápita.

## 16.3 Series temporales

Muestran la evolución de un indicador (p. ej., PIM o devengado) a lo largo de los años, con zoom por rango de fechas. El selector permite alternar entre **soles corrientes** (valores nominales de cada año) y **soles constantes** (ajustados por inflación, con año base indicado). **No malinterpretar:** un crecimiento en soles corrientes puede ser estancamiento real; para tendencias de largo plazo, use soles constantes.

## 16.4 Diagrama Sankey (flujos)

Visualiza el flujo del presupuesto a través de sus etapas: PIA → PIM → Devengado → Girado. El **ancho** de cada banda es proporcional al monto. Permite ver de un vistazo dónde "se angosta" el flujo (brechas de ejecución). **No malinterpretar:** una banda angosta no implica por sí sola mala gestión; puede reflejar modificaciones presupuestales legítimas durante el año.

## 16.5 Treemap (rectángulos anidados)

El **área** de cada rectángulo es proporcional a su participación en el total. Un clic desciende de nivel: de función a programa presupuestal y de allí a proyecto. **No malinterpretar:** el color del treemap codifica categoría o ejecución, no magnitud; la magnitud es siempre el área.

## 16.6 Heatmap (matriz de calor)

Matriz con territorios en filas y años en columnas; el color codifica la intensidad del indicador. Útil para detectar patrones (p. ej., distritos con baja ejecución persistente). **No malinterpretar:** la escala de color se calibra sobre el rango visible; al cambiar filtros, el mismo color puede representar valores distintos — verifique la leyenda.

## 16.7 Rankings

Ordenan territorios por un indicador, con selector **absoluto / per cápita**. **No malinterpretar:** Lima Metropolitana lidera casi cualquier ranking absoluto por su tamaño; para comparar esfuerzo o cobertura, el per cápita es la lectura adecuada, y para distritos muy pequeños incluso el per cápita puede ser volátil.

## 16.8 Indicadores compuestos (IPT)

El Índice de Prosperidad Territorial agrega dimensiones de educación, salud, economía y servicios en una escala comparativa. Es una herramienta **relativa**: sirve para comparar territorios entre sí y en el tiempo, no como diagnóstico absoluto ni veredicto sobre la gestión de una autoridad. La ficha metodológica (pesos, fuentes, normalización) es pública y está enlazada desde cada vista.

## 16.9 Controles comunes

Todas las vistas comparten: botón **compartir** (genera una URL que reproduce exactamente el gráfico con sus filtros), **descargar** (CSV de los datos y PNG del gráfico), **modo oscuro**, y selectores de **año** y **territorio** (región → provincia → distrito). El estado del gráfico vive en la URL: lo que usted comparte es lo que el receptor ve.

# 17. Preguntas Frecuentes (FAQ)

**¿De dónde salen los datos?**
De fuentes oficiales: MEF (Transparencia Económica / Consulta Amigable)[^faq-mef], INEI[^faq-inei], MINEDU-ESCALE[^faq-escale], MINSA, MIDIS, CENEPRED-SIGRID[^faq-sigrid], SENAMHI, CEPLAN e INVIERTE.PE, además de organismos internacionales (Banco Mundial, OCDE, BID, CEPAL). Cada gráfico cita su fuente específica en el tooltip y en la ficha del dato.

**¿Cada cuánto se actualizan?**
Los datos presupuestales se actualizan con periodicidad mensual mediante procesos automatizados; los indicadores sociales, según el calendario de publicación de cada fuente (anual en la mayoría de casos). Cada vista muestra su fecha de corte.

**¿Por qué una cifra difiere de la que veo en Consulta Amigable?**
Por dos razones legítimas: el **corte de fecha** (Consulta Amigable es dinámica; QHAWAY publica fotos fechadas) y la **agregación** (QHAWAY puede agrupar funciones o consolidar niveles de gobierno). Si la diferencia no se explica por esto, repórtela como posible error.

**¿Qué significan PIA, PIM, Devengado y Girado?**
PIA: presupuesto inicial aprobado por ley. PIM: presupuesto modificado durante el año. Devengado: obligación de pago reconocida por un bien o servicio ya recibido. Girado: desembolso efectivo. El glosario completo enlaza a las definiciones del MEF[^faq-glosario].

**¿Uso devengado o girado para medir ejecución?**
La convención estándar —y la que usa QHAWAY por defecto— es **devengado/PIM**. El girado se ofrece como vista complementaria de caja.

**¿Puedo descargar los datos?**
Sí. Todos los conjuntos de datos se descargan en CSV y JSON, bajo licencia Creative Commons CC BY 4.0[^faq-cc]: úselos libremente citando la fuente.

**¿Puedo citarlo en mi tesis?**
Sí. Formato sugerido: *QHAWAY 2.0 — Observatorio Nacional de Inteligencia Territorial, FIEECS-UNI. "[Nombre del indicador]", consultado el [fecha], [URL del gráfico]*. La URL compartible reproduce el gráfico exacto que usted citó.

**¿Cómo se calculó la composición de pisos altitudinales?**
Cruzando los límites distritales oficiales con un modelo digital de elevación (SRTM/Copernicus, 30 m) y los rangos altitudinales de la clasificación de Javier Pulgar Vidal. Es una estimación geoespacial con supuestos explícitos (documentados en la ficha metodológica), no una clasificación oficial del Estado.

**¿Las proyecciones del módulo prospectivo son predicciones?**
No. Son **escenarios** construidos con supuestos explícitos y elasticidades de literatura (OCDE, Banco Mundial). Muestran "qué pasaría si…", no "qué pasará". Cada escenario lista sus supuestos.

**¿La IA del observatorio puede equivocarse?**
Sí. El asistente responde únicamente sobre los datos publicados en el observatorio y cita la fuente y la vista de donde extrae cada cifra, pero como todo sistema de lenguaje puede errar en interpretación. Verifique siempre contra el gráfico citado antes de usar una respuesta en un trabajo formal.

**¿Cómo reporto un error?**
Mediante el enlace "Reportar un error" presente en cada vista, que abre un formulario público (issue en el repositorio del proyecto). Los reportes y su resolución quedan visibles para todos.

**¿Funciona en móvil o con internet lento?**
Sí: diseño *mobile first*, archivos optimizados y carga progresiva por vista. No requiere instalar nada.

**¿Tiene costo o exige registrarse?**
No. QHAWAY 2.0 es de acceso abierto, sin login ni registro — a diferencia de la versión 2024, que exigía crear una cuenta para ver los tableros. La apertura total es una decisión de diseño: un observatorio público se mide por cuánta gente puede usarlo.

[^faq-mef]: MEF — Consulta Amigable de Ejecución del Gasto: https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx y gasto mensual: https://apps5.mineco.gob.pe/transparencia/mensual/
[^faq-inei]: INEI — censos, ENAHO, ENDES: https://www.inei.gob.pe y microdatos: https://proyectos.inei.gob.pe/microdatos/
[^faq-escale]: MINEDU — Estadística de la Calidad Educativa (ESCALE): https://escale.minedu.gob.pe
[^faq-sigrid]: CENEPRED — Sistema de Información para la Gestión del Riesgo de Desastres (SIGRID): https://sigrid.cenepred.gob.pe
[^faq-glosario]: MEF — Glosario de Presupuesto Público: https://www.mef.gob.pe/es/glosario-sp-5902
[^faq-cc]: Licencia Creative Commons Atribución 4.0 Internacional (CC BY 4.0): https://creativecommons.org/licenses/by/4.0/deed.es
