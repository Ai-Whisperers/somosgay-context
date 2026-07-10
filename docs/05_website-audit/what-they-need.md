# What they need — recommendations stack

> **TL;DR:** The full prioritized recommendation stack for the rebuild. 5 priority tiers. 47 specific items. **This is the most actionable document in the repo.**

---

## Priority 0 — Critical (do first)

### P0.1 — Multilingual site (ES/EN minimum)

- Why: International donors + press + regional network need to engage in English
- How: `next-intl` or similar; route-based `/en/*` mirroring `/es/*`
- Effort: 1 week
- Impact: Unlocks international donor + press pipeline

### P0.2 — Replace deprecated analytics with Plausible + GA4

- Why: They've been blind since July 2023
- How: Plausible primary (no cookie banner needed); GA4 secondary with consent
- Effort: 1 day
- Impact: They can measure everything

### P0.3 — Add sitemap.xml + submit to GSC + Bing

- Why: Google can't efficiently crawl 168+ news pages
- How: `next-sitemap` or manual
- Effort: 2 hours
- Impact: SEO crawl coverage

### P0.4 — Services / Clínica Kunu'u page

- Why: Their flagship program is invisible from main nav
- How: New page with services grid + hours + booking CTA + accessibility info
- Effort: 3 days
- Impact: Conversion to booking + visibility

### P0.5 — Clinic booking flow (replace WhatsApp-only)

- Why: Currently WhatsApp-only is friction (no calendar visibility, no confirmations)
- How: Calendly integration OR TidyCal OR Cal.com (self-hosted) → WhatsApp confirm
- Effort: 1 week (or less with Cal.com)
- Impact: Conversion + reduced no-shows

---

## Priority 1 — High (do within first month)

### P1.1 — Donate page (in-site, not external)

- Why: Donations go to GlobalGiving + All Out externally; lose site visitors
- How: Custom donate page with options:
  - One-time
  - Monthly
  - Sponsor a PrEP bottle
  - Sponsor a meal (Karu Porã)
  - Crypto (if org willing)
- Effort: 1 week
- Impact: Donation conversion

### P1.2 — Events calendar

- Why: Pride, Besatón, IDAHOBIT, World AIDS Day, donor events all unlisted
- How: Embed TidyCal / Cal.com public calendar, or custom event pages
- Effort: 1 week
- Impact: Event attendance + media coverage

### P1.3 — Equis download CTA + dedicated /equis page

- Why: Main utility is hidden
- How: App store badges in nav + dedicated page with screenshots + features
- Effort: 3 days
- Impact: App install

### P1.4 — Patient stories / impact dashboard

- Why: No human face; no concrete numbers
- How: 5–10 anonymized stories + numbers ("1,500+ pruebas de VIH administradas", etc.)
- Effort: 2 weeks (interviews + writing)
- Impact: Donor trust + emotional connection

### P1.5 — Volunteer signup + careers page

- Why: No way to engage beyond donating
- How: Typeform / Tally / native form → email to volunteer coord
- Effort: 1 week
- Impact: Volunteer pipeline

### P1.6 — Press kit / media contact

- Why: International journalists contact them regularly (per IBA, Guardian, CNN, Advocate, ABC, LA Times history); no easy press resources
- How: /prensa page with logos, photos, fact sheet, contact
- Effort: 3 days
- Impact: Better press coverage

### P1.7 — Privacy policy + data handling disclosure

- Why: They're collecting health info via WhatsApp; need transparency
- How: /privacidad page (Spanish + English) covering:
  - What data is collected
  - How it's stored (paper? encrypted? cloud?)
  - Who has access
  - Patient rights under PY law
  - WhatsApp Business vs WhatsApp personal handling
- Effort: 1 week (legal review)
- Impact: Trust + legal compliance

### P1.8 — Replace icofont with modern icon library

- Why: icofont is dated (last active 2019)
- How: Heroicons + Phosphor + Lucide (any modern alternative)
- Effort: 1 day
- Impact: Visual freshness + smaller payload

---

## Priority 2 — Medium (do within first quarter)

### P2.1 — Programs page (Tekoharã + Ñande Rekorã + Karu Porã + Programa Kunu'u + Besatón-Pride)

- Why: All other programs invisible from nav
- How: 4–5 program pages
- Effort: 2 weeks
- Impact: Program visibility + donor targeting

### P2.2 — Health-info hub (PrEP FAQ + PEP FAQ + U=U + autotest instructions + harm reduction guides)

- Why: Massive SEO opportunity + patient education
- How: 6–10 FAQ pages + downloadable PDFs
- Effort: 2 weeks (content + design)
- Impact: Patient education + SEO

### P2.3 — Marriage equality campaign page

- Why: Current political campaign deserves its own URL
- How: /matrimonio-igualitario page with timeline, legal status, current litigation
- Effort: 1 week
- Impact: Campaign visibility

### P2.4 — 108 memorial page

- Why: Historical marker; cultural significance
- How: /108 page explaining the 1959 raids + significance + ongoing memory
- Effort: 1 week
- Impact: Cultural + educational

### P2.5 — Guaraní glossary page

- Why: Site uses many Guaraní terms (Kunu'u, Tekoharã, Ñande Rekorã, Karu Porã, Kuimba'e, tekoporã); no translation anywhere
- How: /glosario page with terms + pronunciations + cultural context
- Effort: 1 week (research from client)
- Impact: Cultural respect + accessibility for non-Guaraní readers

### P2.6 — Newsletter signup

- Why: Capture supporters not ready to donate
- How: Buttondown / ConvertKit / Mailchimp free tier; double opt-in
- Effort: 3 days
- Impact: Email list growth

### P2.7 — Public impact dashboard

- Why: Concrete numbers build trust with donors and press
- How: /impacto page with stats:
  - PrEP patients enrolled
  - HIV tests administered
  - TARV patients
  - Psychological consultations
  - Community meals served (Karu Porã)
  - Youth shelter residents (with consent)
- Effort: 2 weeks (need data from client)
- Impact: Donor confidence

### P2.8 — Testimonial / case study pages (anonymized)

- Why: Stories humanize the work
- How: 5–10 anonymized first-person stories
- Effort: 3 weeks (interviews + writing + consent)
- Impact: Emotional resonance

### P2.9 — Microsite for "Yo ❤️ PrEP" + future campaigns

- Why: Campaigns need their own landing pages for ad tracking
- How: /prep page (and /[campaign-slug] pattern for future)
- Effort: 1 week per campaign
- Impact: Campaign conversion

---

## Priority 3 — Polish (do when there's bandwidth)

### P3.1 — PWA (service worker, install prompt)

- Why: Mobile-first audience; many users on 3G; PWA enables offline reading
- How: next-pwa or Workbox
- Effort: 1 week
- Impact: Mobile UX

### P3.2 — Search functionality

- Why: 168+ news pages; users need search
- How: Pagefind (static, fast) or Algolia DocSearch
- Effort: 1 week
- Impact: Content discovery

### P3.3 — Multi-language UI toggle (visible switcher)

- Why: If P0.1 ships ES/EN, the switcher needs to be obvious
- How: Header component with language selector
- Effort: 2 hours
- Impact: UX

### P3.4 — Cookie consent banner (if GA4 used)

- Why: GDPR compliance for international visitors
- How: CookieYes / Osano / custom
- Effort: 3 days
- Impact: Legal compliance

### P3.5 — Structured data (JSON-LD)

- Why: Rich results in Google (events, FAQ, organization)
- How: Per-page JSON-LD: Organization, Clinic, Service, Event, FAQPage, NewsArticle
- Effort: 1 week
- Impact: SEO

### P3.6 — Open Graph + Twitter Card meta

- Why: Better social shares
- How: Per-page OG image (auto-generated from page content)
- Effort: 1 week
- Impact: Social engagement

### P3.7 — Image alt text audit

- Why: SEO + a11y
- How: Manual review + automated audit (axe)
- Effort: 3 days
- Impact: SEO + a11y

### P3.8 — Local business listings (Google Business Profile + Apple Maps + Bing Places)

- Why: Local search
- How: Manual setup
- Effort: 3 days
- Impact: Local discovery

### P3.9 — Web vitals monitoring

- Why: Continuous performance
- How: Plausible or SpeedCurve
- Effort: 1 day setup
- Impact: Performance regression detection

### P3.10 — Security headers + CSP

- Why: Site is in hostile political environment; protect against XSS, clickjacking, etc.
- How: Strict CSP, HSTS, X-Frame-Options DENY, Referrer-Policy strict-origin-when-cross-origin
- Effort: 1 day
- Impact: Security

### P3.11 — Automated backups + version-controlled content

- Why: Easy to deface; need roll-back
- How: GitHub-based content (mdx or markdown) → static export → Cloudflare Pages
- Effort: Architecture choice
- Impact: Resilience

### P3.12 — Dark mode

- Why: Modern UX expectation; users in low-bandwidth / night contexts
- How: Tailwind dark variant
- Effort: 2 days
- Impact: UX

---

## Priority 4 — Speculative (defer until validated)

- AI chatbot for clinic FAQs
- Telemedicine integration (for the existing remote psychiatry service)
- Donor CRM integration (Salesforce NPSP or free alternatives)
- Volunteer management system
- Event ticketing for fundraising events
- Crypto donations
- Membership program (recurring donor tier)
- Online store (merch — T-shirts, rainbow flags)
- Live streaming of Pride + Besatón

---

## Estimated effort summary

| Tier | Items | Total effort |
|---|---|---|
| P0 | 5 | ~3 weeks |
| P1 | 8 | ~6 weeks |
| P2 | 9 | ~10 weeks |
| P3 | 12 | ~6 weeks |
| P4 | 10 | TBD |

**Total P0–P3: ~25 weeks (≈ 6 months at 1 FTE)** — but heavily parallelizable, so realistic at 3 months with a 2-person team (engineer + designer).

---

## Recommended sequencing

**Phase 1 (Weeks 1–3):** P0 + foundation
- New Next.js 15 monorepo app
- Multilingual setup (ES + EN)
- Plausible + GA4
- sitemap.xml
- Clínica Kunu'u page
- Clinic booking flow

**Phase 2 (Weeks 4–9):** P1
- Donate page
- Events calendar
- Equis download
- Patient stories
- Volunteer + careers
- Press kit
- Privacy policy
- Icon library swap

**Phase 3 (Weeks 10–19):** P2
- Programs pages (5)
- Health-info hub (6–10 pages)
- Marriage equality campaign
- 108 memorial
- Guaraní glossary
- Newsletter
- Impact dashboard
- Testimonials (3 weeks)

**Phase 4 (Weeks 20–25):** P3 polish
- PWA, search, structured data, OG, a11y audit, security headers

---

## Sources

- All `docs/05_website-audit/` files
- All `docs/03_competitors-and-peers/clinics-like-this.md` patterns
- All `docs/01_organization/programas/` files