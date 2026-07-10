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

**Files touched:** all of them (initial commit)

**Open follow-ups:**
- Ivan / Kiki: decide engagement model (paid / pro bono / partner / decline)
- If engagement proceeds: run 08_questionnaires/ pack to fill in the gaps
- A11y audit was drafted but needs a real browser pass
- No screenshots captured yet from the comparable clinic sites (assets/similar-clinic-screenshots/ is empty)
- No screenshots captured yet from SOMOSGAY's own site (assets/brand-photos/ is empty)