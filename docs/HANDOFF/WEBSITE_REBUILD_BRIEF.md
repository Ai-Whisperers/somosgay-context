# Website rebuild brief

> **TL;DR:** Brief for the engineer who picks up the rebuild. 1-page overview of stack + scope + sequencing.

---

## The ask

Rebuild https://www.somosgay.org/ as a modern, multilingual, accessible site that:

1. Surfaces everything they actually do (currently invisible)
2. Drives clinic appointments (currently WhatsApp-only)
3. Drives donations (currently external only)
4. Tells the impact story with real numbers
5. Survives a hostile political environment

Full recommendations stack: `docs/05_website-audit/what-they-need.md`

---

## Proposed stack

| Layer | Choice | Rationale |
|---|---|---|
| Framework | **Next.js 15** (App Router) | Matches `site-template` + `template-nextjs-client` |
| Styling | **Tailwind v4** | Matches house style |
| i18n | **next-intl** | Routes-based `/en/*` + `/es/*` |
| Hosting | **Cloudflare Pages** | Free, fast, secure, low-friction for PY |
| CMS | **Markdown in repo** (contentlayer or fumadocs) | Version-controlled, easy handoff to client |
| Analytics | **Plausible primary + GA4 secondary** | Privacy-friendly first |
| Booking | **Cal.com (self-hosted)** or **TidyCal** | Open-source + low-friction |
| Email | **Buttondown** or **ConvertKit** | Newsletter signup |
| Forms | **Tally** or **Typeform** | Volunteer + careers + contact |
| Icons | **Heroicons + Phosphor** | Replace icofont |
| Fonts | **Inter + Fraunces** | Humanist sans + slab display |
| Payments | **Stripe (international) + Tigo Money / bank transfer (PY)** | Multi-option |
| Search | **Pagefind** | Static, fast, no backend |

---

## Repository

**Likely location:** inside `Ai-Whisperers/paragu-ai-platform/apps/somosgay` (mirror `pierce-charm` precedent).

**Status:** NOT created yet. Pending Ivan + Kiki decision (DP-2026-07-10-04).

---

## Phase 1 — Foundation (Weeks 1–3)

- Next.js 15 scaffold
- Tailwind v4 setup
- next-intl with ES + EN locales
- Plausible + GA4 analytics
- sitemap.xml
- Cloudflare Pages deployment
- Repository structure:
  ```
  apps/somosgay/
  ├── app/
  │   ├── [locale]/
  │   │   ├── page.tsx              (homepage)
  │   │   ├── about/
  │   │   ├── programs/
  │   │   │   ├── clinica-kunuu/
  │   │   │   ├── centro-tekohara/
  │   │   │   ├── nande-rekora/
  │   │   │   ├── karu-pora/
  │   │   │   ├── programa-kunuu/
  │   │   │   ├── equis/
  │   │   │   └── besaton-pride/
  │   │   ├── donate/
  │   │   ├── get-involved/
  │   │   ├── press/
  │   │   ├── glossary/
  │   │   ├── 108/
  │   │   ├── news/[slug]/
  │   │   └── contact/
  ├── components/
  ├── content/                      (markdown source for news + programs)
  ├── public/
  │   ├── images/
  │   └── logos/
  ├── styles/
  ├── i18n/
  │   ├── es.json
  │   └── en.json
  ├── package.json
  ├── tailwind.config.ts
  ├── next.config.ts
  └── ...
  ```

---

## Phase 2 — Content (Weeks 4–9)

- All P1 items from `what-they-need.md`
- Programs pages (5)
- Donate page (multi-option)
- Events calendar
- Equis download CTA
- Press kit
- Privacy policy

---

## Phase 3 — Polish (Weeks 10–19)

- All P2 items from `what-they-need.md`
- Health-info hub (PrEP, PEP, U=U, autotest)
- Marriage equality campaign page
- 108 memorial
- Guaraní glossary
- Newsletter
- Impact dashboard
- Testimonials

---

## Phase 4 — Resilience (Weeks 20–25)

- All P3 items from `what-they-need.md`
- PWA
- Search
- Structured data
- OG + Twitter Card meta
- Local business listings
- Web vitals monitoring
- Security headers + CSP
- Dark mode

---

## Security considerations (hostile political environment)

- **Strict CSP** — minimize XSS surface
- **HSTS** — force HTTPS
- **X-Frame-Options DENY** — prevent clickjacking
- **Referrer-Policy strict-origin-when-cross-origin** — limit referrer leakage
- **No third-party trackers that share with ad networks**
- **No Google Fonts** (CDN) — self-host fonts to avoid Google having logs of visitor IPs
- **No Google Maps embed** (leaks visitor IPs to Google) — use OpenStreetMap or static image
- **No Cloudflare Workers that log visitor data** beyond what CF Logs requires
- **Document visitor data handling** in privacy policy

---

## Testing

- **Lighthouse CI** in GitHub Actions — performance + a11y + SEO + best practices on every PR
- **axe-core CI** — automated a11y checks
- **PageSpeed Insights** weekly
- **WebPageTest** before each phase launch
- **Manual a11y test** before each phase launch with NVDA + VoiceOver + keyboard-only

---

## Handoff

- **Phase 1 launch:** to client content team for ongoing content updates
- **Ongoing:** Ai-Whisperers retains security + tech maintenance responsibility (partner retainer, see `docs/09_deliverables/PACK_PARA_CLIENTE.md`)

---

## Sources

- This repo (full audit + recommendations)
- `site-template` and `template-nextjs-client` repos in Ai-Whisperers org
- Comparable clinic sites (Whitman-Walker, LA LGBT Center, etc.)