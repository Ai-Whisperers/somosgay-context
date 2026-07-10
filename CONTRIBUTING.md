# How to contribute

This is a context-only research repo for a prospective engagement with SOMOSGAY (Asunción, Paraguay). The repo is **public** to enable easy handoff to design, engineering, and strategy teams.

## Who can contribute

- Ai-Whisperers team members (full read/write)
- Future SOMOSGAY team members (read-only by default; write access added if engagement formalises)
- External collaborators on a case-by-case basis (open an issue first)

## What to contribute

| File type | When to add |
|---|---|
| Research notes | New discovery about SOMOSGAY, their programs, their context |
| Press archive updates | New article or press release |
| Comparable site additions | New benchmark site studied |
| Translations | English ↔ Spanish where missing |
| Funder / program updates | Updated info from new audit, news, etc. |
| Questionnaire responses | After running the `08_questionnaires/` pack with the client |

## What NOT to commit

See `AGENTS.md` for the full OPSEC rules. In short:

- ❌ RUC numbers
- ❌ Full employee / board lists beyond publicly-attributed press quotes
- ❌ Internal clinic schedules
- ❌ Donor names beyond publicly-published ones
- ❌ Patient data of any kind
- ❌ Anything that could put a community member at risk in Paraguay's current political climate

## Style

See `AGENTS.md` + `CLAUDE.md` for the full conventions. Highlights:

- Markdown only
- One H2 per major section, H3 for sub-sections, no deeper than H4
- Inline `[label](url)` for citations; collect all URLs under `## Fuentes` at bottom
- Status flags: `complete` / `draft` / `pending` / `archived` / `blocked`
- Per-folder `README.md` with a `STATUS` column

## Workflow

1. Read `AGENTS.md` + `CLAUDE.md`
2. Check `INDEX.md` STATUS flags
3. Pick an open task from `docs/07_backlog/backlog.md` or be assigned one
4. Branch: `git checkout -b session-YYYY-MM-DD-<topic>`
5. Work in the branch
6. Update `INDEX.md` STATUS flags + append to `CHANGELOG.md`
7. Commit with `git commit -m "session: YYYY-MM-DD — <one line>"`
8. Push the branch and open a PR
9. The repo-validation workflow runs basic checks on every PR

## Commit format

```
session: YYYY-MM-DD — <one-line summary>

<optional multi-line body>
```

## Questions?

Open an issue. Tag Ivan or Kiki.