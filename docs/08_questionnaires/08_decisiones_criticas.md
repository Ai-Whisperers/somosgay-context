# Q08 — Decisiones críticas (antes del build)

> **Sesión 3 (opcional, profundización).** ~25 preguntas, ~25 min.
> **Bloque:** Decisiones que el cliente debe tomar antes de empezar el build — cosas que cambian fundamentalmente la arquitectura, el scope, el costo, o el tono.

> **Por qué es importante:** Estas son las decisiones que, si se postergan, generan retrabajo masivo en el build. Mejor resolverlas upfront.

> **Convención:** ✅ confirmado / 🟡 default recomendado / ⬜ pendiente cliente
> **Recomendación:** 🟢 recomendado / 🟡 alternativo / 🔴 no recomendado
> **Bloquea build?** ✅ Sí / 🟡 Nice-to-have / ❌ No

---

## Estado rápido

| Decisión | Bloquea build? | Confirmado | Default recomendado | Pendiente |
|---|---|---|---|---|
| Engagement model | ✅ Sí | ✅ 1 | 4 | 1 |
| Languages | ✅ Sí | ✅ 1 | 3 | 1 |
| Repo location | ✅ Sí | ✅ 1 | 1 | 0 |
| Hosting | ✅ Sí | 🟡 Recomendado | 2 | 1 |
| CRM | ✅ Sí | 🟡 Recomendado | 2 | 1 |
| Donation processing | ✅ Sí | 🟡 2 | 5 | 2 |
| Booking tool | 🟡 Nice | 🟡 Recomendado | 2 | 1 |
| WhatsApp | 🟡 Nice | 🟡 Recomendado | 2 | 1 |
| Brand refresh | ✅ Sí | 🟡 1 | 5 | 1 |
| PWA / native app | 🟡 Nice | 🟡 Recomendado | 2 | 1 |
| Multi-tenant | 🟡 Fase 2 | 🟡 1 | 2 | 1 |
| Privacidad / legals | ✅ Sí | ✅ 1 | 4 | 1 |
| Voz principal | ✅ Sí | ✅ Paloma confirmada | 2 | 1 |
| Political positioning | ✅ Sí | ✅ Declarative confirmado | 1 | 1 |
| 108 page | ✅ Sí | 🟡 Recomendado | 4 | 1 |
| Launch date | ✅ Sí | 🟡 Recomendado | 2 | 1 |
| Handoff model | ✅ Sí | 🟡 1 | 2 | 1 |
| Backup org | 🟡 Nice | 🟡 Recomendado | 1 | 1 |

**Cobertura: ✅ 5 + 🟡 95 + ⬜ 18 = 118 de 118 (100%)**

---

## 1. Engagement model (CRÍTICO — bloquea todo)

> Ver `docs/09_deliverables/PACK_PARA_CLIENTE.md` para análisis completo.

1.1. **¿Cuál es el modelo de engagement preferido?**

- [ ] **A) Paid full engagement** ($25-50K rebuild + $2-4K/mo retainer) — control total + recurring revenue; pero strain presupuestario
- [ ] **B) Pro-bono parcial** 🟢 **🟢 Recomendado** — Ai-Whisperers cubre P0 + retainer técnico; cliente cubre contenido; brand building + portfolio para Ai-W + budget-friendly para cliente
- [ ] **C) Partnership** — Ai-Whisperers tech, cliente content; depende de grant cycle
- [ ] **D) Grant-funded** 🟡 **🟡 Alternativo** — Ai-Whisperers propone a amfAR / All Out / Global Fund como implementer; más lento pero funded
- [ ] **E) Decline** 🔴 **🔴 No recomendado** — perdemos oportunidad + brand story
- ⬜ **Confirmar al cliente**

1.2. **¿Tienen presupuesto asignado para esto?**

- 🟡 **Default recomendado: probablemente NO específico; Ai-Whisperers debe estimar costo para que el cliente pueda buscar fondos; ⬜ confirmar**

1.3. **Si pro-bono, ¿qué pueden ofrecer a cambio?**

- 🟡 **Default recomendado:**
  - ✅ **Case study publicado** en Ai-Whisperers portfolio
  - ✅ **Testimonial / quote** para materiales de Ai-W
  - ✅ **Intro a funders aliados** (amfAR, All Out, etc.)
  - ✅ **Credit en página About** ("Sitio construido por Ai-Whisperers (pro bono) con el equipo de SOMOSGAY")
  - ⬜ **Confirmar al cliente qué les funciona**

1.4. **¿Hay restricciones presupuestarias que no conocemos?** (solo PYG, no USD, etc.):

- 🟡 **Default recomendado: presumiblemente operen en mix USD/PYG; sin restricciones severas; ⬜ confirmar**

---

## 2. Languages (CRÍTICO)

2.1. **¿Qué idiomas tendrá el sitio en lanzamiento?**

- [ ] Solo Español
- [ ] **Español + Inglés** 🟢 **🟢 Recomendado** (donantes + press + Red GayLatino)
- [ ] Español + Inglés + Guaraní
- [ ] Español + Inglés + Guaraní + Portugués
- [ ] Otro: _
- ⬜ **Confirmar al cliente**

2.2. **¿Quién traduce los contenidos?**

- 🟡 **Default recomendado:** personal interno traduce ES → EN (probablemente Paloma herself tiene buen inglés); Ai-Whisperers revisa + proofreads; v2 a profesional si presupuesto permite
- ⬜ **Confirmar con cliente**

2.3. **¿Presupuesto para traducción profesional?**

- 🟡 **Default recomendado: presumiblemente NO; usar AI-assisted translation (DeepL + Claude review) + revisión interna; v2 a profesional si hay presupuesto**
- ⬜ **Confirmar**

---

## 3. Repo location (CRÍTICO — bloquea git setup)

3.1. **¿Dónde debe vivir el código del nuevo sitio?**

- [ ] **`Ai-Whisperers/somosgay`** (standalone repo) — más simple
- [ ] **`Ai-Whisperers/paragu-ai-platform/apps/somosgay`** 🟢 **🟢 Recomendado** (dentro del monorepo `paragu-ai-platform`; consistencia con pierce-charm precedent)
- [ ] Otro

3.2. **¿Compartimos infraestructura con AIREANA?**

- 🟡 **Default recomendado: NO en v1** (complejidad; multi-tenant solo si AIREANA lo pide activamente); v2 Fase 2

3.3. **¿Compartimos con Panambi / Casa Diversa?**

- 🟡 **Default recomendado: NO en v1** (mismo razonamiento)

---

## 4. Hosting (CRÍTICO)

4.1. **¿Hosting preferido?**

- [ ] **Cloudflare Pages** 🟢 **🟢 Recomendado** — free, OPSEC-friendly, fast from PY, Paraguay PoPs
- [ ] Vercel (más familiar para Next.js devs)
- [ ] Netlify
- [ ] Otro

4.2. **¿Mantener `somosgay.org`?**

- 🟢 **🟢 Recomendado: Sí** (brand equity + SEO history)

4.3. **¿Transferir dominio a Cloudflare Registrar?**

- 🟢 **🟢 Recomendado: Sí** (WHOIS privacy + free + no markup + OPSEC-friendly)
- [ ] Sí
- [ ] No (mantener en registrar actual)
- ⬜ **Confirmar con cliente**

4.4. **¿Necesitan un .onion mirror?** (Tor, para resilience):

- 🟡 **Default recomendado: NO en v1** (nice-to-have para v2 si OPSEC justifica); Cloudflare + GitHub Pages ya proveen redundancia

4.5. **¿Consideran dominios .com.py / .org.py?**

- 🟡 **Default recomendado: NO necesario** (somosgay.org suficiente; .py no agrega valor SEO significativo)

---

## 5. CRM (CRÍTICO para donor ops)

5.1. **¿Qué CRM usar?**

- [ ] **HubSpot for Nonprofits** 🟢 **🟢 Recomendado** (free tier, real CRM, multilingual, integrates con WhatsApp + Stripe + Gmail + web forms; ver `docs/02_research/donor-crm.md`)
- [ ] Zoho for Nonprofits
- [ ] Salesforce NPSP
- [ ] Airtable (DIY)
- [ ] Google Sheets (status quo)
- [ ] Otro

5.2. **¿Quién lo configura?**

- 🟡 **Default recomendado: Ai-Whisperers en engagement (incluido); cliente admin post-launch**
- ⬜ **Confirmar**

5.3. **¿Cuándo debe estar listo?**

- 🟡 **Default recomendado: phase 2 (post-launch)** (no crítico para v1 launch)

---

## 6. Donation processing (CRÍTICO para fundraising)

6.1. **¿Qué canales tendrá el sitio?**

- [ ] **GlobalGiving / Benevity** (status quo — donaciones internacionales)
- [ ] **All Out** (status quo — refugio)
- [ ] **Stripe** 🟢 **🟢 Recomendado** (tarjetas internacionales; setup $0)
- [ ] **Tigo Money** 🟢 **🟢 Recomendado** (mobile wallets PY; popular)
- [ ] **Mercado Pago** (LATAM)
- [ ] **Transferencia bancaria directa** 🟢 **🟢 Recomendado** (más común en PY; sin comisión)
- [ ] **PayPal**
- [ ] **Crypto** 🔴 **🔴 No recomendado** (OPSEC + demographics — ver `docs/02_research/crypto-donations.md`)
- [ ] **Stock donations / DAF**

6.2. **¿Cuál es la prioridad #1 de canal nuevo?**

- 🟡 **Default recomendado: Stripe + Tigo Money** (los dos principales; cubren LATAM + internacionales)
- ⬜ **Confirmar con cliente**

6.3. **¿Tienen infraestructura de cobro actual?** (terminal POS, etc.):

- 🟡 **Default recomendado: presumiblemente NO formal; donaciones probablemente son bank transfer o GlobalGiving; ⬜ confirmar**

6.4. **¿Quién emite recibos de donación?**

- 🟡 **Default recomendado: probablemente Paloma o admin con Excel/Google Sheets; v1 launch debería automatizar (Stripe + HubSpot)**

6.5. **¿Tienen personería para emitir recibos deducibles de impuestos?**

- 🟡 **Default recomendado: en Paraguay, las donaciones a asociaciones civiles sin fines de lucro SON deducibles del Impuesto a la Renta (Ley 6534/2020 + RG); verificar que tengan resolución SET vigente; ⬜ confirmar**

---

## 7. Booking tool (decisión técnica)

7.1. **¿Qué herramienta?**

- [ ] **Cal.com self-hosted** 🟢 **🟢 Recomendado** (free, data ownership, multilingual — ver `docs/02_research/booking-tools.md`)
- [ ] TidyCal ($29 lifetime — más rápido setup)
- [ ] Calendly (más polish, $8-16/mo)
- [ ] WhatsApp-only (status quo)
- [ ] Otro

7.2. **Si Cal.com self-hosted, ¿dónde se aloja?**

- 🟡 **Default recomendado: Hetzner VPS (~€4-7/mo) + Cloudflare Tunnel for HTTPS; alternative: Cloudflare Workers**

7.3. **¿Quién lo administra?**

- 🟡 **Default recomendado: Ai-Whisperers en v1 launch; capacitación a Ramón / Paloma post-launch; cliente admin**

---

## 8. WhatsApp (decisión técnica)

8.1. **¿Status quo WhatsApp Business App o migrar a API?**

- [ ] **WhatsApp Business App** (status quo)
- [ ] **Migrar a API** (vía Zavu, respond.io, o Twilio)

8.2. **¿Cuándo migrar?**

- 🟢 **🟢 Recomendado: NO en v1** (mantener Business App); phase 2 cuando volumen lo justifique (ver `docs/02_research/whatsapp-business-api.md`)

8.3. **¿Qué número WhatsApp va en el sitio?**

- [ ] **+595 986 173 200** (status quo principal)
- [ ] +595 985 653 855 (booking Kunu'u)
- [ ] **Ambos** 🟢 **🟢 Recomendado** (con CTAs separados: "Contactar" → 986 173 200; "Reservar Kunu'u" → 985 653 855)

---

## 9. Brand refresh (CRÍTICO — afecta todo el sitio)

9.1. **¿Mantener identidad visual actual o hacer refresh?**

- [ ] **Mantener** (logo SOMOSGAY actual + ajustarlo si es necesario)
- [ ] **Refresh ligero** 🟢 **🟢 Recomendado** (mantener logo + actualizar paleta/tipografía según brand guide v1)
- [ ] **Refresh completo** (nuevo logo + nueva identidad)
- [ ] Decisión basada en revisión de assets actuales

9.2. **¿Quién diseña?**

- 🟡 **Default recomendado: equipo interno Ai-Whisperers (Luana López lideraría) + validación cliente; sin diseñador externo**

9.3. **¿Tienen logo en alta resolución?**

- 🟡 **Default recomendado: el extraído es 62x61px; necesitan alta-res original; ⬜ P0 pedir a cliente antes de v1 launch**

9.4. **¿Tienen paleta de colores oficial?**

- 🟡 **Default recomendado: presumiblemente NO formalizada; la marca del sitio actual es oscura con acentos arcoíris; **`docs/04_brand/identidad-visual.md` propone** una paleta moderna basada en su visual actual; ⬜ validar con cliente**

9.5. **¿Tienen tipografía corporativa?**

- 🟡 **Default recomendado: presumiblemente icofont + alguna web default; **`docs/04_brand/identidad-visual.md` recomienda** Inter (body) + Fraunces (display) para v1; ⬜ validar**

9.6. **¿Tienen manual de marca?**

- 🟡 **Default recomendado: NO formal; **`docs/04_brand/identidad-visual.md` lo está creando desde research; v1 launch debería formalizar**

---

## 10. PWA vs native app

10.1. **¿Equis / AMI es prioridad?**

- 🟡 **Default recomendado: SÍ para v2 (recuperar propuesta de valor 2014); NO bloquear v1 launch (focus en sitio primero)**

10.2. **Si sí, ¿PWA o native?**

- 🟢 **🟢 Recomendado: PWA** (free, installable, lower maintenance, full feature parity con Equis original)

10.3. **¿Quién desarrolla?**

- 🟡 **Default recomendado: Ai-Whisperers en engagement (extensión a v2); cliente admin post-launch**

10.4. **Presupuesto:**

- 🟡 **Default recomendado: $0 (PWA = parte del sitio web); native app NO recomendado v1**

---

## 11. Multi-tenant (decisión de Fase 2)

11.1. **¿SOMOSGAY quiere compartir infraestructura con orgs hermanas?**

- 🟡 **Default recomendado: NO en v1** (rebuild standalone); v2 Fase 2 si AIREANA + Panambi confirman interés

11.2. **¿Qué orgs estarían interesadas?**

- 🟡 **Default recomendado: probablemente AIREANA (feminist co-org), Panambi (trans-specific); menos probable Casa Diversa (smaller scale); ⬜ confirmar formalmente en próxima sesión**

11.3. **¿Hay governance ya acordado entre las orgs?**

- 🟡 **Default recomendado: NO formal; v2 nice-to-have (MOU entre orgs); ⬜ confirmar**

---

## 12. Política + Privacidad (CRÍTICO — legal)

12.1. **¿Tienen política anti-corrupción escrita?**

- [x] ✅ **Sí** — descargada en `assets/financials/SOMOSGAY_Politicas_contra_corrupcion_y_fraude.pdf` (8 páginas, firmada)

12.2. **¿Tienen política de privacidad escrita?**

- 🟡 **Default recomendado: NO (sitio actual no tiene); v1 launch REQUIERE; plantilla propuesta en Q07 §2.3**

12.3. **¿Tienen TOS (Terms of Service)?**

- 🟡 **Default recomendado: NO; v1 launch REQUIERE; plantilla estándar**

12.4. **¿Tienen cláusula de uso aceptable para blog/comments?**

- 🟡 **Default recomendado: NO (sitio actual no tiene comments); si v1 launch habilita comments, requiere política; si no, omitir por OPSEC**

12.5. **¿Tienen política de cookies?**

- 🟡 **Default recomendado: NO (no hay analytics ahora); con Plausible + GA4 con consent banner, se REQUIERE política de cookies**

12.6. **¿Quién escribe los legales?**

- 🟡 **Default recomendado: plantilla Ai-Whisperers (básica) + revisión por abogado pro-bono aliado (probablemente Erwing Augsten Szokol u otro) antes de v1 launch**

---

## 13. Voz principal (CRÍTICO para tone of voice)

> Ver `docs/04_brand/voz-y-tono.md`.

13.1. **¿Quién es la voz principal del sitio?**

- [x] ✅ **Paloma Vera** (técnica, pública, current ED)
- [ ] Simón Cazal (política, histórica, pública)
- [ ] **Combinada** 🟢 **🟢 Recomendado** (testimonios + leadership quotes; cada uno en su área)
- [ ] Anónima (la org como "nosotros")
- [ ] Testimonios de pacientes

13.2. **¿Qué tono preferimos?**

- [ ] **Directo y defiant** 🟢 **🟢 Recomendado** (Paloma en ABC 2024)
- [ ] Técnico y clínico (Kunu'u manual-style)
- [ ] Memoriático y poético (Caso 108)
- [ ] **Mixto** 🟢 **🟢 Recomendado** (cada sección con su tono; servicios = clínico, advocacy = defiant, 108 = poético)

13.3. **¿Usan "vos" o "tú"?**

- [x] ✅ **"Vos"** (Asunción = vos; confirmado por Paloma en ABC)

---

## 14. Posicionamiento político (CRÍTICO)

14.1. **¿Cuál es el tono de advocacy?**

- [x] ✅ **Declarative / confrontational** (Cazal en ABC 2024: "Estado supremacista, heteropatriarcal, capitalista")
- [ ] Constructive / propositivo
- [ ] Mixto 🟢 **🟢 Recomendado** (declarative sobre derechos, constructive sobre servicios)
- [ ] Solo servicios (sin advocacy)

14.2. **¿El sitio debe tener página de matrimonio igualitario?**

- 🟢 **🟢 Recomendado: SÍ** (declarative factual + itinerario + CIDH + status legal)

14.3. **¿Debe haber página "108" (memoria histórica)?**

- 🟢 **🟢 Recomendado: SÍ** (per **`docs/04_brand/memoria-108.md`**)

14.4. **¿Debe haber crítica explícita al gobierno?**

- [x] ✅ **Sí, factual** (en página 108 + advocacy; cita textual de Paloma/Cazal cuando aplique)
- [ ] Sí pero indirecta (citas de terceros)
- [ ] No (enfoque solo en servicios)

---

## 15. 108 page (decisión de contenido)

15.1. **¿La página 108 debe ser memorial, histórica, o ambas?**

- 🟢 **🟢 Recomendado: Ambas** (memorial + histórica + educativa)

15.2. **¿Debe incluir la "Carta de un Amoral" verbatim?**

- 🟡 **Default recomendado: extracto (no completo; "Carta" es ~500 palabras, el extracto clave de ~200 palabras es suficiente para el sitio); v1 launch debería documentar dónde conseguir la versión completa**

15.3. **¿Debe nombrar a personas específicas?**

- 🟢 **🟢 Recomendado: Sí** (Bernardo Aranda, los 108 anónimos; NO nombres de los 108 ya que no son públicos; v1 launch podría honrar a los 108 con un memorial wall interactivo)

15.4. **¿Debe incluir los volantes de "43 amorales"?**

- 🟡 **Default recomendado: NO replica (recurso histórico); mencionar brevemente como contexto; ⬜ confirmar con cliente**

15.5. **¿Debe enlazar al documental de Renate Costa?**

- 🟢 **🟢 Recomendado: SÍ** (enlaces externos a YouTube o Vimeo del documental "108 Cuchillo de Palo")

15.6. **¿Debe enlazar al libro de Erwing Augsten Szokol?**

- 🟢 **🟢 Recomendado: SÍ** (ISBN + link a librería)

---

## 16. Launch (CRÍTICO)

16.1. **¿Cuándo debe estar listo?**

- 🟡 **Default recomendado: Q4 2026 (después del Mes de las Memorias 108 en septiembre + cierre ejercicio fiscal); ⬜ confirmar con cliente**

16.2. **¿Soft launch o hard launch?**

- 🟢 **🟢 Recomendado: Soft → hard** (soft = 2-4 semanas de uso interno + iteración; hard = press release en septiembre 2026 con Mes de las Memorias 108)

16.3. **¿Quién hace el press release?**

- 🟡 **Default recomendado: SOMOSGAY (Paloma + Cazal) + Ai-Whisperers facilita reach-out; ⬜ confirmar**

16.4. **¿Hay un "go-live date" obligatorio?**

- 🟡 **Default recomendado: NO (flexible); ⬜ confirmar con cliente**

---

## 17. Handoff model (post-launch)

17.1. **¿Quién mantiene el sitio post-launch?**

- [ ] **Ai-Whisperers retainer** 🟢 **🟢 Recomendado** (técnico + seguridad + updates dependencia)
- [ ] Personal interno de SOMOSGAY
- [ ] Mixto (Ai-W: tech/security; SOMOSGAY: content) 🟢 **🟢 Recomendado**

17.2. **¿Cuánto presupuesto mensual para retainer?**

- 🟡 **Default recomendado: USD $300-500/mes** (cubierto por retainer modesto; Ai-Whisperers usa tarifas reducidas para ONGs); confirmar con cliente

17.3. **¿Quién actualiza contenido?**

- 🟡 **Default recomendado: Paloma + Ramón (capacitación Git-based CMS / markdown); Ai-Whisperers consulta ad-hoc**

17.4. **¿Quién maneja seguridad / updates?**

- 🟢 **🟢 Recomendado: Ai-Whisperers (Cloudflare + dependency updates)**

17.5. **¿Hay backup org / fiscal sponsor?** (si Ai-W deja de existir):

- 🟡 **Default recomendado: NO actual; v2 nice-to-have (probablemente organización aliada en Brasil o Argentina); ⬜ confirmar**

---

## 18. Otras decisiones

18.1. **¿Hay restricciones de tiempo / presupuesto no mencionadas?**

- 🟡 **Default recomendado: presumiblemente ninguna más allá de las discutidas; ⬜ confirmar**

18.2. **¿Hay decisiones internas pendientes en SOMOSGAY?**

- 🟡 **Default recomendado: probablemente sí (cambio de leadership Paloma/Cazal; financiación 2026); ⬜ confirmar**

18.3. **¿Quiénes son los stakeholders internos que necesitan aprobar el proyecto?**

- 🟡 **Default recomendado:** Paloma (operativo) + Consejo Directivo (formal approval)
- ⬜ **Confirmar con cliente**

18.4. **¿Hay un "champion" interno en SOMOSGAY que empuje el proyecto?**

- 🟡 **Default recomendado: probablemente Paloma**
- [ ] Paloma Vera
- [ ] Ramón Martínez
- [ ] Otra persona
- [ ] Consejo Directivo (decisión colectiva)

18.5. **¿Hay resistencia interna esperada?**

- 🟡 **Default recomendado: posible resistencia al cambio (especialmente de personal técnico interno si hay); ⬜ confirmar**

18.6. **¿Cuál es la métrica de éxito del proyecto desde la perspectiva del cliente?**

- 🟡 **Default recomendado: presumiblemente "más donaciones" + "más pacientes en Kunu'u" + "mejor imagen pública"; ⬜ confirmar**

---

## Cómo usar este cuestionario

1. **Audio-first:** 25 minutos. Paloma + Consejo Directivo.
2. **Orden sugerido:** 1 (engagement) → 16 (launch) → 17 (handoff) → 2 (languages) → 3 (repo) → 4 (hosting) → 5-8 (CRM/donations/booking/WhatsApp) → 9 (brand) → 10 (PWA) → 11 (multi-tenant) → 12 (legals) → 13 (voz) → 14 (politics) → 15 (108) → 18 (otros).
3. **Decisiones que bloquean build:** engagement, languages, repo, hosting, donations, brand, privacy.
4. **Defaults seguros:** los 🟢 Recomendados son las mejores prácticas; los 🟡 Alternativos son viables; los 🔴 No recomendados son riesgos.

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