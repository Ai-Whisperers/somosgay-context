# docs/08_questionnaires — What to ask the client

If engagement proceeds, this is what to ask. Mirror `pierce-charm-context` pattern: archive answered `.md` files to `archive_YYYY-MM-DD_pre-launch/` once answered.

> **Status legend:**
> - ✅ **Confirmed in research** = answer we found in public sources during 2026-07-10/11 research sessions
> - 🟡 **Inferred from context** = educated guess based on Paraguayan NGO patterns; needs confirmation
> - ⬜ **Needs client answer** = empty `_respuesta]_` slot; client must fill
> - ❓ **Open question** = we genuinely don't know

---

## Pacing (per `pierce-charm-context` 2026-07-07 lesson)

- Don't drip-feed 1 question per day — bundle into sessions
- **2 sessions of ~90 minutes each** (audio-first)
- Archive answered `.md` to `archive_YYYY-MM-DD_pre-launch/`
- Create post-launch `0X_questionnaires/` with trigger conditions

### Session plan

| Sesión | Duración | Cubre |
|---|---|---|
| **Sesión 1 — Operativo** | 90 min | Q01 Identidad + Q02 Programas + Q03 Clínica |
| **Sesión 2 — Estratégico** | 90 min | Q04 Financiamiento + Q05 Audiencias + Q06 Objetivos web |
| **Sesión 3 (opcional) — Profundización** | 60 min | Q07 Compliance + OPSEC + Q08 Casos prácticos |
| **Post-launch** | ongoing | Q0X_ triggers (compra de stock, RUC tramitado, etc.) |

---

## Questionnaires

| # | Archivo | Sesión | Bloque | STATUS |
|---|---|---|---|---|
| Q01 | `01_identidad_y_gobierno.md` | 1 | Razón social, RUC, personería, dirección, board | draft |
| Q02 | `02_programas_detalle.md` | 1 | KPIs + staff + hours de cada programa | draft |
| Q03 | `03_clinica_kunuu_servicios.md` | 1 | Servicios, eligibility, booking, OPSEC clínica | draft |
| Q04 | `04_donantes_y_finanzas.md` | 2 | Funder list, budget, funding mix, gaps | draft |
| Q05 | `05_audiencia_y_idiomas.md` | 2 | Visitantes actuales, audiencias deseadas, languages | draft |
| Q06 | `06_objetivos_del_sitio.md` | 2 | Propósito primario, must-haves, no-haves, success metrics | draft |
| Q07 | `07_compliance_y_opsec.md` | 3 | Datos de pacientes, MSPBS, datos abiertos, hosting risks | draft |
| Q08 | `08_decisiones_criticas.md` | 3 | Decisiones que el cliente debe tomar antes del build | draft |

---

## Cómo usar este pack

1. Kiki/Iván hacen la primera llamada (audio, no chat) — `hola@somosgay.org` o WhatsApp `+595 986 173 200`
2. La llamada se hace en español — la clientela es paraguaya, no international
3. Se usa el cuestionario como checklist en vivo; Paloma Vera o quien responda va dictando mientras Kiki/Iván completan los `_respuesta]_`
4. Respuestas que no se sepan en vivo se marcan con `_[pendiente]_` para follow-up
5. Al terminar la sesión, el cuestionario completado se archiva en `archive_YYYY-MM-DD_pre-launch/`
6. Después se compara con este draft y se actualiza el repositorio (reemplaza `STATUS: draft` con `STATUS: complete`)

## Status legend (per file)

Each questionnaire begins with a quick-reference status block:

```
## Estado rápido

| Categoría | Confirmado | Pendiente cliente |
|---|---|---|
| Identidad legal | ✅ | (none) |
| Contacto público | 🟡 1 de 3 | 2 (WhatsApp booking, email facturación) |
| Programa Kunu'u | 🟡 3 de 8 | 5 (patient counts, retention, etc.) |
| ... | ... | ... |
```

---

## Sources

- https://www.somosgay.org/about (primary)
- https://somosgay.org/news (news index, 168 pages)
- ABC Color 2023-11-20, 2023-12-01, 2024-06-28, 2025-02-13 (Paloma Vera confirmed ED; Cazal spokesperson)
- LA Times en Español 2024-09-03 (Cazal as founder)
- IBA Reporter 2019 (shelter detail)
- Washington Blade 2012-12-10 (Kuimba'e launch)
- Diario HOY 2014 (Equis app launch)
- Informe Anual 2020 + Auditorías 2019/2020/2022/2023 (descargado en `assets/financials/`)
- Resolución SG N.° 213/2025 (PrEP regulation)
- DataReportal Digital 2024: Paraguay
- amfAR, The Giving Block, Cloudflare Pages, HubSpot for Nonprofits, Cal.com, Zavu, etc. (varios research files)