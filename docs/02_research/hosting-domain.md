# Hosting + dominio considerations — round 2

> **TL;DR:** Cloudflare Pages is the right choice for SOMOSGAY — free, fast, secure, OPSEC-friendly. Keep `somosgay.org` (don't migrate to .com.py). Document Uganda/Russia precedents as cautionary tales. Verify NIC.py eligibility for any .com.py / .org.py usage.

---

## Hosting: Cloudflare Pages

### Why Cloudflare Pages

| Factor | Cloudflare Pages | Vercel | Netlify | Render |
|---|---|---|---|---|
| **Free tier** | Unlimited static + 500 builds/mo | 100GB bandwidth/mo | 100GB bandwidth/mo | Static free |
| **Global CDN** | ✅ Worldwide | ✅ | ✅ | Limited |
| **South America PoPs** | ✅ Buenos Aires, São Paulo, etc. | ✅ | Limited | Limited |
| **Custom domains** | ✅ Unlimited | ✅ | ✅ | ✅ |
| **DDoS protection** | ✅ Free | Limited | Limited | Limited |
| **TLS auto** | ✅ | ✅ | ✅ | ✅ |
| **Workers (serverless)** | ✅ Optional | ✅ | ✅ | Limited |
| **Analytics** | ✅ Built-in Web Analytics | Limited | Limited | Limited |
| **Free build minutes** | Unlimited | 100h/mo | 300 build min/mo | — |
| **Pricing for nonprofit** | Free | Free + Pro $20/mo | Free + Pro $19/mo | $7+/mo |
| **OPSEC** | ✅ Privacy-friendly; no third-party trackers | ⚠️ Telemetry | ⚠️ Telemetry | ⚠️ |

**Winner:** Cloudflare Pages — free tier + global CDN + Paraguay-accessible + OPSEC-friendly.

### Next.js on Cloudflare Pages

- **Next.js Pages Router static export:** ✅ works perfectly
- **Next.js App Router static:** ✅ works
- **Next.js 15+ with App Router + RSC:** requires Cloudflare Workers adapter (`@opennextjs/cloudflare`)
- For SOMOSGAY: stay with **static export** for simplicity + speed + security

Source: https://blog.blazingcdn.com/en-us/nextjs-cloudflare-deployment-guide-pages-workers-images

---

## Domain considerations

### Keep `somosgay.org`

| Option | Pros | Cons | Verdict |
|---|---|---|---|
| **Keep somosgay.org** | Established brand, SEO history, recognition | Registry can be pressured if politically sensitive | ✅ Default |
| Migrate to paragu-ai.com subdomain | Ai-Whisperers owns it | Loses brand equity; looks foreign | ❌ |
| Register .com.py | Local PY domain | Doesn't add value; .org is fine | ❌ |
| Register .com | Adds secondary | .org already there | Optional |

### OPSEC on domain

- **Cloudflare Registrar** is the recommended registrar (no markup, free WHOIS privacy)
- **Don NOT use GoDaddy / Namecheap** — they share WHOIS data with upstream registries
- **Domain locked at registry level** — use registrar lock + Cloudflare transfer lock
- **WHOIS privacy** — confirm Cloudflare Registrar sets it
- **DNSSEC** — enable if registrar supports

### .com.py / .org.py eligibility (NIC.py)

- **.com.py / .org.py registration eligibility:** open to foreign entities per NIC.py (no citizenship requirement)
- **Cost:** ~50,000 PYG/year (~7-8 USD)
- **Registry:** NIC Paraguay (http://www.nic.py/)
- **Consideration:** Adds a local TLD (.py) which has some SEO benefit in Paraguay, but loses the established .org

---

## Domain confiscation risk (cautionary precedents)

| Country | What happened | Year |
|---|---|---|
| Russia | LGBT "public movement" labelled extremist | November 2023 (Supreme Court) |
| Uganda | Anti-Homosexuality Act 2023 (signed into law May 2023) | 2023 |
| Uganda | 2016 NGO Act — NGOs need permits; permits can be revoked | 2016 |
| Russia | Multiple LGBT NGOs declared "foreign agents" | ongoing |

**Implication for Paraguay under Peña:** While Paraguay has not yet (as of 2026) taken such extreme measures, the hostile political environment + the 2017 education ban + the president's open hostility create **non-zero risk**.

**Mitigation:**
- Host content + assets on Cloudflare's global CDN (not Paraguay-based servers)
- Use Cloudflare Registrar for domain (US-based, no PY political pressure)
- Keep core content in version control on GitHub (US-based, mirrors not subject to PY takedown)
- Plan an `.onion` mirror (Tor) as backup if political situation worsens
- Establish a backup organization or fiscal sponsor in Argentina or Brazil

Sources:
- https://democracyinafrica.org/did-russia-play-a-role-in-ugandas-anti-homosexuality-legislation/
- https://www.amnesty.org/en/latest/news/2026/04/russia-russian-lgbt-network-is-labelled-extremist-in-escalating-crackdown-on-lgbti-rights/
- https://www.hrw.org/report/2025/05/26/theyre-putting-our-lives-risk/how-ugandas-anti-lgbt-climate-unleashes-abuse
- https://www.jurist.org/news/2026/04/russia-court-declares-lgbt-network-as-extremist-amidst-intensified-crackdown/

---

## Recommended setup

```
Registrar:     Cloudflare Registrar (or transfer existing)
Domain:        somosgay.org (keep)
DNS:           Cloudflare DNS
Hosting:       Cloudflare Pages (static export)
TLS:           Cloudflare (auto, full strict)
CDN:           Cloudflare global CDN
Security:      Cloudflare (WAF, DDoS, rate limiting)
Analytics:     Cloudflare Web Analytics + Plausible (self-hosted or cloud)
Backups:       GitHub (repo), Cloudflare R2 (assets)
Fallback:      .onion mirror via Tor hidden service (if needed)
```

---

## Sources

- https://www.cloudflare.com/plans/developer-platform/
- https://blog.blazingcdn.com/en-us/nextjs-cloudflare-deployment-guide-pages-workers-images
- https://dev.to/killer_scofield_d2f41df11/deploying-nextjs-16-to-cloudflare-workers-static-assets-not-pages-a-real-world-setup-5chd
- https://www.justaftermidnight247.com/insights/cloudflare-pages-vs-workers-which-one-should-you-use/
- http://www.nic.py/ (Paraguay domain registry)
- https://www.amnesty.org/en/latest/news/2026/04/russia-russian-lgbt-network-is-labelled-extremist-in-escalating-crackdown-on-lgbti-rights/
- https://www.hrw.org/report/2025/05/26/theyre-putting-our-lives-risk/how-ugandas-anti-lgbt-climate-unleashes-abuse