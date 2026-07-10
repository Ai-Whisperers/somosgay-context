# Sitemap actual

> **TL;DR:** The current site (https://www.somosgay.org/) has only 4 nav pages + a deep news archive. That's it. No services page, no clinic page, no programs page, no donations page (donations go through GlobalGiving / Benevity externally), no careers page, no volunteer page.

---

## Top-nav pages (verified 2026-07-10)

| Path | Spanish label | What it actually contains |
|---|---|---|
| `/` | Inicio | Homepage — hero, mission, news excerpt |
| `/about` | Quienes somos | About + public documents list (audit + annual reports) |
| `/mpox` | Mpox | Mpox information page |
| `/nanderekora` | Ñande Rekorã | Community-care system page |
| `/news` | Noticias | News index (168 pages of dated entries) |

That's **5 top-nav pages** (I had originally said 4 — `mpox` + `nanderekora` are real pages too, just thin).

---

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

---

## What's in the footer (verified 2026-07-10)

```
Independencia Nacional 1032 c/ Manduvirá
+595 986 173 200
hola@somosgay.org
Facebook | Twitter | YouTube | Instagram | RSS
© SOMOSGAY
```

That's it. No sitemap link, no privacy policy link, no language switcher, no donation CTA in the footer.

---

## Tech stack (from site HTML inspection)

| Layer | What | Notes |
|---|---|---|
| Framework | Next.js (static export) | `nextExport: true` in `__NEXT_DATA__` |
| Image opt | Next.js Image | `/_next/image?url=...` paths |
| CSS | Inline + external | `/_next/static/css/7de1330a72985fa59405.css` |
| Fonts | icofont + unknown | "icofont-navigation-menu", "icofont-facebook", etc. |
| Hosting | Unknown (likely Vercel or Cloudflare Pages) | **[VERIFY]** |
| Analytics | Google Analytics UA-202057705-1 | **DEPRECATED** (UA sunset 1 July 2023) |
| No GA4 | confirmed | |
| No Meta Pixel | confirmed | |
| robots.txt | empty Disallow | OK |
| sitemap.xml | 404 (missing) | BAD |
| Manifest | **[VERIFY]** | |
| Security headers | **[VERIFY]** | likely missing |

---

## Build ID

From the homepage 404 (when nav links don't resolve): `xKxi2ZbrS2cPmO6I13NRQ` — this is a Next.js build identifier that hints at deployment date. **[VERIFY]** when this build was deployed (likely 2022–2023).

---

## Sources

- Direct curl + inspection of https://www.somosgay.org/ on 2026-07-10
- Direct curl + inspection of https://www.somosgay.org/about on 2026-07-10
- Direct curl of https://www.somosgay.org/robots.txt on 2026-07-10
- Direct curl of https://www.somosgay.org/sitemap.xml on 2026-07-10 (404)