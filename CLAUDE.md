# CLAUDE.md

For Claude Code / Claude API sessions on this repo.

## Read first

1. `AGENTS.md` — applies to you too.
2. `INDEX.md` — see current STATUS flags.
3. `CHANGELOG.md` — see what just happened.

## Behavioral notes for this repo

- **Claude tends to invent Paraguayan-Spanish vocabulary.** Don't. If you're unsure of a term, look in `docs/04_brand/guarani-terminology.md` first; if it's not there, write `[VERIFY: term]` and ask.
- **Claude tends to flatten sensitive content.** This client operates in a country where the sitting president is openly hostile to them. Don't soften. Don't anonymize to the point of uselessness. Don't, conversely, sensationalize.
- **Claude tends to skip the "what we DON'T know" section.** Force yourself to write one. See `docs/00_brief/what-we-know-vs-dont.md` for the template.
- **Claude tends to write 2000-word essays.** The Ai-Whisperers house style is terse, structured, scannable. Lead with a one-line summary. Use tables. Use bullets. Save prose for sections where it earns its keep.

## When writing files

- Lead with a one-sentence TL;DR in bold.
- Use H2 (`##`) for major sections, H3 (`###`) for sub-sections. Don't go deeper than H4.
- Tables over prose for any comparison of 3+ items.
- Bullet lists for non-ordered enumerations.
- Inline `[label](url)` for citations; collect all URLs under `## Fuentes` at the bottom of the file.

## When researching

- Prefer `web_extract` over `web_search` when you already have a candidate URL.
- Prefer `web_search` for discovery; expect 429 rate limits and back off.
- Brave Search is the default search backend; treat 429s as normal, retry after 30s.
- Don't burn a delegation budget on this repo. The org is too small and the research too context-specific. Do it yourself.

## When committing

- One commit per logical session unit, not per file.
- Commit message: `session: YYYY-MM-DD — <one-line summary>`.
- Always update `CHANGELOG.md` and `INDEX.md` STATUS flags in the same commit.

## Closest analog repos

- `Ai-Whisperers/dentist` — clinical, regulated, Paraguayan, mature context repo with `00–09` numbering. **Most similar.**
- `Ai-Whisperers/sarah-lubricants` — sensitive vertical (sexual health), Paraguay, lots of compliance research. **Borrow OPSEC + Guaraní handling.**
- `Ai-Whisperers/pierce-charm-context` — context-only repo pattern with `HANDOFF/`. **Borrow structure.**
- `Ai-Whisperers/trentina-research` — research-only context repo before client engagement. **Borrow engagement-model uncertainty handling.**
- `Ai-Whisperers/la-quebrada-viva` — `docs/_archive/` by date convention. **Borrow archive pattern.**