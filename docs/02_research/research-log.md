# Research log — 2026-07-10 session

> **TL;DR:** Two parallel workstreams this session. (A) Recon on SOMOSGAY identity, history, leadership, programs, funding. (B) Recon on comparable clinic sites globally. Brave Search rate-limited at 3–4 429s; pivoted to web_extract + curl on known URLs.

---

## Workstream A — SOMOSGAY identity & programs

### Search queries issued

1. `"Somos Gay" clinic Paraguay` — Brave 429
2. `SomosGay clinic Asunción Paraguay LGBTQ health` — ✓ (5 results: IBA, Washington Blade, Facebook, amfAR, GayTimes)
3. `"somosgay.org.py" OR "somosgay.org" Paraguay clínica` — ✓ (5 results)
4. `SOMOSGAY Paraguay Simon Cazal fundador` — Brave 429
5. `SOMOSGAY 2024 2025 Paraguay noticias derechos LGBTI` — ✓ (5 results)
6. `"Kuimba'e" clinic Asunción HIV Somosgay` — Brave 429
7. `"Paloma Vera" SOMOSGAY directora ejecutiva Paraguay` — ✓ (2 results, confirmed ED)
8. `SOMOSGAY ley "anti LGBTIfobia" Paraguay proyecto` — empty
9. `"Simón Cazal" SOMOSGAY director biography` — ✓ (5 results)
10. `SOMOSGAY Simón Cazal renuncia directiva 2023 2024` — Brave 429
11. `Somosgay Paraguay Pride marcha 2024 2025` — ✓ (mostly wrong region, not Asunción)
12. `"marcha del orgullo" Asunción 2024 Somosgay recorrido` — Brave 429
13. `SOMOSGAY "Sergio López" matrimonio Reconquista Iguazú recurso 2023` — Brave 429
14. `Somosgay television documentary film "Somos" Paraguay` — Brave 429
15. `"Clínica Kunu'u" SOMOSGAY servicios Asunción testeo` — ✓ (5 results: TikTok, news index, ABC 2023, Facebook clinic, ABC 2025)
16. `SOMOSGAY HIV PrEP PEP "indetectable" Paraguay estadísticas` — Brave 429 (3x)
17. `SOMOSGAY "Centro Comunitario" servicios programas 2024 2025` — ✓ (5 results)
18. `Paraguay "matrimonio igualitario" fallo Corte Suprema 2024` — Brave 429
19. `SOMOSGAY AMI "Centro de Denuncias" LGBTIfobia Paraguay app` — Brave 429

### Direct fetches (web_extract)

- https://www.ibanet.org/article/3263508E-230C-4B0C-8DD5-6CCB9D203774 ✓
- https://www.washingtonblade.com/2012/12/10/lgbt-group-hopes-to-open-paraguays-first-mens-health-clinic/ ✓
- https://www.amfar.org/content.aspx?id=14016 ✓ (thin, only summary)
- https://www.gaytimes.com/life/anti-lgbtq-hate-in-paraguay/ ✓
- https://es.wikipedia.org/wiki/Sim%C3%B3n_Cazal ✓
- https://www.theguardian.com/world/2015/jul/10/simon-cazal-pope-francis-paraguay-lgbt-somosgay ✓
- https://www.advocate.com/politics/religion/2015/07/12/married-gay-activist-s-meeting-pope-was-very-productive ✓
- https://edition.cnn.com/2015/07/11/world/lgbt-paraguay-pope-francis/index.html ✓
- https://www.abc.com.py/nacionales/2024/06/28/derechos-lgbt-en-paraguay-matrimonio-igualitario-a-la-vista/ ✓
- https://www.latimes.com/espanol/internacional/articulo/2024-09-03/los-condones-no-son-confiables-en-el-1er-programa-de-educacion-sexual-del-paraguay-catolico ✓
- https://somosgay.org/news/pages ✓ (168 pages of news; sampled first page)
- https://www.hoy.com.py/tecnologia/lanzan-primera-aplicacion-gay-del-paraguay ✓ (Equis app)
- https://www.abc.com.py/nacionales/2023/11/20/lanzan-campana-del-dia-de-la-respuesta-al-vih-yo-amo-prep-yo-amo-mas-seguro/ ✓
- https://www.abc.com.py/sexualidad/2025/02/13/conoce-la-profilaxis-pre-exposicion-prep-una-pastilla-para-la-prevencion-del-vih/ ✓
- https://www.abc.com.py/nacionales/2023/12/01/instan-a-prevenir-vih-con-pildoras-prep-en-el-dia-mundial-de-respuesta-al-vihsida/ ✓

### Direct curl fetches

- https://www.somosgay.org/ (binary gzip — needed Next.js rendering) → extracted nav + footer from 404 leak
- https://www.somosgay.org/about → ✓ full About page text
- https://www.somosgay.org/robots.txt → no Disallow rules
- https://www.somosgay.org/sitemap.xml → 404 (no sitemap)

---

## Workstream B — comparable clinic sites

### Direct fetches (web_extract)

- https://gaycenter.org/ ✓ (thin, mostly nav)
- https://www.lgbtcenters.org/ (CenterLink) ✓
- https://fenwayhealth.org/ ✓
- https://www.lalgbtcenter.org/ ✓ (LA LGBT Center, gold standard)
- https://www.callen-lorde.org/ ✓
- https://www.whitman-walker.org/ ✓ (DC, closest analog to Kunu'u)

### Bonus

- https://www.diariocolatino.com/dike-inaugura-centro-comunitario-y-espacio-seguro-a-poblacion-lgbt/ — DIKÉ El Salvador (trans health clinic, Dr. Mendizábal — closest LATAM analog)

---

## URL sources by topic

See [`source-map.md`](source-map.md) for the deduplicated canonical list.

---

## Open research questions

See [`../00_brief/what-we-know-vs-dont.md`](../00_brief/what-we-know-vs-dont.md) for the full gap list. Highlights:

- **[VERIFY]** Cazal's current formal role 2026
- **[VERIFY]** Whether "AMI" exists as a separate app from Equis
- **[VERIFY]** Whether the youth shelter is still active
- **[VERIFY]** Actual annual budget + clinic patient counts
- **[VERIFY]** Whether Equis app is still maintained
- **[VERIFY]** Full list of co-founders + board members

---

## Notes for next session

- Brave Search rate limit ~3-4 429s per session — budget accordingly, switch to web_extract when URL is known
- The current site is JS-rendered Next.js static export; curl alone gives mostly shell HTML
- ABC Color, Última Hora, Diario HOY are the best local press sources
- amfAR, Washington Blade, The Advocate are the best international LGBTQ+ press sources
- The org's own /about page is the single best one-stop identity source — start there every session
- News index at /news/pages goes back 168 pages — material for trend analysis if needed