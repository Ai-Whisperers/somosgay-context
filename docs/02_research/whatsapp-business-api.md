# WhatsApp Business API — Paraguay context (round 2 — verified)

> **TL;DR:** WhatsApp API available in Paraguay. Meta charges per-conversation (not per-message). BSPs charge markup + setup. SOMOSGAY's current model (single +595 985 653 855 WhatsApp Business app) is the right cheap start; for scale-up, recommend a no-markup BSP like Zavu or respond.io.

---

## How Meta charges (as of 2025–2026)

WhatsApp Business API uses **per-conversation** pricing (changed from per-message in 2023, refined in July 2025):

| Category | When | Paraguay estimate |
|---|---|---|
| **Marketing** | Promotions, announcements | ~$0.03–0.05 |
| **Utility** | Transactional (booking confirmations, reminders) | ~$0.01–0.02 |
| **Authentication** | OTPs | ~$0.005–0.01 |
| **Service** | Customer-initiated (24h free reply window) | $0 |

**24-hour rule:** Once a customer messages you first, you have 24h to send unlimited messages free of Meta charges (only BSP markup applies).

---

## Paraguay-specific context

- WhatsApp Business App (free) is **available in Paraguay** — SOMOSGAY already uses it (+595 985 653 855)
- WhatsApp Business API (paid) is **available in Paraguay** — requires a BSP
- 97.5% of Paraguayan internet users use messaging apps (DataReportal 2024)
- WhatsApp penetration in PY: very high (estimated >90% of smartphone users)

---

## BSP comparison (Business Solution Providers)

| Provider | Markup over Meta | Setup fee | Contract | Min monthly | Recommendation |
|---|---|---|---|---|---|
| **Zavu** | $0 | $0 | None | $0 (free tier: 2,000 msgs/mo) | ✅ Best for budget orgs |
| **respond.io** | $0 | $0 | None | $79/mo | ✅ Best for growing teams |
| **Twilio** | $0.005/msg | $0 | None | Pay-as-you-go | ✅ Mature platform |
| **MessageBird (Bird)** | $0.005/msg + variable | $12,000+ MXN | 3 months minimum | — | ❌ Too expensive for NGO |
| **Infobip** | Negotiated | Variable | 12 months | — | Enterprise only |
| **Gupshup** | 10–25% | $0 | None | Pay-as-you-go | OK if no markup needed |
| **360dialog** | Plan fixed €49+/mo | Variable | Variable | ~€49 | OK for EU |
| **Wati** | 20% markup | $0 | None | Pay-as-you-go | Avoid markup |
| **Sleekflow** | $15/mo per WhatsApp number | $0 | None | $15 | ❌ Per-number charge bad for multi-clinic |

**For SOMOSGAY:** Start with WhatsApp Business App (free, current state). Scale to **Zavu** (cheapest BSP) or **respond.io** (most full-featured) if/when API needed for automation.

---

## BSPs that explicitly serve LATAM

| Provider | LATAM coverage | Spanish support | Paraguay specifically? |
|---|---|---|---|
| **Zavu** | ✅ Yes (LATAM-focused) | ✅ Spanish | ✅ |
| **respond.io** | ✅ Yes | ✅ Multilingual | ✅ |
| **Twilio** | ✅ Yes | ✅ Documentation in Spanish | ✅ |
| **MessageBird** | ✅ Yes | ✅ | ✅ |

---

## Recommended SOMOSGAY evolution

### Current state
- WhatsApp Business App (free) on +595 985 653 855
- All booking requests handled manually

### Phase 1 (immediate — no cost)
- Keep WhatsApp Business App
- Add WhatsApp click-to-chat buttons on every page (current site has this in footer)
- Add pre-filled WhatsApp message templates for common requests (e.g., "Quiero turno en Kunu'u", "Donar", "Necesito ayuda legal")

### Phase 2 (when volume justifies)
- Migrate to WhatsApp Business API via Zavu (cheapest) or respond.io (best features)
- Set up chatbots for:
  - Booking confirmation
  - Reminders (24h before appointment)
  - Donations
  - LGBTIfobia reports
- Cost estimate: ~$30–100/month at low volume

### Phase 3 (multi-clinic)
- Multiple WhatsApp numbers (Kunu'u, Tekoharã, Karu Porã, Karu Porã, etc.)
- Sleekflow would be expensive per-number; Zavu/respond.io scale better

---

## Sources

- https://www.zavu.dev/es/blog/whatsapp-business-api-pricing (LATAM pricing guide 2026)
- https://respond.io/blog/whatsapp-business-api-pricing (global pricing guide 2026)
- https://www.twilio.com/en-us/whatsapp/pricing
- https://whato.app/blog/whatsapp-business-api-costos-planes-y-como-calcular-tu-inversion/
- https://flowcall.co/blog/whatsapp-business-api-pricing-2026
- https://datareportal.com/reports/digital-2024-paraguay (97.5% messaging stat)