# Engagement status

> **TL;DR:** We are in **pre-engagement reconnaissance**. No contact has been made. SOMOSGAY does not yet know we exist (as a prospect). Engagement model is undecided.

---

## Status: NOT YET A CLIENT

- ❌ No signed contract
- ❌ No proposal sent
- ❌ No contact made
- ❌ No NDA in place
- ✅ Repo created publicly (consistent with `pierce-charm-context` and `trentina-research` patterns)

---

## Open decision — engagement model

Ivan + Kiki need to choose one of:

| Option | Pros | Cons | Ai-Whisperers precedent |
|---|---|---|---|
| **Paid engagement** (full site rebuild + ongoing) | Recurring revenue; fits Ai-W client model; budget available at SOMOSGAY (amfAR/UNAIDS/Global Fund grants fund operations) | Long sales cycle; sensitive vertical requires careful contracting | Most Ai-W clients |
| **Pro bono / strategic engagement** | Brand visibility for Ai-W; moral high ground; great portfolio piece | Eats team time; sets expectation of free work forever | None of the major repos, but consistent with `infrastructure` open-source posture |
| **Partner / referral model** | We build the site, they keep operating it; modest fee + grant-funded scope | Slow; depends on their grant cycles | None obvious |
| **Decline** | Frees the team; no political exposure in a hostile-country context | Misses a meaningful opportunity | — |

Decision lives in [`docs/06_decisions/decisiones-pendientes.md`](../06_decisions/decisiones-pendientes.md).

---

## Recommended next step (pending decision)

If engagement proceeds:
1. Kiki makes first contact via WhatsApp (+595 986 173 200) or email (hola@somosgay.org). Reference: Ai-Whisperers has done pro-bono and paid work for Paraguayan health NGOs.
2. Run the questionnaire pack ([`docs/08_questionnaires/`](../08_questionnaires/)) in a single 90-minute audio session (cf. `pierce-charm-context` pattern: archive answered → post-launch 0X).
3. Based on answers, write the proposal in [`docs/09_deliverables/PACK_PARA_CLIENTE.md`](../09_deliverables/PACK_PARA_CLIENTE.md).

---

## Risk register (engagement)

| Risk | Mitigation |
|---|---|
| Political risk to SOMOSGAY team if a foreign corporate partner is publicly visible | Default to NO logo on site; brand the rebuild as "by community, for community." Get explicit consent before any press. |
| OPSEC — donor / employee PII leaks | Hard rule in AGENTS.md: no RUC, no full employee list, no individual donor names beyond publicly published ones |
| Currency / pricing — Paraguayan guaraní (PYG) vs USD | Always quote in both; PYG is volatile (~6,400–7,000 per USD) |
| Payment friction for our fees | Tigo Money, Mercado Pago, bank transfer all standard in PY |
| Their grant cycles vs our payment terms | Match their cycle; if grant-funded, invoice on milestone |
| Data residency — Paraguay only? | Default yes. Cloudflare Pages + simple Next.js static fits. No Supabase unless explicitly required (Paraguayan personal-data laws are strict) |