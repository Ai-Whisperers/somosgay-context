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

## 2026-07-11 — Round 2 deep research

**Trigger:** User asked for ALL tiers of research, not just gaps.

### Tier A — critical gaps filled
- **Leadership transition documented:** Cazal was DE through 2020 (Informe Anual 2020 + Reuters 2018 + IBA 2019). Paloma Vera is confirmed ED from 2023+ (ABC Color 2023, 2025). **No public evidence of Cazal formal role 2024-2026** — likely founder/strategic advisor. Consejo Directivo exists per a (now-broken) news article snippet.
- **Plataforma AMI + Equis clarified:** Two related products. Equis = 2014 Android app. AMI = 2020 virtual platform (at-home testing + PrEP + employment + legal aid). AMI may have absorbed Equis booking. **[VERIFY]** current Play Store / web presence.
- **Audit + annual PDFs downloaded:** 7 of 8 PDFs recovered (~26MB) from `https://www.somosgay.org/documents/...` (found via JS chunk in `/about`). Auditor: Account Control & Asociados (San Lorenzo PY). Legal form: Asociación Civil sin fines de lucro. All opinions unqualified ("sin salvedades"). 2020 Informe Anual has rich program data (1,300+ HIV tests, 100K+ social reach, **3 community centres** in 2020).
- **2020 impact numbers extracted** from Informe Anual.
- **Equis X is its own report** (2019, 15MB) — likely the EQUIS X financial breakdown.

### Local artifacts added
- `assets/financials/` — 7 PDFs + OCR'd text extracts
- `assets/logos/` — current + 2018 Wayback logos
- `assets/brand-photos/funders-2018/` — 9 funder logos from 2018 Wayback
- `assets/screenshots-current/` — 20 screenshots at 4 viewports × 5 pages
- `assets/screenshots-comparable/` — 6 of 8 comparable sites captured
- `assets/research-sources/wayback/` — 5 Wayback Machine snapshots
- `docs/05_website-audit/home-lighthouse.json` + `about-lighthouse.json` — real Lighthouse audits

### Repo hygiene
- `LICENSE` (MIT) added
- `CONTRIBUTING.md` added
- `.gitattributes` added (LF endings, binary detection, linguist overrides)

### Pending subagent deliverables (in background)
- Tier A peer roster (Panambi + others)
- Tier B (PrEP/education ban/mobile/hosting/LATAM clinics)
- Tier C+D (CRM/WhatsApp/Cal.com/RFPs/crypto/multi-tenant/LATAM HIV/impact)

**Files touched:** all of round 2 + 60+ new files