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
