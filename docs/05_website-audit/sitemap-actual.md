# Sitemap actual

> **TL;DR:** The current site (https://www.somosgay.org/) has **6 nav pages** (5 working + 1 broken) + a deep news archive. That's it. No services page, no clinic page, no programs page, no donations page (donations go through GlobalGiving / Benevity externally), no careers page, no volunteer page.
>
> **⚠️ Round 14 update (2026-07-10):** Verified via `curl`. `/news` and `/nanderekora` currently return HTTP 500 (page inaccessible). `/nangareko` (linked in nav) returns HTTP 404. See [`docs/06_website_status/alive-now.md`](../06_website_status/alive-now.md).

## Top-nav pages (verified 2026-07-10 via curl)

| Path | Spanish label | HTTP | What it actually contains |
|---|---|---|---|
| `/` | Inicio | 200 | Homepage — hero, mission, news excerpt |
| `/about` | Quienes somos | 200 | About + public documents list (audit + annual reports) |
| `/mpox` | Mpox | 200 | Mpox information page |
| `/nanderekora` | Ñande Rekorã | **500** | ⚠️ Community-care system page — currently returning 500 |
| `/news` | Noticias | **500** | ⚠️ News index — currently returning 500 (cannot verify 168-page claim) |
| `/nangareko` | Nangareko | **404** | ⚠️ Linked from homepage nav but page is missing |

That's **6 nav pages** (3 working, 2 broken, 1 missing). Previously listed as 5 — `/nangareko` was missed because it 404s and was assumed to be legacy. **It is actively linked from the current nav.**

The news archive claim of "168 pages" comes from the homepage nav structure; **it cannot be verified** while `/news` returns 500. See [`docs/06_website_status/alive-now.md`](../06_website_status/alive-now.md) for live probe results.

## What's NOT in the nav (but should be)

| Missing page | Why it matters |
|---|---|
| Clínica Kunu'u (services + booking) | Flagship program; zero site presence |
| Centro Comunitario Tekoharã | Active program; no site presence |
| Karu Porã | Active program; no site presence |
| Programa Kunu'u (PrEP / campaigns) | Active; no site presence |
| Equis app | Active app; no download CTA on main nav |
| Besatón + Marcha del Orgullo | Annual events; no dedicated pages |
| Donar | Donations go to GlobalGiving/Benevity/All Out externally — no in-site flow |
| Voluntariado | No volunteer signup |
| Trabaja con nosotros | No careers page |
| Contacto | Only via footer phone/email |
| Glosario | No Guaraní terminology explainer |
| 108 / Historia | No memorial page |
| Matrimonio igualitario | No advocacy page for current legal campaign |
| AIDS / VIH | No health-info hub |
| Press / Sala de prensa | No press kit |
| Documentos públicos | About page has the list but it's not surfaced in nav |
| Privacidad / Seguridad | No privacy policy / data-handling disclosure |

**That's 17 missing pages.**

## What's in the footer (verified 2026-07-10)

```
Independencia Nacional 1032 c/ Manduvirá
+595 986 173 200
hola@somosgay.org
Facebook | Twitter | YouTube | Instagram | RSS
© SOMOSGAY
```

That's it. No sitemap link, no privacy policy link, no language switcher, no donation CTA in the footer.

## What's in the RSS feed

`/noticias/rss` — linked from footer. Confirmed exists (200 OK to curl). Not currently shown in sitemap-actual.

## Tech stack (from site HTML inspection)

| Layer | What | Notes |
|---|---|---|
| Framework | Next.js (static export) | `nextExport: true` in `__NEXT_DATA__` |
| Image opt | Next.js Image | `/_next/image?url=...` paths |
| CSS | Inline + external | `/_next/static/css/7de1330a72985fa59405.css` |
| Fonts | icofont + unknown | "icofont-navigation-menu", "icofont-facebook", etc. |
| Hosting | Unknown (likely Vercel or Cloudflare Pages) | **[VERIFY]** |
| Analytics | Google Analytics UA-202057705-1 | **DEPRECATED** (UA sunset 1 July 2023); **fires on error pages too** — confirmed `/news` 500 body includes the gtag script |
| No GA4 | confirmed | |
| No Meta Pixel | confirmed | |
| robots.txt | empty Disallow | OK |
| sitemap.xml | 404 (missing) — returns 9,926B HTML, not a true 404 | BAD |
| Manifest | **[VERIFY]** | |
| Security headers | **[VERIFY]** | likely missing |

## Build ID

From the homepage 404 (when nav links don't resolve): `xKxi2ZbrS2cPmO6I13NRQ` — this is a Next.js build identifier that hints at deployment date. **[VERIFY]** when this build was deployed (likely 2022–2023).

## Sources

- Direct curl + inspection of https://www.somosgay.org/ on 2026-07-10
- Direct curl + inspection of https://www.somosgay.org/about on 2026-07-10
- Direct curl of https://www.somosgay.org/robots.txt on 2026-07-10
- Direct curl of https://www.somosgay.org/sitemap.xml on 2026-07-10 (404 — 9,926B HTML page)
- **Direct curl of https://www.somosgay.org/news on 2026-07-10 — HTTP 500** *(round 14)*
- **Direct curl of https://www.somosgay.org/nanderekora on 2026-07-10 — HTTP 500** *(round 14)*
- **Direct curl of https://www.somosgay.org/nangareko on 2026-07-10 — HTTP 404** *(round 14)*
- [`docs/06_website_status/alive-now.md`](../06_website_status/alive-now.md) — re-runnable probe script