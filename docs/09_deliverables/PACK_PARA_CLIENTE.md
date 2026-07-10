# PACK para cliente — engagement options

> **TL;DR:** Four engagement options for SOMOSGAY. Recommended: **pro-bono Phase 1** + **partner retainer Phase 2**. Pending Ivan + Kiki decision.

---

## Option A — Paid full engagement

**What:** Full website rebuild + 6-month retainer for content updates + security monitoring.

**Pros:**
- Full control over scope + timeline
- Recurring revenue for Ai-Whisperers
- Consistent with most Ai-Whisperers engagements

**Cons:**
- Long sales cycle
- Sensitive vertical requires careful contracting
- SOMOSGAY may not have the budget for full paid engagement (most of their funding is grant-restricted)
- Public-sector grant funders typically don't pay for "website rebuilds"

**Estimated value:** USD $25,000–$50,000 for the rebuild + $2,000–$4,000/month retainer

---

## Option B — Pro-bono partial + partner model

**What:** Ai-Whisperers builds Phase 1 (P0 items from `what-they-need.md`) pro-bono as portfolio + brand-building work. Ai-Whisperers provides ongoing tech maintenance at cost; SOMOSGAY handles content in-house.

**Pros:**
- Brand visibility for Ai-Whisperers in a meaningful vertical
- Portfolio piece that demonstrates Ai-Whisperers' sensitive-vertical capability
- Lower barrier for SOMOSGAY
- Aligns with Ai-Whisperers' existing `.github/` open-source posture
- Sets up potential long-term partner relationship

**Cons:**
- Eats team time without recurring revenue
- Sets expectation of free work that may be hard to unwind
- Political exposure (foreign corporate partner on a sensitive site)

**Estimated cost to Ai-Whisperers:** 200–300 hours of engineering + design time over 3 months

---

## Option C — Grant-funded partnership

**What:** Ai-Whisperers proposes the build to one of SOMOSGAY's existing funders (e.g., amfAR, All Out, Global Fund) as a capacity-building grant; Ai-Whisperers is the implementer.

**Pros:**
- Funds the work
- Aligns with funder priorities
- Clear scope + deliverables

**Cons:**
- Slow (grant applications take months)
- Funder may have specific requirements (branding, reporting)
- Less Ai-Whisperers creative control

**Estimated value:** Same as Option A, funded by 3rd party

---

## Option D — Decline

**What:** No engagement.

**Pros:**
- Frees the team
- No political exposure

**Cons:**
- Misses a meaningful opportunity

---

## Recommended: Option B (pro-bono partial + partner)

> **Round 15 update:** Option B is the recommended default in `DP-2026-07-10-01` ([`docs/06_decisions/decisiones-pendientes.md`](../06_decisions/decisiones-pendientes.md)). Choosing an option here **unblocks** DP-04 (site repo location), DP-06 (hosting/domain), DP-07 (tech stack), DP-13 (internal handoff model).

**Rationale:**
- Aligns with SOMOSGAY's mission (grassroots, community-first)
- Aligns with Ai-Whisperers' values (sensitive verticals, Paraguayan-first)
- Sets up a long-term relationship without the friction of grant applications
- Provides portfolio + brand value
- Defensible politically (presented as community capacity-building, not foreign corporate branding)

**Phase 1 (pro-bono, 3 months):**
- New Next.js 15 site on Cloudflare Pages
- Multilingual (ES + EN at minimum)
- Clínica Kunu'u page + booking flow
- Programs pages (Tekoharã, Ñande Rekorã, Karu Porã, Programa Kunu'u, Besatón-Pride)
- Donate page (multi-option)
- Privacy policy + a11y
- Handoff to SOMOSGAY content team

**Phase 2 (partner retainer, ongoing):**
- Tech maintenance (security patches, dependency updates, Cloudflare config) at Ai-Whisperers cost (~$300/month)
- Content updates owned by SOMOSGAY in a markdown-based CMS (in-repo)
- Quarterly reviews

---

## Sources

- This repo (initial reconnaissance)
- https://www.somosgay.org/about
- Ai-Whisperers house patterns from `dentist`, `sarah-lubricants`, `pierce-charm-context`