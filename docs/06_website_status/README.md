# docs/06_website_status

> Live HTTP status of `somosgay.org` — re-probed periodically.

## Purpose

`docs/05_website-audit/` documents what was broken at a point in time.
This folder documents what is broken **right now** — via live HTTP
probes that can be re-run.

## Files

| File | Purpose | STATUS |
|---|---|---|
| `alive-now.md` | Live HTTP probe results + impact on existing claims | complete |

## Convention

- Filename: `alive-now.md` for current state. `alive-YYYY-MM-DD.md` for
  archived snapshots.
- Re-probe cadence: weekly cron + on-demand after any site change.
- Alert rule: any page flipping from 200 to non-200 triggers a
  Telegram notification via `hermes cron`.

## See also

- `docs/05_website-audit/whats-broken.md` — point-in-time audit
- `docs/06_decisions/decisiones-pendientes.md` — DP-2026-07-10-14 (new)