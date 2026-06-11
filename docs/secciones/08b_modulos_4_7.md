## 8.4 Inteligencia Territorial: Pisos Altitudinales

Este módulo es el diferencial único de QHAWAY 2.0: ningún observatorio fiscal peruano cruza hoy el presupuesto público con la geografía natural del país. La unidad administrativa (el distrito) es una ficción jurídica que promedia realidades ecológicas radicalmente distintas; un mismo distrito puede contener puna ganadera, valles quechua agrícolas y ceja de selva. Para devolverle al análisis presupuestal su dimensión territorial real, el módulo recupera la clasificación de las ocho regiones naturales del Perú formulada por Javier Pulgar Vidal en 1938 y consolidada en su obra de referencia[^mod4-pulgar]:

| Piso | Rango altitudinal (m s. n. m.) | Vertiente |
|---|---|---|
| Chala (Costa) | 0 – 500 | Occidental |
| Yunga | 500 – 2 300 | Ambas |
| Quechua | 2 300 – 3 500 | Ambas |
| Suni o Jalca | 3 500 – 4 000 | Ambas |
| Puna | 4 000 – 4 800 | Andina |
| Janca (Cordillera) | más de 4 800 | Andina |
| Rupa Rupa (Selva Alta) | 400 – 1 000 (oriental) | Oriental |
| Omagua (Selva Baja) | 80 – 400 | Oriental |

**Metodología.** El cálculo es reproducible con datos abiertos: (1) se toma un modelo digital de elevación (DEM) de 30 metros de resolución — SRTM de la NASA o Copernicus GLO-30 de la ESA[^mod4-dem] —; (2) se superpone con los límites distritales oficiales (GeoJSON de 1 891 distritos con UBIGEO, activo ya disponible en el portafolio del equipo[^mod4-inti]); (3) se clasifica cada celda del ráster según los rangos de Pulgar Vidal, distinguiendo vertiente occidental y oriental para separar Yunga marítima de Selva Alta; y (4) se agrega por distrito la proporción de celdas en cada piso. El resultado es una composición porcentual por distrito, por ejemplo:

| Distrito (ejemplo ilustrativo) | Puna | Quechua | Suni | Selva Alta |
|---|---|---|---|---|
| Composición altitudinal | 40 % | 30 % | 20 % | 10 % |

Con esa matriz distrito × piso, el presupuesto distrital (módulo 8.1) puede prorratearse por piso altitudinal. Conviene marcar el supuesto con honestidad metodológica: el prorrateo asume distribución del gasto proporcional a la superficie (o, en variantes refinadas, a la población georreferenciada por piso), lo cual es una aproximación, no una medición directa de dónde se ejecuta cada sol. La plataforma mostrará siempre este supuesto junto al resultado.

**Preguntas que habilita por primera vez.** ¿Cuánto presupuesto recibe la puna del Perú — el territorio de las heladas, la alpaca y las cabeceras de cuenca — frente a la chala costera? ¿Cuánto se invierte realmente en territorios amazónicos (Selva Alta y Baja), más allá de la etiqueta departamental "Loreto" o "Ucayali"? ¿Cuánto del presupuesto climático etiquetado (módulo 8.2) llega a los pisos más vulnerables — la janca de los glaciares en retroceso, la puna de los friajes? Estas preguntas son hoy incontestables con la Consulta Amigable del MEF[^mod4-mef], que solo desagrega por unidades administrativas. Para la FIEECS-UNI, el módulo abre además una agenda de investigación propia: economía de pisos ecológicos con datos fiscales, una línea publicable sin equivalente en la región.

\newpage

Mockup descriptivo de la ficha distrital con composición de pisos:

```text
+----------------------------------------------------------------------+
| QHAWAY 2.0 > Territorio > Distrito: [San Pedro de Cajas ▾]  UBIGEO   |
+----------------------------------------------------------------------+
| COMPOSICIÓN ALTITUDINAL (DEM 30 m × límites distritales)             |
|                                                                      |
|  Puna       ████████████████████████████████ 40 %   4 000–4 800 m   |
|  Quechua    ████████████████████████ 30 %           2 300–3 500 m   |
|  Suni       ████████████████ 20 %                   3 500–4 000 m   |
|  Selva Alta ████████ 10 %                           vertiente or.    |
|                                                                      |
|  [Mapa: ráster de pisos sobre el polígono distrital]                |
+----------------------------------------------------------------------+
| PRESUPUESTO PRORRATEADO POR PISO (supuesto: proporcional a área)  ⓘ |
|  Puna: S/ 4.1 M · Quechua: S/ 3.1 M · Suni: S/ 2.0 M · S.Alta: 1.0  |
|  ⚠ Estimación por prorrateo — ver nota metodológica                 |
+----------------------------------------------------------------------+
| [Comparar distritos] [Exportar CSV] [Compartir URL] [Preguntar IA]  |
+----------------------------------------------------------------------+
```

\newpage

## 8.5 Índice de Prosperidad Territorial (IPT)

El IPT es un índice compuesto 0–100 por distrito, provincia y región, heredero directo de la metodología del índice EPI ya construido y operativo en el Observatorio de Poder Económico del equipo[^mod5-epi]. Su árbol tiene cuatro dominios con indicadores de fuentes oficiales:

| Dominio | Indicadores | Fuentes principales |
|---|---|---|
| Educación | Escolarización, logro de aprendizajes, analfabetismo; PISA como referencia nacional | MINEDU-ESCALE[^mod5-escale], INEI |
| Salud | Anemia infantil, desnutrición crónica, mortalidad infantil | MINSA-REUNIS/SIEN, ENDES[^mod5-endes] |
| Economía | Pobreza monetaria, empleo, ingreso per cápita | INEI (mapa de pobreza, ENAHO) |
| Servicios | Agua, saneamiento, electricidad, internet | Censos INEI, MIDIS-REDinforma |

La construcción sigue buenas prácticas internacionales de índices compuestos[^mod5-oecd]: normalización min-max de cada indicador a escala 0–100 (invirtiendo los de signo negativo, como anemia o pobreza), agregación ponderada por dominio y pesos **transparentes y configurables por la persona usuaria** — el peso por defecto será igualitario (25 % por dominio), pero la interfaz permitirá ajustarlos y ver cómo cambian los rankings, convirtiendo la subjetividad inevitable de todo índice en un objeto de exploración y no en una caja negra.

**Advertencia metodológica (anti-overclaiming).** El IPT es una herramienta de ordenamiento y comparación, no una medición de bienestar con validez causal. Los indicadores distritales tienen distinta cobertura temporal y precisión muestral (los de ENAHO/ENDES no siempre son representativos a nivel distrital); cuando un valor sea imputado o provenga de estimaciones de áreas menores, la ficha lo marcará como `estimate` con su fuente, siguiendo el patrón de procedencia de datos ya probado en los observatorios FONAFE y de smartphones del equipo. Los rankings y comparadores (distrito vs. distrito, distrito vs. promedio de su piso altitudinal dominante) se publican con esa trazabilidad visible.

## 8.6 Simulador de Políticas Públicas

El simulador permite explorar escenarios del tipo "más educación", "más salud", "más agua", "más conectividad" o "más resiliencia climática" aplicando elasticidades tomadas de literatura empírica de la OCDE y el Banco Mundial[^mod6-bm], con ejecución íntegramente en el navegador (patrón ya operativo en los seis simuladores de Perú Riesgos[^mod6-riesgos]).

La regla editorial del módulo es estricta: **todo resultado es condicional a supuestos visibles**. Ejemplo: ante "+10 % de inversión en agua y saneamiento rural en un distrito", el simulador no mostrará "las EDAs caerán 7 %", sino un **rango esperado de reducción de enfermedades diarreicas agudas** (por ejemplo, entre X e Y puntos, según el intervalo reportado por la literatura citada), acompañado de los supuestos: elasticidad importada de estudios en contextos comparables, plazos de maduración de la inversión, ejecución efectiva del gasto y ausencia de cuellos de botella locales. Cada escenario simulado genera una URL compartible con sus parámetros, de modo que el debate público pueda auditarse: quien comparte una simulación comparte también sus supuestos.

## 8.7 Observatorio Prospectivo

El séptimo módulo proyecta escenarios al 2030, 2040 y 2050 — horizonte alineado con el Plan Estratégico de Desarrollo Nacional al 2050 de CEPLAN[^mod7-ceplan] — sobre el patrón prospectivo ya demostrado en el Proyecto INTI del equipo[^mod7-inti]. La progresión metodológica es honesta y gradual: (1) **modelos tendenciales** (extrapolación de series con bandas de incertidumbre) desde el día uno; (2) **regresiones** con covariables territoriales (incluida la composición altitudinal del módulo 8.4) cuando las series lo permitan; y (3) **aprendizaje automático** solo cuando exista suficiente profundidad y calidad de datos para validar fuera de muestra — nunca antes, y siempre reportando métricas de error.

Cada territorio tendrá tres narrativas prospectivas, en el formato ya probado: **conservador** (las tendencias actuales se mantienen o deterioran), **esperado** (continuidad con mejoras incrementales) y **transformador** (qué indicadores tendrían que moverse, y cuánto, para un salto de prosperidad). Las narrativas se generan con apoyo de IA a partir de los datos y modelos del propio observatorio, se etiquetan explícitamente como escenarios — no predicciones — y enlazan al simulador del módulo 8.6 para que la persona usuaria explore qué políticas acercarían el escenario transformador.

[^mod4-pulgar]: Javier Pulgar Vidal, *Las ocho regiones naturales del Perú* (tesis presentada a la III Asamblea General del Instituto Panamericano de Geografía e Historia, 1941; obra posterior *Geografía del Perú: las ocho regiones naturales*). Reseña institucional: https://www.gob.pe/institucion/minam/noticias (referencia general MINAM) y entrada bibliográfica en https://es.wikipedia.org/wiki/Ocho_regiones_naturales_del_Per%C3%BA
[^mod4-dem]: NASA SRTM 30 m: https://www.earthdata.nasa.gov/data/instruments/srtm ; Copernicus GLO-30 DEM: https://dataspace.copernicus.eu/explore-data/data-collections/copernicus-contributing-missions/collections-description/COP-DEM
[^mod4-inti]: Proyecto INTI — GeoJSON de 1 891 distritos con UBIGEO e indicadores distritales: https://unimauro.github.io/proyecto-inti
[^mod4-mef]: MEF, Consulta Amigable de ejecución presupuestal: https://apps5.mineco.gob.pe/transparencia/Navegador/default.aspx
[^mod5-epi]: Observatorio de Poder Económico — índice compuesto EPI 0-100: https://unimauro.github.io/observatorio-poder-economico
[^mod5-escale]: MINEDU, Estadística de la Calidad Educativa (ESCALE): https://escale.minedu.gob.pe
[^mod5-endes]: INEI, Encuesta Demográfica y de Salud Familiar (ENDES) y microdatos: https://proyectos.inei.gob.pe/microdatos/
[^mod5-oecd]: OECD/JRC, *Handbook on Constructing Composite Indicators: Methodology and User Guide* (2008): https://www.oecd.org/en/publications/handbook-on-constructing-composite-indicators-methodology-and-user-guide_9789264043466-en.html
[^mod6-bm]: Banco Mundial, datos e investigación aplicada (agua, saneamiento y salud): https://datos.bancomundial.org ; OCDE: https://data.oecd.org
[^mod6-riesgos]: Perú Riesgos — 14 secciones y 6 simuladores client-side con URL compartible: https://unimauro.github.io/unimaurox-peru-riesgos
[^mod7-ceplan]: CEPLAN, Plan Estratégico de Desarrollo Nacional al 2050: https://www.ceplan.gob.pe
[^mod7-inti]: Proyecto INTI — prospectiva territorial con tres escenarios por distrito: https://unimauro.github.io/proyecto-inti
