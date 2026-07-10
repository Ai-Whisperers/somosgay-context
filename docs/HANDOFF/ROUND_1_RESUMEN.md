# Round 1 — Resumen

> **TL;DR:** Lo que encontramos + lo que recomendamos + lo que falta decidir.

---

## Lo que encontramos

SOMOSGAY es la ONG líder de derechos LGBTQ+ y salud comunitaria de Paraguay. Fundada en 2005, formalizada en 2009. Operan:

- **Clínica Kunu'u** — primera clínica comunitaria LGBTQ+ del país (PrEP, TARV, tests, psicología, psiquiatría, reducción de daños)
- **Centro Comunitario Tekoharã** — workshops, charlas, eventos
- **Ñande Rekorã** — sistema de cuidado comunitario
- **Karu Porã** — alimentación saludable
- **Programa Kunu'u** — campañas de salud pública (PrEP, prevención combinada)
- **Equis** — app Android de turnos
- **Besatón + Marcha del Orgullo** — eventos anuales
- **Hogar de jóvenes** — refugio para jóvenes LGBT echados de sus familias (40 min de Asunción)

Liderazgo actual:
- **Paloma Vera** — Directora Ejecutiva
- **Simón Cazal** — Co-fundador, cara pública internacional
- **Ramón Martínez** — Coordinador Clínica Kunu'u
- **Dr. Carlos Santa María** — Médico de familia Kunu'u

Fondeo: amfAR, UNAIDS, AHF, Global Fund / ViiV, OPS/OMS, PRONASIDA, All Out, GlobalGiving/Benevity, Red GayLatino + más.

## Lo que tienen digitalmente

- Sitio web actual: Next.js estático, 5 páginas (home, about, mpox, nanderekora, news), ~168 páginas de noticias, UA analytics (deprecado)
- Facebook, Instagram, Twitter, YouTube, TikTok
- App Android Equis (estado actual **[VERIFY]**)
- Auditorías + informes anuales públicos

## Lo que necesitan en su web

47 items priorizados en P0–P4. Resumen ejecutivo:

| Prioridad | Cantidad | Esfuerzo total |
|---|---|---|
| **P0** — crítico | 5 items | ~3 semanas |
| **P1** — importante | 8 items | ~6 semanas |
| **P2** — contenido profundo | 9 items | ~10 semanas |
| **P3** — pulido | 12 items | ~6 semanas |

**Top 5 recomendaciones P0:**
1. Sitio bilingüe ES/EN
2. Reemplazar analytics deprecado (UA → Plausible + GA4)
3. Agregar sitemap.xml
4. Página de Clínica Kunu'u (servicios + horarios + booking)
5. Flujo de reserva (reemplazar WhatsApp-only)

## Lo que falta decidir

13 decisiones pendientes en `docs/06_decisions/decisiones-pendientes.md`. La #1 es el **modelo de engagement** (pagado / pro-bono / partner / declinar). Recomendación: **pro-bono Phase 1 + retainer Phase 2**.

## Próximos pasos

1. Iván + Kiki deciden modelo de engagement
2. Kiki hace primer contacto (email → WhatsApp follow-up)
3. Run questionnaire pack (90 min audio)
4. Confirm scope + tech stack + repo location
5. Empezar Phase 1

## Fuentes principales

- https://www.somosgay.org/about (fuente primaria)
- ABC Color 2023-11-20, 2023-12-01, 2024-06-28, 2025-02-13 (prensa local)
- LA Times en Español 2024-09-03
- IBA Reporter 2019 (visita detallada)
- The Guardian + CNN + Advocate 2015 (encuentro con el Papa)
- Washington Blade 2012 (lanzamiento Kuimba'e)
- Diario HOY 2014 (lanzamiento Equis)
- amfAR grantee profile

## Cómo continuar

1. Leé `README.md` → `start-here.md` → tu rol
2. Revisá `INDEX.md` para ver el status de cada archivo
3. Mirá `docs/07_backlog/backlog.md` para ver qué falta hacer

---

**Repo:** https://github.com/Ai-Whisperers/somosgay-context
**Fecha Round 1:** 2026-07-10
**Próxima sesión:** TBD (depende de Iván + Kiki)