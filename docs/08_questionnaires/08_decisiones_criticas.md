# Q08 — Decisiones críticas (antes del build)

> **Sesión 3 (opcional, profundización).** ~25 preguntas, ~25 min.
> **Bloque:** Decisiones que el cliente debe tomar antes de empezar el build — cosas que cambian fundamentalmente la arquitectura, el scope, el costo, o el tono.

> **Por qué es importante:** Estas son las decisiones que, si se postergan, generan retrabajo masivo en el build. Mejor resolverlas upfront.

---

## Estado rápido

| Decisión | Bloquea build? | Status |
|---|---|---|
| Engagement model | ✅ Sí | ⬜ Pendiente |
| Languages (ES + EN + Guaraní + Portuguese) | ✅ Sí | 🟡 Parcial |
| Repo location (Ai-Whisperers/somosgay vs paragu-ai-platform/apps/) | ✅ Sí | ⬜ Pendiente |
| Hosting (Cloudflare Pages vs Vercel vs other) | ✅ Sí | 🟡 Recomendado |
| CRM (HubSpot vs Zoho vs Bitrix vs Airtable) | ✅ Sí | 🟡 Recomendado |
| Donation processing (GlobalGiving only vs multi-channel) | ✅ Sí | ⬜ Pendiente |
| Booking tool (Cal.com vs TidyCal vs Calendly) | 🟡 Nice | 🟡 Recomendado |
| WhatsApp (Business App vs Zavu API vs respond.io) | 🟡 Nice | 🟡 Recomendado |
| Brand refresh (sí / no) | ✅ Sí | ⬜ Pendiente |
| PWA / native app | 🟡 Nice | 🟡 Recomendado PWA |
| Multi-tenant (SOMOSGAY alone vs +AIREANA/Panambi) | 🟡 Nice | 🟡 Fase 2 |
| Privacy policy template | ✅ Sí | 🟡 Plantilla disponible |
| Spanish voice (Paloma vs Cazal vs combined) | ✅ Sí | 🟡 Paloma = primary |
| Political positioning (declarative vs ambiguous) | ✅ Sí | 🟡 Declarative per Cazal quotes |
| 108 page (memoriam or contextual or not) | 🟡 Important | 🟡 Recomendado sí |
| Launch date / soft vs hard | ✅ Sí | ⬜ Pendiente |
| Handoff model (Ai-W retainer vs client-owned) | ✅ Sí | ⬜ Pendiente |
| Backup org / fiscal sponsor (ARG or BR) | 🟡 Nice | ⬜ Pendiente |

---

## 1. Engagement model (CRÍTICO — bloquea todo lo demás)

> Ver `docs/09_deliverables/PACK_PARA_CLIENTE.md` para análisis completo. Resumen:

1.1. **¿Cuál es el modelo de engagement preferido?**
- [ ] **Paid full engagement** ($25-50K rebuild + $2-4K/mo retainer)
- [ ] **Pro-bono parcial** (Ai-Whisperers cubre P0 + retainer técnico, cliente cubre contenido)
- [ ] **Partnership** (Ai-Whisperers provee tech, cliente provee contenido + own ops)
- [ ] **Grant-funded** (Ai-Whisperers propone a amfAR / All Out / Global Fund como implementer)
- [ ] **Decline**

1.2. **¿Tienen presupuesto asignado para esto?**
_[respuesta]_

1.3. **Si pro-bono, ¿qué pueden ofrecer a cambio?** (visibility, case study, testimonial, intro a funders):
_[respuesta]_

1.4. **¿Hay restricciones presupuestarias que no conocemos?** (solo PYG, no USD, etc.):
_[respuesta]_

---

## 2. Languages (CRÍTICO)

> Ver `docs/08_questionnaires/05_audiencia_y_idiomas.md` Q03 para detalles.

2.1. **¿Qué idiomas tendrá el sitio en lanzamiento?**
- [ ] Solo Español
- [ ] **Español + Inglés** (recomendado)
- [ ] Español + Inglés + Guaraní
- [ ] Español + Inglés + Guaraní + Portugués
- [ ] Otro

2.2. **¿Quién traduce los contenidos?**
- [ ] Personal interno
- [ ] Ai-Whisperers (incluido en engagement)
- [ ] Traductor profesional externo
- [ ] Mixto

2.3. **¿Presupuesto para traducción profesional?**
_[respuesta]_

---

## 3. Repo location (CRÍTICO — bloquea git setup)

> Ver `docs/06_decisions/decisiones-pendientes.md` DP-2026-07-10-04.

3.1. **¿Dónde debe vivir el código del nuevo sitio?**
- [ ] **`Ai-Whisperers/somosgay`** (standalone repo) — más simple
- [ ] **`Ai-Whisperers/paragu-ai-platform/apps/somosgay`** (dentro del monorepo) — más reutilización, +complejidad
- [ ] Otro (fork, sub-org, etc.)

3.2. **¿Compartimos infraestructura con AIREANA?**
- [ ] Sí (multi-tenant) — Fase 2
- [ ] No (SOMOSGAY standalone) — más simple

3.3. **¿Compartimos con Panambi / Casa Diversa?**
- [ ] Sí
- [ ] No

---

## 4. Hosting (CRÍTICO)

> Ver `docs/02_research/hosting-domain.md`.

4.1. **¿Hosting preferido?**
- [ ] **Cloudflare Pages** (recomendado — free, OPSEC-friendly, fast from PY)
- [ ] Vercel (más familiar para Next.js devs)
- [ ] Netlify
- [ ] Otro

4.2. **¿Mantener `somosgay.org`?**
🟡 Recomendado SÍ (brand equity + SEO history)

4.3. **¿Transferir dominio a Cloudflare Registrar?**
- [ ] Sí (recomendado para OPSEC + WHOIS privacy)
- [ ] No (mantener en registrar actual)

4.4. **¿Necesitan un .onion mirror?** (Tor, para resilience):
- [ ] Sí (recomendado si OPSEC es alta)
- [ ] No (priorizar rendimiento sobre OPSEC)

4.5. **¿Consideran dominios .com.py / .org.py?**
- [ ] Sí (NIC.py ~7-8 USD/año)
- [ ] No (suficiente con .org)

---

## 5. CRM (CRÍTICO para donor ops)

> Ver `docs/02_research/donor-crm.md`.

5.1. **¿Qué CRM usar?**
- [ ] **HubSpot for Nonprofits** (free tier, recomendado)
- [ ] Zoho for Nonprofits
- [ ] Salesforce NPSP
- [ ] Airtable (DIY)
- [ ] Google Sheets (status quo)
- [ ] Otro

5.2. **¿Quién lo configura?**
- [ ] Personal interno
- [ ] Ai-Whisperers (incluido en engagement)
- [ ] Consultor externo

5.3. **¿Cuándo debe estar listo?**
- [ ] Antes del launch del sitio
- [ ] Después del launch (fase 2)

---

## 6. Donation processing (CRÍTICO para fundraising)

> Ver `docs/02_research/crypto-donations.md` + `docs/09_deliverables/PACK_PARA_CLIENTE.md`.

6.1. **¿Qué canales de donación tendrá el sitio?**
- [ ] **GlobalGiving / Benevity** (status quo — para donaciones internacionales)
- [ ] **All Out** (status quo — para refugio)
- [ ] **Stripe** (tarjetas internacionales)
- [ ] **Tigo Money** (PY mobile wallets)
- [ ] **Mercado Pago** (LATAM)
- [ ] **Transferencia bancaria directa**
- [ ] **PayPal**
- [ ] **Crypto** (NO recomendado v1)
- [ ] **Stock donations / DAF**

6.2. **¿Cuál es la prioridad #1 de canal nuevo?**
_[respuesta]_

6.3. **¿Tienen infraestructura de cobro actual?** (terminal POS, etc.):
_[respuesta]_

6.4. **¿Quién emite recibos de donación?**
_[respuesta]_

6.5. **¿Tienen personería para emitir recibos deducibles de impuestos?**
_[respuesta]_

---

## 7. Booking tool (decisión técnica)

> Ver `docs/02_research/booking-tools.md`.

7.1. **¿Qué herramienta de booking?**
- [ ] **Cal.com self-hosted** (recomendado — free, data ownership)
- [ ] TidyCal ($29 lifetime — más rápido setup)
- [ ] Calendly (más polish, $8-16/mo)
- [ ] WhatsApp-only (status quo)
- [ ] Otro

7.2. **Si Cal.com self-hosted, ¿dónde se aloja?**
- [ ] Hetzner VPS (~€4-7/mo)
- [ ] Cloudflare Pages (con Workers)
- [ ] DigitalOcean
- [ ] Otro

7.3. **¿Quién lo administra?**
- [ ] Paloma / Ramón (capacitación necesaria)
- [ ] Personal administrativo
- [ ] Ai-Whisperers (retener)

---

## 8. WhatsApp (decisión técnica)

> Ver `docs/02_research/whatsapp-business-api.md`.

8.1. **¿Status quo WhatsApp Business App o migrar a API?**
- [ ] **WhatsApp Business App** (status quo — mantener en fase 1)
- [ ] **Migrar a API** (vía Zavu, respond.io, o Twilio)
- [ ] Otro

8.2. **¿Cuándo migrar?**
- [ ] Fase 1 (inmediato)
- [ ] Fase 2 (post-launch)
- [ ] Solo si volumen lo justifica

8.3. **¿Qué número WhatsApp va en el sitio?**
- [ ] **+595 986 173 200** (status quo principal)
- [ ] +595 985 653 855 (booking Kunu'u)
- [ ] Ambos, con CTAs separados

---

## 9. Brand refresh (CRÍTICO — afecta todo el sitio)

9.1. **¿Mantener identidad visual actual o hacer refresh?**
- [ ] **Mantener** (logo SOMOSGAY actual + ajustarlo si es necesario)
- [ ] **Refresh ligero** (mantener logo + actualizar paleta/tipografía)
- [ ] **Refresh completo** (nuevo logo + nueva identidad)
- [ ] Decisión basada en revisión de assets actuales

9.2. **¿Quién diseña?**
- [ ] Luana López (Ai-Whisperers)
- [ ] Diseñador externo
- [ ] Personal interno con guía de Ai-Whisperers

9.3. **¿Tienen logo en alta resolución?**
🟡 Logo actual extraído es solo 62x61px (versión miniatura) — **necesitan original en alta res**

9.4. **¿Tienen paleta de colores oficial?**
❌ No documentada — **solicitar**

9.5. **¿Tienen tipografía corporativa?**
❌ No documentada — **solicitar**

9.6. **¿Tienen manual de marca?**
❌ No — **`docs/04_brand/identidad-visual.md` lo está creando desde research**

---

## 10. PWA vs native app

10.1. **¿Equis / AMI es prioridad?**
- [ ] Sí, alta (recuperar la propuesta de valor de 2014)
- [ ] No, baja (focus en sitio primero)
- [ ] No relevante (app es un proyecto separado)

10.2. **Si sí, ¿PWA o native?**
- [ ] **PWA** (recomendado — free, installable, lower maintenance)
- [ ] Native iOS + Android
- [ ] Híbrido (Capacitor, etc.)

10.3. **¿Quién desarrolla?**
- [ ] Ai-Whisperers
- [ ] Equipo interno
- [ ] Externo

10.4. **Presupuesto:**
_[respuesta]_

---

## 11. Multi-tenant (decisión de Fase 2)

> Ver `docs/02_research/multi-tenant-architecture.md`.

11.1. **¿SOMOSGAY quiere compartir infraestructura con orgs hermanas?**
- [ ] Sí — empezar Fase 2 con shared infrastructure
- [ ] No — standalone
- [ ] Decidir post-launch

11.2. **¿Qué orgs estarían interesadas?** (AIREANA, Panambi, Casa Diversa, otras):
_[respuesta]_

11.3. **¿Hay governance ya acordado entre las orgs?**
_[respuesta]_

---

## 12. Política + Privacidad (CRÍTICO — legal)

12.1. **¿Tienen política anti-corrupción escrita?**
✅ **Sí** — descargada en `assets/financials/SOMOSGAY_Politicas_contra_corrupcion_y_fraude.pdf`

12.2. **¿Tienen política de privacidad escrita?**
❌ No (sitio actual no tiene) — **necesario para launch**

12.3. **¿Tienen TOS (Terms of Service)?**
❌ No — **necesario para launch**

12.4. **¿Tienen cláusula de uso aceptable para blog/comments?**
❌ No

12.5. **¿Tienen política de cookies?**
❌ No (no hay analytics así que no aplica) — necesario si añaden Plausible/GA4

12.6. **¿Quién escribe los legales?**
- [ ] Abogado interno
- [ ] Abogado externo
- [ ] Ai-Whisperers (plantilla)
- [ ] Pro-bono

---

## 13. Voz principal (CRÍTICO para tone of voice)

> Ver `docs/04_brand/voz-y-tono.md`.

13.1. **¿Quién es la voz principal del sitio?**
- [ ] **Paloma Vera** (técnica, pública, current ED)
- [ ] Simón Cazal (política, histórica, pública)
- [ ] Combinada (testimonios + leadership quotes)
- [ ] Anónima (la org como "nosotros")
- [ ] Testimonios de pacientes

13.2. **¿Qué tono preferimos?**
- [ ] **Directo y defiant** (Paloma en ABC 2024)
- [ ] Técnico y clínico (Kunu'u manual-style)
- [ ] Memoriático y poético (Caso 108)
- [ ] Mixto (cada sección con su tono)

13.3. **¿Usan "vos" o "tú"?**
🟡 Asunción = vos — presumiblemente sí

---

## 14. Posicionamiento político (CRÍTICO)

14.1. **¿Cuál es el tono de advocacy?**
- [ ] **Declarative / confrontational** (Cazal en ABC 2024: "Estado supremacista, heteropatriarcal, capitalista")
- [ ] Constructive / propositivo
- [ ] Mixto (declarative sobre derechos, constructive sobre servicios)
- [ ] Solo servicios (sin advocacy)

14.2. **¿El sitio debe tener página de matrimonio igualitario?**
- [ ] Sí (recomendado)
- [ ] Sí pero sin confrontar directamente al gobierno
- [ ] No (solo servicios)

14.3. **¿Debe haber página "108" (memoria histórica)?**
- [ ] Sí (recomendado)
- [ ] Sí pero sin detalle gráfico
- [ ] No (riesgo político)

14.4. **¿Debe haber crítica explícita al gobierno?**
- [ ] Sí, factual
- [ ] Sí pero indirecta (citas de terceros)
- [ ] No (enfoque solo en servicios)

---

## 15. 108 page (decisión de contenido)

15.1. **¿La página 108 debe ser memorial, histórica, o ambas?**
- [ ] **Memorial** (conmemorativa, fechas, Bernardo Aranda, Carta de un Amoral)
- [ ] Histórica (académica)
- [ ] Ambas

15.2. **¿Debe incluir la "Carta de un Amoral" verbatim?**
- [ ] Sí (texto completo)
- [ ] Sí pero traducido
- [ ] Extracto
- [ ] No (riesgo legal)

15.3. **¿Debe nombrar a personas específicas?**
- [ ] Sí (Bernardo Aranda, los 108)
- [ ] Solo Bernardo Aranda (los 108 son víctimas sin nombre público)
- [ ] Solo anónimos

15.4. **¿Debe incluir los volantes de "43 amorales"?**
- [ ] Sí (replica histórica)
- [ ] No (replica potencialmente peligrosa)

15.5. **¿Debe enlazar al documental de Renate Costa?**
- [ ] Sí (recomendado)
- [ ] Sí pero con advertencia de contenido
- [ ] No

15.6. **¿Debe enlazar al libro de Erwing Augsten Szokol?**
- [ ] Sí

---

## 16. Launch (CRÍTICO)

16.1. **¿Cuándo debe estar listo el sitio?**
- [ ] ASAP (no hay fecha)
- [ ] Antes de [fecha]
- [ ] Antes de la próxima Marcha del Orgullo (junio)
- [ ] Antes del próximo Mes de las Memorias 108 (septiembre)
- [ ] Otro: _

16.2. **¿Soft launch o hard launch?**
- [ ] **Soft launch** (lanzamiento silencioso, iteración interna, comunicación gradual)
- [ ] Hard launch (evento + press release)
- [ ] Mixto (soft → press release → hard)

16.3. **¿Quién hace el press release?**
- [ ] Ai-Whisperers
- [ ] Comunicación interna de SOMOSGAY
- [ ] Mixto
- [ ] No se hace press release

16.4. **¿Hay un "go-live date" obligatorio?**
- [ ] Sí — fecha: _
- [ ] No — flexible

---

## 17. Handoff model (post-launch)

17.1. **¿Quién mantiene el sitio post-launch?**
- [ ] **Ai-Whisperers retainer** (técnico + seguridad)
- [ ] Personal interno de SOMOSGAY
- [ ] Mixto (Ai-W: tech/security; SOMOSGAY: content)

17.2. **¿Cuánto presupuesto mensual para retainer?**
_[respuesta]_

17.3. **¿Quién actualiza contenido?**
- [ ] Paloma / Ramón
- [ ] Personal administrativo dedicado
- [ ] Ai-Whisperers (caro)
- [ ] Mixto

17.4. **¿Quién maneja seguridad / updates?**
- [ ] Ai-Whisperers
- [ ] Personal técnico interno
- [ ] Externo

17.5. **¿Hay backup org / fiscal sponsor?** (si Ai-W deja de existir):
- [ ] Sí — _ (nombre)
- [ ] No
- [ ] Considerar (recomendable)

---

## 18. Otras decisiones

18.1. **¿Hay restricciones de tiempo / presupuesto no mencionadas?**
_[respuesta]_

18.2. **¿Hay decisiones internas pendientes en SOMOSGAY?**
_[respuesta]_

18.3. **¿Quiénes son los stakeholders internos que necesitan aprobar el proyecto?**
_[respuesta]_

18.4. **¿Hay un "champion" interno en SOMOSGAY que empuje el proyecto?**
- [ ] Paloma Vera
- [ ] Ramón Martínez
- [ ] Otra persona
- [ ] Consejo Directivo (decisión colectiva)

18.5. **¿Hay resistencia interna esperada?** (ej: alguien que se oponga al rebuild):
_[respuesta]_

18.6. **¿Cuál es la métrica de éxito del proyecto desde la perspectiva del cliente?**
_[respuesta]_

---

## Sources

- `docs/06_decisions/decisiones-pendientes.md` (13 decisiones pendientes)
- `docs/09_deliverables/PACK_PARA_CLIENTE.md` (engagement options)
- `docs/02_research/hosting-domain.md`
- `docs/02_research/booking-tools.md`
- `docs/02_research/whatsapp-business-api.md`
- `docs/02_research/donor-crm.md`
- `docs/02_research/multi-tenant-architecture.md`
- `docs/04_brand/identidad-visual.md`
- `docs/04_brand/memoria-108.md`