# Analytics audit

> **TL;DR:** They have a single, deprecated Universal Analytics property. Zero analytics since July 2023. They are flying completely blind on-site behavior.

---

## Current state

| Tool | Present | Status |
|---|---|---|
| **Universal Analytics (UA-202057705-1)** | ✅ | **DEPRECATED** — Google stopped processing 1 July 2023 |
| **Google Analytics 4 (GA4)** | ❌ | Missing — no migration |
| **Meta Pixel (Facebook)** | ❌ | Missing |
| **Plausible / Fathom / Simple Analytics** | ❌ | Missing |
| **Microsoft Clarity (heatmaps)** | ❌ | Missing |
| **Hotjar** | ❌ | Missing |
| **Custom event tracking** | ❌ | Missing |
| **Conversion tracking** | ❌ | Missing |

Source: Direct inspection of `<head>` gtag config in `https://www.somosgay.org/`.

---

## What's lost

- ❌ Page views (since July 2023)
- ❌ Traffic source attribution
- ❌ User geography
- ❌ Bounce rate / engagement
- ❌ Conversion tracking (donations, app downloads, WhatsApp clicks)
- ❌ Mobile vs desktop split
- ❌ Search terms driving traffic
- ❌ Top pages
- ❌ All historical trend data beyond July 2023

---

## Implications

- Cannot measure impact of campaigns
- Cannot measure conversion on donation CTAs
- Cannot optimize content based on what's working
- Cannot demonstrate ROI to funders (e.g., "X people came from this campaign")
- Cannot answer basic questions: how many visitors per month? from where? on what pages?

---

## Recommended analytics stack (priorities)

### Tier 1 — must-have

- **Plausible Analytics** (or Fathom) — privacy-friendly, no cookies, no GDPR consent banner needed
  - Self-hosted or cloud
  - ~$9/mo for the site
- **GA4** (free, with consent banner if needed)
  - For richer reporting
  - Requires cookie consent under GDPR-like norms (Paraguay has no equivalent GDPR yet, but international donors expect compliance)

### Tier 2 — nice-to-have

- **Microsoft Clarity** — free heatmaps + session recordings (privacy-friendly)
- **Meta Pixel** — only if running Facebook ad campaigns (doubtful)

### Tier 3 — optional

- **Custom event tracking** via Plausible custom goals:
  - "Clicked WhatsApp button" (booking intent)
  - "Clicked Equis download" (app install intent)
  - "Clicked donate" (donation intent)
  - "Read /about" (engagement)
  - "Read /programs/clinica-kunuu" (clinical intent)

---

## Privacy considerations

- ⚠️ Paraguay has no equivalent GDPR/LGPD; but operating internationally means visitors may be from jurisdictions that do
- ✅ Plausible/Fathom = no personal data collection, no consent banner needed
- ⚠️ GA4 = requires cookie consent under EU GDPR
- Recommendation: **Plausible primary + GA4 secondary** (with cookie banner)
- Do NOT collect or share with ad networks anything that could identify visitors (paranoia appropriate given political climate)

---

## What to set up

1. Plausible Analytics — install on new site (1-line script)
2. GA4 — set up property + data stream
3. Custom event tracking on:
   - WhatsApp clicks
   - Donation CTA clicks
   - Equis download clicks
   - Program page reads
4. Cookie consent banner (if using GA4)
5. Google Search Console — verify ownership + submit sitemap
6. Bing Webmaster Tools — same

---

## Sources

- https://www.somosgay.org/ — direct fetch 2026-07-10 (UA config in gtag)
- Google sunset timeline — Universal Analytics sunset 1 July 2023