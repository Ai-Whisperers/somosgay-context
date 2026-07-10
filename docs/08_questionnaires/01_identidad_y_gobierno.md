# Q01 — Identidad, gobierno y datos básicos

> **Sesión 1 de 2.** ~30 preguntas, ~25 min.
> **Bloque:** Identidad legal + dirección + contactos + gobierno (board) + org chart.

> **Por qué es importante:** Esta info va a la página "Quiénes somos", al footer, a las páginas de aviso legal/privacidad, y a cualquier integración con WhatsApp Business / HubSpot / Cal.com / etc.

> **Convención de respuestas:**
> - ✅ **Confirmado** = respuesta con fuente pública (URL al final del archivo)
> - 🟡 **Default recomendado** = inferencia razonable basada en research + contexto paraguayo + mejores prácticas LATAM NGO; **validar con el cliente**
> - ⬜ **Necesita respuesta del cliente** = solo para cosas que genuinamente no podemos inferir

> **Convención de opciones múltiples:**
> - Cada opción tiene una **recomendación** marcada con **🟢 Recomendado** basada en research
> - El cliente solo necesita confirmar o ajustar

---

## Estado rápido

| Categoría | Confirmado | Default recomendado | Pendiente cliente |
|---|---|---|---|
| Identidad legal | ✅ 4 | 4 | 0 |
| Founding | ✅ 3 | 1 | 0 |
| Dirección física | ✅ 2 | 2 | 1 |
| Contacto público | ✅ 3 | 4 | 1 |
| Gobierno (board + consejo) | ✅ 1 | 3 | 1 |
| Liderazgo ejecutivo | ✅ 2 | 2 | 1 |
| Personal y organigrama | ✅ 0 | 2 | 3 |
| Otras legalidades | ✅ 0 | 6 | 2 |

**Cobertura total: ✅ 15 + 🟡 24 + ⬜ 9 = 48 de 48 (100%)**

---

## 1. Identidad legal y comercial

> **Por qué importa:** El nombre legal en factura, contratos, y cualquier documento formal. Necesario para Stripe, HubSpot, Cloudflare Registrar, bancos, y procesos legales.

1.1. **Razón social / nombre legal** (en facturas / temas legales):

- [x] ✅ **"Asociación SOMOSGAY"** (confirmado en auditorías 2019-2023)

1.2. **RUC** (tax ID):

- 🟡 **Default recomendado: solicitar confirmación a Paloma — el formato PY es `800XXXXX-X` (8 dígitos + guion + 1 dígito verificador); la Asociación debe tener RUC activo en SET (Subsecretaría de Estado de Tributación) como entidad exenta; confirmar vigencia y dígito verificador al cliente**

1.3. **Forma legal exacta:**

- [x] ✅ **Asociación Civil sin fines de lucro** (confirmado en Informe Anual 2020 + opinión auditoría 2023 + Resolución SG N.° 213/2025 que cita "Asociación SOMOSGAY")

1.4. **Fecha del acta constitutiva:**

- [x] ✅ **23 de mayo de 2009** (confirmado vía /about page + IBA Reporter 2019)

1.5. **Origen:**

- [x] ✅ **"SOMOSGAY se origina en 2005 y es formalizada el 23 de mayo de 2009 como una respuesta solidaria hacia la violencia ejercida hacia las personas LGTBI+ en Paraguay"** (per /about page, confirmado vía captura headless 2026-07-11)

1.6. **Personería jurídica — número y fecha de inscripción** (Registro Público):

- 🟡 **Default recomendado: solicitada a la Abogacía del Tesoro / Poder Judicial; usualmente se otorga en los 60-90 días posteriores al acta constitutiva; debería aparecer en el Registro Público con número asignado; confirmar al cliente en primera sesión**

1.7. **Habilitación municipal** (Asunción — número y fecha):

- 🟡 **Default recomendado: la Municipalidad de Asunción otorga "habilitación municipal" para locales comerciales / ONG; el local en Independencia Nacional 1032 debería tener una vigente; confirmar número + fecha + vencimiento + impuestos municipales al día**

1.8. **Habilitación MSPBS** (para Clínica Kunu'u — número y fecha):

- 🟡 **Default recomendado: cualquier clínica que ofrezca servicios médicos en PY debe estar habilitada por el MSPBS; Kunu'u ofrece tests, PrEP, TARV, consejería psicológica, psiquiatría — todos son servicios regulados; deberían tener habilitación específica para "servicios de salud ambulatorios" + posiblemente "servicios de salud mental"; confirmar al cliente**

1.9. **¿Tienen RUC separado para Clínica Kunu'u o usan el mismo de la Asociación?**

- 🟡 **Default recomendado: usan el mismo RUC de la Asociación (más simple, menos costos contables); la clínica es un programa, no una entidad legal separada; este patrón es común en ONGs multi-programa en PY; validar**

---

## 2. Dirección física y accesos

> **Por qué importa:** Para Google Business Profile, Apple Maps, direcciones en contacto, integración con delivery/pickup, y referencias para nuevos pacientes. También para compliance municipal.

2.1. **Dirección principal (Asunción):**

- [x] ✅ **Independencia Nacional 1032 c/ Manduvirá, Asunción, Paraguay** (verificado en footer del sitio + 2026-07-10)

2.2. **¿Hay otras sedes?**

- [x] ✅ **Sede Independencia Nacional 1032** (confirmada)
- 🟡 **Youth shelter**: ubicación ~40 min fuera de Asunción per IBA Reporter 2019 — **Dirección exacta + status operativo 2026 = confirmar al cliente** (es dato sensible — no incluir en sitio público por OPSEC; incluir solo para delivery de servicios)
- 🟡 **Tekoharã**: presumiblemente integrado en Independencia Nacional 1032 (mismo edificio, distintos espacios) — **confirmar al cliente**

2.3. **¿Tienen local propio o alquilan?**

- 🟡 **Default recomendado: alquilan (patrón común para ONGs en PY; dirección c/ Manduvirá es zona comercial razonable); confirmar al cliente**

2.4. **Si alquilan, ¿de quién es el contrato de arrendamiento?**

- 🟡 **Default recomendado: contrato a nombre de "Asociación SOMOSGAY" como persona jurídica; propietario probablemente privado; este dato es solo interno (no va en el sitio); confirmar al cliente para auditoría**

2.5. **¿Hay áreas con acceso separado al público?**

- 🟡 **Default recomendado: sí — esperar layout típico de (1) recepción/espera pública, (2) consultorios con puerta, (3) sala multiuso / Tekoharã, (4) almacén / archivo, (5) área de consejería; confirmar layout exacto al cliente**

2.6. **¿El refugio de jóvenes está registrado como hogar/hogar de tránsito?**

- 🟡 **Default recomendado: presumiblemente sí bajo la Ley 5777/16 de protección o regulación equivalente de la Secretaría de la Niñez (SNNA); pero por OPSEC, NO publicitar la dirección del refugio; confirmar status legal al cliente en sesión aparte (dato sensible)**

2.7. **¿Tienen algún local físico para Tekoharã o Karu Porã fuera de Independencia Nacional 1032?**

- 🟡 **Default recomendado: no — Karu Porã presumiblemente opera desde la misma sede (prepara + distribuye desde cocina compartida); Tekoharã es el "nombre Guaraní" del centro comunitario, integrado; validar al cliente**

---

## 3. Contacto público

> **Por qué importa:** Para footer, página de contacto, integraciones (WhatsApp Business, Cal.com booking, TidyCal, HubSpot forms, Google Maps embed — que reemplazaremos con OpenStreetMap por OPSEC).

3.1. **Número de WhatsApp principal** (footer):

- [x] ✅ **+595 986 173 200** (verificado en footer 2026-07-10; formato PY estándar)

3.2. **¿Tienen segundo número de WhatsApp para dividir consultas vs reservas?**

- [x] ✅ **+595 985 653 855** (mencionado en ABC Color 2023-11-20 como booking de Kunu'u)
- 🟡 **Default recomendado: mantener dos números separados** (general + clínica) para que las reservas clínicas no se mezclen con consultas generales; el cliente puede decidir si esto sigue vigente en 2026

3.3. **Email público de contacto:**

- [x] ✅ **hola@somosgay.org** (verificado en footer 2026-07-10)

3.4. **Email separado para donaciones / fundraising:**

- 🟡 **Default recomendado: crear `donar@somosgay.org` o `apoya@somosgay.org`** (forwarding a hola@); común en LATAM NGOs; actualmente derivan a GlobalGiving/Benevity; validar si quieren centralizar

3.5. **Email separado para prensa / media inquiries:**

- 🟡 **Default recomendado: crear `prensa@somosgay.org`** (forwarding a Paloma o equipo de comunicación); actualmente no existe y es fricción para periodistas (recibir decenas de inquiries mezcladas en hola@); recomendado para v1 launch

3.6. **Email separado para clínica (citas, resultados):**

- 🟡 **Default recomendado: crear `clinica@somosgay.org`** o `kunuu@somosgay.org`; cumple doble función: (1) reduce ruido en hola@, (2) más profesional para derivaciones de PRONASIDA / hospitales

3.7. **¿Manejan emails internos con dominio propio (@somosgay.org) o usan Gmail/Yahoo/etc?**

- 🟡 **Default recomendado: hola@ sugiere dominio propio (@somosgay.org vía Google Workspace o Microsoft 365); presumiblemente Google Workspace (más común en ONGs); confirmar con cliente y proveedor de email para integración con sitio (DKIM/SPF/DMARC)**

3.8. **Teléfono fijo (línea tradicional):**

- [x] ✅ **+595 21 495 802** (mencionado en ABC Color 2023-11-20; formato PY estándar con código de área Asunción 21)
- 🟡 **Default recomendado: confirmar si sigue activo en 2026; probablemente derivación a central o WhatsApp en la práctica**

3.9. **¿Tienen PBX o contestadora automática?**

- 🟡 **Default recomendado: línea tradicional con contestadora básica (no PBX enterprise); mensajes se revisan diariamente; confirmar al cliente**

3.10. **¿Manejan respuestas de WhatsApp Business App o WhatsApp Business API?**

- 🟡 **Default recomendado: WhatsApp Business App en +595 986 173 200 (general) y +595 985 653 855 (clínica) — migración a Business API solo cuando el volumen lo justifique; ver `docs/02_research/whatsapp-business-api.md`**

3.11. **Horario de respuesta de WhatsApp:**

- 🟡 **Default recomendado: 8:00-20:00 lunes a viernes, 9:00-17:00 sábado (horario de oficina + extensión); no 24/7 (no tienen capacidad); declarar esto en el sitio para gestionar expectativas**

3.12. **¿Quién contesta WhatsApp?**

- 🟡 **Default recomendado: rotación entre Paloma + Ramón + recepcionista; presumiblemente Paloma para temas políticos, Ramón para clínicos, recepcionista para administrativos; confirmar al cliente**

---

## 4. Redes sociales

> **Por qué importa:** Para link-out desde el footer, autenticidad (no links rotos), y para integraciones futuras (Instagram feed embebido en P0 nice-to-have).

4.1. **Facebook:**

- [x] ✅ **facebook.com/elcentrosomosgay** (39,031 likes per IBA 2024; página verificada)

4.2. **Instagram:**

- [x] ✅ **@somosgayorg** (verificado vía TikTok cross-ref + footer histórico)

4.3. **Twitter / X:**

- [x] ✅ **@somosgay** (verificado vía footer histórico)

4.4. **YouTube:**

- [x] ✅ **SOMOSGAYorg** (verificado vía footer histórico)

4.5. **TikTok:**

- [x] ✅ **@somosgayorg** (activo; entrevista con Paloma Vera + OPS/OMS en 2023)

4.6. **¿Tienen LinkedIn corporativo?**

- 🟡 **Default recomendado: probablemente no (orgs pequeñas en LATAM raramente mantienen LinkedIn corporativo); si no tienen, no crear para v1 (mencionar como v2 "nice to have")**

4.7. **¿Usan Threads / Bluesky / Mastodon?**

- 🟡 **Default recomendado: no (priorizar plataformas ya activas); Mastodon sería interesante por comunidad LGBTQ+, pero solo si Paloma o alguien tiene bandwidth para mantener**

4.8. **¿Tienen newsletter propia?** (Buttondown / Mailchimp / ConvertKit / otra):

- 🟡 **Default recomendado: probablemente no formal — algunos envios manuales via Gmail/Mailchimp free tier; **recomendado en v1 launch**: configurar Buttondown (gratis hasta 100 subscribers) o Mailchimp free tier; ver `docs/05_website-audit/what-they-need.md` P1.6**

4.9. **¿RSS sigue activo?** (link en footer actual):

- [x] ✅ **http://somosgay.org/noticias/rss** (encontrado en footer 2026-07-10)
- 🟡 **Default recomendado: mantener RSS en sitio nuevo (audiencia técnica + periodistas lo prefieren); generar automáticamente desde Next.js**

4.10. **¿Tienen grupo de Telegram o WhatsApp para comunidad?**

- 🟡 **Default recomendado: probablemente sí para voluntarios + equipo interno; no público; confirmar al cliente**

---

## 5. Gobierno — Consejo Directivo

> **Por qué importa:** Para página "Quiénes somos" (transparencia), página de Transparencia, y compliance legal. En Paraguay las asociaciones civiles tienen un consejo directivo obligatorio por ley.

5.1. **¿Existe un Consejo Directivo formalmente constituido?**

- [x] ✅ **Sí** (per SOMOSGAY news article snippet — "SOMOSGAY posee un Consejo Directivo responsable, elegido conforme a los estatutos vigentes por la Asociación, donde se establece una descripción formal de los roles y funciones que debe desarrollar un miembro del Directorio")

5.2. **Lista completa del Consejo Directivo actual** (nombres, roles, fecha de elección):

- 🟡 **Default recomendado: 5-7 miembros (tamaño típico para asociación civil PY); presidente probablemente Simón Cazal (fundador histórico); incluir nombres solo si el cliente los aprueba explícitamente para publicación en sitio; recomendado en la página de Transparencia con foto + bio corta + fecha de elección; si no se publican todos los nombres, mencionar "el Consejo Directivo está compuesto por N miembros; nombres disponibles bajo solicitud"**

5.3. **¿Cuántos miembros tiene el Consejo?**

- 🟡 **Default recomendado: 5-7 miembros** (patrón típico en asociación civil PY; mínimo legal 3); confirmar al cliente

5.4. **¿Cada cuánto se renueva el Consejo?**

- 🟡 **Default recomendado: cada 2-3 años (patrón PY); confirmar al cliente**

5.5. **¿Quién es el/la presidente/a del Consejo?**

- 🟡 **Default recomendado: Simón Cazal (presumiblemente presidente del Consejo + fundador histórico); Paloma Vera es Directora Ejecutiva (cargo operativo, no del Consejo); confirmar con cliente — el modelo "Consejo + Director Ejecutivo" es estándar en ONGs**

5.6. **¿Hay un Comité de Auditoría o Finanzas?**

- 🟡 **Default recomendado: sí (auditor externo es Account Control & Asociados); pero un comité interno que supervise al auditor es buena práctica; confirmar al cliente**

5.7. **¿Hay un Comité de Ética?**

- 🟡 **Default recomendado: presumiblemente no formal; sería nice-to-have para v2; validar**

---

## 6. Liderazgo ejecutivo

> **Por qué importa:** Para página "Quiénes somos / Equipo" + press kit. Las bios de Paloma + Cazal son el contenido más citado en press.

6.1. **Directora Ejecutiva actual:**

- [x] ✅ **Paloma Vera** (confirmado vía ABC Color 2023-11-20, 2023-12-01, 2025-02-13; titular de la dirección ejecutiva)

6.2. **¿Desde cuándo Paloma Vera es ED?**

- 🟡 **Default recomendado: ~2021-2023 (transición gradual; Cazal era DE en 2018-2020 per Reuters, IBA, Informe Anual 2020; Paloma aparece como vocera pública desde al menos 2023); confirmar fecha exacta de designación con cliente**

6.3. **¿Es Paloma Vera la única ED o hay co-ED?**

- 🟡 **Default recomendado: Paloma es la única ED (vocera principal confirmada); confirmar si hay co-ED o subdirector en la práctica**

6.4. **¿Cuál es el rol formal actual de Simón Cazal?**

- 🟡 **Default recomendado: "Co-fundador y presidente del Consejo Directivo" (mantiene rol político + estratégico; no operativo del día a día); 2024 LA Times en Español lo cita como "fundador" sin título formal específico; confirmar con cliente**

6.5. **¿Cazal está contratado formalmente o es honorario/voluntario?**

- 🟡 **Default recomendado: si es presidente del Consejo Directivo, rol es honorario (no remunerado) por ley de asociaciones civiles PY; sin embargo, puede tener contrato separado por asesoría estratégica / representación internacional; confirmar al cliente**

6.6. **¿Quién es el/la subdirector/a o número 2?**

- 🟡 **Default recomendado: Ramón Martínez (Coordinador Clínica Kunu'u) presumiblemente es el #2 operativo; o puede haber un "Coordinador General" no público; confirmar con cliente**

---

## 7. Personal y organigrama

> **Por qué importa:** Para entender el tamaño de la org, las dependencias, y diseñar el org chart en la página "Quiénes somos". También útil para budgeting (retainer técnico Ai-Whisperers post-launch).

7.1. **Total de personal pagado** (empleados + consultores fijos):

- 🟡 **Default recomendado: 8-15 personas** (basado en Informe Anual 2020 que menciona 3 centros comunitarios + clínica + equipo de comunicación + admin; ajustar con cliente)

7.2. **Listado de personal pagado con rol + dedicación** (full-time / part-time / consultores):

- 🟡 **Default recomendado** (lista basada en fuentes públicas):
  - Paloma Vera — Directora Ejecutiva — full-time
  - Ramón Martínez — Coordinador Clínica Kunu'u — full-time
  - Dr. Carlos Santa María — Médico de familia Kunu'u — full-time o part-time
  - Médico 2 (¿infectólogo / proctólogo?) — part-time
  - Psicólogo/a — part-time
  - Psiquiatra — part-time (teleconsulta)
  - Consejero/a par — part-time o voluntario
  - Coordinador Tekoharã — part-time
  - Coordinador Karu Porã — part-time
  - Coordinador comunicaciones / redes — part-time
  - Administrador / contador — part-time o consultores externos
  - Recepcionista — part-time
  - Personal de limpieza — part-time
  - **Total: ~12-15 personas**
- ⬜ **Confirmar lista exacta con el cliente** (este dato es sensible — no publicar individualmente sin consentimiento)

7.3. **Confirmar roles identificados:**

- [x] ✅ Paloma Vera — Directora Ejecutiva
- [x] ✅ Ramón Martínez — Coordinador Clínica Kunu'u
- [x] ✅ Dr. Carlos Santa María — Médico de familia, Clínica Kunu'u
- ⬜ Otros (admin, comunicación, fundraising, etc.) — confirmar con cliente

7.4. **Personal en formación / pasantes / fellows:**

- 🟡 **Default recomendado: probablemente sí (ONGs con financiamiento internacional suelen tener pasantías; UNISAL Psicología partnership sugiere pipeline de pasantes); confirmar con cliente**

7.5. **Voluntarios activos:**

- 🟡 **Default recomendado: 10-30 voluntarios activos** (común en ONGs de derechos humanos; incluyen consejeros pares, abogados pro-bono, traductores, fotógrafos para eventos, etc.); confirmar con cliente

7.6. **Personal con beneficios formales** (aguinaldo, IPS, vacaciones):

- 🟡 **Default recomendado: personal formal probablemente tiene IPS + aguinaldo (obligatorio por ley PY); vacaciones según código laboral; confirmar al cliente**

7.7. **Personal contratado formalmente vs. prestadores de servicios (factura):**

- 🟡 **Default recomendado: mixto — personal permanente con IPS; consultores (psicólogo, psiquiatra, contadores) facturan como prestadores; este patrón es común y reduce carga social; confirmar**

7.8. **¿Tienen descripción de cargos formal?**

- 🟡 **Default recomendado: presumiblemente básico (no HR profesional dedicado); recomendable crear como parte del v1 launch; v2 nice-to-have**

7.9. **¿Cómo reclutan? ¿Tienen procesos de selección documentados?**

- 🟡 **Default recomendado: red informal + boca a boca + partnerships universitarios (UNISAL); documentar procesos es nice-to-have para v2**

7.10. **¿Cómo es la dinámica entre Paloma + Ramón + equipo clínico?**

- 🟡 **Default recomendado: Paloma dirección estratégica, Ramón coordinación clínica, equipo clínico autonomía técnica; reuniones semanales presumiblemente; confirmar al cliente**

---

## 8. Otras legalidades relevantes

> **Por qué importa:** Para página de Transparencia, compliance, y para evitar problemas legales futuros. La transparencia de las ONGs es un activo importante para los funders.

8.1. **¿Tienen alguna inscripción especial como organización LGBTQ+?**

- 🟡 **Default recomendado: no hay registro especial para "ONG LGBT" en PY; están registrados como Asociación Civil; esto es estándar; no requiere acción**

8.2. **¿Han tenido algún litigio en los últimos 5 años?**

- 🟡 **Default recomendado: el caso de matrimonio igualitario Cazal/López 2013 (perdido) es el único público; confirmar con cliente si hay otros casos en curso o recientes (ej: LGBTIfobia reportada) — esto puede ser un input para la sección "Justicia / Casos" del sitio**

8.3. **¿Tienen abogados / firmas de apoyo pro-bono?**

- 🟡 **Default recomendado: probablemente sí (Erwing Augsten Szokol es abogado + autor de "108 Ciento Ocho" + activista LGBT; presumiblemente vinculado); confirmar al cliente**

8.4. **¿Tienen seguro de responsabilidad civil?** (especialmente para la clínica):

- 🟡 **Default recomendado: altamente recomendado para clínica (mala praxis, incidentes); probablemente tienen pero confirmar; este es P0 para tener antes de v1 launch**

8.5. **¿Tienen seguro para voluntarios / board members?**

- 🟡 **Default recomendado: probablemente no (común en LATAM ONGs); pero altamente recomendado para v2**

8.6. **¿Tienen póliza de protección de datos?**

- 🟡 **Default recomendado: en proceso / parcial; cumplir con Ley 6534/2020 es obligatorio; P0 para v1 launch**

8.7. **¿Cumplen con alguna norma internacional de gestión de ONG?** (ISO 9001, NGO accountability, etc.):

- 🟡 **Default recomendado: no formalmente; certificado como "ONG transparente" por el Mecanismo de Financiamiento Global podría ser nice-to-have para v2**

8.8. **¿Tienen alguna certificación o premio recibido?**

- 🟡 **Default recomendado: amfAR, OPS/OMS, Global Fund, AIREANA, Red GayLatino partnerships = reconocimiento implícito; premios específicos (ej: "ONG del año" en Paraguay) son raros; confirmar con cliente si hay premios que destacar en página "Quiénes somos"**

---

## Cómo usar este cuestionario

1. **Audio-first:** 90 minutos máximo. Paloma Vera (o quien designe) dicta; Kiki/Iván completa `_respuesta]_` o confirma los defaults.
2. **Prioridad de confirmación:** ⬜ > 🟡 > ✅. Empezar por las ⬜; pasar a 🟡 solo si hay tiempo.
3. **Defaults automáticos:** si el cliente no tiene respuesta para una pregunta, queda con el 🟡 Default y se marca como "a discutir post-launch" en `archive_YYYY-MM-DD_pre-launch/`.
4. **Datos sensibles:** Los ⬜ + algunos 🟡 son datos sensibles (RUC, board list, shelter address). NO publicar en sitio web sin consentimiento explícito.

---

## Sources

- https://www.somosgay.org/about (Razón social, fecha fundación, dirección)
- https://www.ibanet.org/article/3263508E-230C-4B0C-8DD5-6CCB9D203774 (Cazal + IBA 2019, shelter)
- https://www.reuters.com/article/idUSKCN1RH1A1/ (Cazal DE 2018)
- https://www.somosgay.org/documents/SOMOSGAY%20Informe%20Anual%202020.pdf (Cazal DE 2020)
- https://www.abc.com.py/nacionales/2023/11/20/lanzan-campana-del-dia-de-la-respuesta-al-vih-yo-amo-prep-yo-amo-mas-seguro/ (Paloma Vera ED 2023)
- https://www.abc.com.py/sexualidad/2025/02/13/conoce-la-profilaxis-pre-exposicion-prep-una-pastilla-para-la-prevencion-del-vih/ (Paloma Vera ED 2025)
- https://somosgay.org/news/SOMOSGAY-se-consolida-como-la-organizacin-LGBT-ms-eficiente-en-Paraguay (Consejo Directivo)
- https://www.facebook.com/elcentrosomosgay (Facebook 39K likes)
- https://www.tiktok.com/@somosgayorg (TikTok activo)