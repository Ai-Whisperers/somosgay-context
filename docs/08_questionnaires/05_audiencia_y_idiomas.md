# Q05 — Audiencias y languages

> **Sesión 2 de 2.** ~30 preguntas, ~25 min.
> **Bloque:** Quién visita el sitio hoy + quién quieren que visite + languages + accessibility.

> **Por qué es importante:** Determina el alcance del sitio (¿bilingüe ES+EN? ¿trilingüe ES+EN+Guaraní?), el diseño (mobile-first? desktop?), el SEO (keywords a target), y los flujos de donación/booking.

> **Convención:** ✅ confirmado / 🟡 default recomendado / ⬜ pendiente cliente
> **Recomendación:** 🟢 recomendado / 🟡 alternativo / 🔴 no recomendado

---

## Estado rápido

| Categoría | Confirmado | Default recomendado | Pendiente cliente |
|---|---|---|---|
| Visitantes actuales | ✅ 0 (UA deprecado) | 5 | 2 |
| Audiencias deseadas | ✅ 0 | 9 grupos + ranking | 2 |
| Languages / i18n | ✅ 1 | 7 | 1 |
| Accessibility | ✅ 0 | 5 | 0 |
| Cultural considerations | ✅ 1 | 6 | 1 |
| Datos post-launch | ✅ 0 | 5 | 0 |

**Cobertura total: ✅ 2 + 🟡 37 + ⬜ 6 = 45 de 45 (100%)**

---

## 1. Visitantes actuales del sitio

> **Importante:** el sitio actual tiene Universal Analytics (UA-202057705-1) que Google dejó de procesar el 1 de julio de 2023. No hay GA4 configurado. Por lo tanto, no tenemos datos reales desde hace ~3 años.

1.1. **Estimación de tráfico mensual:**

- 🟡 **Default recomendado:** 5,000-25,000 visitas/mes (basado en news index con 168 páginas + 39K Facebook likes + press frequency; consistente con ONG de este tamaño en LATAM); confirmar post-launch con Plausible

1.2. **Desglose geográfico (% por país):**

- 🟡 **Default recomendado:**
  - Paraguay (Asunción + Central + otros departamentos): ~75%
  - LATAM (AR, BR, CL, MX principalmente): ~15%
  - USA + Europa (diaspora Paraguaya + English-speaking press): ~8%
  - Otros: ~2%
- ⬜ **Confirmar post-launch con Plausible**

1.3. **Desglose por idioma del navegador:**

- 🟡 **Default recomendado:**
  - Español (es-PY, es-AR, es-MX, etc.): ~85%
  - Inglés: ~10%
  - Portugués: ~3%
  - Otros: ~2%

1.4. **Desglose por dispositivo:**

- 🟡 **Default recomendado:**
  - Mobile: ~85% (consistente con DataReportal 2024 dice 90% del tráfico internet de PY es mobile)
  - Desktop: ~12%
  - Tablet: ~3%

1.5. **Top fuentes de tráfico:**

- 🟡 **Default recomendado:**
  - Search orgánico (Google): ~35%
  - Social (Facebook + Instagram + TikTok): ~30%
  - Direct: ~20%
  - Referral (press mentions): ~10%
  - Otros: ~5%
- ⬜ **Confirmar post-launch con Plausible**

1.6. **Top páginas:**

- 🟡 **Default recomendado:**
  - / (home): ~25%
  - /about: ~20%
  - /news: ~15%
  - /mpox: ~10%
  - /nanderekora: ~8%
  - Otros: ~22%
- ⬜ **Confirmar post-launch con Plausible**

1.7. **¿Hay datos de Google Search Console?**

- 🟡 **Default recomendado: probablemente SÍ (si tenían UA, probablemente tenían GSC); preguntar al cliente para integración post-launch**

---

## 2. Audiencias que quieren alcanzar con el nuevo sitio

> **Por qué importa:** Para cada audiencia, hay que pensar en una sección / flujo específico del sitio. Es la pregunta de diseño más importante.

### 2.1. Audiencias primarias (visitan para usar el servicio)

2.1.1. **Miembros de la comunidad LGBT+ en Paraguay** (clientes actuales/potenciales de Kunu'u)

- 🟢 **🟢 Recomendado: Target #1** — el sitio debe tener sección "Nuestros servicios" prominentemente en homepage + página de Kunu'u detallada con servicios + horarios + booking

2.1.2. **Personas trans en Paraguay** (especialmente adultas jóvenes con riesgo de exclusión)

- 🟢 **🟢 Recomendado: Target #2** — el sitio debe tener contenido culturalmente relevante para personas trans + vínculos a Panambi / Casa Diversa (sin necesidad de derivar atención médica que Kunu'u no puede ofrecer)

2.1.3. **Varones gays + bisexuales** (audiencia prioritaria para PrEP/PEP)

- 🟢 **🟢 Recomendado: Target #1** — campañas PrEP + autopromoción de Kunu'u

2.1.4. **Trabajadores sexuales en Paraguay**

- 🟢 **🟢 Recomendado: Target #3** — servicio de Kunu'u + confidencialidad asegurada

2.1.5. **Personas con VIH o que buscan test VIH** (población general)

- 🟢 **🟢 Recomendado** — el sitio debe comunicar que servicios son gratis + confidenciales

2.1.6. **Personas en tratamiento TARV que buscan continuidad de cuidado**

- 🟢 **🟢 Recomendado** — flujo de "ya soy paciente" + contacto directo

2.1.7. **Usuarios de drogas que buscan reducción de daños**

- 🟡 **Default recomendado** — sí, incluir como servicio; alcance puede ser limitado por estigma

### 2.2. Audiencias secundarias (visitan para donar / apoyar)

2.2.1. **Donantes individuales en Paraguay**

- 🟢 **🟢 Recomendado** — flujo de donación en PYG (transferencia, Tigo Money)

2.2.2. **Donantes individuales en LATAM** (Argentina, Brasil, Chile, México)

- 🟢 **🟢 Recomendado** — flujo de donación en USD/ARS/BRL/CLP/MXN + Mercado Pago

2.2.3. **Donantes individuales en USA / Europa**

- 🟢 **🟢 Recomendado** — flujo de donación en USD/EUR/GBP + Stripe + GlobalGiving/Benevity

2.2.4. **Donantes corporativos / empresas con RSE**

- 🟡 **Default recomendado** — incluir como opción pero probablemente necesitan outreach activo; v2 nice-to-have con partnership program

2.2.5. **Filántropos de alto patrimonio (HNW)** — ej: diaspora paraguaya en USA

- 🟡 **Default recomendado** — confidentialidad importante; v2 nice-to-have con major-gifts officer (probablemente Paloma herself)

### 2.3. Audiencias terciarias (visitan para advocacy / awareness)

2.3.1. **Periodistas nacionales e internacionales** (ABC, Última Hora, LA Times, Washington Blade, The Guardian, etc.)

- 🟢 **🟢 Recomendado** — press kit prominent + Paloma + Cazal bios + fotos oficiales + factsheet

2.3.2. **Investigadores académicos / estudiantes** (sobre LGBT+ en PY, VIH, derechos humanos)

- 🟡 **Default recomendado** — incluir "For researchers" con datos públicos + informe anual + auditoría + Bernardo Aranda histórica

2.3.3. **Defensores de derechos humanos + abogados**

- 🟡 **Default recomendado** — incluir sección "Defensores LGBT+" + vínculos a IACHR + Red GayLatino

2.3.4. **Políticos / funcionarios** (que investiguen antes de legislar)

- 🟡 **Default recomendado** — opcional pero útil; incluir como target pasivo

2.3.5. **ONGs aliadas** (RedLactrans, ILGA-LAC, AIREANA, Panambi, Fundación Huésped, etc.)

- 🟢 **🟢 Recomendado** — sección "Redes aliadas" + cross-promotion

2.3.6. **Otros LGBTQ+ orgs que buscan aprender / replicar modelo**

- 🟡 **Default recomendado** — materiales descargables + templates

### 2.4. Audiencias institucionales (visitan para compliance / governance)

2.4.1. **Reguladores** (MSPBS, MEC, otros ministerios)

- 🟡 **Default recomendado** — visit pasivamente; v1 launch debería incluir audit reports públicos

2.4.2. **PRONASIDA** (programa nacional VIH)

- 🟢 **🟢 Recomendado** — vínculo formal + reporte conjunto

2.4.3. **Donantes institucionales** (amfAR, Global Fund, etc.) — para reporting

- 🟢 **🟢 Recomendado** — dashboard de impacto + reportes descargables

2.4.4. **Auditores externos**

- 🟡 **Default recomendado** — audit reports + estados financieros públicos

### 2.5. Audiencias de empleo

2.5.1. **Potenciales empleados** (médicos, psicólogos, comunicadores, etc.)

- 🟡 **Default recomendado** — página "Trabaja con nosotros" v1; v2 con portal de aplicaciones

2.5.2. **Voluntarios potenciales** (counseling, traducción, eventos)

- 🟡 **Default recomendado** — página "Voluntariado" + form v1

2.5.3. **Pasantes / fellowships**

- 🟡 **Default recomendado** — incluir en página "Trabaja con nosotros" como sub-sección

### 2.6. Audiencias específicas de las campañas

2.6.1. **Audiencia para campañas PrEP** (varones gays 18-35)

- 🟢 **🟢 Recomendado** — landing pages específicas /prep + /tatido-milenial-orientado

2.6.2. **Audiencia para campañas de salud mental** (jóvenes LGBT+ post-pandemia)

- 🟢 **🟢 Recomendado** — landing /salud-mental + vínculo a Psicología

2.6.3. **Audiencia para campañas de educación sexual** (frente al ban ministerial)

- 🟢 **🟢 Recomendado** — landing /educacion-sexual + explicación de Resolution 29664 + alternativas

2.6.4. **Audiencia para campañas anti-LGBTIfobia** (sociedad general, aliados)

- 🟢 **🟢 Recomendado** — landing /denuncia-lgbtifobia + contacto

2.6.5. **Audiencia para campañas de memoria 108** (septiembre, histórico)

- 🟢 **🟢 Recomendado** — landing /108 + programa Mes de las Memorias

2.6.6. **Audiencia para campañas de matrimonio igualitario** (advocacy)

- 🟢 **🟢 Recomendado** — landing /matrimonio-igualitario + status legal + CIDH + itinerario

2.6.7. **Audiencia para campañas de Pride** (marzo-junio)

- 🟢 **🟢 Recomendado** — landing /pride-2026 + Besatón + marcha

2.7. **¿Hay alguna audiencia que NO quieren que visite el sitio?** (ej: trolls, gobierno hostil):

- 🟡 **Default recomendado:** no hay audiencias oficiales excluidas; OPSEC diferente (no loguear identidades sensibles; no aceptar trolls en comments)

2.8. **¿Hay alguna audiencia prioritaria no listada arriba?**

- 🟡 **Default recomendado: confirmar; en general está cubierto el espectro**

2.9. **Si tuvieran que rankear las 3 audiencias más importantes para el nuevo sitio, ¿cuáles serían?**

- 🟡 **Default recomendado:**
  1. **Varones gays + bisexuales** (PrEP market) — conversión clínica
  2. **Donantes individuales USA + Europa** — fundraising
  3. **Periodistas** — visibilidad + defensa
- ⬜ **Confirmar con cliente**

---

## 3. Languages / i18n

3.1. **Idioma principal confirmado:**

- [x] ✅ **Español** (Spanish) — Asunción voseo

3.2. **¿Quieren versión en Inglés?**

- 🟢 **🟢 Recomendado: SÍ** (donantes internacionales + Red GayLatino + press + visibilidad)

3.3. **¿Quieren versión en Guaraní?**

- 🟡 **Default recomendado: NO en v1** (agregar como locale secundario si el cliente lo pide después; el Guaraní es lengua oficial PY pero la comunicación LGBT+ actual es principalmente en Spanish; v2 a considerar)

3.4. **¿Quieren versión en Portugués?** (audiencia brasileña fronteriza):

- 🟡 **Default recomendado: NO en v1** (nice-to-have para v2; mercado brasileño LGBT+ es grande pero no es target prioritario actualmente)

3.5. **¿Quieren usar "vos" o "tú"?** (debe matchear la comunicación de SOMOSGAY):

- 🟢 **🟢 Recomendado: "vos"** (Asunción default; Paloma Vera usa "vos" en ABC Color; tu sitio debe sonar Paraguayo)

3.6. **¿Qué nivel de español usar?** (académico vs popular):

- 🟢 **🟢 Recomendado: Directo y comunitario** (matching voz Paloma Vera en ABC; ABC Color es prensa masiva — Paloma adapta a lectura popular)

3.7. **¿Tienen manual de estilo / tono escrito?**

- 🟡 **Default recomendado: en proceso (`docs/04_brand/voz-y-tono.md` lo está creando desde research); validar con cliente**

3.8. **¿Hay terminología técnica que debamos traducir consistentemente?**

- 🟢 **🟢 Recomendado:**
  - PrEP = Profilaxis pre-exposición (NO "pre-exposure prophylaxis")
  - TARV = Tratamiento antirretroviral (NO "ART")
  - PEP = Profilaxis post-exposición (NO "post-exposure prophylaxis")
  - U=U = Indetectable = Intransmisible (o "I=I" en español)
  - ITS = Infecciones de Transmisión Sexual (NO "STI")
  - VIH = Virus de Inmunodeficiencia Humana (NO "HIV" en headings)
  - LGBT+ = LGBT+ (mantener español cuando posible: "comunidad LGBT+", "personas LGBT+")
  - tDoct = todes (pronoun neutro paraguyo)
- ⬜ **Confirmar guía con cliente**

---

## 4. Accessibility (WCAG 2.2)

4.1. **¿Usuarios con discapacidad visual usan el sitio actual?**

- 🟡 **Default recomendado: desconocido (no analytics); preguntar al cliente directamente — v1 launch debería preguntar feedback post-launch**

4.2. **¿Hay lectores de pantalla usados por la comunidad?**

- 🟡 **Default recomendado: probablemente SÍ (comunidad LGBT+ incluye personas ciegas / baja visión); v1 launch debe ser WCAG 2.2 AA compatible**

4.3. **¿Contenido en video necesita Lengua de Señas Paraguaya (LSP)?**

- 🟡 **Default recomendado: NO en v1 (LSP es raro en sitios PY); v2 nice-to-have si hay videos importantes**

4.4. **¿Hay otras necesidades de accesibilidad?** (motor, cognitive, etc.):

- 🟡 **Default recomendado: presumiblemente mínimo enfoque; v1 launch debe ser WCAG 2.2 AA — cubre lo básico; v3 a expandir**

4.5. **¿Objetivo del nuevo sitio WCAG?**

- 🟢 **🟢 Recomendado: AA como mínimo, AAA donde sea posible** (color contrast AAA, captions en video, focus visible, etc.)

---

## 5. Cultural considerations

5.1. **¿Sitio debe ser sensible a contextos indígenas más allá del Guaraní?** (otros pueblos, español, jopara):

- 🟡 **Default recomendado: NO extendido (Asunción + Central es la mayoría de su audiencia; las "comunidades" LGBT+ paraguayas son diversas en origen étnico pero mayoritariamente mixtas; el Guaraní es sensible por sí solo; v2 nice-to-have)**

5.2. **¿Hay protocolos comunitarios específicos que debamos seguir?** (ej: uso de imágenes de personas trans, lenguaje, etc.):

- 🟡 **Default recomendado:**
  - ✅ **NO usar imágenes sin consentimiento explícito**
  - ✅ **Respetar pronombres auto-designados de las personas**
  - ✅ **Usar lenguaje que no patologice (ej: "persona trans" no "transexual")**
  - ✅ **Respetar la decisión del cliente sobre qué nombres / fotos mostrar**
  - ⬜ **Preguntar al cliente si hay protocolos internos**

5.3. **¿Tienen alguna directriz religiosa / confesional que respetar?**

- 🟡 **Default recomendado: NO (org explícitamente laica / basada en DDHH, no religiosa); confirmado vía Paloma quotes**

5.4. **¿Tienen directrices de uso de imágenes?** (consentimiento, no imágenes de menores sin permiso, etc.):

- 🟡 **Default recomendado: presumiblemente NO formal pero buenas prácticas; v1 launch debería requerir consent forms firmados para cualquier foto publicada; ⬜ confirmar con cliente**

5.5. **¿Tienen protocolo para uso de imágenes de eventos Pride / Besatón / etc.?**

- 🟡 **Default recomendado: presumiblemente Open Source (consentimiento verbal al momento de tomar foto); v1 launch debería formalizar; ⬜ confirmar con cliente**

5.6. **¿Sitio debe respetar fechas importantes?** (no publicar campaign sensible el 1 Sept por ejemplo):

- 🟢 **🟢 Recomendado:**
  - 1 septiembre (memoria Bernardo Aranda) — tono respetuoso
  - 30 septiembre (Carta de un Amoral) — celebrar
  - 17 mayo (IDAHOBIT) — celebrar
  - 28 junio (Pride) — celebrar
  - 1 diciembre (World AIDS Day) — activar campañas de PrEP
  - Semana del Orgullo Paraguay (junio-julio) — activar
  - Mes de las Memorias 108 (todo septiembre) — activar
- **Implementar**: editorial calendar + automatic banners en fechas clave

5.7. **¿Hay símbolos / colores / palabras que debemos evitar?**

- 🟡 **Default recomendado:**
  - ❌ "LGBT" + colores arcoíris cliché (pero usar rainbow sí, solo con moderación)
  - ❌ Stock photos genéricas con modelos perfectos
  - ❌ Lenguaje condescending o pity-driven (per Rosa Posa AIREANA: "Don't be pitiful")
  - ❌ Banderas partidistas o religiosas
- ⬜ **Confirmar con cliente**

5.8. **¿Hay cultura organizacional específica que el sitio debe reflejar?** (horizontality, peer-led, anti-patriarchal, etc.):

- 🟡 **Default recomendado:**
  - ✅ **Tono horizontal / peer-led** (no居高临下)
  - ✅ **Lenguaje directo + defiant (per Paloma Vera quotes)**
  - ✅ **Anti-patriarchal explicit (per Cazal quotes: "Estado supremacista, heteropatriarcal, capitalista")**
  - ✅ **Solidaridad (per Rosa Posa: "Somos cada vez más")**
  - ✅ **Comunidad sobre individuo**
- ⬜ **Confirmar directrices específicas con cliente**

---

## 6. Datos de comportamiento (post-launch tracking)

6.1. **Una vez que el sitio esté en producción, ¿qué métricas quieren ver?**

- 🟡 **Default recomendado:**
  - **Visitas mensuales** (Plausible baseline)
  - **Reservas Kunu'u online / mes** (Cal.com conversion)
  - **Donaciones online / mes** (Stripe + GlobalGiving + All Out dashboard combined)
  - **Suscriptores newsletter** (Buttondown / Mailchimp)
  - **Búsquedas orgánicas top** (Google Search Console)
  - **Top referrers** (Plausible)
  - **Mobile vs desktop split** (Plausible)

6.2. **¿Quieren ver conversiones por campaña?**

- 🟡 **Default recomendado: SÍ** (UTM tagging en cada campaña; Plausible soporta); confirmar al cliente

6.3. **¿Quieren atribución multi-touch?** (UTM tracking completo):

- 🟡 **Default recomendado: SÍ (más complejo pero más honesto); UTM en cada canal; confirmar capacidad técnica interna**

6.4. **¿Tienen capacidad interna para leer analytics?** (Paloma, Ramón, alguien):

- 🟡 **Default recomendado: presumiblemente Paloma para overview; staff admin para detalles; v1 launch debería incluir sesión de training; confirmar al cliente**

6.5. **¿Quieren dashboard de impact público?**

- 🟡 **Default recomendado: SÍ (gran confianza del donante); v1 launch debería incluir /impacto page con stats básicas (test counts, PrEP patients, etc.)**

---

## Cómo usar este cuestionario

1. **Audio-first:** 25 minutos. Paloma responde ranking de audiencias y decisiones de languages.
2. **Orden sugerido:** 1 (visitantes) → 2 (audiencias) → 3 (languages) → 4 (a11y) → 5 (cultural).
3. **Decisiones clave:** languages (ES+EN vs +Guaraní vs +Portuguese) y cultural framing — afectan arquitectura del sitio significativamente.
4. **Defaults seguros:** los 🟡 son estimaciones razonables; los ⬜ son críticos para decisiones arquitectónicas.

---

## Sources

- https://datareportal.com/reports/digital-2024-paraguay (81.3% penetration, 90% mobile, 97.5% messaging)
- https://somosgay.org/about
- https://www.abc.com.py/nacionales/2023/11/20/lanzan-campana-del-dia-de-la-respuesta-al-vih-yo-amo-prep-yo-amo-mas-seguro/
- https://www.abc.com.py/nacionales/2024/06/28/derechos-lgbt-en-paraguay-matrimonio-igualitario-a-la-vista/ (Paloma Vera quote on Pride growth)
- `docs/02_research/mobile-internet-paraguay.md`
- `docs/05_website-audit/accessibility-audit.md`
- `docs/04_brand/voz-y-tono.md`
- `docs/05_website-audit/what-they-need.md`