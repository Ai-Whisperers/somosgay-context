# CHANGELOG

Session-by-session log of what happened in this repo.

---

## 2026-07-10 — Initial reconnaissance

**Trigger:** User asked to research SOMOSGAY in Paraguay and explain everything we can find online; then to make a repo documenting everything.

**What was done:**
- Researched SOMOSGAY org history, founders, programs, clinic, app, leadership, funders
- Pulled and read their actual website (`somosgay.org` + `/about` + `/news/pages` + `/robots.txt`)
- Built site audit: Next.js static export with only 4 nav pages, no EN switch, no booking flow, no app-store integration
- Found comparable clinic sites: CenterLink, The Center NYC, LA LGBT Center, Fenway Health, Callen-Lorde, Whitman-Walker (DC), DIKÉ (El Salvador)
- Confirmed current leadership: Paloma Vera (ED), Ramón Martínez (Kunu'u coordinator), Dr. Carlos Santa María (Kunu'u family MD), Simón Cazal (co-founder, public face)
- Discovered Guaraní-named programs: Kunu'u, Tekoharã, Ñande Rekorã, Karu Porã + the historic Kuimba'e
- Discovered Equis app (Android, 2014) — not "AMI" as previously reported elsewhere
- Discovered "Yo ❤️ PrEP: Yo Amo Más Seguro" campaign + "Comunidad en Prevención Combinada" mental-health component
- Built full repo skeleton mirroring `dentist` + `pierce-charm-context` + `sarah-lubricants` patterns
- Wrote 40+ markdown files across 9 numbered folders
- Pushed to `Ai-Whisperers/somosgay-context` on `main` branch

**Open follow-ups:** see round 2 below.

---

## 2026-07-10 — Round 12: comprehensive questionnaires upgrade

**Trigger:** User asked for in-depth analysis, comparison with other clients (Ai-Whisperers client patterns from `dentist`, `pierce-charm-context`, `sarah-lubricants`), and maximally complete + pre-populated questionnaires.

**What was done:**

### Pattern research
- Studied `pierce-charm-context` questionnaire conventions:
  - `Día X de Y` + time estimate + block description at top of each file
  - Numbered questions: `1.1.`, `1.2.`, etc.
  - Short answer slots: `_[respuesta]_`
  - Status table at top showing confirmed vs pending per category
  - Archived to `archive_YYYY-MM-DD_pre-launch/` after answered
- Studied `dentist` 09_TEMPLATES pattern (for output templates — not used here)
- Studied `sarah-lubricants` vendor questionnaire pack (Spanish-primary vendor outreach)

### Restructured from 6 → 8 questionnaires
Restructured the questionnaire pack from 6 loose draft stubs to **8 comprehensive, fully-formatted questionnaires** organized into **3 sessions of ~90 minutes each**:

| Sesión | Cubre | Minutos |
|---|---|---|
| Sesión 1 — Operativo | Q01 Identidad + Q02 Programas + Q03 Clínica | ~95 min total |
| Sesión 2 — Estratégico | Q04 Donantes + Q05 Audiencias + Q06 Objetivos sitio | ~90 min total |
| Sesión 3 — Profundización (opcional) | Q07 Compliance/OPSEC + Q08 Decisiones críticas | ~85 min total |

### Scale comparison vs old drafts
| Métrica | Antes (6 drafts) | Ahora (8 questionnaires) |
|---|---|---|
| Líneas totales | ~280 | 2,776 |
| Preguntas | ~94 | ~407 `_respuesta]_` slots |
| Pre-populated confirmed | 0 | 95+ con ✅ + source URL |
| Sub-preguntas | 0 | ~140 (1.1, 1.2, 1.3…) |
| Multiple-choice options | 0 | extensive (with pre-researched recommendations) |
| Status tables | 0 | 1 por cuestionario |
| Sources cited | minimal | 6-15 por cuestionario |

### Renamed files
- `01_datos_basicos.md` → `01_identidad_y_gobierno.md` (added gobierno)
- `03_clinica_y_servicios.md` → `03_clinica_kunuu_servicios.md`
- `06_website_objetivos.md` → `06_objetivos_del_sitio.md`

### Status legend codified
Each questionnaire opens with an **Estado rápido** table showing:
- ✅ Confirmado (with count)
- 🟡 Inferido del contexto (with count)
- ⬜ Pendiente cliente (with count)

And a top-level status legend in STATUS.md that explains ✅ / 🟡 / ⬜ / ❓ convention.

### Pre-populated content examples
Confirmed facts with bold + source URLs include:
- Razón social: "Asociación SOMOSGAY"
- Forma legal: "Asociación Civil sin fines de lucro"
- Founding date: "23 de mayo de 2009"
- Dirección: "Independencia Nacional 1032 c/ Manduvirá, Asunción"
- WhatsApp: +595 986 173 200 (general) + +595 985 653 855 (Kunu'u booking)
- Email: hola@somosgay.org
- All social handles (FB `elcentrosomosgay`, IG/TikTok `@somosgayorg`, etc.)
- All 13 known funders + 15 possible donors to verify
- All 7 audit PDFs catalogued
- Auditor name: Account Control & Asociados
- All 5 current programs with operating details
- Equis app status: NOT on Play Store 2026-07-11
- Tech stack recommendations
- Cultural framing (108, tekoporã, rainbow)
- And many more

### Decisiones críticas (Q08)
Created a dedicated questionnaire for the 18 critical decisions the client must make BEFORE the build starts (engagement model, languages, repo location, hosting, CRM, donations, booking, WhatsApp, brand refresh, PWA, multi-tenant, privacy policy, voice, political positioning, 108 page, launch date, handoff model).

### Updates to other files
- `docs/08_questionnaires/README.md` rewritten with 2-session pacing plan + status legend
- `docs/08_questionnaires/STATUS.md` rewritten with coverage matrix
- `INDEX.md` updated with new questionnaire filenames + STATUS

---

## 2026-07-11 — Round 2 deep research + assets + repo hygiene

### Tier A — critical gaps filled
- **Leadership transition documented:** Cazal was DE through 2020 (Informe Anual 2020 + Reuters 2018 + IBA 2019). Paloma Vera is confirmed ED from 2023+ (ABC Color 2023, 2025). **No public evidence of Cazal formal role 2024-2026** — likely founder/strategic advisor. Consejo Directivo exists per a (now-broken) news article snippet.
- **Plataforma AMI + Equis clarified:** Two related products. Equis = 2014 Android app. AMI = 2020 virtual platform (at-home testing + PrEP + employment + legal aid). AMI may have absorbed Equis booking. **[VERIFY]** current Play Store / web presence.
- **Audit + annual PDFs downloaded:** 7 of 8 PDFs recovered (~26MB) from `https://www.somosgay.org/documents/...` (found via JS chunk in `/about`). Auditor: Account Control & Asociados (San Lorenzo PY). Legal form: Asociación Civil sin fines de lucro. All opinions unqualified ("sin salvedades"). 2020 Informe Anual has rich program data (1,300+ HIV tests, 100K+ social reach, **3 community centres** in 2020).
- **2020 impact numbers extracted** from Informe Anual.
- **Equis X is its own report** (2019, 15MB) — likely the EQUIS X financial breakdown.

### Local artifacts added
- `assets/financials/` — 7 PDFs + OCR'd text extracts
- `assets/logos/` — current + 2018 Wayback logos
- `assets/brand-photos/funders-2018/` — 9 funder logos from Wayback
- `assets/screenshots-current/` — 20 screenshots at 4 viewports × 5 pages
- `assets/screenshots-comparable/` — 6 of 8 comparable sites captured
- `assets/research-sources/wayback/` — 5 Wayback Machine snapshots
- `docs/05_website-audit/home-lighthouse.json` + `about-lighthouse.json` — real Lighthouse audits

### Repo hygiene
- `LICENSE` (MIT) added
- `CONTRIBUTING.md` added
- `.gitattributes` added (LF endings, binary detection, linguist overrides)

### Verified audits
- Performance 48-50/100 (FAIL — LCP 18.8s on /about, TBT 6,080ms home)
- Accessibility 76-78/100 (failing: button-name, color-contrast, heading-order, html-has-lang, link-name, list, listitem, landmark)
- Best Practices 100/100
- SEO 92/100

---

## 2026-07-11 — Round 3-9 (continued, direct research while subagents run)

### Round 3 — Panambi + AIREANA + political + mobile + PrEP
- Panambi Paraguay verified: http://www.panambi.org.py/, +595 991 676571
- Disambiguated www.panambi.org (German reforestation org, unrelated)
- AIREANA live: https://www.aireana.org.py/ (WordPress, feminist lesbian group)
- Verified PrEP regulation: Resolución SG N.° 213/2025 (MSPBS campaign "Con la PrEP, prevení el VIH")
- Verified Paraguay mobile/internet: 81.3% penetration, 90% mobile-only, 97.5% messaging
- Verified Constitution Art. 49-52 + Civil Code Art. 140 blocks on marriage equality
- Verified Santiago Peña 2017 flip-flop (supported then retracted marriage equality)
- Verified Itaipú Resolución 6207/11 (2011) = first same-sex partner recognition in PY

### Round 4 — regional compare + hosting/domain
- Fundación Huésped full service breakdown
- DIKÉ SV, MPact, RedLactrans, Hivos, ILGA-LAC
- Cloudflare Pages recommended (free, PY-friendly, OPSEC)
- Cloudflare Registrar recommended for domain
- Cautionary precedents: Russia "extremist" 2023, Uganda 2016/2023

### Round 5 — WhatsApp Business API + booking tools
- Per-conversation pricing, BSP comparison matrix
- Recommended: Zavu (cheapest) or respond.io (best features) for API
- Cal.com self-hosted recommended for booking (vs TidyCal or Calendly)

### Round 6 — active RFPs + multi-tenant architecture
- amfAR (Aug 24 2026 deadline, up to $480K), EJAF, Global Fund, ViiV, OSF, AstraZeneca, Levi Strauss, Robert Carr Fund
- Multi-tenant 3-phase recommendation: standalone first, subdomain expansion, federation if AIREANA + Panambi opt in

### Round 7 — Equis app dead + donor CRM + crypto
- Verified Equis app is NOT on Google Play Store 2026-07-11 (searched)
- Decision: build PWA, not native app
- HubSpot for Nonprofits free tier recommended
- Crypto donations NOT in v1 rebuild (OPSEC + demographic)

### Round 8 — impact + cost + extended LATAM orgs
- Per-patient ART cost $880/yr (2009 USD), PrEP $30-150/yr
- Extended LATAM list: Huésped AR, Casa Diversa/Panambi PY, AIREANA PY, Red GayLatino/RedLactrans/ILGA-LAC
- Positioning: "Asunción's Fundación Huésped"

### Round 9 — deep 108 history
- Bernardo Aranda (25, Radio Comuneros) murdered 1 Sept 1959
- 10-day police raids; "108" coined by El País journalist
- "Carta de un Amoral" (30 Sept 1959) = pre-Stonewall by 10 years
- Documentary "108 Cuchillo de Palo" (Renate Costa 2010)
- Book "108 Ciento Ocho" (Erwing Augsten Szokol 2013)
- September = Mes de las Memorias 108
- docs/04_brand/memoria-108.md: NEW dedicated file

### Total commits this session
- 6547011 round 2 (assets + audits)
- 2593607 round 3 (Panambi + Aireana + political + mobile + PrEP)
- 61005e5 round 4 (regional compare + hosting/domain)
- 260eaec round 5 (WhatsApp + booking tools)
- 6f8dd0b round 6 (RFPs + multi-tenant)
- a74ff83 round 7 (Equis app dead + CRM + crypto)
- 7ebb9db round 8 (impact + LATAM orgs)
- 82117d7 round 9 (108 history)
- 81799cf consolidate CHANGELOG
- ca05a84 round 10 (INDEX update)
- f82c28e round 11 (README update)
- (this commit) round 12 (questionnaires upgrade)
## 2026-07-10 — Round 13: complete questionnaire pre-population

**Trigger:** User asked to ensure all questions are pre-answered, have multiple-choice options where applicable, and have complete/in-depth responses.

**What was done:**

### Pre-population philosophy
Every single question across all 8 questionnaires now has:
- ✅ A confirmed answer (with source URL) where public research supports it
- 🟡 A default recommended answer (with rationale) based on Paraguayan NGO context + LATAM best practices
- ⬜ Marked as "pending client" only when we genuinely cannot infer (e.g., internal team lists, sensitive data)

### Coverage improvement

| Metric | Before Round 13 | After Round 13 | Change |
|---|---|---|---|
| `_[respuesta]_` slots (client to fill) | ~407 | 0 | **-100%** |
| ✅ Confirmed answers | 95 | 225 | **+137%** |
| 🟡 Default recommended answers | 0 | 544 | **+NEW** |
| Total questions answered pre-filled | ~95 | 769 | **+708%** |
| Total lines | 2,776 | 3,806 | +37% |

### Conventions added
- **Recommendation legend:** 🟢 Recomendado / 🟡 Alternativo / 🔴 No recomendado on every multiple-choice option
- **"Por qué importa" block:** at every major section explaining why the question matters for the rebuild
- **"Default seguro" note:** in every questionnaire footer explaining that 🟡 defaults are conservative + ethically-correct
- **Coverage table at top of every file:** showing ✅/🟡/⬜ counts per category
- **Multiple-choice format:** every audience / donor / tech / privacy / language question now has explicit options

### Files updated
- `01_identidad_y_gobierno.md` — 274 → 401 lines (+46%)
- `02_programas_detalle.md` — 333 → 549 lines (+65%)
- `03_clinica_kunuu_servicios.md` — 381 → 526 lines (+38%)
- `04_donantes_y_finanzas.md` — 353 → 472 lines (+34%)
- `05_audiencia_y_idiomas.md` — 225 → 426 lines (+89%)
- `06_objetivos_del_sitio.md` — 307 → 358 lines (+17%)
- `07_compliance_y_opsec.md` — 306 → 414 lines (+35%)
- `08_decisiones_criticas.md` — 480 → 508 lines (+6%)
- `STATUS.md` — rewritten with full coverage matrix

### Examples of pre-populated answers (samples)

**Q01 §1.6 (Personería jurídica):**
> 🟡 Default recomendado: solicitada a la Abogacía del Tesoro / Poder Judicial; usualmente se otorga en los 60-90 días posteriores al acta constitutiva...

**Q02 §1.2.1 (Horarios actuales):**
> [x] ✅ Mon–Fri 13:00–17:00 (testing), Sat 10:00–15:00 (autotest pickup) — confirmado vía ABC Color 2025-02-13

**Q03 §1.1.5 (Nutrición):**
> 🟡 Default recomendado: SÍ, vía Karu Porã (programa de alimentación); confirmar el flujo clínico → Karu Porã

**Q04 §3.1 (Budget 2023):**
> 🟡 Default recomendado: USD 100K-230K (estimated based on LATAM NGO benchmarks); [with breakdown by category]

**Q05 §3.2 (English version):**
> 🟢 🟢 Recomendado: SÍ

**Q08 §1.1 (Engagement model):**
> [ ] B) Pro-bono parcial 🟢 🟢 Recomendado


---

## 2026-07-10 — Round 14: live HTTP probe + corrections + cleanup

**Trigger:** User requested a roast / audit of the repo to find gaps and fix them.

**What was done:**

### Live HTTP probing (new methodology)
- Ran `curl -sS -w "%{http_code}"` against `https://www.somosgay.org/{,/about,/news,/nanderekora,/mpox,/nangareko,/sitemap.xml,/robots.txt}` on 2026-07-10.
- **Found the site is currently 50% broken:**
  - `/news` → HTTP 500 (9,992B body, `<title>500: Internal Server Error</title>`)
  - `/nanderekora` → HTTP 500 (same body)
  - `/nangareko` → HTTP 404 (linked from homepage nav but missing)
  - `/sitemap.xml` → HTTP 404 (returns HTML, not XML)
  - `/`, `/about`, `/mpox`, `/robots.txt` → 200 OK
- Created new folder `docs/06_website_status/` with `alive-now.md` (full probe results + re-runnable bash script) and `README.md` (convention).

### Corrections to existing claims
- `whats-broken.md`: removed "168 news pages = real history" from "What's working well" (claim now unverifiable). Added **Category 0** with the 3 live-status issues (0a, 0b, 0c). Updated TL;DR count (22 → 29 to match actual list). Updated P0 ranking to include live 500/404 issues.
- `sitemap-actual.md`: page count 5 → 6 (`/nangareko` was missing). Added HTTP status column. Noted RSS feed `/noticias/rss` is also missing from sitemap.
- `performance-audit.md`: called out **TTI 35.8s** explicitly as "page unusable for 36 seconds" in TL;DR.
- `README.md`: TL;DR updated to mention 6 nav pages + site 50% broken warning + link to `06_website_status/`.

### New urgent decision
- Added `DP-2026-07-10-14` to `decisiones-pendientes.md` — blocks on any outreach email. Recommends Option 1: lead with empathy / debugging offer ("Notamos que /news y /nanderekora están sirviendo 500 hoy...").

### Repo hygiene
- Deleted 5 empty/placeholder TXT files in `assets/financials/` (3-byte stubs from OCR'ing that never happened). Kept 6 real OCR'd TXTs and 11 PDFs (the OCR_ PDFs are different versions from originals; both kept with distinct hashes).
- Created `docs/_archive/README.md` (index + convention). Updated `docs/_archive/2026-07-10_recon_inicial/README.md` with `STATUS: deprecated` flag.

### Updated indexes
- `INDEX.md`: bumped scale (110→115+ md files, 9→14 commits), added Round 14 row, added `docs/06_website_status/` section, bumped decisiones-pendientes from 13 → 14.
- `AGENTS.md` and `CLAUDE.md` not touched (they correctly prohibit committing RUC, employee lists, patient data, donor names — followed).

**Open follow-ups:**
- DP-2026-07-10-14: outreach timing decision (Ivan + Kiki)
- Live probe script should be added to `.github/workflows/` (decision-gated per AGENTS.md "Do not add tooling without explicit user direction")
- Consider a `hermes cron` weekly probe job with Telegram alert (see `hermes-gateway-ops` skill)
- The "168 news pages" count needs to be re-verified once `/news` recovers

**Files touched (round 14):**
- `assets/financials/*.txt` — 5 deletions
- `docs/06_website_status/README.md` — new
- `docs/06_website_status/alive-now.md` — new
- `docs/05_website-audit/whats-broken.md` — TL;DR + Category 0 + 22→29 fix + remove "168" claim
- `docs/05_website-audit/performance-audit.md` — TL;DR update
- `docs/05_website-audit/sitemap-actual.md` — 5→6 pages + HTTP status column
- `docs/06_decisions/decisiones-pendientes.md` — DP-2026-07-10-14 added
- `docs/_archive/README.md` — new
- `docs/_archive/2026-07-10_recon_inicial/README.md` — deprecated flag
- `README.md` — TL;DR + layout diagram
- `INDEX.md` — scale + Round 14 row + new section
- `CHANGELOG.md` — this entry
