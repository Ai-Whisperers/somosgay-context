# What's broken — current site issues

> **TL;DR:** 29 concrete issues identified (15 content + 5 tech debt + 5 SEO + 4 conversion) + 3 new live-status issues from round 14. Mix of "missing" (no app store link), "broken" (deprecated analytics), and "weak" (no service descriptions). All addressable.
>
> **⚠️ 2026-07-10 update (round 14):** Two pages — `/news` and `/nanderekora` — are currently serving HTTP 500 (verified via `curl` 2026-07-10). See `docs/06_website_status/alive-now.md` for live status. The "168 news pages" claim below is no longer verifiable.

---

## ⚠️ Category 0 (new, round 14): Pages currently down

These were not in the original audit — they are *live state* issues caught by HTTP probing on 2026-07-10.

**0a.** **`/news` returns HTTP 500** — body `<title>500: Internal Server Error</title>`, 9,992 bytes. Verified via `curl -sS -w "%{http_code}"` 2026-07-10. Means the "news archive" referenced throughout this audit is **inaccessible** to both humans and crawlers right now. Impact: defeats purpose of issue #24 (no sitemap) — even with a sitemap, the target page is broken.

**0b.** **`/nanderekora` returns HTTP 500** — same Next.js 500 error page. Verified 2026-07-10. Ñande Rekorã is one of their 5 named programs (per `docs/01_organization/programas/nande-rekora.md`); program page is down.

**0c.** **`/nangareko` returns HTTP 404** — not in `sitemap-actual.md` (which lists only 5 pages) but IS linked from homepage navigation. Either new page not yet deployed or removed but link not cleaned up. 5-minute fix for them.

See [`docs/06_website_status/alive-now.md`](../06_website_status/alive-now.md) for full probe results and re-runnable probe script.

---

## Category 1: Missing pages / content (15 issues)

1. **No services page** — clinic + community centre + app all invisible from main nav
2. **No clinic booking flow** — Mon–Fri 13:00–17:00 testing is WhatsApp-only
3. **No events calendar** — Pride, Besatón, IDAHOBIT, World AIDS Day all unlisted
4. **No patient stories / impact dashboard** — no human face, no numbers
5. **No app store badge / Equis download CTA** — main utility buried
6. **No donation page** — links go off-site to GlobalGiving + All Out only
7. **No volunteer signup**
8. **No careers page**
9. **No press kit / media contact**
10. **No 108 memorial page**
11. **No marriage equality campaign page**
12. **No Guaraní glossary**
13. **No privacy policy / data handling disclosure**
14. **No bilingual ES/EN language switcher**
15. **No sitemap.xml** (confirmed 404 — note: 404 page returns HTML 9,926B, not a true XML 404)

---

## Category 2: Tech debt (5 issues)

16. **Deprecated analytics** — UA-202057705-1 only; Universal Analytics was sunset 1 July 2023; they have **zero analytics since 2023**. The gtag script also fires on the **500 and 404 error pages** (verified 2026-07-10), polluting any reports they might be looking at.
17. **No GA4 migration** — confirmed via gtag config
18. **icofont icons** — outdated (icofont hasn't been actively maintained since ~2019); consider Heroicons, Phosphor, or Tabler Icons
19. **Image optimization unknown** — Next.js Image is used but image dimensions / lazy loading not verified
20. **Security headers unknown** — CSP, HSTS, X-Frame-Options, etc. need verification

---

## Category 3: SEO + content (5 issues)

21. **No multilingual SEO** — site is Spanish-only; no hreflang tags; loses English-speaking search traffic
22. **No structured data** — no JSON-LD for Organization, Clinic, Service, Event; loses rich results
23. **No Open Graph images** — social shares look generic
24. **No sitemap** — search engines can't efficiently crawl all 168 news pages *(see round-14 note: this assumes news pages were ever accessible; see Cat 0a)*
25. **Title tags / meta descriptions unknown** — likely minimal

---

## Category 4: Conversion (4 issues)

26. **No primary CTA on homepage** — donate / book / download Equis are all hidden
27. **Donation requires leaving the site** — friction loss
28. **WhatsApp number inconsistency** — site shows +595 986 173 200; press shows +595 985 653 855 for booking + +595 21 495 802 as old line
29. **No email signup / newsletter** — can't capture supporters who aren't ready to donate

---

## What's actually working well

- ✅ Site is up *(partially — 3 of 6 pages broken; see Cat 0)*
- ✅ Site loads *(on pages that work; Lighthouse TTI 35.8s on home — that's 36 seconds to interactive, NOT "loads fast")*
- ✅ Public documents (audit + annual reports) are listed on /about
- ✅ Footer has full contact info
- ✅ Active social links (Facebook, Twitter, Instagram, YouTube, RSS)
- ✅ No Disallow in robots.txt = open to crawlers
- ✅ https (TLS)
- ⚠️ ~~News archive is deep (168 pages = real history)~~ — **REMOVED 2026-07-10 (round 14)**: archive endpoint currently serves HTTP 500; cannot verify claim

---

## Priority ranking

| Tier | Issues |
|---|---|
| **P0 — fix immediately** | 0a, 0b (live 500 errors), 2 (no booking flow), 16 (deprecated analytics), 15 (no sitemap), 21 (no multilingual SEO) |
| **P1 — important for engagement** | 0c (live 404), 1, 5, 6, 26, 27, 29 |
| **P2 — content depth** | 3, 4, 7, 8, 9, 10, 11 |
| **P3 — polish** | 12, 13, 14, 17, 18, 19, 20, 22, 23, 24, 25, 28 |

Full recommendations stack in [`what-they-need.md`](what-they-need.md).

---

## Sources

- https://www.somosgay.org/ + https://www.somosgay.org/about — direct fetch 2026-07-10
- https://www.somosgay.org/robots.txt — direct fetch 2026-07-10
- https://www.somosgay.org/sitemap.xml — 404 confirmed 2026-07-10 (returns 9,926B HTML, not a true 404)
- https://www.somosgay.org/news — **HTTP 500 verified 2026-07-10** *(round 14)*
- https://www.somosgay.org/nanderekora — **HTTP 500 verified 2026-07-10** *(round 14)*
- https://www.somosgay.org/nangareko — **HTTP 404 verified 2026-07-10** *(round 14)*
- ABC Color press coverage — phone number verification 2026-07-10
- [`docs/06_website_status/alive-now.md`](../06_website_status/alive-now.md) — live probe results + script