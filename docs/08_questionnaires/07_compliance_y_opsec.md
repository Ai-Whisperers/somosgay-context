# Q07 — Compliance, OPSEC y datos sensibles

> **Sesión 3 (opcional, profundización).** ~30 preguntas, ~30 min.
> **Bloque:** Cumplimiento legal + seguridad de datos + seguridad física + protocolo en crisis + seguros.

> **Por qué es importante:** SOMOSGAY opera en un país hostil. La pérdida de datos o un incidente de seguridad podría literalmente poner en riesgo a la comunidad. Este cuestionario es CRÍTICO para diseñar la arquitectura técnica del sitio, los protocolos operativos, y la postura de seguridad.

> **Esta sesión puede no ser necesaria si Iván+Kiki deciden hacer pro-bono parcial.** Pero si hay paid engagement, **debe hacerse.**

---

## Estado rápido

| Categoría | Confirmado | Pendiente |
|---|---|---|
| Cumplimiento legal | 🟡 1 de 6 | 5 |
| Datos personales + salud | 🟡 1 de 7 | 6 |
| Seguridad física | ⬜ 0 de 4 | 4 |
| Protocolos en crisis | ⬜ 0 de 5 | 5 |
| Seguros | ⬜ 0 de 4 | 4 |
| Postura política pública | ⬜ 0 de 4 | 4 |

---

## 1. Compliance legal

1.1. **¿Tienen personería jurídica vigente?** (verificado parcialmente — confirmar fecha de vencimiento):
_[respuesta]_

1.2. **¿Habilitación municipal vigente?**
_[respuesta]_

1.3. **Habilitación MSPBS para clínica:**
🟡 Confirmado que necesitan — número exacto **[VERIFY]**

1.4. **¿Cumplen con la Ley 6534/2020 de protección de datos personales de Paraguay?**
_[respuesta]_ (probable sí pero confirmar)

1.5. **¿Tienen registro en la SET (Subsecretaría de Estado de Tributación) como Asociación exenta?**
_[respuesta]_

1.6. **¿Tienen algún compliance officer designado?**
_[respuesta]_

1.7. **¿Cumplen con la Ley 1682/01 contra violencia doméstica?** (relevante por refugio):
_[respuesta]_

1.8. **¿Cumplen con la Ley 5777/16 de protección integral a las mujeres contra toda forma de violencia?**
_[respuesta]_

1.9. **¿Cumplen con códigos de construcción + accesibilidad?**
_[respuesta]_

1.10. **¿Tienen licencias municipales para eventos públicos?** (Pride, Besatón):
_[respuesta]_

1.11. **¿Han tenido alguna multa o sanción regulatoria en los últimos 5 años?**
_[respuesta]_

1.12. **¿Cumplen con las normas anti-lavado (SEPRELAD)?**
_[respuesta]_

---

## 2. Datos personales y de salud

> **CRÍTICO:** Paraguay no tiene equivalente GDPR, pero la Ley 6534/2020 establece principios similares. Adicionalmente, las clínicas que procesan datos de salud tienen obligaciones reforzadas.

2.1. **¿Tienen DPO (Data Protection Officer) designado?**
_[respuesta]_

2.2. **¿Tienen política de privacidad escrita y pública?**
❌ No (sitio actual no tiene) — **prioridad post-launch**

2.3. **¿Tienen aviso de privacidad en formato de "lo que recolectamos + cómo lo usamos + tus derechos"?**
_[respuesta]_

2.4. **¿Tienen proceso para solicitudes de acceso / rectificación / eliminación?**
_[respuesta]_

2.5. **¿Tienen política de retención de datos?** (cuánto tiempo se guardan datos clínicos):
_[respuesta]_

2.6. **¿Comparten datos con terceros?**
- 🟡 PRONASIDA (notificación obligatoria)
- 🟡 ¿Investigadores?
- 🟡 ¿Otros?

2.7. **¿Tienen cláusulas de confidencialidad firmadas por personal / voluntarios?**
_[respuesta]_

2.8. **¿Usan encryption at rest para datos sensibles?**
_[respuesta]_

2.9. **¿Usan HTTPS para todo tráfico?**
✅ Sí (verificado TLS en sitio actual)

2.10. **¿Tienen backup de datos?** (frecuencia, dónde, encriptación):
_[respuesta]_

2.11. **¿Han tenido alguna brecha de datos?**
_[respuesta]_

2.12. **¿Tienen plan de respuesta a incidentes?** (qué hacer si hay breach):
_[respuesta]_

---

## 3. Seguridad física

3.1. **¿Tienen seguridad privada en Independencia Nacional 1032?**
_[respuesta]_

3.2. **¿Tienen cámaras de seguridad?**
_[respuesta]_

3.3. **¿Tienen control de acceso al área clínica?**
_[respuesta]_

3.4. **¿Han tenido amenazas o ataques físicos en los últimos 5 años?**
_[respuesta]_

3.5. **¿Tienen refugio alternativo en caso de ataque al local principal?**
_[respuesta]_

3.6. **¿Tienen protocolo de evacuación?**
_[respuesta]_

3.7. **¿Tienen seguro contra incendio / robo / vandalismo?**
_[respuesta]_

---

## 4. Protocolos en crisis

4.1. **¿Tienen protocolo para paciente con ideación suicida?**
_[respuesta]_

4.2. **¿Tienen protocolo para paciente víctima de violencia sexual?**
_[respuesta]_

4.3. **¿Tienen protocolo para paciente que reporta LGBTIfobia?**
_[respuesta]_

4.4. **¿Tienen protocolo para amenaza a sede o personal?**
_[respuesta]_

4.5. **¿Tienen protocolo para incidentes de mala praxis?**
_[respuesta]_

4.6. **¿Tienen protocolo para crisis pública** (comunicación a medios, posicionamiento oficial):
_[respuesta]_

4.7. **¿Tienen seguro de responsabilidad civil profesional?**
_[respuesta]_

4.8. **¿Tienen acuerdo con abogado(s) de respuesta rápida?**
_[respuesta]_

4.9. **¿Tienen protocolo para periodistas agresivos / cámaras inesperadas?**
_[respuesta]_

---

## 5. Seguros

5.1. **Seguro de responsabilidad civil general:**
_[respuesta]_

5.2. **Seguro de mala praxis médica:**
_[respuesta]_

5.3. **Seguro de propiedad:**
_[respuesta]_

5.4. **Seguro de vehículos (si tienen):**
_[respuesta]_

5.5. **Seguro para voluntarios / board:**
_[respuesta]_

5.6. **Seguro de viaje (si hay):**
_[respuesta]_

5.7. **¿Tienen corredor de seguros?** (asesor):
_[respuesta]_

---

## 6. Postura política pública + advocacy

6.1. **¿Tienen una postura oficial escrita sobre temas políticos?**
_[respuesta]_ (probable sí para matrimonio igualitario, educación sexual)

6.2. **¿Tienen protocolos para responder a declaraciones del gobierno?**
_[respuesta]_

6.3. **¿Tienen aliados políticos identificados?** (diputados aliados, alcaldías):
_[respuesta]_

6.4. **¿Tienen postura sobre Peña específicamente?**
_[respuesta]_

6.5. **¿Tienen alianzas con AIREANA + Panambi para advocacy conjunta?**
✅ Sí (Co-Marcha del Orgullo + Mes de Memorias 108)

6.6. **¿Tienen estrategia de comunicación en crisis políticos?**
_[respuesta]_

---

## 7. OPSEC digital (para el nuevo sitio)

> **Esta sección es específica al rebuild de Ai-Whisperers.** Las preguntas aquí definen decisiones técnicas que afectarán el diseño del sitio.

7.1. **¿Qué nivel de amenaza perciben?** (bajo = solo vandalismo casual; medio = campañas anti-LGBT+; alto = confiscación de dominio):
_[respuesta]_

7.2. **¿Han tenido DDoS / defacement del sitio actual?**
_[respuesta]_

7.3. **¿Tienen passwords compartidos en Google Sheets o similar?** (OPSEC anti-pattern):
_[respuesta]_

7.4. **¿Cuántas personas tienen acceso al hosting actual / domain registrar?**
_[respuesta]_

7.5. **¿Tienen 2FA en todas las cuentas críticas?** (email, hosting, social media):
_[respuesta]_

7.6. **¿Usan Signal / Wire / apps cifradas para comunicación interna?**
_[respuesta]_

7.7. **¿Tienen protocolo para no publicar info sensible en redes sociales?** (ej: fachada del refugio):
_[respuesta]_

7.8. **¿Tienen plan para si el sitio es confiscado / bloqueado?** (mirror, .onion):
_[respuesta]_

7.9. **¿Tienen VPN recomendado para personal / voluntarios?**
_[respuesta]_

7.10. **¿Tienen política de device security?** (no perder laptops, disk encryption):
_[respuesta]_

---

## 8. Datos en plataformas externas

8.1. **¿Dónde almacenan archivos?** (Google Drive, Dropbox, own server):
_[respuesta]_

8.2. **¿Dónde corren email?** (Google Workspace, Microsoft 365, own):
_[respuesta]_

8.3. **¿Dónde corren CRM?** (si tienen — HubSpot, Salesforce, Airtable):
_[respuesta]_

8.4. **¿Dónde corren herramientas de comunicación?** (Slack, Teams, Discord):
_[respuesta]_

8.5. **¿Dónde corren herramientas de diseño?** (Figma, Canva, Adobe):
_[respuesta]_

8.6. **¿Tienen single sign-on (SSO)?**
_[respuesta]_

8.7. **¿Tienen password manager corporativo?** (1Password, Bitwarden):
_[respuesta]_

8.8. **¿Tienen políticas BYOD?** (Bring Your Own Device):
_[respuesta]_

---

## 9. Riesgos específicos para rebuild de Ai-Whisperers

9.1. **¿Hay datos / documentos que NO deben migrarse al nuevo sitio?** (ej: archivos viejos con info de donantes que no quieren seguir recibiendo):
_[respuesta]_

9.2. **¿Hay datos que deben quedarse en formato impreso?** (firmas de consentimiento, contratos):
_[respuesta]_

9.3. **¿Tienen política sobre contenido de advocacy que podría ser controversial?** (limitaciones autoimpuestas):
_[respuesta]_

9.4. **¿Tienen directrices sobre uso de fotos de personas en el sitio?** (consentimiento, anonymization):
_[respuesta]_

9.5. **¿Tienen directrices sobre uso de fotos de menores?**
_[respuesta]_

9.6. **¿Tienen directrices sobre datos de pacientes?** (anonimización para case studies):
_[respuesta]_

---

## Sources

- Ley 6534/2020 Paraguay — Protección de Datos Personales
- Ley 1682/01 Paraguay — Contra Violencia Doméstica
- Ley 5777/16 Paraguay — Protección Integral a las Mujeres
- https://www.ibanet.org/article/3263508E-230C-4B0C-8DD5-6CCB9D203774 (IBA 2019 — physical security context)
- https://www.abc.com.py/nacionales/2024/06/28/derechos-lgbt-en-paraguay-matrimonio-igualitario-a-la-vista/ (political context)
- https://www.amnesty.org/en/latest/news/2026/04/russia-russian-lgbt-network-is-labelled-extremist-in-escalating-crackdown-on-lgbti-rights/ (Russia precedent)
- https://www.hrw.org/report/2025/05/26/theyre-putting-our-lives-risk/how-ugandas-anti-lgbt-climate-unleashes-abuse (Uganda precedent)
- `docs/02_research/hosting-domain.md` (Cloudflare + .onion + OPSEC)