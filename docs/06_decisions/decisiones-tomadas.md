# Decisiones tomadas

> **TL;DR:** Repo-design decisions made during the 2026-07-10 research session.

---

## D-2026-07-10-01 — Repo name: `somosgay-context`

- **Decision:** Mirror `pierce-charm-context` naming convention
- **Rationale:** Same "context repo for a client" pattern; clear what it is from the name
- **Alternative considered:** `somosgay-research` (more accurate for pre-engagement state) — rejected because context repos in the Ai-Whisperers org use the `-context` suffix

---

## D-2026-07-10-02 — Public visibility

- **Decision:** Public repo
- **Rationale:** Matches `pierce-charm-context` (public); allows the client team to read once engagement starts; no sensitive data committed
- **Alternative considered:** Private — rejected because the research itself is largely from public sources; privacy maintained through OPSEC rules in `AGENTS.md`

---

## D-2026-07-10-03 — Default branch: `main`

- **Decision:** `main`
- **Rationale:** Modern default; matches `pierce-charm-context`
- **Alternative considered:** `master` (matches `dentist` and `la-quebrada-viva`) — rejected as legacy

---

## D-2026-07-10-04 — Folder numbering: `NN_name`

- **Decision:** `00_brief`, `01_organization`, ... `09_deliverables`
- **Rationale:** Mirrors `dentist` (which uses `00_STRATEGIC` etc.) and `sarah-lubricants` exactly
- **Alternative considered:** Single-digit `1_brief` — rejected as less scannable

---

## D-2026-07-10-05 — Markdown-only repo, no code

- **Decision:** No code, no package.json, no app logic in this repo
- **Rationale:** This is a context repo; the actual website (if built) lives at `Ai-Whisperers/somosgay` or inside `Ai-Whisperers/paragu-ai-platform/apps/somosgay`
- **Alternative considered:** Include the new website code here — rejected as scope-creep

---

## D-2026-07-10-06 — Bilingual docs (Spanish + English) with Spanish-primary

- **Decision:** All narrative docs have English body; preserve Spanish quotes verbatim
- **Rationale:** Client's primary language is Spanish; Ai-Whisperers internal language is English; quotes in source material are Spanish
- **Alternative considered:** All Spanish — rejected because future Ai-Whisperers team members may not read Spanish

---

## D-2026-07-10-07 — OPSEC: no RUC, no employee names beyond publicly-attributed ones

- **Decision:** Hard rule in AGENTS.md
- **Rationale:** Political climate; protects community members + org staff
- **Implementation:** Names only included if cited in publicly-available press or org's own /about page

---

## D-2026-07-10-08 — Adopt `dentist` + `sarah-lubricants` + `pierce-charm-context` hybrid taxonomy

- **Decision:** 
  - `00–09` numbering from `dentist`/`sarah-lubricants`
  - `HANDOFF/` folder from `pierce-charm-context`
  - `_archive/YYYY-MM-DD_topic/` from `la-quebrada-viva`
  - `INDEX.md` + per-folder `README.md` from `dentist`
  - `AGENTS.md` + `CLAUDE.md` from house style
  - `.github/workflows/repo-validation.yml` from `dentist`
- **Rationale:** Best-of-breed; battle-tested across multiple Ai-Whisperers repos

---

## D-2026-07-10-09 — Identify SOMOSGAY's current state, not their ideal state

- **Decision:** Audit is descriptive ("what's there now") and prescriptive ("what's needed") — but the gap is large. The "ideal" state requires client input.
- **Rationale:** All decisions about programs, audiences, languages should come from the client, not from us

---

## Sources

- https://github.com/Ai-Whisperers/dentist
- https://github.com/Ai-Whisperers/sarah-lubricants
- https://github.com/Ai-Whisperers/pierce-charm-context
- https://github.com/Ai-Whisperers/la-quebrada-viva