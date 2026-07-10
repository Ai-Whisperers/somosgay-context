# Fuentes y sesión — 2026-07-10

> **TL;DR:** First session. Two parallel workstreams. ~12 search queries, ~20 direct fetches, 40+ markdown files written. 1 GitHub repo created. Engagement decision pending Ivan + Kiki.

---

## What we did

### Workstream A — SOMOSGAY recon

Searched for: org identity, history, leadership, programs, funding, clinic, app, political context. Found:

- Identity: founded 2005, formalised 2009, Asunción, Independencia Nacional 1032
- Leadership: Paloma Vera (ED, current), Simón Cazal (co-founder, public face), Ramón Martínez (Kunu'u coordinator), Dr. Carlos Santa María (Kunu'u family MD)
- Programs: Kunu'u, Tekoharã, Ñande Rekorã, Karu Porã, Programa Kunu'u, Equis, Besatón, Marcha del Orgullo, youth shelter
- Funders: amfAR, UNAIDS, AHF, Global Fund / ViiV, OPS/OMS, PRONASIDA, All Out, GlobalGiving/Benevity, Red GayLatino, Cruz Roja, DNIT, Fundación Triángulo
- Tech: Next.js static export, UA-202057705-1 (deprecated), 5 nav pages, no sitemap, 168 pages of news

### Workstream B — Comparable clinic sites

Visited: Whitman-Walker (DC), LA LGBT Center, Fenway Health, Callen-Lorde, CenterLink, The Center (NYC), DIKÉ El Salvador. Identified 14 patterns worth stealing + 5 anti-patterns to avoid.

### Repo build

- Created `Ai-Whisperers/somosgay-context` on GitHub, public, main branch
- Mirrored `dentist` + `sarah-lubricants` + `pierce-charm-context` + `la-quebrada-viva` patterns
- Wrote 40+ markdown files across 9 numbered folders
- Added `.github/workflows/repo-validation.yml` for basic CI

---

## Key findings

1. **Massive gap between what they do and what their website shows** — the rebuild is justified
2. **Current leadership transition** — Paloma Vera is now the ED; Cazal's formal role in 2026 is unclear
3. **Equis app status uncertain** — launched 2014, no evidence it's been maintained
4. **Deprecated analytics** — they've been blind since July 2023
5. **Multiple under-explored programs** (Tekoharã, Ñande Rekorã, Karu Porã) are real but barely online
6. **English-language audience is huge and unserved** — international press, donors, regional network
7. **Hostile political environment** — affects hosting, branding, content choices

---

## Key questions for engagement

(See `docs/06_decisions/decisiones-pendientes.md` for the full list.)

1. **Engagement model:** paid / pro-bono / partner / decline?
2. **First contact:** who, when, how?
3. **Scope:** P0 only? P0+P1? Full P0-P3?
4. **Language:** ES only / ES+EN / ES+EN+Guaraní?
5. **Repo location:** new `somosgay` repo or inside `paragu-ai-platform/apps/`?
6. **Tech stack:** confirm Next.js 15 + Tailwind v4 + Cloudflare Pages?

---

## What we did NOT do this session

- ❌ Did not contact the client
- ❌ Did not download their public audit reports (PDFs) — those can wait until client confirms
- ❌ Did not run browser-pass accessibility audit (axe, NVDA) — needs a real browser pass
- ❌ Did not run PageSpeed / WebPageTest — needs a real browser pass
- ❌ Did not capture screenshots of comparable sites
- ❌ Did not find Panambi's site
- ❌ Did not confirm whether "AMI" exists as a separate app from Equis
- ❌ Did not confirm whether the youth shelter is still operational in 2026

---

## What we'd do differently next session

- Browser-pass audit + screenshots first
- Get the audit PDFs downloaded and summarized
- Find Panambi + other PY orgs
- Confirm Equis / AMI status with client (after first contact)
- Build the actual proposal doc with real numbers

---

## Sources

This session used all sources listed in `docs/02_research/source-map.md`.