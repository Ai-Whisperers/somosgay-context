# Accessibility audit (round 2 — verified via Lighthouse + axe)

> **TL;DR:** Lighthouse a11y score: **76-78/100**. Failing checks: button-name, color-contrast, heading-order, html-has-lang, link-name, list, listitem, landmark-one-main. Most are template-level fixes that the rebuild can address in one pass.

---

## Lighthouse a11y scores (2026-07-11)

| Page | Score | Failures |
|---|---|---|
| `/` (home) | **76/100** | 6 issues |
| `/about` | **78/100** | 5 issues |

---

## Specific failing checks

| Check | Home | /about | What it means |
|---|---|---|---|
| **button-name** | ❌ | ❌ | Some buttons lack accessible names (no aria-label, no text content) |
| **color-contrast** | ❌ | ❌ | Some text/background combos don't meet WCAG AA contrast ratio (4.5:1 for normal text) |
| **heading-order** | ❌ | ❌ | Heading levels skip (e.g., h1 → h3 without h2) |
| **html-has-lang** | ❌ | ❌ | `<html>` element missing `lang="es"` attribute (critical for screen readers) |
| **link-name** | ❌ | ❌ | Some links lack discernible text (icon-only or empty) |
| **list / listitem** | ❌ | — | Lists not properly structured (`<li>` not inside `<ul>`/`<ol>`) |
| **landmark-one-main** | — | ❌ | Page lacks a `<main>` landmark for screen reader navigation |

---

## What we can infer without a screen-reader test

### Likely issues (inferred)

- ⚠️ **Missing skip-to-content link** — standard Next.js templates skip this
- ⚠️ **Hero sections with low-contrast white-on-image** — common in dark hero patterns
- ⚠️ **Form labels** — likely missing if there's any contact form
- ⚠️ **Focus styles** — Next.js default focus may not be visible enough on dark backgrounds
- ⚠️ **Reduced motion** — no `prefers-reduced-motion` handling for any parallax
- ⚠️ **Spanish screen reader compatibility** — untested; verify with NVDA Spanish or VoiceOver Spanish

### Likely OK

- ✅ Spanish content (no language mismatch)
- ✅ HTTPS
- ✅ Semantic HTML mostly intact

---

## Recommended rebuild fixes (in priority order)

| Priority | Fix | Effort |
|---|---|---|
| P0 | Add `<html lang="es">` | 1 min |
| P0 | Add `<main>` landmark to all pages | 30 min |
| P0 | Add `aria-label` to all icon-only buttons | 2 hours |
| P0 | Fix heading order across all pages | 2 hours |
| P1 | Fix color contrast on dark hero sections | 4 hours |
| P1 | Add skip-to-content link | 30 min |
| P1 | Add aria-labels to icon-only links | 2 hours |
| P1 | Add `prefers-reduced-motion` handling | 2 hours |
| P2 | Test with NVDA + VoiceOver + keyboard-only | 1 day |
| P2 | Fix any remaining list/listitem issues | 2 hours |
| P2 | Add visible focus styles (≥3px, ≥3:1 contrast) | 2 hours |

---

## WCAG 2.2 target

- **AA is minimum** (legal baseline)
- **AAA** for color contrast (7:1) where possible — health-services site
- All video content needs **Spanish captions** + ideally **LSP** (Lengua de Señas Paraguaya) sign language interpretation

---

## Paraguay-specific considerations

- **LSP** (Lengua de Señas Paraguaya) is distinct from Argentine LSB
- Any video content should be captioned in Spanish + signed in LSP
- **[VERIFY]** current video content on the site

---

## Recommended testing tools post-rebuild

- **axe-core** via `@axe-core/cli` — automated a11y checks
- **Lighthouse** — included in CI
- **Pa11y CI** — GitHub Actions integration
- **NVDA** (Windows, free) + **VoiceOver** (macOS/iOS) — manual screen reader testing
- **WAVE** (webaim.org) — overlay a11y check

---

## Sources

- Lighthouse runs 2026-07-11 (home-lighthouse.json, about-lighthouse.json)
- WCAG 2.2 — https://www.w3.org/TR/WCAG22/
- https://www.somosgay.org/ (target)