# Equis + Plataforma AMI (round 2 + app-store check 2026-07-11)

> **TL;DR:** **Equis app is NOT on Google Play Store as of 2026-07-11.** Searched Play Store for "Equis SomosGay", "SomosGay Paraguay", "Clínica Kunu'u" — no SOMOSGAY-developed apps surface. Either never published beyond initial demo, removed by Google (likely for inactivity), or never made it past the 2014 announcement.

---

## Play Store search (2026-07-11)

Searched Google Play Store for:

| Query | SOMOSGAY app found? | Notes |
|---|---|---|
| "Equis SomosGay" | ❌ No | Generic LGBT apps surface (Scruff, Blued, Hornet, etc.) |
| "SomosGay Paraguay" | ❌ No | Same generic results |
| "Clínica Kunu'u app" | ❌ No | 1555-byte result = no results page |

**Conclusion:** Neither **Equis** nor **AMI** exists as a discoverable mobile app in 2026.

---

## What this means

1. **Equis app was either:**
   - Never actually published on Google Play Store (only announced)
   - Published then removed by Google (policy / inactivity)
   - Published as a private/beta app (unlisted)
   - Repurposed as the **Plataforma AMI** (web-based, 2020)

2. **Plataforma AMI** (the 2020 virtual platform) is the more likely successor. Per the 2020 Informe Anual, AMI was a "virtual platform" not specifically described as a mobile app.

3. **This is a service gap**: SOMOSGAY promised digital access to clinic services (booking, info, results, employment, legal aid) but the digital channel appears inactive or unwound.

---

## Recommended rebuild priority

The new SOMOSGAY site **must include a real online booking + info hub**, since the original app is dead:

| Priority | Feature | Effort |
|---|---|---|
| **P0** | Online booking via Cal.com or TidyCal | 1 week |
| **P0** | Clinic info pages (services, hours, eligibility) | 3 days |
| **P0** | Autotest pickup map (Los Barberos de López + sauna Rebellion + Kunu'u) | 2 days |
| **P1** | Test results access (if legally possible in PY) | TBD |
| **P1** | Donation CTA with multi-payment options | 1 week |
| **P1** | PWA (installable web app that fills the "Equis" gap) | 1 week |
| **P2** | Native Android app (only if PWA is insufficient) | 4-6 weeks |

---

## PWA over native app (rationale)

For SOMOSGAY's context:
- **Cost:** PWA free; native app $5K-20K to develop + maintain
- **Distribution:** PWA via web; native via Play Store
- **Discoverability:** PWA via search; native via Play Store search
- **Updates:** PWA instant; native via Play Store
- **Notifications:** PWA push works (with HTTPS); native works
- **Offline:** PWA supports; native supports
- **OPSEC:** PWA on Cloudflare; native in Play Store (US-controlled)
- **Py mobile landscape:** 90% mobile + 97.5% messaging = PWAs work fine

**Decision:** Build PWA, not native. Reserve native for v2 if usage justifies.

---

## Sources

- https://play.google.com/store/search?q=Equis+SomosGay (searched 2026-07-11)
- https://play.google.com/store/search?q=SomosGay+Paraguay (searched 2026-07-11)
- https://play.google.com/store/search?q=Clinica+Kunu%27u+app (searched 2026-07-11)
- https://www.hoy.com.py/tecnologia/lanzan-primera-aplicacion-gay-del-paraguay (Equis launch 2014)
- https://www.somosgay.org/documents/SOMOSGAY%20Informe%20Anual%202020.pdf (AMI launch 2020)
- http://somosgay.org/noticias/detalles/asuntos (AMI as policy platform)