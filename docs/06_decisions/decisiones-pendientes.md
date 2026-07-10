# Decisiones pendientes

> **TL;DR:** Decisions blocked on input from Ivan + Kiki. Each item has the question, the options, and the recommended default.

---

## DP-2026-07-10-01 — Engagement model

- **Question:** Paid engagement / pro bono / partner model / decline?
- **Default recommendation:** **Pro bono partial + partner model** — start with a no-cost engagement to build trust; transition to paid for ongoing maintenance
- **Owner:** Ivan + Kiki
- **Deadline:** Before first client contact

---

## DP-2026-07-10-02 — First contact channel

- **Question:** WhatsApp (+595 986 173 200), email (hola@somosgay.org), or via mutual contact?
- **Default recommendation:** **Email first** (gives them time to respond; creates a written record), follow up via WhatsApp if no reply in 5 business days
- **Owner:** Kiki
- **Deadline:** Within 7 days of engagement decision

---

## DP-2026-07-10-03 — Proposal format

- **Question:** Written proposal, in-person pitch, video call, or simple email intro?
- **Default recommendation:** **Email intro** → if interested, 30-min video call → then written proposal
- **Owner:** Kiki
- **Deadline:** After first response

---

## DP-2026-07-10-04 — Site repo location

- **Question:** New repo `Ai-Whisperers/somosgay`, or inside `paragu-ai-platform/apps/somosgay`, or somewhere else?
- **Default recommendation:** **Inside `paragu-ai-platform`** to use shared `@ai-whisperers/*` monorepo (consistent with pierce-charm precedent)
- **Owner:** Engineering lead
- **Deadline:** Before Phase 1 build starts

---

## DP-2026-07-10-05 — Language strategy

- **Question:** ES-only, ES+EN, ES+EN+Guaraní?
- **Default recommendation:** **ES+EN at launch**; add Guaraní as a third locale if client wants it in Phase 2
- **Owner:** Kiki + client
- **Deadline:** Before Phase 1 build starts

---

## DP-2026-07-10-06 — Hosting + domain

- **Question:** Cloudflare Pages + existing domain `somosgay.org`? New domain? Subdomain on paragu-ai.com?
- **Default recommendation:** **Keep `somosgay.org`** (existing brand equity); host on Cloudflare Pages (free, fast, secure)
- **Owner:** Engineering lead
- **Deadline:** Before Phase 1 build starts

---

## DP-2026-07-10-07 — Tech stack

- **Question:** Next.js 15 (consistent with other Ai-W client sites), or different?
- **Default recommendation:** **Next.js 15 + Tailwind v4 + next-intl + Cal.com + Plausible + Cloudflare Pages**
- **Rationale:** Matches `site-template` and `template-nextjs-client` patterns; minimal new ground
- **Owner:** Engineering lead
- **Deadline:** Before Phase 1 build starts

---

## DP-2026-07-10-08 — Brand asset ownership

- **Question:** Will client share master logo files, brand guide, photo library? Or do we recreate from what we can find?
- **Default recommendation:** **Request from client**; recreate from public sources only as fallback
- **Owner:** Kiki + client
- **Deadline:** Before Phase 2 starts

---

## DP-2026-07-10-09 — Guaraní translations

- **Question:** Will client provide official translations of program names + slogans + Guaraní glossary?
- **Default recommendation:** **Request from client**; use public Guaraní-Spanish dictionaries as fallback
- **Owner:** Kiki + client
- **Deadline:** Before Phase 2 starts

---

## DP-2026-07-10-10 — Patient stories consent

- **Question:** Will client collect anonymized patient stories + consent for publication? Or skip this feature?
- **Default recommendation:** **Yes, but with proper consent**; offer anonymous option
- **Owner:** Kiki + Paloma Vera
- **Deadline:** Before Phase 2 starts

---

## DP-2026-07-10-11 — Donation processing

- **Question:** Keep using GlobalGiving + Benevity externally? Or set up Stripe / Tigo Money / bank transfer in-site?
- **Default recommendation:** **Multi-option** — GlobalGiving for international; Tigo Money / bank transfer for PY; Stripe for cards
- **Owner:** Kiki + Paloma Vera
- **Deadline:** Before Phase 2 starts

---

## DP-2026-07-10-12 — Press strategy

- **Question:** Coordinated press release at launch? Or quiet launch with organic PR?
- **Default recommendation:** **Coordinated soft launch** with press kit ready; press release at 30-day mark once stats are in
- **Owner:** Kiki
- **Deadline:** Launch week

---

## DP-2026-07-10-13 — Internal handoff to ongoing team

- **Question:** Who owns the site post-launch? Ai-Whisperers retainer? Client internal? Mutual?
- **Default recommendation:** **Mutual with retainer** — Ai-Whisperers handles tech + security; client handles content + programs
- **Owner:** Ivan + Paloma Vera
- **Deadline:** 30 days before launch

---

## Sources

- This repo (initial reconnaissance)
- https://www.somosgay.org/about (for engagement options)
- Ai-Whisperers house patterns (from `dentist`, `sarah-lubricants`, `pierce-charm-context`)