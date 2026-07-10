# /mpox page — context note

> **Status:** `complete` (R15)
>
> **🚨 Round 15 caveat:** `/mpox` appears as a separate top-nav page on `somosgay.org` but is **NOT** one of SOMOSGAY's 5 named programs (per `docs/01_organization/`). It is a **transient emergency response page** from the 2022 mpox (monkeypox) outbreak, which disproportionately affected LGBTQ+ communities globally.

## Why it matters for the audit

- `sitemap-actual.md` and `docs/08_questionnaires/05_audiencia_y_idiomas.md` both list `/mpox` as if it were a permanent program page. **It is not.**
- The page is currently 200 OK (40,406 bytes; verified 2026-07-10) but content is dated.
- Including `/mpox` in the "5 programs" mental model misleads engagement planning — Clínica Kunu'u (HIV/PrEP/syphilis/Hep B) and Programa Kunu'u (PrEP campaigns) are the actual clinical programs. Mpox is adjacent but distinct.

## Background

- **Outbreak:** 2022 global mpox outbreak (formerly "monkeypox") — WHO declared PHEIC 23 July 2022.
- **Paraguay:** First confirmed case May 2022. By end of 2022, ~80+ cases reported nationally.
- **SOMOSGAY response:** Posted information page `/mpox` with prevention + vaccination guidance targeted at LGBTQ+ community.
- **Current state (2026):** WHO declared end of PHEIC May 2023. Cases dropped to baseline. **The page is now 4 years old.**

## Three options for the rebuild

| Option | Effort | Recommendation |
|---|---|---|
| **A. Keep as legacy page** | Low | OK if they still get traffic; archive otherwise |
| **B. Merge into "Salud / Health info hub"** | Medium | 🟢 **Recommended.** Group `/mpox` + future outbreak pages + HIV/PrEP info under `/salud`. |
| **C. Remove entirely** | Low | Acceptable but loses educational content for future outbreaks |

## Sources

- https://www.who.int/news/item/23-07-2022-second-meeting-of-the-international-health-regulations-(2005)-emergency-committee-regarding-the-multi-country-outbreak-of-monkeypox
- https://www.somosgay.org/mpox (verified 2026-07-10, 200 OK, 40,406B)

## Related

- `docs/01_organization/programas/programa-kunuu.md` — PrEP campaigns (the actual ongoing HIV/sexual-health program)
- `docs/01_organization/programas/clinica-kunuu.md` — Clínica Kunu'u (flagship clinical service)
- `docs/05_website-audit/sitemap-actual.md` — page inventory