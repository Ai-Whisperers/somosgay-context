# Comparable clinic sites — what to learn

> **TL;DR:** 7 sites analyzed. Whitman-Walker (DC) is the closest analog to Clínica Kunu'u (HIV-focused community clinic). LA LGBT Center + CenterLink + The Center (NYC) show the full-service community-centre pattern. DIKÉ El Salvador is the closest LATAM analog. Fenway Health + Callen-Lorde show the mature-clinic pattern.

---

## The benchmark set

| Site | URL | Scale | Closest analog to SOMOSGAY? |
|---|---|---|---|
| **CenterLink** | https://www.lgbtcenters.org/ | Member association, 350+ centers | Network admin — not a service org |
| **The Center (NYC)** | https://gaycenter.org/ | Huge (millions of visits/yr) | Cultural + advocacy model |
| **LA LGBT Center** | https://www.lalgbtcenter.org/ | 500,000 visits/yr, 800+ staff, world's largest direct service provider | Comprehensive services model |
| **Fenway Health** | https://fenwayhealth.org/ | Boston — primary care + research | Healthcare-research depth |
| **Callen-Lorde** | https://www.callen-lorde.org/ | NYC + Brooklyn + Bronx | Community-clinic chain |
| **Whitman-Walker** | https://www.whitman-walker.org/ | DC — primary care + dental + mental health + legal + research + advocacy | **Closest to Kunu'u** |
| **DIKÉ El Salvador** | https://www.diariocolatino.com/dike-inaugura-centro-comunitario-y-espacio-seguro-a-poblacion-lgbt/ | Trans-specific clinic in El Salvador | **Closest LATAM analog** |

---

## Whitman-Walker (DC) — closest analog to Clínica Kunu'u

**Why:** Same DNA — community-rooted HIV-focused clinic that grew into primary care, dental, mental health, legal aid, research, and policy advocacy. Same political environment (DC has had hostile federal administrations). Same multi-decade arc.

**Key services on the site:**
- Medical care (primary)
- Dental health
- Youth, family, support (social work)
- Legal services (FREE)
- Insurance navigation
- Behavioral health (peer support, substance use, psychotherapy, psychiatry, gender-affirming assessment)
- **SMART Immediate Care** — same-day walk-in for sexual health (direct analog to Kunu'u's Mon–Fri 13:00–17:00 testing drop-in)
- Community resources

**Stats shown:**
- 20,000 patients/year
- 100% participation in HIV clinical drug trials since 1987

**Patterns worth stealing:**
- "Become a Patient" prominent CTA
- MyChart integration
- "Good Faith Estimates" compliance page
- "Find a Doctor" + "Find a Location" header nav
- Multi-location transparency (they have multiple sites)
- Active blog + news + events calendar
- "Donate" + "Get Involved" + "Volunteer" prominent
- "Thrive Fest" type annual fundraising events

**Source:** https://www.whitman-walker.org/

---

## LA LGBT Center — comprehensive services model

**Scale:** 500,000 visits/year, 800+ team members, 117,286 meals served, 55,000+ medical/mental health visits/year.

**Services grid (verbatim from site):**

- Youth Services
- Senior Services
- Transgender Services
- Survivor Services
- Medical Services
- Mental Health & Psychiatry Services
- Sexual Health Services
- Substance Use and Recovery Services
- Legal Services
- Housing
- Policy & Advocacy
- Community & Support Groups
- Youth & Schools
- Trainings & Technical Assistance
- Vocational Programs
- Research

**Patterns worth stealing:**
- The 4-column service grid in main nav
- Stats prominently displayed on homepage (real numbers, not vague claims)
- Multiple ways to engage (Donate, Volunteer, Lifeworks Mentorship, Corporate Engagement, Make a Legacy Gift)
- Client stories
- Featured programs carousel
- "Our Reach" section with concrete numbers

**Source:** https://www.lalgbtcenter.org/

---

## CenterLink — member association

**Scale:** 350+ member centers.

**Purpose:** Strengthen, support, and connect LGBTQ+ community organizations.

**Programs:**
- Leadership Institute — develops leaders across the network
- ActionLink — connects centers with advocacy orgs for coordinated action
- HealthLink — supports centers in strengthening health services
- SAGELink (with SAGE) — older adults + caregivers
- YouthLink — youth centers

**Patterns worth stealing:**
- "Member testimonials" pattern — center leaders saying how CenterLink helped them
- Member directory — discoverability
- Donate-as-network-support (donors support the network that supports the centers)

**Source:** https://www.lgbtcenters.org/

**Why it matters for SOMOSGAY:** SOMOSGAY should be a CenterLink member (or at least look at membership). They could appear in the CenterLink member directory.

---

## The Center (NYC)

**Site thin on first scrape** — mostly nav + media. The site is JS-rendered; needs a deeper fetch.

**Public identity:** World's oldest LGBTQ+ community center (since 1983).

**Patterns worth stealing:**
- Heritage + history emphasis
- Cultural + arts programming
- Recovery + wellness + sexual health programs

**Source:** https://gaycenter.org/

---

## Fenway Health (Boston)

**Strengths on site:**
- "Find a Doctor" + "MyChart" + "Online Scheduling" prominent
- "After Hours Medical Support" highlighted
- "Forward Together" strategic roadmap shared publicly
- Multilingual interpretation services prominently listed (English, Spanish, Portuguese, Chinese, Haitian Creole)
- Multiple location finder
- Awards + accreditations visible
- "Good Faith Estimates" compliance
- Name + gender marker change resource (for Massachusetts specifically — but pattern is reusable)

**Patterns worth stealing:**
- Strategic roadmap transparency
- Multilingual access pages
- Name/gender marker change resources (relevant to PY context)
- Online scheduling prominent

**Source:** https://fenwayhealth.org/

---

## Callen-Lorde (NYC + Brooklyn + Bronx)

**Strengths on site:**
- Multi-location clarity (Chelsea, Brooklyn, Bronx)
- "Quick Care" same/next-day appointments (same-day drop-in model)
- "Join Our Team!" careers CTA prominent
- Notice of Third-Party Data Breach (transparency on security incidents)
- "We're Here for You. Always." messaging during political hostility

**Patterns worth stealing:**
- Multi-location finder
- Same-day / next-day appointment as a feature
- Open careers section
- Resilience messaging

**Source:** https://www.callen-lorde.org/

---

## DIKÉ El Salvador — closest LATAM analog

**Type:** Trans-specific health clinic + community centre.

**Started:** 2014 (11 years as of 2025)
**Active patients on hormones:** ~150
**Total patients served over time:** >100

**Facilities:**
- Clinic rooms
- Counseling rooms
- Talk rooms
- Dormitories (transitional housing)
- Kitchen (meals)
- Receptionist + clinical specialists + psychologists

**Medical model:**
- Hormonal treatment for trans women + trans men
- Approved by Consejo Superior de Salud Pública (El Salvador's public health council)
- Hormones authorised by Dirección Nacional de Medicamentos
- Free consultation; meds at cost (subsidised)
- Age cutoff: 18+ for hormonal treatment

**Funded by:** International Rescue Committee (IRC) — Katherine Susman, deputy director of programs

**Patterns worth stealing:**
- "Multi-functional centre" model (medical + counseling + housing + food)
- Explicit anti-office vibe ("desecha el concepto de oficina")
- Public-private partnership with international NGO (IRC)
- Transparent patient count
- Public health regulator endorsement

**Source:** https://www.diariocolatino.com/dike-inaugura-centro-comunitario-y-espacio-seguro-a-poblacion-lgbt/

---

## Patterns to extract

See [`design-patterns-extracted.md`](design-patterns-extracted.md) for the consolidated list.

---

## Sources

- https://gaycenter.org/
- https://www.lgbtcenters.org/
- https://fenwayhealth.org/
- https://www.lalgbtcenter.org/
- https://www.callen-lorde.org/
- https://www.whitman-walker.org/
- https://www.diariocolatino.com/dike-inaugura-centro-comunitario-y-espacio-seguro-a-poblacion-lgbt/