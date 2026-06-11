# 1. Resumen Ejecutivo

En abril de 2024 la FIEECS-UNI lanzó **QHAWAY, Observatorio del Presupuesto Público del Perú**, una apuesta pionera por poner datos fiscales al servicio de la docencia, la investigación y la incidencia pública[^res-fieecs]. El dashboard llegó a operar con cuatro tableros (ejecución presupuestal MEF, inversión verde, transporte e indicadores del Estado), con desagregación hasta nivel provincial[^res-wayback]. Hoy ese dashboard está fuera de línea: el dominio y el hosting pagados caducaron, el acceso exigía registro previo y no existían URLs compartibles ni posicionamiento en buscadores. La lección no es de concepto —la idea era correcta— sino de **sostenibilidad técnica y de costos**.

Esta propuesta plantea relanzar la marca como **QHAWAY 2.0 — Observatorio Nacional de Inteligencia Territorial, Presupuesto Público, Cambio Climático, Riesgos y Desarrollo Humano**, sobre una base ya demostrada: el proponente técnico, Carlos Cárdenas Fernández, egresado UNI, mantiene en producción ocho observatorios de datos públicos de acceso abierto, a nivel distrital y con costo de infraestructura de US$ 0, entre ellos Perú Transparente, Proyecto INTI (1,891 distritos georreferenciados) y Perú Riesgos[^res-activos]. QHAWAY 2.0 no parte de cero: reutiliza componentes operativos y los pone bajo el respaldo institucional de la FIEECS-UNI.

El observatorio se organiza en **siete módulos**:

| # | Módulo | Qué responde |
|---|---|---|
| 1 | Presupuesto Público | PIA/PIM/Devengado/Girado por distrito, sector y programa |
| 2 | Cambio Climático | Cuánto y dónde invierte el Perú en adaptación y mitigación |
| 3 | Riesgos Territoriales | Inundaciones, sequías, heladas, huaicos, estrés hídrico |
| 4 | Pisos Altitudinales | Composición de cada distrito según las 8 regiones naturales |
| 5 | Índice de Prosperidad Territorial (IPT) | Educación, salud, economía y servicios por territorio |
| 6 | Simulador de Políticas | Escenarios con elasticidades de literatura OCDE/BM, supuestos explícitos |
| 7 | Observatorio Prospectivo | Escenarios territoriales 2030/2040/2050 con apoyo de IA |

El **diferencial único** es el módulo de pisos altitudinales: cruzando los límites distritales con un modelo digital de elevación (SRTM/Copernicus 30 m), cada distrito se descompone porcentualmente en las ocho regiones naturales de Javier Pulgar Vidal (Chala, Yunga, Quechua, Suni, Puna, Janca, Selva Alta, Selva Baja)[^res-pulgar]. Esto permite responder preguntas que hoy ninguna plataforma pública responde: ¿cuánto presupuesto recibe la puna?, ¿cuánta inversión climática llega a los territorios amazónicos o a los distritos más vulnerables a heladas?

La implementación se escalona en **tres fases**: la Fase 1 (0-6 meses) entrega el observatorio completo como sitio estático en GitHub Pages con ETL en Python, **con costo de infraestructura ≈ US$ 0** —el mismo patrón ya probado en los observatorios live del equipo—; la Fase 2 (6-12 meses) añade backend FastAPI, PostgreSQL/PostGIS y una API pública documentada; la Fase 3 (12-24 meses) escala a nube AWS con CDN e infraestructura como código, con alternativa de contención de costos documentada. La plataforma integrará 14+ fuentes oficiales, entre ellas MEF Consulta Amigable, INEI, MINEDU-ESCALE, MINSA, CENEPRED-SIGRID, SENAMHI, CEPLAN y la API OCDS del OECE[^res-fuentes].

**El pedido concreto a la FIEECS-UNI** es de respaldo, no de presupuesto de infraestructura: (i) **respaldo institucional** del Decanato para que QHAWAY 2.0 sea el observatorio oficial de la Facultad; (ii) **dominio y presencia web institucional** (subdominio bajo fieecs.uni.edu.pe o equivalente, evitando la dependencia de dominios pagados que ya costó la caída del original); y (iii) **equipo académico**: docentes e investigadores que validen metodologías, y estudiantes de Ingeniería Económica y Estadística que participen vía cursos, tesis y prácticas. La Fase 1 es demostrable en seis meses sin inversión en servidores.

Tres cifras resumen la ambición: **1,891 distritos** con información territorial, **8 pisos altitudinales** como lente de análisis inédito del presupuesto, y **14+ fuentes oficiales** integradas en una sola plataforma abierta.

[^res-fieecs]: FIEECS-UNI, anuncio del observatorio QHAWAY (abril de 2024): <https://fieecs.uni.edu.pe/qhaway-observatorio-del-presupuesto-publico-del-peru/>
[^res-wayback]: Snapshot del dashboard original en Wayback Machine (30-nov-2024): <https://web.archive.org/web/20241130224308/https://dashboard.qhaway-fieecs.pe/>
[^res-activos]: Activos en producción del equipo proponente: Perú Transparente (<https://unimauro.github.io/peru-transparente>), Proyecto INTI (<https://unimauro.github.io/proyecto-inti>), Perú Riesgos (<https://unimauro.github.io/unimaurox-peru-riesgos>), entre otros detallados en la sección de diagnóstico.
[^res-pulgar]: Javier Pulgar Vidal, *Las ocho regiones naturales del Perú* (1941). DEM de referencia: SRTM/Copernicus 30 m, <https://dataspace.copernicus.eu/>
[^res-fuentes]: Principales fuentes: MEF Transparencia Económica (<https://apps5.mineco.gob.pe/transparencia/mensual/>), INEI (<https://www.inei.gob.pe>), MINEDU-ESCALE (<https://escale.minedu.gob.pe>), CENEPRED-SIGRID (<https://sigrid.cenepred.gob.pe>), SENAMHI (<https://www.senamhi.gob.pe>), CEPLAN (<https://www.ceplan.gob.pe>), API OCDS del OECE (<https://contratacionesabiertas.oece.gob.pe>). Listado completo en la sección de fuentes de datos.
