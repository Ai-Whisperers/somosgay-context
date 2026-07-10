# Performance audit

> **TL;DR:** The current site is small (JS shell, JS-rendered pages) and likely reasonably fast on desktop but unmeasured. Mobile performance unknown. No web-vitals data.

---

## Current state

| Asset | What we know |
|---|---|
| HTML size | ~14KB for `/` (binary gzipped), ~10KB for `/about` |
| JS framework | Next.js (static export) |
| CSS | Single `7de1330a72985fa59405.css` file |
| Images | Next.js Image component (lazy-loaded, srcset) |
| Fonts | icofont (icon font, 2010s era) — adds a request |
| Hosting | Unknown (likely Vercel or Cloudflare Pages given the export pattern) |
| CDN | Unknown — **[VERIFY]** |

---

## What's likely OK

- ✅ Static export = fast TTFB
- ✅ Next.js Image = optimized images
- ✅ No large third-party scripts (other than deprecated UA)
- ✅ Small initial payload

---

## What's likely weak

- ⚠️ icofont adds a request + payload (~50KB)
- ⚠️ No service worker / PWA
- ⚠️ No preload / prefetch on critical resources
- ⚠️ No web-vitals measurement (no analytics = no real-user vitals)
- ⚠️ **[VERIFY]** Largest Contentful Paint on 3G mobile
- ⚠️ **[VERIFY]** Cumulative Layout Shift
- ⚠️ **[VERIFY]** Interaction to Next Paint (replaces FID in 2024+)

---

## Recommended targets (post-rebuild)

- LCP < 2.5s on 3G mobile
- CLS < 0.1
- INP < 200ms
- TTFB < 600ms (global, including PY)
- Total page weight < 500KB

---

## Tools to use post-rebuild

- **PageSpeed Insights** (Google) — LCP, CLS, INP
- **WebPageTest** — waterfall + filmstrip
- **Chrome DevTools** — Lighthouse audits
- **Real User Monitoring** — Plausible / Cloudflare Analytics for real-user data
- **Web Vitals extension** — Chrome extension for quick checks

---

## Sources

- https://www.somosgay.org/ — direct fetch 2026-07-10
- https://www.somosgay.org/about — direct fetch 2026-07-10
- HTML / asset inspection — direct