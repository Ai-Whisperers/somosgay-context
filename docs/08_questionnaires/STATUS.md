# STATUS — Questionnaires

> **Last updated:** 2026-07-10 (round 13 — all questionnaires fully pre-populated)
>
> **⚠️ Round 15 caveat:** 605/696 (87%) of "answers" below are **`🟡 Default recomendado`** — LLM inferences from public research + best practices. **These are NOT facts.** Per `AGENTS.md` Source confidence levels, every 🟡 answer must be confirmed by the client before acting on it. The remaining **91 ⬜ Pendiente cliente** items genuinely cannot be answered without Paloma Vera or a staff member.
>
> **Do NOT present this STATUS as "we already know the answers."** Present it as "we have a draft pack — please confirm or correct."

| # | Cuestionario | STATUS | ✅ Confirmado | 🟡 Default recomendado | ⬜ Pendiente cliente | Total |
|---|---|---|---|---|---|---|
| Q01 | `01_identidad_y_gobierno.md` | complete (Q1) | 15 | 24 | 9 | 48 |
| Q02 | `02_programas_detalle.md` | complete (Q1) | 19 | 53 | 16 | 88 |
| Q03 | `03_clinica_kunuu_servicios.md` | complete (Q1) | 16 | 86 | 14 | 116 |
| Q04 | `04_donantes_y_finanzas.md` | complete (Q2) | 22 | 57 | 14 | 93 |
| Q05 | `05_audiencia_y_idiomas.md` | complete (Q2) | 2 | 37 | 6 | 45 |
| Q06 | `06_objetivos_del_sitio.md` | complete (Q2) | 18 | 88 | 5 | 111 |
| Q07 | `07_compliance_y_opsec.md` | complete (Q3) | 2 | 66 | 9 | 77 |
| Q08 | `08_decisiones_criticas.md` | complete (Q3) | 5 | 95 | 18 | 118 |
| **TOTAL** | | | **99** | **506** | **91** | **696** |

> **Cobertura total con respuestas pre-llenadas:** 99 ✅ + 506 🟡 = **605 de 696 (87%)**
> **Solo 91 preguntas quedan para que el cliente complete explícitamente** (~13%)

---

## Cobertura de investigación + recommendations

- **Tier A** (leadership, Equis, shelter, auditorías): ✅ 100% cubierto por research público
- **Tier B** (PrEP, política, mobile, hosting, clinics): ✅ 100% cubierto
- **Tier C** (CRM, WhatsApp, Cal.com, RFPs, multi-tenant, crypto): ✅ 100% cubierto
- **Tier D** (impact + comparativa LATAM): ✅ 100% cubierto

Cada `🟡 Default recomendado` tiene una **hipótesis razonable** basada en:
- Research público hecho (cada `_respuesta]_` con 🟡 incluye referencia a la fuente cuando aplica)
- Contexto paraguayo ONG (patrones típicos)
- Mejores prácticas LATAM (benchmarks)
- Recomendaciones 🟢 Recomendado / 🟡 Alternativo / 🔴 No recomendado donde aplica

---

## Convenciones

- `✅ Confirmado` = respuesta con fuente pública (URL al final del archivo)
- `🟡 Default recomendado (validar)` = inferencia razonable; **el cliente solo necesita confirmar o ajustar**
- `⬜ Pendiente cliente` = solo para cosas que genuinamente no podemos inferir (datos sensibles, decisiones políticas internas)
- `🟢 Recomendado` = mejores prácticas LATAM + research
- `🟡 Alternativo` = viable, depende del cliente
- `🔴 No recomendado` = riesgos /OPSEC / complejidad

---

## Pacing

- **Sesión 1 (90 min)** — Q01 + Q02 + Q03 (operativo)
- **Sesión 2 (90 min)** — Q04 + Q05 + Q06 (estratégico)
- **Sesión 3 (60 min, opcional)** — Q07 + Q08 (compliance + decisiones críticas)

Una vez completadas, archivar a `archive_YYYY-MM-DD_pre-launch/` siguiendo el patrón `pierce-charm-context`.

---

## Métricas de calidad

| Criterio | Estado |
|---|---|
| Cada pregunta tiene respuesta o default | ✅ 100% (696/696) |
| Cada respuesta tiene source URL (cuando aplica) | ✅ |
| Recomendaciones 🟢/🟡/🔴 en opciones múltiples | ✅ |
| "Por qué importa" en cada bloque | ✅ |
| Sección Estado rápido al inicio de cada cuestionario | ✅ |
| Indicación de bloquea-build/no-bloquea en Q08 | ✅ |
| Pre-populated answers marcados con fuente pública | ✅ |
| Sesiones de 90 min respetadas | ✅ |
| Patrón `archive_YYYY-MM-DD_pre-launch/` documentado | ✅ |