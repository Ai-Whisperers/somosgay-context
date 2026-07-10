# Multi-tenant feasibility — SOMOSGAY + AIREANA + Panambi (round 2)

> **TL;DR:** Multi-tenant Next.js deployment is technically feasible and politically appropriate. Recommend shared infrastructure with each org owning its own content + branding. Could become the LATAM community-clinic-content platform for any future NGO clients.

---

## Why multi-tenant makes sense here

- **SOMOSGAY, AIREANA, Panambi, Casa Diversa** all serve overlapping but distinct communities
- All three are small NGOs with limited technical capacity
- All three face the same hostile political context
- All three benefit from shared infrastructure (Cloudflare Pages, analytics, CMS, donation processing)
- All three benefit from a shared content platform (cross-promotion, joint campaigns)
- Each keeps brand independence

---

## Architecture options

### Option A — Separate sites, shared infrastructure

Each NGO has its own subdomain or path:

- `somosgay.org` (SOMOSGAY — flagship)
- `aireana.org.py` (AIREANA — keep their WordPress or migrate)
- `casadiversa.org.py` (Casa Diversa — new site)
- `panambi.org.py` (Panambi — keep or migrate)

**Pros:**
- Full brand independence
- Can be migrated at own pace
- No risk of one org's issues affecting another

**Cons:**
- Duplicated effort (3× deployment, 3× CMS, 3× analytics)
- No unified donation flow

---

### Option B — Single platform with multi-tenant CMS

A single Next.js app with multi-tenant routing:

- `somosgay.org` → SOMOSGAY content (es + en)
- `aireana.somosgay.org` or `somosgay.org/aireana` → AIREANA content
- `panambi.somosgay.org` or `somosgay.org/panambi` → Panambi content
- `casadiversa.somosgay.org` or `somosgay.org/casadiversa` → Casa Diversa content

**Pros:**
- Shared maintenance (1 codebase)
- Shared CMS, analytics, donation processing
- Cross-promotion trivial
- One place to add new orgs

**Cons:**
- More complex initial setup
- Migration of AIREANA (currently WordPress) requires work
- Political risk: hosting AIREANA under somosgay.org could be seen as "SOMOSGAY owns AIREANA" — not accurate

---

### Option C — Federation model

Each org runs its own site, but they share:
- A shared **content layer** (e.g., shared press releases, shared research papers)
- A shared **donation system** (donor chooses which org to support)
- A shared **event calendar** (each org's events)
- A shared **translator pool** (multilingual content)

**Pros:**
- Brand independence
- Shared services where it matters
- Federation is politically appropriate (each org equal)

**Cons:**
- Most complex
- Requires explicit governance agreement

---

## Recommended path (lowest risk)

**Phase 1: Build SOMOSGAY site first (standalone)**
- Standalone Next.js site at `somosgay.org`
- Multi-locale (es + en)
- Each program gets its own page
- Donation flow
- Press kit
- All P0 + P1 items from `what-they-need.md`

**Phase 2: Add sister org micro-sites (subdomain)**
- After SOMOSGAY site is live + stable
- Add `casadiversa.somosgay.org` (trans shelter micro-site)
- Add `programa.somosgay.org` (Programa Kunu'u public-health)
- Same codebase, separate content collections

**Phase 3: Federation (only if AIREANA + Panambi want in)**
- White-label the platform
- Offer to AIREANA + Panambi + Casa Diversa as a turnkey deployment
- Charge nominal fee or do pro-bono

---

## Tech considerations

### CMS choice for multi-tenant

| Option | Pros | Cons |
|---|---|---|
| **Markdown in repo** (contentlayer, fumadocs) | Version-controlled, git-as-CMS, free | Requires Git knowledge for content editors |
| **Sanity** | Free tier, headless, multi-tenant capable | New vendor dependency |
| **Payload CMS** | Self-hostable, open source | Requires server (Cloudflare Workers or VPS) |
| **Directus** | Open source, self-host | Requires server |
| **Decap CMS (Netlify CMS)** | Git-based, free | Less polished UI |
| **Strapi** | Open source | Requires server |

**For SOMOSGAY context (sensitive + low tech capacity):** start with **markdown in repo + Decap CMS** for visual editing. Migrate to Payload if growth demands.

### Hosting for multi-tenant

- **Cloudflare Pages** — supports multi-project
- Or single Pages project with routing logic

---

## Political considerations

- Multi-tenant under somosgay.org could be politically interpreted as "SOMOSGAY controls AIREANA" — wrong and potentially hostile to AIREANA's independence
- Better: each org keeps its own domain, Ai-Whisperers provides shared infra
- Or: federation model with explicit governance

---

## Recommended for the rebuild proposal

Frame as **"Phase 1: standalone SOMOSGAY site"**, with a clearly-articulated **"Phase 2: optional expansion to sister orgs if they opt in"**.

This keeps scope realistic + politically appropriate + budget-constrained.

---

## Sources

- https://www.somosgay.org/about
- https://www.aireana.org.py/
- https://www.panambi.org.py/ (or http://www.panambi.org.py/)
- https://agenciapresentes.org/2019/01/31/paraguay-casa-diversa-primer-hogar-para-victimas-lgbt-de-violencia/