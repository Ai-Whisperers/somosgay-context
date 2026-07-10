# Performance audit (round 2 — verified via Lighthouse)

> **TL;DR:** Lighthouse score on the current site: **Performance 48-50/100** (failing). LCP 3.2s on home, **18.8s on /about** (very bad). TBT 6,080ms on home (also very bad). Speed Index 11.9s. Interactive 35.8s. **The rebuild needs to hit LCP < 2.5s, TBT < 200ms, Speed Index < 5s.**

---

## Lighthouse scores (run 2026-07-11, headless Chrome)

| Page | Performance | Accessibility | Best Practices | SEO |
|---|---|---|---|---|
| `/` (home) | **48/100** | 76/100 | 100/100 | 92/100 |
| `/about` | **50/100** | 78/100 | 100/100 | 92/100 |

Both fail Performance. Both pass Best Practices and SEO (mostly). Accessibility is in the C range — passes with caveats.

---

## Core Web Vitals (headless run)

| Metric | Home | /about | Target | Verdict |
|---|---|---|---|---|
| Largest Contentful Paint (LCP) | 3.2s | **18.8s** | < 2.5s | ❌ FAIL (especially /about) |
| Cumulative Layout Shift (CLS) | 0.001 | 0 | < 0.1 | ✅ PASS |
| Total Blocking Time (TBT) | **6,080 ms** | 590ms | < 200ms | ❌ FAIL (home) |
| Speed Index | 11.9s | 5.8s | < 5s | ❌ FAIL (home) |
| First Contentful Paint (FCP) | 3.1s | 2.9s | < 1.8s | ❌ FAIL |
| Time to Interactive (TTI) | **35.8s** | 19.0s | < 5s | ❌ FAIL (both) |

**Headless run caveat:** Headless Lighthouse tends to report slower LCP/TTI than real-user field data (RUM) from Plausible/GA4. Even so, TBT 6,080ms on the home page is a real signal of heavy JS work.

---

## Why /about is so slow

- 1.6MB rendered HTML
- Large document list rendering all 8 PDFs in the DOM
- icofont + Next.js Image + Next.js static export = lots of hydration work

## Why / is slow

- Hero section with parallax backgrounds
- icofont load
- Next.js hydration of full nav + footer + content

---

## What's likely OK on real-user metrics

- **CLS is excellent** (0.001 / 0) — fonts are preloaded, no layout jumps
- **Best Practices 100/100** — no security anti-patterns (HTTPS, no deprecated APIs, no console errors)
- **SEO 92/100** — meta descriptions, crawlable links, mobile viewport

---

## Recommended rebuild targets

- **LCP < 2.5s** (especially /about — needs code-splitting for the document list)
- **TBT < 200ms** (need to drop heavy JS — replace icofont, reduce hydration)
- **Speed Index < 5s**
- **TTI < 5s**
- **Total page weight < 500KB** for home
- **Real-user RUM** via Plausible once deployed

---

## Specific optimisations to apply

1. **Drop icofont** — replace with inline SVG or modern icon font (Heroicons/Phosphor/Lucide). icofont is heavy + outdated.
2. **Code-split by route** — Next.js App Router does this automatically; current site is Pages Router static export, so this is manual.
3. **Lazy-load document list** on /about — only render the 8 PDF cards when scrolled into view.
4. **Reduce hero parallax** — replace with static gradient + simple image.
5. **Defer non-critical JS** — chat widgets, analytics, etc.
6. **Self-host fonts** — no Google Fonts CDN (also an OPSEC win).
7. **Use Next.js Image** for all content images + serve in WebP/AVIF.
8. **Critical CSS inlining** — currently the CSS bundle is `7de1330a72985fa59405.css` (size unknown; needs measurement).
9. **Service worker for repeat visits** — PWA pattern.

---

## Tools to use post-rebuild

- **Lighthouse CI** in GitHub Actions — fail builds if performance drops below 90
- **PageSpeed Insights** — public check
- **WebPageTest** — waterfall analysis
- **Plausible Analytics** — Real-user metrics once deployed

---

## Sources

- Lighthouse runs 2026-07-11:
  - `docs/05_website-audit/home-lighthouse.json` (479KB)
  - `docs/05_website-audit/about-lighthouse.json` (548KB)
- https://www.somosgay.org/ (target)
- https://www.somosgay.org/about (target)