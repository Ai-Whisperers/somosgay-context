# SOMOSGAY — Context Repo

> **Context repo for SOMOSGAY** (Asunción, Paraguay) — the country's leading LGBTQ+ rights organization and operator of **Clínica Kunu'u**, Paraguay's first dedicated LGBTQ+ community health clinic.

This repo is **pre-engagement reconnaissance**. Ai-Whisperers has identified SOMOSGAY as a potential client / partner / pro-bono engagement. Nothing has been signed. Everything here is research, audit, and recommendation.

---

## TL;DR (the elevator pitch)

- **SOMOSGAY** is Paraguay's leading LGBTQ+ rights + community health NGO (founded 2005, formalised 2009)
- Operates **Clínica Kunu'u** (free HIV/PrEP/TARV/syphilis/Hep B testing + psychology + psychiatry + harm reduction)
- **Programs:** Kunu'u (clinic), Tekoharã (community centre), Ñande Rekorã (care system), Karu Porã (food), Programa Kunu'u (PrEP campaigns), Equis (app — dead), Besatón + Marcha del Orgullo (events), Youth shelter
- **Funded by:** amfAR, UNAIDS, AHF, Global Fund, ViiV, OPS/OMS, PRONASIDA, All Out, GlobalGiving/Benevity, Red GayLatino (co-founder + secretariat)
- **Current leadership:** Executive Director **Paloma Vera** (2023+); co-founder **Simón Cazal** (DE 2009-2020, now public face)
- **Environment:** Hostile — Santiago Peña presidency (2023-), no marriage equality, 2017 Education Ban Resolution 29664 still in force
- **Current site (somosgay.org):** Next.js static export, 5 pages, deprecated Universal Analytics, no booking flow, no EN switch, no service descriptions, no app store integration for Equis (Equis not on Play Store 2026-07-11)
- **Massive gap between what they do and what their website shows**

---

## Quick navigation

| If you are… | Start here |
|---|---|
| A new team member on the engagement | **[`start-here.md`](start-here.md)** |
| Looking for the full table of contents | **[`INDEX.md`](INDEX.md)** |
| A designer / frontend engineer | **[`docs/HANDOFF/QUICKSTART_PARA_LUANA.md`](docs/HANDOFF/QUICKSTART_PARA_LUANA.md)** |
| Reading the website audit + recommendations | **[`docs/05_website-audit/`](docs/05_website-audit/)** |
| Building a client pitch / proposal | **[`docs/09_deliverables/PACK_PARA_CLIENTE.md`](docs/09_deliverables/PACK_PARA_CLIENTE.md)** |
| Writing a `/108` memorial page | **[`docs/04_brand/memoria-108.md`](docs/04_brand/memoria-108.md)** |
| Understanding the LATAM context | **[`docs/03_competitors-and-peers/latam-orgs.md`](docs/03_competitors-and-peers/latam-orgs.md)** |
| An AI agent working on this repo | **[`AGENTS.md`](AGENTS.md)** |

---

## What this repo contains

- **84 markdown files** organized in 9 numbered folders (00-09) + HANDOFF + _archive + assets
- **50+ binary assets** including 7 audit PDFs, Lighthouse JSON reports, current + Wayback screenshots, funder logos
- **2 Lighthouse audits** with real performance + a11y numbers (current site: Perf 48-50, A11y 76-78)
- **Research log** covering identity, leadership, programs, clinic, app, funders, political context, mobile/internet, hosting, PrEP regulation, marriage equality, education ban, 108 history, regional LATAM benchmarks, comparable sites, WhatsApp Business API, booking tools, active RFPs, CRM, crypto donations, cost-effectiveness

---

## Repo layout (00–09 + supporting)

```
somosgay-context/
├── README.md · start-here.md · AGENTS.md · CLAUDE.md · INDEX.md · CHANGELOG.md
├── LICENSE · CONTRIBUTING.md · .gitignore · .gitattributes
├── assets/
│   ├── financials/                 — 7 audit + annual PDFs (downloaded from /documents/)
│   ├── logos/                      — current + 2018 Wayback logos
│   ├── brand-photos/funders-2018/  — 9 funder logos from Wayback
│   ├── screenshots-current/        — 20 screenshots at 4 viewports × 5 pages
│   ├── screenshots-comparable/     — 6 comparable-site screenshots
│   └── research-sources/wayback/   — 5 Wayback snapshots
└── docs/
    ├── 00_brief/                   — client snapshot, engagement status, fact-vs-guess
    ├── 01_organization/            — history, leadership, programs, governance
    │   └── programas/              — one file per program
    ├── 02_research/                — 12 files: HIV, political, mobile, hosting, WhatsApp,
    │                                 booking, RFPs, multi-tenant, CRM, crypto, impact
    ├── 03_competitors-and-peers/   — 7 files: AIREANA, Panambi, LATAM orgs, regional compare,
    │                                 design patterns, comparable clinic sites
    ├── 04_brand/                   — 6 files: visual identity, voice, Guaraní glossary,
    │                                 estandartes, memoria-108 (NEW R9)
    ├── 05_website-audit/           — 7 markdown + 2 Lighthouse JSON reports
    ├── 06_decisions/               — 9 taken, 13 pending
    ├── 07_backlog/                 — prioritized TODO
    ├── 08_questionnaires/          — 6 packs ready for first client session
    ├── 09_deliverables/            — PACK_PARA_CLIENTE (engagement options)
    ├── HANDOFF/                    — Luana quickstart, engineer brief, round-1 summary
    └── _archive/2026-07-10_recon_inicial/  — first session dump
```

Numbering scheme follows `dentist` + `sarah-lubricants` + `pierce-charm-context` conventions.

---

## Status

- **Engagement model:** TBD — paid / pro bono / partner / no-go (decision pending Ivan + Kiki)
- **First contact:** Not yet made
- **Website audit:** Complete (with real Lighthouse numbers)
- **Brand audit:** Complete (with deep 108 history + Bernardo Aranda + Carta de un Amoral)
- **Content inventory:** Complete
- **Comparable clinics benchmarked:** 7 US/AR/SV sites analyzed + 6 LATAM peer orgs
- **Repository:** 84 markdown + 50+ binary assets, 11 commits this session, 0/0 origin

---

## Top findings from this session

### Identity
- Founded 2005, formalised 23 May 2009
- Legal form: Asociación Civil sin fines de lucro
- Auditor: Account Control & Asociados (San Lorenzo PY; Reg 295/2020) — all opinions clean
- Consejo Directivo exists (per news snippet — full board **[VERIFY]**)

### Programs
- **5 active programs:** Kunu'u (clinic), Tekoharã (centre), Ñande Rekorã (care), Karu Porã (food), Programa Kunu'u (PrEP campaigns)
- **Plataforma AMI** (2020) = virtual platform for at-home testing + employment + legal aid
- **Equis app** (2014) — NOT on Google Play Store as of 2026-07-11 (confirmed dead)
- **Casa Diversa** (Panambi, not SOMOSGAY) = first trans shelter in PY; grew 3→30 residents by 2022; led by Yren Rotela
- **3 community centres** operated in 2020 (per Informe Anual 2020)

### Impact data (verified)
- 2020: 1,300+ HIV tests, 1,000+ in community jornadas, 100K+ social media reach
- 2022: 1,500+ new HIV cases; +26.48% growth from 2020
- PrEP efficacy: 99% (Resolución SG N.° 213/2025)
- PrEP cost benchmark: $30-150/yr (LATAM)
- ART cost benchmark: $880/yr (PEPFAR 2009 USD)

### Political
- Constitution Art. 49-52 + Civil Code Art. 140 = constitutional + legal blocks on marriage equality
- Santiago Peña: supported marriage equality 2017 as candidate, retracted under pressure, now openly hostile
- 2018 CIDH OC-24/17 ruling ignored by PY
- 2017 MEC Resolution 29664 (education ban) still in force
- Itaipú Resolución 6207/11 (2011) = first (limited) same-sex partner recognition in PY
- Operational risk: Russia 2023 "extremist" label precedent + Uganda 2016/2023 NGO laws

### Tech (verified)
- Current site Lighthouse: Perf **48-50/100** (FAIL — LCP 18.8s on /about), A11y **76-78**, BP **100**, SEO **92**
- 81.3% Paraguay internet penetration, 90% mobile-only, 97.5% messaging
- Recommended stack: Cloudflare Pages + Next.js 15 + Tailwind v4 + next-intl + Cal.com self-hosted + Plausible + HubSpot for Nonprofits

### 108 history (verified deep)
- **Bernardo Aranda Valdez**, 25, Radio Comuneros announcer, murdered 1 September 1959
- Police used murder as pretext for **10-day raids**
- **"108" coined by El País journalist** (not official figure) on Sept 11 1959
- **"Carta de un Amoral"** (Letter from an Immoral Man) published **30 September 1959** — **pre-Stonewall by 10 years**
- Documentary "108 Cuchillo de Palo" (Renate Costa, 2010)
- Book "108 Ciento Ocho" (Erwing Augsten Szokol, 2013)
- **September = Mes de las Memorias 108**

---

## Source conventions

- Every factual claim cites a URL inline using `[label](url)` format
- "Fact vs guess" tracked in [`docs/00_brief/what-we-know-vs-dont.md`](docs/00_brief/what-we-know-vs-dont.md)
- `[VERIFY]` flags mark every claim that needs client confirmation
- Sensitive data rules in [`AGENTS.md`](AGENTS.md): no RUC, no employee names beyond publicly-attributed press quotes, no patient data, no donor names beyond public funders

---

## Recommended next steps

1. **Ivan + Kiki decide engagement model** (pro-bono / paid / partner / decline) — recommended: pro-bono Phase 1 + partner retainer Phase 2
2. **Kiki makes first contact** via email (hola@somosgay.org) → follow up via WhatsApp (+595 986 173 200)
3. **Run questionnaire pack** in 90-minute audio session (cf. `pierce-charm-context` pattern)
4. **Confirm tech stack + scope + languages**
5. **Phase 1 build** — Next.js site on Cloudflare Pages, ES + EN, all P0 items from `docs/05_website-audit/what-they-need.md`

---

## Last updated

See [`CHANGELOG.md`](CHANGELOG.md). Most recent session: **2026-07-11 — comprehensive research + assets + repo hygiene (Rounds 2-10)**.