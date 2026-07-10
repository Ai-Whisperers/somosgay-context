# SOMOSGAY website — live status (HTTP probe)

> **TL;DR:** Site is partially broken RIGHT NOW. 2 of 5 main pages return
> HTTP 500 (Internal Server Error). A 6th page (`/nangareko`) linked in
> nav returns 404. Any outreach email sent today will look like the team
> didn't bother to verify the site was up.

---

## Last verified

**2026-07-10** — direct probe via `curl -sS -o /dev/null -w "%{http_code}"`
against `https://www.somosgay.org/...` from this server.

## Live HTTP status (2026-07-10)

| URL | HTTP | Bytes | Time | Page works? |
|---|---|---|---|---|
| `/` | 200 | 14,321 | 0.24s | ✅ home renders |
| `/about` | 200 | 16,645 | 0.23s | ✅ about renders |
| `/mpox` | 200 | 40,406 | 0.28s | ✅ mpox renders |
| **`/news`** | **500** | 9,992 | 0.23s | **❌ Internal Server Error** |
| **`/nanderekora`** | **500** | 9,992 | 0.25s | **❌ Internal Server Error** |
| **`/nangareko`** | **404** | 9,926 | 0.24s | **❌ Page missing** |
| `/sitemap.xml` | 404 | 9,926 | 0.24s | ❌ HTML 404 page (not XML) |
| `/robots.txt` | 200 | 70 | 0.19s | ✅ open to crawlers |

## Impact on existing claims in this repo

### Claim: "News archive is deep (168 pages = real history)"

**Source:** `docs/05_website-audit/whats-broken.md` line in "What's actually working well"

**Status:** **FALSE as stated.** The `/news` endpoint returns HTTP 500.
The 168 news pages that `whats-broken.md` claims are a "real history" are
**currently inaccessible** to both humans and crawlers.

**Verified by:** `curl https://www.somosgay.org/news` returns
`<title>500: Internal Server Error</title>` with body size 9,992B (same
as the 404 page — Next.js error handler).

### Claim: "/sitemap-actual.md lists 5 pages"

**Source:** `docs/05_website-audit/sitemap-actual.md`

**Status:** **INCOMPLETE.** Real site nav (verified from homepage HTML)
includes 6 pages:

1. `/` — Inicio
2. `/about` — Quienes somos
3. `/mpox` — Mpox (separate page, not a program)
4. `/news` — Noticias **(500 broken)**
5. `/nanderekora` — Ñande Rekorã **(500 broken)**
6. **`/nangareko` — Nangareko (linked in nav but missing — 404)**

The site also exposes `/noticias/rss` (RSS feed) which is not in the
sitemap doc.

### Claim: "Performance 48-50/100"

**Source:** `README.md` TL;DR + `performance-audit.md`

**Status:** **UNDERSTATED.** The JSON reports also show, but the README
does not surface:

| Metric | Value | Why it matters more |
|---|---|---|
| **TTI (Time to Interactive)** | **35.8 s** | Page unusable for 35 seconds on first load |
| **TBT (Total Blocking Time)** | **6,080 ms** | Main thread blocked 6 seconds |
| Speed Index | 11.9 s | Visual completeness slow |
| FCP (First Contentful Paint) | 3.1 s | First paint slow |
| LCP (Largest Contentful Paint) | 3.2 s | Largest paint — better than TTI |

**TLDR for a non-technical reader:** the site takes ~36 seconds to
become interactive on a fresh load. On a 3G connection in Paraguay
(audience is 90% mobile-only per `mobile-internet-paraguay.md`), this is
effectively unusable. The "Perf 48-50" number understates the pain.

### Claim: "UA-202057705-1 only"

**Status:** **CONFIRMED + WORSE.** Even the 404 and 500 error pages
embed the gtag script. So the (deprecated) Universal Analytics tag fires
on every broken page-load, polluting any UA reports they might still be
looking at.

---

## What this changes in the engagement plan

1. **DP-2026-07-10-14 (new): URGENT — verify site status with Paloma
   before any outreach.** If we send an email saying "we want to help
   fix your website" while their site is currently serving 500s on
   40% of pages, the timing makes us look careless.

2. **DP-2026-07-10-02 (First contact channel)** — open with empathy,
   not a pitch. "We noticed /news and /nanderekora are returning 500
   today — is this a known outage or has it been like this?" opens the
   relationship with proof we checked.

3. **WhatsApp inconsistencies** — `whats-broken.md` issue #28 lists 3
   phone numbers. We should confirm via WhatsApp status (last seen,
   profile pic) which is actively monitored before pitching via that
   channel.

4. **`/nangareko` is a real nav link** — the client's nav links to it
   but it 404s. That's a 5-minute fix for them; we should call it out
   in the first response.

---

## What this repo did NOT catch

This is the **biggest gap** in our audit. The `whats-broken.md`
analysis was performed against static HTML inspection of pages that
returned 200. It never asked: "which of these pages actually serve
real content today?" Live HTTP probing was not part of the original
audit methodology.

**Recommendation:** add live HTTP probing to the standard website audit
checklist going forward. A 5-line script in `.github/workflows/`
catches this class of bug for free.

---

## Probe script (re-runnable)

```bash
#!/bin/bash
# scripts/probe-somosgay.sh
# Re-run weekly via cron to detect regressions.
for url in / /about /news /nanderekora /mpox /nangareko /sitemap.xml /robots.txt; do
  result=$(curl -sS -o /dev/null -w "%{http_code} %{size_download}B" \
    "https://www.somosgay.org${url}" 2>&1)
  echo "$(date -Iseconds)  ${url}  ${result}"
done
```

Last run output:

```
PATH                      HTTP   BYTES      TIME(s)
----                      ----   -----      -------
/                         200    14321B     0.25
/about                    200    16645B     0.23
/news                     500    9992B      0.25
/nanderekora              500    9992B      0.23
/mpox                     200    40406B     0.29
/nangareko                404    9926B      0.26
/sitemap.xml              404    9926B      0.24
/robots.txt               200    70B        0.21
/noticias/rss             404    9926B      0.25
```

> **Round 15 update:** Added `/noticias/rss` to the probe. Returns **404** — another dead link referenced from the site footer. Same Next.js 404 HTML page (9,926B). **The site's RSS feed is broken too.** Update `docs/05_website-audit/sitemap-actual.md` if needed.

## Re-runnable script

The inline script above is now extracted to [`scripts/probe-somosgay.sh`](../../scripts/probe-somosgay.sh) with three modes:

```bash
./scripts/probe-somosgay.sh           # text table (default)
./scripts/probe-somosgay.sh --json    # JSON for piping into dashboards
./scripts/probe-somosgay.sh --alert   # exit 1 if any unexpected non-200 detected
```

Recommended cadence: weekly cron + on-demand after any SOMOSGAY-side change. Log to `docs/06_website_status/probe-history.log` for trend analysis.

---

## Sources

- Direct HTTP probes via `curl` against `https://www.somosgay.org/`
  performed 2026-07-10 from this server.
- Lighthouse JSON reports already in repo:
  `docs/05_website-audit/home-lighthouse.json` and `about-lighthouse.json`.
- Next.js error page HTML: title `500: Internal Server Error`,
  gtag `UA-202057705-1` still embedded (verified in error page body).

## Next action

Owner: **Ivan + Kiki** (before first client contact).

1. Decide: contact Paloma now with empathy + offer to debug, or wait
   for site to recover and reach out with a cleaner story.
2. Update `decisiones-pendientes.md` with DP-2026-07-10-14 (see
   `06_decisions/decisiones-pendientes.md`).
3. Set up a cron to re-probe weekly and alert if any page flips from
   200 to non-200.