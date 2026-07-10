# Ai-Whisperers legal + operational exposure assessment

> **TL;DR:** Ai-Whisperers faces **non-trivial legal, financial, and reputational risk** by hosting/maintaining SOMOSGAY's site or any tooling that touches LGBTQ+ patient data in Paraguay's current political climate. This document flags those risks and proposes mitigations. **Owner: Ivan + legal counsel (Kiki).**

> **🚨 [HUMAN REVIEW REQUIRED] (Round 15):** This is a risk document, not legal advice. Any decision about engagement scope, contracting structure, or data residency **must** go through actual legal counsel licensed in Paraguay (and possibly the US/EU depending on where Ai-Whisperers is incorporated).

---

## Why this matters

The repo correctly documents political risk for **SOMOSGAY** (Santiago Peña presidency, Russia 2023 extremist precedent, Uganda 2016/2023 NGO laws, 2017 Education Ban Resolution 29664). What it does NOT document: **the equivalent risk for Ai-Whisperers as the foreign technology partner**.

Three risk vectors:

### R1. Data residency + extraterritorial legal exposure

- If Ai-Whisperers hosts anything on Cloudflare Pages / Vercel / AWS US infrastructure, **patient IP addresses, browser fingerprints, and form submissions are subject to US CLOUD Act requests**.
- US CLOUD Act (2018) authorizes US law enforcement to compel US providers to hand over data stored on foreign servers.
- A Paraguayan LGBTQ+ patient visiting the site from Asunción leaves a US-accessible trail.
- **Mitigation:** Cloudflare Pages + client-side only (no backend storing user data); CSP headers that prevent third-party trackers; no analytics on clinic pages; Plausible self-hosted or removed; zero form submissions stored anywhere outside Paraguay.

### R2. Legal entity in Paraguay

- Ai-Whisperers is presumably a US/LatAm entity. **Engaging on LGBTQ+ advocacy work in Paraguay may have implications** depending on:
  - Whether Ai-Whisperers has a Paraguayan tax presence (no RUC today)
  - Whether SOMOSGAY's grant funders accept "foreign corporate" partners
  - Whether Ai-Whisperers' brand will be visible on the site (footer credit, "Built by" link, GitHub profile)
- **Mitigation:** Decide upfront whether Ai-Whisperers wants attribution visible. If yes, accept the political exposure. If no, render pro-bono under a different name or as anonymous contribution. **Document the choice.**

### R3. Funder compliance

- SOMOSGAY's funders (amfAR, UNAIDS, AHF, Global Fund, ViiV, OPS/OMS, PRONASIDA, All Out) each have **due-diligence requirements** on tech partners.
- The Global Fund in particular requires **data protection impact assessments (DPIAs)** for any partner handling beneficiary data.
- If Ai-Whisperers is named in any SOMOSGAY funder report, our practices are auditable.
- **Mitigation:** Provide Ai-Whisperers with a standard tech partner due-diligence pack (security posture, data handling, sub-processors list). **Do this BEFORE signing any engagement.**

---

## What we should NOT build

Hard list (anything in this column requires Ivan + legal sign-off):

| ❌ Don't build without legal review | Why |
|---|---|
| Patient intake forms that store data on US infrastructure | CLOUD Act exposure |
| Real-time chat / telemedicine on US infrastructure | Same + medical licensing |
| Anything that logs user IP for "security" beyond 7 days | Extraterritorial risk |
| Authentication (login) for any clinic-patient-facing feature | Data controller becomes Ai-Whisperers |
| Telegram / WhatsApp integrations that log messages on US infra | Same |
| CRM with patient contact info | If breached, harms patients |
| Donation flows that store donor PII for >12 months | Donor safety in hostile climate |

---

## What we CAN safely build

| ✅ Safe to build | Notes |
|---|---|
| Static informational site | Zero data exposure |
| Cloudflare Pages hosting | Paraguayan-friendly, free tier, CSP-friendly |
| Public donation flows to GlobalGiving / Benevity | Donor data stays with the third party |
| Public event calendars | No PII |
| WhatsApp deep-link buttons (no tracking) | User's WhatsApp is user's own |
| Clinic hours / services info | No backend |
| Plausible analytics (EU-hosted, no PII) | Choose self-hosted for max safety |
| Multilingual content (ES/EN) | Static |

---

## What we should ask the client before Phase 1

These are blocking questions per `DP-2026-07-10-04..13` but with new legal weight:

1. **Which funders require DPIA on tech partners?** (DP-04 / DP-08)
2. **Does SOMOSGAY have its own IT/data policy we need to comply with?** (DP-07)
3. **Should Ai-Whisperers appear publicly in the site footer / GitHub?** (DP-13)
4. **Is there a funder-approved list of tech partners?** (DP-04)
5. **Has SOMOSGAY been asked by any funder for a tech-partner due-diligence pack before?** (DP-08)

---

## Recommendation

Phase 1 (Option B from `docs/09_deliverables/PACK_PARA_CLIENTE.md`) should be **scoped to "safe to build" only**. Any feature from the "don't build without legal review" list should be deferred to Phase 2 pending legal sign-off.

Specifically:

- **Phase 1 (pro-bono, 3 months):** Static site rebuild + multilingual + clinic/services info pages + booking deep-link to WhatsApp + multi-option donate. **Zero backend.**
- **Phase 2 (post-legal review):** Booking system, patient stories (anonymized), CRM, anything user-data-touching.

---

## Sources

- CLOUD Act (US, 2018) — https://www.congress.gov/bill/115th-congress/house-bill/4943
- WHO Mpox PHEIC declaration (2022, ended 2023) — https://www.who.int/news/item/23-07-2022-second-meeting-of-the-international-health-regulations-(2005)-emergency-committee-regarding-the-multi-country-outbreak-of-monkeypox
- Global Fund data protection guidelines — https://www.theglobalfund.org/en/data-protection/
- Cloudflare Pages data residency — https://www.cloudflare.com/cloudflare-network/
- `docs/02_research/political-landscape.md` — PY political context
- `docs/02_research/hosting-domain.md` — hosting options
- `docs/06_decisions/decisiones-pendientes.md` — pending decisions

## See also

- `AGENTS.md` — Hard Rule #4: "Never commit: ... anything that would put a community member at risk in Paraguay's current political climate"
- `docs/02_research/multi-tenant-architecture.md` — proposed federation architecture (introduces more data flows)
- `docs/06_website_status/alive-now.md` — live site status (currently 50% broken)