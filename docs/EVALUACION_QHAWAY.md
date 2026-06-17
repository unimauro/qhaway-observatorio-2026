# Evaluación de QHAWAY 2.0 — antes de la difusión amplia

Documento de validación previo a socializar el observatorio con la FIEECS-UNI. Reúne: validación de datos, evaluación de infraestructura, guion de demo y criterios de aceptación. (La revisión técnica adversarial y el checklist de cobertura del feedback de Kely se anexan al final.)

## 1. Validación de datos ✅

- **Conciliación de los 15 ejercicios 2012-2026:** el total nacional de cada año cuadra **al céntimo** con los cuatro cortes (función, sector, nivel, distrito). Única salvedad declarada: **2012**, donde el corte distrital queda en S/ 120.2 mil M vs S/ 122.4 mil M nacional (~1.8 % del gasto de ese año no trae ubigeo de distrito válido en la fuente; los demás cortes sí cuadran).
- **Cotejo contra cifras oficiales (2025):** PIM nacional S/ 272.5 mil M; top funciones Educación 50.3 · Salud 33.5 · Transporte 29.1 mil M — coinciden con el SIAF-MEF.
- **Cobertura territorial:** los distritos con dato crecen de 1,838 (2012) a 1,892 (2025-2026), coherente con la creación histórica de distritos (lo refleja el módulo Cobertura Territorial).

**Veredicto de datos:** sólido y trazable. Cada cifra es reconstruible desde la fuente y reconciliada.

## 2. Evaluación de infraestructura

**Arquitectura actual:** frontend **estático** (React compilado) servido por **Caddy** en un VPS Hostinger **compartido** (~8 GB RAM, 2 vCPU, hospeda otros proyectos), + una **API pequeña** (FastAPI + PostgreSQL) en el mismo VPS, con HTTPS automático. El frontend intenta la API y **cae a JSON estático** (incluido en el sitio) con timeout de 6 s.

| Capa | Escalabilidad | Riesgo |
|---|---|---|
| **Frontend estático (Caddy)** | Muy alta — son archivos; gzip; cacheable. Cientos de usuarios concurrentes sin problema. | Bajo. Es lo que se "transmite al mundo". |
| **API (FastAPI + Postgres)** | Media — tablas agregadas pequeñas (miles de filas) + caché TTL + Cache-Control. Decenas de lecturas concurrentes cómodas. | El cuello de botella si hay un pico fuerte, **pero** el front cae a estático y sigue funcionando. |

**Conclusión de infra:** para **difusión amplia, la infraestructura alcanza** porque lo que ve el público es el estático (robusto). La API es una mejora progresiva, no un punto único de falla (hay fallback). **Mitigaciones baratas si crece el tráfico:** (1) servir los JSON/GeoJSON pesados desde un CDN gratuito (jsDelivr/Cloudflare); (2) subir el TTL de caché de la API; (3) si la FIEECS lo institucionaliza, mover el estático a un dominio/CDN propio. **No se requiere inversión en servidores para lanzar.**

## 3. Guion de demo (5-7 min, para Kely / Decano)

1. **Inicio** — abrir <https://qhaway.org>: logo FIEECS-UNI, KPIs nacionales (PIM S/ 272 mil M), serie 2004-2026. Leer la presentación "QHAWAY significa mirar" (expandirla).
2. **Presupuesto Público** — mostrar el mapa por fase/nivel y la tendencia de 22 años; señalar la atribución por destino (META) vs ejecutora.
3. **Pisos Altitudinales** — la pregunta de equidad (% población vs % presupuesto por piso) y el explorador **"Distritos por piso"** con descarga CSV (para los estudiantes).
4. **Cambio Climático** — inversión ambiental y cruce con riesgo (mencionar que el desglose fino mitigación/adaptación es la siguiente iteración con el dato de Kely).
5. **Cubo OLAP en vivo** — el pivote función × nivel/departamento (el diferencial).
6. **Ninacha (IA)** — preguntarle algo en lenguaje natural.
7. **Cierre** — API pública documentada (`/docs`) + datos conciliados de 15 años. Difusión: el link es `qhaway.org`.

## 4. Criterios de aceptación (cierre de la consultoría)

- [x] Observatorio **live** en dominio propio (qhaway.org) con HTTPS.
- [x] **Datos reales conciliados** del SIAF-MEF, 15 años distritales (2012-2026).
- [x] **11 módulos** operativos + asistente IA + buscador.
- [x] **Identidad institucional FIEECS-UNI** integrada.
- [x] **Descarga de datos** (CSV) para uso académico — en expansión a más módulos.
- [x] **API pública documentada** (OpenAPI) reutilizable.
- [ ] **Desglose climático oficial** (mitigación/adaptación × directo/indirecto) — pendiente del Excel de Kely.
- [ ] **Categoría presupuestal** como dimensión — pendiente de un re-ETL dedicado.
- [ ] Branding final con la **mascota de Mario** — pendiente de archivos.

## 5. Revisión técnica adversarial (3 agentes) — resultados

**Veredicto:** la app está **bien construida y honesta con los datos** (excelente manejo de "sin información ≠ sin presupuesto", fallbacks por año, anti-overclaiming, estados de error presentes). **Lista para difusión amplia** tras los arreglos de alta prioridad (ya aplicados, ver abajo). Los strings de `nivel` (el bug histórico singular/plural) ya NO aparecen; las divisiones por cero están guardadas; los `pct()` están bien alimentados.

### Arreglado en esta evaluación (alta prioridad) ✅
- **Compresión gzip/zstd**: verificada **ya activa** en Caddy para qhaway.org (mitiga la lentitud que notó Kely).
- **`distritoYears` en el `meta.json` estático**: el fallback ya no colapsa los selectores de año a solo 2025 cuando la API tarda.
- **Timeout en cargas estáticas** (geojson ~1.8 MB) + **ErrorBox ciudadano con botón "Reintentar"** (antes mostraba texto de desarrollador "ejecuta python etl/build.py").
- **Ninacha robusta bajo carga**: timeout de cliente (25 s) + servidor (12 s/intento, máx 3 modelos) → ya no satura workers ni cuelga "Pensando…".
- **Caché en `/api/meta`** (lo llamaba cada visita, 3 queries por request).
- Quitada una carga inútil que bloqueaba el render del Inicio.

### Pendiente (incremental, NO bloquea la difusión)
- **Presupuesto**: el aviso del desglose por nivel y el selector de nivel ignorado en la vista departamental de respaldo (mismatch visual menor).
- **Buscador/Ninacha**: el PIM por departamento usa una fuente solo regional+local (subestima); reetiquetar o usar la fuente completa.
- **Accesibilidad**: subir el contraste de labels secundarios (`ink-400` no pasa WCAG AA); cerrar tooltips con Escape/clic-fuera.
- **Infra (vigilar bajo pico)**: usar un *pool* de conexiones en la API (hoy abre una por request) y correr la API con 1 worker para que caché/rate-limit sean consistentes.
- **Bundle**: ECharts no está *tree-shaken* (~1.1 MB); con la compresión ya activa el impacto baja ~75 %. Optimización de roadmap.

## 6. Cobertura del feedback de Kely (checklist)

**Hecho ✅:** orden del menú (Clima tras Pisos), tarjeta Clima en Inicio, IPT con distrito+región y ejes etiquetados, leyenda "qué cambia con el filtro" en Riesgos, distritos por piso con descarga CSV, presentación colapsable/re-expandible con el texto nuevo, identidad FIEECS-UNI.

**A medias 🟡 / Falta ⬜:** export más allá de CSV/Pisos; drill depto→provincia→distrito explícito en Presupuesto; **categoría presupuestal** como dimensión (requiere re-ETL); enlace a PDF de metodología + nota de margen de error en Pisos.

**Bloqueado correctamente 🔴:** Cambio Climático sigue con proxy función=AMBIENTE; espera el Excel oficial (mitigación/adaptación × directo/indirecto) de Kely.
