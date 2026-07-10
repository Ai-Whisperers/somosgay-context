# docs/_archive

> Archived reconnaissance artifacts. Kept for traceability, not for active reference.

## When to archive

A file moves here when:

1. It has been **superseded** by a newer canonical doc (e.g. raw URL list → `docs/02_research/source-map.md`).
2. It is a **snapshot** of a past session that should remain queryable for context but is no longer the source of truth.
3. It is an **intermediate artefact** that informed a decision but doesn't need to live in the live tree.

## When NOT to archive

- Files that are still actively referenced (move them instead).
- Files that contain unique information not captured elsewhere (extract the unique bits first, then archive).

## Structure convention

```
docs/_archive/
├── README.md                  ← this file (index)
└── YYYY-MM-DD_topic/          ← dated session folder
    ├── README.md              ← 1-line-per-file table
    └── *.md                   ← archived files
```

## Current archives

| Folder | Date | Session | Files | Note |
|---|---|---|---|---|
| `2026-07-10_recon_inicial/` | 2026-07-10 | Round 1 — initial reconnaissance | 2 md + 1 README | All content now in `docs/02_research/source-map.md` and `docs/00_brief/` |

## Re-archiving rules

- Once a folder has 5+ files inside, split by topic into `YYYY-MM-DD_topic-a/`, `YYYY-MM-DD_topic-b/`, etc.
- Never delete an archive folder. If it becomes irrelevant, mark it `STATUS: deprecated` in its README.
- When archiving a new session's artifacts, update the table above AND append the date to `CHANGELOG.md`.

## See also

- `docs/HANDOFF/` — active handoff docs (not archive)
- `docs/00_brief/engagement-status.md` — engagement model + active work
- `AGENTS.md` — Hard Rule #6: "Date every session. Append to CHANGELOG.md"