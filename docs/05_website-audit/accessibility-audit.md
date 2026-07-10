# Accessibility audit

> **TL;DR:** Draft — needs a real browser pass with axe DevTools + NVDA. Based on code inspection alone: likely missing alt text, missing ARIA landmarks, missing skip-to-content link, no language switcher affects a11y for non-Spanish readers.

---

## What we can infer without a browser pass

### Likely issues

- ⚠️ **Missing skip-to-content link** — common omission in Next.js bootstrap templates
- ⚠️ **Image alt text** — Next.js Image component requires alt prop; verify on all images
- ⚠️ **ARIA landmarks** — main, nav, aside, contentinfo should be explicit
- ⚠️ **Heading hierarchy** — likely h1 → h3 with no h2 (common in template-based sites)
- ⚠️ **Color contrast** — dark hero sections with white text need verification; rainbow accents on white may have low contrast for some hues
- ⚠️ **Focus styles** — Next.js default may not be visible enough on dark backgrounds
- ⚠️ **Form labels** — if any forms exist (booking, contact, search)
- ⚠️ **Reduced motion** — no `prefers-reduced-motion` handling
- ⚠️ **Keyboard navigation** — especially for mobile menu (common failure point)
- ⚠️ **Screen reader compatibility** — Spanish screen reader (e.g., NVDA Spanish, VoiceOver Spanish) compatibility unknown

### Likely OK

- ✅ Spanish content (no language-mismatch issues)
- ✅ HTTPS
- ✅ Likely has semantic HTML (h1, nav, footer)

---

## What needs browser pass

1. Run **axe DevTools** on every page
2. Run **WAVE** on every page
3. Test with **NVDA** (screen reader)
4. Test with **VoiceOver** (macOS / iOS)
5. Test with **TalkBack** (Android)
6. Test keyboard-only navigation
7. Test at 200% zoom
8. Test with Windows High Contrast mode

---

## WCAG 2.2 target

- **AA** is the minimum acceptable
- **AAA** would be ideal for a health-services site (color contrast AAA, sign language for video, etc.)
- Recommend AA + targeted AAA improvements

---

## Paraguay-specific considerations

- Paraguayan Sign Language (LSP — Lengua de Señas Paraguaya) is distinct from Argentine/other LSB variants
- Any video content should be captioned in Spanish + ideally signed in LSP
- **[VERIFY]** current video content on site

---

## Recommendations for rebuild

1. Use a tested component library (Radix UI, Headless UI, React Aria) for accessible primitives
2. Use a real a11y testing library in CI (axe-core, Pa11y, jest-axe)
3. Build in semantic HTML from the start
4. Test with real assistive tech in QA
5. Document keyboard shortcuts
6. Provide text alternatives for all non-text content
7. Make focus visible and consistent
8. Don't rely on color alone for meaning
9. Provide captions for all video
10. Respect prefers-reduced-motion

---

## Sources

- WCAG 2.2 — https://www.w3.org/TR/WCAG22/
- https://www.somosgay.org/ — code inspection 2026-07-10
- Paraguay sign language context — general knowledge (LSP recognition status)