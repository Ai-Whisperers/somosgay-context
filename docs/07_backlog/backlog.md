# Backlog

> **TL;DR:** Open work items for this repo + the prospective engagement. Prioritized P0–P4 to mirror `docs/05_website-audit/what-they-need.md`.
>
> **Round 15 update:** P0 items from rounds 1-9 (audit reports, screenshots, logo files) are now **complete** — moved to P3 history. Added tier-A items from the repo roast + tier-B polish + new risk/legal review work.

## P0 — Critical (this repo)

- [ ] **DP-2026-07-10-14** — Decide outreach timing while site is currently 500/404. Owner: Kiki. Recommendation: lead with empathy / debugging offer. **Blocks** any first email to Paloma Vera.
- [ ] **DP-2026-07-10-01** — Engagement model decision. Owner: Ivan + Kiki.
- [ ] **Decide mutual contact** for warm intro (DP-2026-07-10-02)
- [ ] **Set up weekly live probe cron** — `scripts/probe-somosgay.sh` already exists. Wire to hermes cron or GitHub Actions. Alert via Telegram on `--alert` mode failure.
- [ ] **Confirm `/mpox` is still needed** — 2022 outbreak response, possibly stale (see `docs/05_website-audit/mpox-context.md`)

## P1 — High (next 2 weeks)

- [ ] First client contact (DP-2026-07-10-02) — only after DP-14 resolved
- [ ] Run questionnaire pack (DP-2026-07-10-08..11) — fill gap list
- [ ] Decide language strategy (DP-2026-07-10-05)
- [ ] Decide site repo location (DP-2026-07-10-04)
- [ ] Decide hosting + domain (DP-2026-07-10-06)
- [ ] Decide tech stack (DP-2026-07-10-07)
- [ ] **Legal review** of `docs/10_risk_assessment/ai-whisperers-legal-exposure.md` before Phase 1 starts
- [ ] Update `docs/00_brief/what-we-know-vs-dont.md` after questionnaire
- [ ] Fill in clinic patient counts + budget figures
- [ ] Finalize the proposal in `docs/09_deliverables/PACK_PARA_CLIENTE.md`
- [ ] **Human review** of `docs/04_brand/memoria-108.md` before any client-facing use

## P2 — Medium (next quarter)

- [ ] Update `docs/01_organization/liderazgo-actual.md` with confirmed org chart
- [ ] Update `docs/01_organization/financials-public.md` with actual numbers
- [ ] Update `docs/03_competitors-and-peers/panambi-y-otras.md` with full peer roster
- [ ] Update `docs/04_brand/identidad-visual.md` with official color palette + fonts
- [ ] Update `docs/04_brand/guarani-terminology.md` with client-confirmed translations
- [ ] Update `docs/05_website-audit/accessibility-audit.md` with real browser-pass results
- [ ] Update `docs/05_website-audit/performance-audit.md` with PageSpeed + WebPageTest results
- [ ] Fill in `docs/08_questionnaires/` with actual client responses
- [ ] Write the one-pager in `docs/09_deliverables/one-pager.md`
- [ ] Write the investor summary in `docs/09_deliverables/investor-summary.md`

## P3 — Polish (backlog)

- [ ] Add a CONTRIBUTING.md
- [ ] Add a SECURITY.md
- [ ] Add a CODE_OF_CONDUCT.md (mirror `.github/`)
- [ ] Create an issue template
- [ ] Create a PR template
- [ ] Add a session template for capturing research sessions
- [ ] Add a skill for the recurring "what do we know about client X" pattern
- [ ] Add a cron job to monitor for SOMOSGAY press coverage weekly
- [ ] Add a cron job to monitor Paraguay LGBTQ+ legal changes weekly
- [ ] Wire `scripts/probe-somosgay.sh` to GitHub Actions weekly run + commit results back
- [ ] Set up `hermes cron` for the probe with Telegram delivery (`hermes-gateway-ops` skill)
- [ ] **Round 14 history:** audit reports + screenshots + logo downloads (completed in R2, archived here for traceability)

## P4 — Speculative

- [ ] If engagement proceeds, set up a `somosgay` repo inside `paragu-ai-platform/apps/`
- [ ] If engagement proceeds, set up CI/CD + deployment
- [ ] If engagement proceeds, set up staging environment
- [ ] If engagement proceeds, set up Lighthouse CI in GitHub Actions
- [ ] If engagement proceeds, set up axe-core CI checks
- [ ] If engagement proceeds, define client ↔ Ai-Whisperers RACI for ongoing content updates
- [ ] Consider `/108` memorial page (see `docs/04_brand/memoria-108.md`) — only after human review

## Sources

- `docs/05_website-audit/what-they-need.md`
- `docs/06_decisions/decisiones-pendientes.md`
- `docs/00_brief/what-we-know-vs-dont.md`
- `docs/06_website_status/alive-now.md`
- `docs/10_risk_assessment/ai-whisperers-legal-exposure.md`