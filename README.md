# SOMOSGAY — Context Repo

> Context repo for **SOMOSGAY** (Asunción, Paraguay) — the country's leading LGBTQ+ rights organization and operator of **Clínica Kunu'u**, Paraguay's first dedicated LGBTQ+ community health clinic.

This repo is **pre-engagement reconnaissance**. Ai-Whisperers has identified SOMOSGAY as a potential client / partner / pro-bono engagement. Nothing has been signed. Everything here is research, audit, and recommendation.

---

## Quick navigation

| If you are… | Start here |
|---|---|
| A new team member on the engagement | **[`start-here.md`](start-here.md)** |
| Looking for the full table of contents | **[`INDEX.md`](INDEX.md)** |
| A designer / frontend engineer | **[`docs/HANDOFF/QUICKSTART_PARA_LUANA.md`](docs/HANDOFF/QUICKSTART_PARA_LUANA.md)** |
| Reading the website audit + recommendations | **[`docs/05_website-audit/`](docs/05_website-audit/)** |
| Building a client pitch / proposal | **[`docs/09_deliverables/PACK_PARA_CLIENTE.md`](docs/09_deliverables/PACK_PARA_CLIENTE.md)** |
| An AI agent working on this repo | **[`AGENTS.md`](AGENTS.md)** |

---

## What is SOMOSGAY in one paragraph

Founded 2009 (origins 2005) in Asunción, Paraguay. Operates Paraguay's only LGBTQ+ community center and the country's first dedicated men's-health/LGBTQ+ clinic (originally **Kuimba'e** 2013, now branded **Clínica Kunu'u**). Provides free HIV testing, PrEP, TARV treatment, STI screening (syphilis, hepatitis B), psychology & psychiatry (including remote), harm-reduction services for drug use, and community care programs (Ñande Rekorã, Karu Porã, Tekoharã). Runs the **Equis** Android app for booking + information. Backed historically by amfAR, UNAIDS Southern Cone, AHF, Fundación Triángulo, Global Fund / ViiV, OPS/OMS, All Out, and Red GayLatino (co-founder 2015). Led since at least 2023 by Executive Director **Paloma Vera**, with **Simón Cazal** (co-founder, openly atheist, first Paraguayan public figure married to a same-sex partner — in Argentina 2012, refused recognition in Paraguay by Judge Nery Kunzle in 2013) as the long-tenured public face.

Current political environment is hostile: President **Santiago Peña** (since 2023) is openly hostile; Paraguay remains the **only South American country without marriage equality**; 2017 Ministry of Education resolution 29664 still bans "gender ideology" materials in public schools.

---

## Status

- **Engagement model:** TBD — paid / pro bono / partner / no-go (decision pending Ivan + Kiki)
- **First contact:** Not yet made
- **Website audit:** Complete ([`docs/05_website-audit/`](docs/05_website-audit/))
- **Brand audit:** In progress ([`docs/04_brand/`](docs/04_brand/))
- **Content inventory:** Complete ([`docs/01_organization/`](docs/01_organization/))
- **Similar clinics benchmarked:** 7 sites analyzed ([`docs/03_competitors-and-peers/clinics-like-this.md`](docs/03_competitors-and-peers/clinics-like-this.md))

---

## Repo layout (00–09 + supporting)

```
somosgay-context/
├── README.md                            ← you are here
├── start-here.md                        ← persona-keyed entry points
├── INDEX.md                             ← full TOC with status flags
├── AGENTS.md                            ← Hermes / Claude / agents instructions
├── CLAUDE.md                            ← Claude-specific conventions
├── CHANGELOG.md                         ← session-by-session log
├── .gitignore
├── docs/
│   ├── 00_brief/                        ← client snapshot, engagement status, fact-vs-guess
│   ├── 01_organization/                 ← who they are, programs, leadership, finances
│   │   └── programas/                   ← one file per program (Kunu'u, Tekoharã, Ñande Rekorã…)
│   ├── 02_research/                     ← research log, HIV context, political landscape, funding
│   ├── 03_competitors-and-peers/        ← AIREANA, regional orgs, comparable clinic sites
│   ├── 04_brand/                        ← visual identity, voice/tone, Guaraní terminology
│   ├── 05_website-audit/                ← current site breakdown, what's broken, what they need
│   ├── 06_decisions/                    ← decisions made, decisions pending
│   ├── 07_backlog/                      ← TODO list, prioritized
│   ├── 08_questionnaires/               ← questionnaires to ask client (if engagement proceeds)
│   ├── 09_deliverables/                 ← client-facing deliverables
│   ├── HANDOFF/                         ← prepacked handoff to next person/team
│   └── _archive/                        ← dated archive of past sessions/decisions
└── assets/
    ├── logo/                            ← SOMOSGAY / Clínica Kunu'u logos
    ├── brand-photos/                    ← site photos, programs, events
    └── similar-clinic-screenshots/      ← reference screenshots from comparable sites
```

Numbering scheme follows `dentist` and `sarah-lubricants` conventions.

---

## Source conventions

- Every factual claim cites a URL inline using `[label](url)` format.
- "Fact vs guess" is tracked in [`docs/00_brief/what-we-know-vs-dont.md`](docs/00_brief/what-we-know-vs-dont.md).
- Sensitive data (RUC, employee names, exact clinic address beyond public Independencia Nacional 1032) is **not** committed.

---

## Last updated

See [`CHANGELOG.md`](CHANGELOG.md). Most recent session: **2026-07-10 — Initial reconnaissance**.