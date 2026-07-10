# AGENTS.md — AI agent instructions

Read this before doing anything in this repo.

## Identity

You are working on the **Ai-Whisperers/somosgay-context** repo — a context-only research repo for a possible engagement with SOMOSGAY, a Paraguayan LGBTQ+ rights + health NGO. The repo follows the conventions of `Ai-Whisperers/dentist` and `Ai-Whisperers/sarah-lubricants` (numbered `00–09` folders, per-folder `README.md`, dated `_archive/`, root `INDEX.md`).

## Hard rules

1. **No fabricated facts.** Every claim must cite a URL. If you can't find a source, write `[VERIFY]` and move on. Do NOT make up plausible-looking numbers, dates, quotes, or staff names.
2. **No fabricated URLs.** Use only URLs that came from real search/web_extract results this session or from existing files in the repo.
3. **No commits to `main` without a `STATUS: complete` flag in `INDEX.md`.** If you're mid-research, work in a branch or note `STATUS: draft` and tell the user.
4. **Never commit:** RUC numbers, full employee/board lists, internal clinic schedules, donor names beyond publicly-listed ones (amfAR, UNAIDS, All Out, Global Fund, AHF, ViiV, OPS, Fundación Triángulo), client medical data, anything that would put a community member at risk in Paraguay's current political climate.
5. **Bilingual by default.** Primary language is Spanish (it's their language). Quote in Spanish when quoting them. English is the secondary language for documentation. Guaraní terminology is sacred — preserve accents and spelling exactly.
6. **Date every session.** Append to `CHANGELOG.md` with a one-line summary + list of files touched.

## Conventions

- Folder numbering: `NN_name-with-hyphens` for top-level (`00_brief`, `01_organization`, …). Subfolders: `lowercase` (e.g., `01_organization/programas/`).
- File naming: `kebab-case.md` for narrative files. `STATUS.md` for status dashboards. `YYYY-MM-DD_topic.md` for dated entries.
- Per-folder `README.md`: every folder MUST have one. It indexes the folder's files in a 1-line-per-file table with a `STATUS` column.
- Status flags used in `INDEX.md` and folder READMEs: `complete` / `draft` / `pending` / `archived` / `blocked`.
- Source attribution: `[label](url)` inline, with the URL list deduplicated at the end of the file under `## Fuentes`.
- Tense: present-tense narrative ("SOMOSGAY operates…"), past-tense for events ("was founded in 2009").

## What this repo is NOT

- Not the website repo. The website (if we build one) lives separately, probably at `Ai-Whisperers/somosgay` mirroring `Ai-Whisperers/pierce-charm` (which lives at `Ai-Whisperers/paragu-ai-platform/apps/pierce-charm`).
- Not a CRM. No contact info beyond publicly-published phone/email.
- Not a place for the client to write back. Use `docs/08_questionnaires/` if you want to surface questions.

## Session workflow

1. Read `CHANGELOG.md` to see what the last session did.
2. Check `INDEX.md` STATUS flags to see what's open.
3. Pick an open task from `docs/07_backlog/backlog.md` or be assigned one by the user.
4. Do the work in a branch if it touches more than 3 files.
5. Append to `CHANGELOG.md`.
6. Update `INDEX.md` STATUS flags.
7. Commit with `git commit -m "session: YYYY-MM-DD — <one line>"`.
8. If working with the user in a chat session, end with a summary of files touched + raw URLs.

## Stack

- This is a **markdown-only** repo. No code, no package.json, no CI beyond a basic validation workflow. Do not add tooling without explicit user direction.
- Markdown linting: GitHub-flavored, max 120 chars per line, no trailing whitespace.
- `.github/workflows/repo-validation.yml` runs a basic check (folder README exists, INDEX.md up to date) on PR.

## When in doubt

- Read `CLAUDE.md` for Claude-specific notes.
- Mirror the closest analog: `dentist` for clinical/compliance patterns, `sarah-lubricants` for sensitive-data OPSEC.
- Ask the user. Don't silently decide.