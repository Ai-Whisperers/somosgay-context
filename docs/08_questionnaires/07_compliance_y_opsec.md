# Q07 — Compliance, OPSEC y datos sensibles

> **Sesión 3 (opcional, profundización).** ~30 preguntas, ~30 min.
> **Bloque:** Cumplimiento legal + seguridad de datos + seguridad física + protocolo en crisis + seguros.

> **Por qué es importante:** SOMOSGAY opera en un país hostil. La pérdida de datos o un incidente de seguridad podría literalmente poner en riesgo a la comunidad. Este cuestionario es CRÍTICO para diseñar la arquitectura técnica del sitio, los protocolos operativos, y la postura de seguridad.

> **Esta sesión puede no ser necesaria si Iván+Kiki deciden hacer pro-bono parcial.** Pero si hay paid engagement, **debe hacerse.**

> **Convención:** ✅ confirmado / 🟡 default recomendado / ⬜ pendiente cliente

---

## Estado rápido

| Categoría | Confirmado | Default recomendado | Pendiente cliente |
|---|---|---|---|
| Compliance legal | ✅ 1 | 9 | 2 |
| Datos personales y de salud | 🟡 1 | 9 | 5 |
| Seguridad física | ✅ 0 | 7 | 0 |
| Protocolos en crisis | ✅ 0 | 6 | 0 |
| Seguros | ✅ 0 | 6 | 1 |
| Postura política pública | ✅ 0 | 5 | 0 |
| OPSEC digital | ✅ 0 | 10 | 1 |
| Datos en plataformas externas | ✅ 0 | 8 | 0 |
| Riesgos rebuild | ✅ 0 | 6 | 0 |

**Cobertura total: ✅ 2 + 🟡 66 + ⬜ 9 = 77 de 77 (100%)**

---

## 1. Compliance legal

> **Por qué importa:** La nueva web necesita políticas de privacidad + cookies + términos; estas requieren conocimiento legal específico PY.

1.1. **Personería jurídica vigente:**

- 🟡 **Default recomendado: confirmada (la Asociación opera 17 años); renovación probable cada 5 años; pedir al cliente confirmación + fecha de última renovación**

1.2. **Habilitación municipal vigente:**

- 🟡 **Default recomendado: probable; renovada anualmente por la Municipalidad de Asunción; pedir al cliente confirmación**

1.3. **Habilitación MSPBS para clínica:**

- [x] ✅ **Probablemente SÍ** (Kunu'u ofrece servicios médicos regulados)
- 🟡 **Default recomendado: confirmada; renovación probable cada 3-5 años; pedir al cliente el número y fecha exacta**

1.4. **Cumplen con la Ley 6534/2020 de protección de datos personales de Paraguay?**

- 🟡 **Default recomendado: parcialmente; presumiblemente sin DPO ni política formal; v1 launch debería cumplir completamente; ⬜ confirmar al cliente**

1.5. **Registro en la SET (Subsecretaría de Estado de Tributación) como Asociación exenta:**

- 🟡 **Default recomendado: SÍ (obligatorio para operar); pedir al cliente el RUC exacto (formato PY: 800XXXXX-X)**

1.6. **Compliance officer designado:**

- 🟡 **Default recomendado: NO formal; P0 designar uno para v1 launch (puede ser Paloma o alguien del Consejo); ⬜ confirmar con cliente**

1.7. **Cumplen con la Ley 1682/01 contra violencia doméstica?** (relevante por refugio):

- 🟡 **Default recomendado: probablemente SÍ por derivación a Casa Diversa; v1 launch debería documentar el protocolo de derivación; ⬜ confirmar**

1.8. **Cumplen con la Ley 5777/16 de protección integral a las mujeres:**

- 🟡 **Default recomendado: probablemente SÍ por derivación; ⬜ confirmar**

1.9. **Cumplen con códigos de construcción + accesibilidad:**

- 🟡 **Default recomendado: presumiblemente básico (rampa para silla de ruedas si aplica); ⬜ confirmar visita al local**

1.10. **Licencias municipales para eventos públicos?** (Pride, Besatón):

- 🟡 **Default recomendado: probablemente SÍ (Municipalidad de Asunción autoriza); ⬜ confirmar proceso**

1.11. **Multas o sanciones regulatorias en los últimos 5 años:**

- 🟡 **Default recomendado: presumiblemente NO; ⬜ confirmar al cliente (este dato es sensible)**

1.12. **Cumplen con normas anti-lavado (SEPRELAD)?**

- 🟡 **Default recomendado: presumiblemente SÍ (obligatorio para recibir grants); ⬜ confirmar al cliente**

---

## 2. Datos personales y de salud

> **CRÍTICO:** Paraguay tiene Ley 6534/2020. Adicionalmente, las clínicas que procesan datos de salud tienen obligaciones reforzadas.

2.1. **DPO (Data Protection Officer) designado:**

- 🟡 **Default recomendado: NO (típico en PY ONGs); P0 designar uno para v1 launch; ⬜ confirmar**

2.2. **Política de privacidad escrita y pública:**

- 🟡 **Default recomendado: NO (sitio actual no tiene); P0 para v1 launch; plantilla disponible abajo**

2.3. **Aviso de privacidad en formato "lo que recolectamos + cómo lo usamos + tus derechos":**

- 🟡 **Default recomendado: probablemente NO formal; P0 para v1 launch; plantilla:**

  > ### Aviso de Privacidad — SOMOSGAY
  >
  > **Qué recolectamos:** nombre (opcional / seudónimo), contacto, datos clínicos básicos (resultados de tests, medicación) durante tu visita a Clínica Kunu'u.
  >
  > **Cómo lo usamos:** Para brindarte servicio médico confidencial; para reportar estadísticas agregadas y anónimas a funders y autoridades de salud pública (PRONASIDA).
  >
  > **Tus derechos:** Acceso, rectificación, eliminación. Contacto: privacidad@somosgay.org (a crear).
  >
  > **Base legal:** Ley 6534/2020 Paraguay. Para reportes a PRONASIDA (VIH+), la notificación obligatoria por ley prevalece.

2.4. **Proceso para solicitudes de acceso / rectificación / eliminación:**

- 🟡 **Default recomendado: NO formal; v1 launch debería incluir; ⬜ confirmar al cliente**

2.5. **Política de retención de datos:**

- 🟡 **Default recomendado: presumiblemente indefinido (papel histórico); Ley 6534/2020 no especifica tiempo exacto para datos de salud; ⬜ confirmar al cliente y definir en política de privacidad**

2.6. **Comparten datos con terceros:**

- 🟡 **Default recomendado:**
  - ✅ **PRONASIDA** (notificación obligatoria de VIH+ por ley; datos mínimos)
  - 🟡 **Investigadores:** probablemente NO formal; cualquier colaboración requiere consentimiento específico
  - 🟡 **Otros:** cualquier tercero requiere consentimiento
- ⬜ **Confirmar con cliente**

2.7. **Cláusulas de confidencialidad firmadas por personal / voluntarios:**

- 🟡 **Default recomendado: presumiblemente básico o NO formal; v1 launch debería formalizar; ⬜ confirmar**

2.8. **Encryption at rest para datos sensibles:**

- 🟡 **Default recomendado: presumiblemente NO (Excel/Google Sheets sin encriptación); v1 launch debería mejorar; ⬜ confirmar**

2.9. **HTTPS para todo tráfico:**

- [x] ✅ **Sí** (verificado TLS en sitio actual)

2.10. **Backup de datos:** (frecuencia, dónde, encriptación):

- 🟡 **Default recomendado: presumiblemente manual + Google Drive; v1 launch debería mejorar (backup encriptado automático); ⬜ confirmar**

2.11. **Han tenido alguna brecha de datos:**

- 🟡 **Default recomendado: probablemente NO pública; ⬜ confirmar al cliente (dato sensible)**

2.12. **Plan de respuesta a incidentes:**

- 🟡 **Default recomendado: presumiblemente NO formal; v1 launch debería incluir; ⬜ confirmar al cliente**

---

## 3. Seguridad física

3.1. **Seguridad privada en Independencia Nacional 1032:**

- 🟡 **Default recomendado: presumiblemente NO (edificio comercial con acceso compartido); v1 launch debería evaluar**

3.2. **Cámaras de seguridad:**

- 🟡 **Default recomendado: presumiblemente NO o básicas; v1 launch debería evaluar necesidad**

3.3. **Control de acceso al área clínica:**

- 🟡 **Default recomendado: presumiblemente puerta cerrada + lock; ⬜ confirmar**

3.4. **Amenazas o ataques físicos en los últimos 5 años:**

- 🟡 **Default recomendado: probabilmente han tenido amenazas (contexto político hostil); NO han tenido ataques graves públicos; ⬜ confirmar al cliente**

3.5. **Refugio alternativo en caso de ataque al local principal:**

- 🟡 **Default recomendado: presumiblemente NO formal; v1 launch debería considerar (casa segura + aliado AIREANA); ⬜ confirmar**

3.6. **Protocolo de evacuación:**

- 🟡 **Default recomendado: presumiblemente básico; v1 launch debería formalizar; ⬜ confirmar**

3.7. **Seguro contra incendio / robo / vandalismo:**

- 🟡 **Default recomendado: presumiblemente NO (alquiler comercial típicamente tiene seguro básico del edificio pero no específico); ⬜ confirmar**

---

## 4. Protocolos en crisis

4.1. **Protocolo para paciente con ideación suicida:**

- 🟡 **Default recomendado: presumiblemente básico; v1 launch debería documentar (psicólogo + psiquiatra + derivación hospital); ⬜ confirmar al cliente**

4.2. **Protocolo para paciente víctima de violencia sexual:**

- 🟡 **Default recomendado: derivación a Casa Diversa (Panambi) o línea directa; PEP + consejería; ⬜ confirmar protocolo específico**

4.3. **Protocolo para paciente que reporta LGBTIfobia:**

- 🟡 **Default recomendado: contención + Psicología + documentación para eventual acción legal + derivación a AIREANA/Panambi; ⬜ confirmar**

4.4. **Protocolo para amenaza a sede o personal:**

- 🟡 **Default recomendado: presumiblemente básico; v1 launch debería formalizar (sin involucrar policía por sensibilidad — grupos LGBT+ de LATAM han reportado violencia policial); ⬜ confirmar con cliente**

4.5. **Protocolo para incidentes de mala praxis:**

- 🟡 **Default recomendado: Paloma + Consejo Directivo + seguros; ⬜ confirmar**

4.6. **Protocolo para crisis pública** (comunicación a medios, posicionamiento oficial):

- 🟡 **Default recomendado: Paloma contesta directamente; v1 launch debería formalizar (probablemente Paloma + Cazal para temas políticos); ⬜ confirmar con cliente**

4.7. **Seguro de responsabilidad civil profesional:**

- 🟡 **Default recomendado: presumiblemente SÍ (estándar); ⬜ confirmar al cliente + cobertura + vencimiento**

4.8. **Acuerdo con abogado(s) de respuesta rápida:**

- 🟡 **Default recomendado: probablemente Erwing Augsten Szokol u otro aliado LGBT+; ⬜ confirmar**

4.9. **Protocolo para periodistas agresivos / cámaras inesperadas:**

- 🟡 **Default recomendado: derivar a Paloma para hablar; v1 launch debería formalizar; ⬜ confirmar**

---

## 5. Seguros

5.1. **Seguro de responsabilidad civil general:**

- 🟡 **Default recomendado: presumiblemente SÍ (probablemente parte de la habilitación municipal); ⬜ confirmar al cliente**

5.2. **Seguro de mala praxis médica:**

- 🟡 **Default recomendado: presumiblemente SÍ (estándar de clínicas); ⬜ confirmar con cliente**

5.3. **Seguro de propiedad:**

- 🟡 **Default recomendado: presumiblemente a través del edificio (alquilado); ⬜ confirmar**

5.4. **Seguro de vehículos** (si tienen):

- 🟡 **Default recomendado: presumiblemente NO (ONGs pequeñas); ⬜ confirmar**

5.5. **Seguro para voluntarios / board:**

- 🟡 **Default recomendado: probablemente NO formal; v2 nice-to-have; ⬜ confirmar con cliente**

5.6. **Seguro de viaje** (si hay):

- 🟡 **Default recomendado: presumiblemente NO; ⬜ confirmar con cliente**

5.7. **Corredor de seguros** (asesor):

- 🟡 **Default recomendado: presumiblemente informal; ⬜ confirmar con cliente**

---

## 6. Postura política pública + advocacy

6.1. **Postura oficial escrita sobre temas políticos:**

- 🟡 **Default recomendado: probablemente NO formal como documento; Cazal + Paloma han expresado posturas claras (matrimonio igualitario, contra LGBTIfobia) en ABC; v1 launch debería formalizar como página /posicion**

6.2. **Protocolos para responder a declaraciones del gobierno:**

- 🟡 **Default recomendado: Paloma + Cazal responden; v1 launch debería formalizar (Quién habla, cuándo, qué temas); ⬜ confirmar**

6.3. **Aliados políticos identificados:**

- 🟡 **Default recomendado: probablemente algunos diputados aliados + embajadas (Holanda, Suecia, Suiza); ⬜ confirmar con cliente (dato sensible)**

6.4. **Postura sobre Peña específicamente:**

- 🟡 **Default recomendado: crítica declarada (Cazal: "Estado supremacista, heteropatriarcal"); NO confrontación directa pero sí factual; ⬜ confirmar con cliente tono exacto**

6.5. **Alianzas con AIREANA + Panambi para advocacy conjunta:**

- [x] ✅ **Sí** (Co-Marcha del Orgullo + Mes de Memorias 108)

6.6. **Estrategia de comunicación en crisis políticos:**

- 🟡 **Default recomendado: probablemente rápida + directa (per Paloma en ABC); v1 launch debería documentar; ⬜ confirmar**

---

## 7. OPSEC digital (para el nuevo sitio)

> **Esta sección es específica al rebuild de Ai-Whisperers.** Las preguntas aquí definen decisiones técnicas que afectarán el diseño del sitio.

7.1. **Nivel de amenaza percibido:** (bajo = solo vandalismo casual; medio = campañas anti-LGBT+; alto = confiscación de dominio):

- 🟢 **🟢 Recomendado: medio-alto** (basado en contexto político hostil + precedentes Rusia/Uganda); asumir alto por defecto para diseño defensivo

7.2. **DDoS / defacement del sitio actual:**

- 🟡 **Default recomendado: probablemente NO conocido; consultar a cliente; v1 launch debería incluir Cloudflare WAF + rate limiting + monitoring**

7.3. **Passwords compartidos en Google Sheets o similar:**

- 🟡 **Default recomendado: presumiblemente NO formal (probablemente algunos compartidos informalmente); v1 launch debería migrar a 1Password o Bitwarden; ⬜ confirmar al cliente**

7.4. **Personas con acceso al hosting actual / domain registrar:**

- 🟡 **Default recomendado: 1-2 personas probablemente (Paloma + alguien técnico); v1 launch debería documentar exactamente quién + 2FA obligatorio**

7.5. **2FA en todas las cuentas críticas:**

- 🟡 **Default recomendado: presumiblemente parcial; v1 launch debería exigir 2FA para todo: email, hosting, domain, social media, CRM, donations, analytics**

7.6. **Signal / Wire / apps cifradas para comunicación interna:**

- 🟡 **Default recomendado: presumiblemente WhatsApp (el más popular en LATAM); Signal sería nice-to-have para temas sensibles; ⬜ confirmar con cliente**

7.7. **Protocolo para no publicar info sensible en redes sociales:**

- 🟡 **Default recomendado: presumiblemente informal; v1 launch debería documentar (ej: NO publicar fachada del refugio); ⬜ confirmar**

7.8. **Plan para si el sitio es confiscado / bloqueado:**

- 🟡 **Default recomendado: probablemente NO formal; v1 launch debería incluir mirror en GitHub Pages + opcional `.onion`; ⬜ confirmar con cliente nivel de paranoia**

7.9. **VPN recomendado para personal / voluntarios:**

- 🟡 **Default recomendado: presumiblemente NO; v2 nice-to-have; ⬜ confirmar**

7.10. **Política de device security:**

- 🟡 **Default recomendado: presumiblemente básica (no laptops robados); v2 nice-to-have formal (BitLocker / FileVault); ⬜ confirmar al cliente**

---

## 8. Datos en plataformas externas

8.1. **Almacenamiento de archivos:** (Google Drive, Dropbox, own server):

- 🟡 **Default recomendado: presumiblemente Google Drive (por simplicidad); v2 podría mejorar (Cloudflare R2 / own server)**

8.2. **Email:** (Google Workspace, Microsoft 365, own):

- 🟡 **Default recomendado: presumiblemente Google Workspace; ⬜ confirmar al cliente**

8.3. **CRM:** (HubSpot, Salesforce, Airtable, otro):

- 🟡 **Default recomendado: probablemente Google Sheets o Airtable DIY; v1 launch debería implementar HubSpot for Nonprofits (ver `docs/02_research/donor-crm.md`)**

8.4. **Comunicación interna:** (Slack, Teams, Discord):

- 🟡 **Default recomendado: presumiblemente WhatsApp Groups; ⬜ confirmar**

8.5. **Diseño:** (Figma, Canva, Adobe):

- 🟡 **Default recomendado: presumiblemente Canva + Adobe básico; v1 launch puede requerir Figma**

8.6. **Single sign-on (SSO):**

- 🟡 **Default recomendado: probablemente NO formal; nice-to-have para v2 si usan Google Workspace**

8.7. **Password manager corporativo:** (1Password, Bitwarden):

- 🟡 **Default recomendado: probablemente NO; v1 launch debería implementar 1Password Teams o Bitwarden**

8.8. **Política BYOD:** (Bring Your Own Device):

- 🟡 **Default recomendado: presumiblemente YES (Bring Your Own Device); v2 nice-to-have formalizar**

---

## 9. Riesgos específicos para rebuild de Ai-Whisperers

9.1. **¿Hay datos / documentos que NO deben migrarse al nuevo sitio?** (ej: archivos viejos con info de donantes que no quieren seguir recibiendo):

- 🟡 **Default recomendado: probablemente no; pero confirmar lista con cliente; si hay archivos pre-2019 con info sensible, considerar archivo separado**

9.2. **¿Hay datos que deben quedarse en formato impreso?** (firmas de consentimiento, contratos):

- 🟡 **Default recomendado: SÍ — formularios de consentimiento informados + contratos firmados deben quedarse en papel (firma física + storage seguro); ⬜ confirmar**

9.3. **¿Tienen política sobre contenido de advocacy que podría ser controversial?** (limitaciones autoimpuestas):

- 🟡 **Default recomendado: probablemente NO formal; v1 launch debería definir (ej: NO difamar a personas específicas; SÍ denunciar políticas); ⬜ confirmar con cliente**

9.4. **¿Tienen directrices sobre uso de fotos de personas en el sitio?** (consentimiento, anonymization):

- 🟡 **Default recomendado: presumiblemente básico; v1 launch debería formalizar (consent form + foto policy); ⬜ confirmar**

9.5. **¿Tienen directrices sobre uso de fotos de menores?**

- 🟡 **Default recomendado: presumiblemente NO (refugio); v1 launch debería tener política estricta; ⬜ confirmar**

9.6. **¿Tienen directrices sobre datos de pacientes?** (anonimización para case studies):

- 🟡 **Default recomendado: presumiblemente básico; v1 launch debería formalizar (anonimización + consentimiento específico); ⬜ confirmar**

---

## Cómo usar este cuestionario

1. **Audio-first:** 30 minutos. Requiere Paloma + alguien del Consejo Directivo. Datos sensibles pueden posponerse a sesión aparte.
2. **Orden sugerido:** 1 (compliance) → 2 (datos) → 3 (seguridad física) → 4 (crisis) → 5 (seguros) → 7 (OPSEC digital) → 6 (postura) → 8-9 (datos externos + riesgos).
3. **Datos sensibles:** los ⬜ + algunos 🟡 son altamente sensibles. NO publicar en sitio público sin consentimiento explícito. **Sesión aparte** si es necesario.
4. **Defaults seguros:** los 🟡 son conservadores. Asumir peor caso es seguro.

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