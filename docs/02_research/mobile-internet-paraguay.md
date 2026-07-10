# Mobile + internet landscape — Paraguay (round 2 — verified)

> **TL;DR:** Paraguay 81.3% internet penetration (2024). 90% mobile-only. 97.5% messaging-app users. **Mobile-first + WhatsApp-first is mandatory for the rebuild.** Source: DataReportal + Asunción Times.

---

## Headline statistics (DataReportal Digital 2024: Paraguay)

| Metric | Value | Date |
|---|---|---|
| **Internet penetration** | **81.3%** of total population | January 2024 |
| Internet users | 5.62 million | January 2024 |
| **Mobile-only access** | **90%** of users connect via mobile | 2024 |
| **Messaging-app usage** | **97.5%** of internet users | 2024 |
| Most popular activity | Instant messaging | 2024 |
| Internet penetration growth | +4.5% YoY (2023→2024) | 2024 |

Sources:
- https://datareportal.com/reports/digital-2024-paraguay
- https://datareportal.com/digital-in-paraguay
- https://asunciontimes.com/paraguay-news/national-news/more-paraguayans-now-have-internet-access/
- https://geofactbook.com/countries/paraguay/internet-penetration-rate

---

## What this means for the rebuild

| Decision | Implication |
|---|---|
| Mobile-first design | 90% of users on mobile — desktop is secondary |
| Touch targets | Min 48×48px (mobile-friendly, a11y) |
| WhatsApp CTA | 97.5% use messaging — WhatsApp booking is right model |
| Page weight | Target < 500KB (mobile bandwidth in PY is variable; rural areas 3G/4G) |
| Image optimization | WebP/AVIF, lazy load, srcset |
| CSS size | Critical CSS inlined, defer non-critical |
| JS size | < 100KB total (no icofont, no big libraries) |
| LCP target | < 2.5s on 3G/4G |
| Offline support | PWA for repeat visitors |

---

## App install behaviour

- Paraguay mobile users do install apps (messaging, social) but for clinic info + booking, web is preferred (no install friction)
- SOMOSGAY's Equis app (2014) had limited traction — better to make a fast web PWA instead

---

## Connectivity landscape (general LATAM context)

- Paraguay urban areas (Asunción, Ciudad del Este, Encarnación): 4G+ LTE available
- Paraguay rural areas: 3G common, 4G expanding
- Home broadband: less common than mobile broadband
- Public WiFi: variable (parks, libraries, some cafés)

---

## Implications for hosting

- **Cloudflare Pages** is a strong fit: global CDN, mobile-optimized, free, fast from PY
- Avoid hosting providers without PY/nearby PoPs (Vercel Edge is fine; AWS sa-east-1 is fine)
- No origin in PY required

---

## Sources

- https://datareportal.com/reports/digital-2024-paraguay
- https://datareportal.com/digital-in-paraguay
- https://asunciontimes.com/paraguay-news/national-news/more-paraguayans-now-have-internet-access/
- https://geofactbook.com/countries/paraguay/internet-penetration-rate