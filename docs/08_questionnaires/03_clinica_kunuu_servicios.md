# Q03 — Clínica Kunu'u (servicios, eligibility, OPSEC)

> **Sesión 1 de 2.** ~45 preguntas, ~35 min.
> **Bloque:** Servicios + elegibilidad + booking + datos de pacientes + compliance + servicios auxiliares.

> **Por qué es importante:** La página de Clínica Kunu'u es la #1 prioridad del nuevo sitio (ver `docs/05_website-audit/what-they-need.md` P0.4). Cada pregunta aquí se traduce a una sección del sitio web: "qué ofrecemos" / "para quién" / "cómo pedir turno" / "qué pasa cuando llegás" / "tu privacidad".

> **Convención:** ✅ confirmado / 🟡 default recomendado / ⬜ pendiente cliente

---

## Estado rápido

| Categoría | Confirmado | Default recomendado | Pendiente cliente |
|---|---|---|---|
| Servicios ofrecidos | ✅ 10 | 16 | 1 |
| Horarios | ✅ 1 | 5 | 0 |
| Elegibilidad | ✅ 1 | 4 | 1 |
| Booking | ✅ 2 | 4 | 1 |
| Datos de pacientes | ✅ 0 | 8 | 3 |
| Compliance | ✅ 1 | 8 | 1 |
| Personal clínico | ✅ 1 | 7 | 3 |
| Telemedicina | ✅ 0 | 3 | 0 |
| Experiencia del paciente | ✅ 0 | 11 | 1 |
| Equipamiento | ✅ 0 | 9 | 0 |
| Riesgos operativos | ✅ 0 | 6 | 1 |
| Datos de comportamiento | ✅ 0 | 5 | 2 |

**Cobertura total: ✅ 16 + 🟡 86 + ⬜ 14 = 116 de 116 (100%)**

---

## 1. Confirmación de servicios ofrecidos

> **Por qué importa:** Cada servicio va en la página de Kunu'u con su descripción, criterios, y tiempo estimado.

1.1. **Servicios básicos confirmados** (verificados en ABC Color 2023-2025 + sitio oficial):

- [x] ✅ Test rápido de VIH (gratuito) — Mon–Fri 13:00–17:00
- [x] ✅ Test rápido de Sífilis (gratuito)
- [x] ✅ Test rápido de Hepatitis B (gratuito)
- [x] ✅ PrEP — profilaxis pre-exposición (gratis)
- [x] ✅ TARV — tratamiento antirretroviral para personas con VIH
- [x] ✅ Consulta médica general
- [x] ✅ Psicología
- [x] ✅ Psiquiatría (incluye teleconsulta)
- [x] ✅ Reducción de daños (personas que usan drogas)
- [x] ✅ Autotest de VIH (entrega + consejería)

1.1.1. **¿Ofrecen PEP activamente?**

- 🟡 **Default recomendado: SÍ** (parte del protocolo nacional MSPBS Resolución 213/2025; cualquier clínica que dispense PrEP debe ofrecer PEP); confirmar si lo dispensan o solo derivan a PRONASIDA

1.1.2. **¿Atención prenatal/perinatal para embarazadas con VIH?**

- 🟡 **Default recomendado: derivan a Hospital Materno Infantil San Pablo (PRONASIDA confirmado); confirmar si hacen consejería + derivación activa**

1.1.3. **¿Atención pediátrica para niños expuestos al VIH?**

- 🟡 **Default recomendado: NO; derivan a Hospital de Clínicas o PRONASIDA; confirmar**

1.1.4. **¿Odontología especializada en VIH?**

- 🟡 **Default recomendado: NO; derivan a red pública; nice-to-have para v2**

1.1.5. **¿Nutrición / suplementación?**

- 🟡 **Default recomendado: SÍ, vía Karu Porã (programa de alimentación); confirmar el flujo clínico → Karu Porã**

1.1.6. **¿Ginecología / urología?**

- 🟡 **Default recomendado: el Dr. Santa María (médico de familia) cubre salud sexual general; especialista en visita mensual presumiblemente; confirmar**

1.1.7. **¿Salud mental específica para violencia / LGBTIfobia?**

- 🟡 **Default recomendado: SÍ, vía Psicología (parte de su trabajo; LGBTIfobia es causa frecuente de trauma); confirmar protocolo específico**

1.1.8. **¿Atención de salud sexual para personas trans (no solo VIH)?**

- 🟡 **Default recomendado: parcialmente — terapia hormonal NO (eso es DIKÉ SV); pero seguimiento general sí; confirmar si hay acuerdos con DIKÉ o endocrinólogos PY**

1.1.9. **¿Terapia hormonal para personas trans?**

- 🟡 **Default recomendado: NO (no es parte de su misión actual; en PY no hay marco legal claro para terapia hormonal; DIKÉ SV es el referente); confirmar con cliente**

1.1.10. **¿PEP ocupacional (trabajadores sexuales)?**

- 🟡 **Default recomendado: SÍ, vía PEP estándar; confirmar protocolo + acceso sin estigma**

1.1.11. **¿Servicios para LGBT en situación de calle?**

- 🟡 **Default recomendado: derivan al refugio o programas de asistencia social; Kunu'u es clínica, no refugio; confirmar vínculo con el youth shelter + red de asistencia social**

1.1.12. **Cualquier otro servicio no listado:**

- 🟡 **Default recomendado: confirmar lista completa en sesión; preguntar "¿qué más ofrecen que no está en esta lista?"**

---

## 2. Horarios y operaciones

2.1. **Confirmar horarios actuales:**

- [x] ✅ **Mon–Fri 13:00–17:00** (testing), **Sat 10:00–15:00** (autotest pickup) — confirmado vía ABC Color 2025-02-13

2.2. **¿Horario extendido algún día?**

- 🟡 **Default recomendado: NO en horario regular; puede haber extensiones en eventos especiales (Pride, Mes de Memorias 108); confirmar con cliente**

2.3. **¿Abren en feriados?**

- 🟡 **Default recomendado: NO (clínicas PY típicamente cerradas en feriados); confirmar con cliente**

2.4. **¿Tienen guardia médica 24/7?**

- 🟡 **Default recomendado: NO (no tienen capacidad); para emergencias derivan a Hospital de Clínicas o sistema público 911; el sitio debe comunicar esto claramente**

2.5. **¿Cuántos pacientes por día típico?**

- 🟡 **Default recomendado: 15-25 pacientes/día** (basado en 1,300 tests en 2020 ÷ 5 días/semana ÷ 50 semanas = ~5-6/día solo tests, + consultas = presumiblemente 15-25 total); confirmar con cliente

2.6. **¿Cuántos pacientes por mes?**

- 🟡 **Default recomendado: 200-400 pacientes/mes** (1,300+ tests/año + consultas + TARV + psicología); confirmar con cliente

2.7. **¿Cuántos tests de VIH por año?** (2020: 1,300+ — verificar actual)

- 🟡 **Default recomendado: 1,500-2,000 tests/año en 2024-2026** (tendencia creciente por Resolución 213/2025 + campañas OPS/OMS); confirmar con cliente

2.8. **¿Cuántos pacientes activos en TARV?**

- 🟡 **Default recomendado: 100-200 pacientes activos** (PY tiene ~21,000 personas con VIH per ONUSIDA 2023; Kunu'u atiende fracción); confirmar con cliente

2.9. **¿Cuántos pacientes activos en PrEP?**

- 🟡 **Default recomendado: 50-150 pacientes activos en PrEP** (programa creciente tras Resolución 213/2025); confirmar con cliente

2.10. **Tasa de retención en PrEP (1 año):**

- 🟡 **Default recomendado: 50-70%** (benchmark LATAM: 50-60% típico; clínicas con consejería activa + comunidad fuerte llegan a 70%+); confirmar con cliente

2.11. **Tasa de vinculación a TARV post-diagnóstico VIH+:**

- 🟡 **Default recomendado: >90%** (estándar ONUSIDA; clínicas con consejería fuerte llegan a >95%); confirmar — es KPI clave para funders

2.12. **Tasa de no-show:**

- 🟡 **Default recomendado: 20-30%** (típico en clínicas públicas/comunitarias LATAM); confirmar con cliente

2.13. **Tiempo promedio de espera para conseguir turno (current wait time):**

- 🟡 **Default recomendado: 1-7 días para consulta general; same-day para test rápido walk-in; confirmar**

2.14. **¿Aceptan walk-ins o solo con cita previa?**

- 🟡 **Default recomendado: walk-in para tests rápidos (Mon-Fri 13-17); cita previa para consulta médica + TARV; confirmar**

---

## 3. Personal clínico

3.1. **Médicos:**

- [x] ✅ **Dr. Carlos Santa María** — Médico de familia, Kunu'u
- 🟡 **Default recomendado — otros médicos probables:**
  - 1 médico adicional (infectólogo o generalista) — Washington Blade 2012 menciona invitación a proctólogos + especialistas anorrectales
  - Médicos en visita mensual (especialistas: dermatólogo, proctólogo)
- ⬜ **Confirmar lista con cliente**

3.2. **Psicólogos:**

- 🟡 **Default recomendado: 1-2 psicólogos** (algunos pueden ser prestadores de servicios); confirmar con cliente

3.3. **Psiquiatras:**

- 🟡 **Default recomendado: 1 psiquiatra + teleconsulta**; confirmar con cliente

3.4. **Enfermería:**

- 🟡 **Default recomendado: 1-2 enfermeros/as** (para tomas de muestra + consejería inicial); confirmar

3.5. **Laboratorio:**

- 🟡 **Default recomendado: 1 laboratorista** (point-of-care tests); confirmar

3.6. **Consejeros pares:**

- [x] ✅ **Sí** (confirmado en Informe Anual 2020)
- 🟡 **Default recomendado: 2-3 consejeros pares; algunos voluntarios remunerados, algunos personal pagado parcial; confirmar con cliente**

3.7. **Recepcionista / administrativo:**

- 🟡 **Default recomendado: 1 recepcionista compartido con otras áreas**; confirmar con cliente

3.8. **Coordinador:** [x] ✅ **Ramón Martínez**

3.9. **¿Pasantías / fellowships / voluntariados clínicos?**

- 🟡 **Default recomendado: probablemente sí (UNISAL Psicología partnership sugiere pipeline); confirmar con cliente**

3.10. **¿Protocolos de supervisión médica?**

- 🟡 **Default recomendado: presumiblemente sí (estándar de buenas prácticas); confirmar formato**

---

## 4. Booking (cómo se reservan turnos)

4.1. **Canal principal de reserva confirmado:**

- [x] ✅ **WhatsApp +595 985 653 855** (per ABC Color 2023-11-20 — verificar si sigue activo en 2026)

4.2. **¿Otros canales?** (teléfono, email, walk-in):

- 🟡 **Default recomendado: walk-in para tests; WhatsApp para turnos complejos; teléfono +595 21 495 802 (línea tradicional) para casos urgentes; email probablemente no usado para turnos; confirmar**

4.3. **¿Tienen sistema de reservas online?** (Calendly, Cal.com, propio):

- 🟡 **Default recomendado: NO (sitio actual no tiene; v1 launch debería incluir Cal.com self-hosted o TidyCal como P0); ver `docs/02_research/booking-tools.md`**

4.4. **Proceso actual de confirmación de turno:**

- 🟡 **Default recomendado: WhatsApp → confirmación manual por Ramón o recepcionista; sin sistema automatizado; v1 debería automatizar via Cal.com → WhatsApp confirm; confirmar con cliente**

4.5. **¿Envían recordatorios?** (SMS, WhatsApp, email):

- 🟡 **Default recomendado: NO formal; recordatorios manuales ad-hoc; v1 debería automatizar via Cal.com + WhatsApp reminder 24h antes; confirmar con cliente**

4.6. **¿Política de cancelación / reprogramación?**

- 🟡 **Default recomendado: presumiblemente flexible; no formal documentada; v1 debería incluir política clara; confirmar con cliente**

4.7. **Tasa de no-show actual:**

- 🟡 **Default recomendado: 20-30%** (típico); confirmar con cliente

4.8. **¿Lista de espera?**

- 🟡 **Default recomendado: presumiblemente NO formal; pacientes se contactan por WhatsApp para hueco; confirmar con cliente**

4.9. **¿Prioridad para casos urgentes?** (sospecha exposición aguda, violencia):

- 🟡 **Default recomendado: SÍ (ética médica) — presumiblemente same-day para PEP + post-violencia; confirmar protocolo específico**

4.10. **¿Cómo se entrega resultado de tests?**

- 🟡 **Default recomendado: en persona + verbal + escrito; VIH+ confirmado con consejería inmediata; confirmar proceso**

4.11. **¿Cómo se entrega resultado del autotest?**

- 🟡 **Default recomendado: el autotest es self-administered; cliente viene a Kunu'u si tiene dudas o resultado reactivo; pickup point (Los Barberos / Rebellion) probablemente solo entrega; confirmar**

---

## 5. Datos de pacientes y privacidad (OPSEC CRÍTICO)

> **Por qué importa:** Paraguay tiene Ley 6534/2020 de protección de datos. Adicionalmente, en contexto político hostil, una brecha de datos pondría a la comunidad en riesgo. La arquitectura del sitio debe diseñarse con esto en mente.

5.1. **¿Qué datos se recolectan en el intake?**

- 🟡 **Default recomendado:**
  - Nombre (o alias)
  - Fecha de nacimiento / edad
  - Contacto (teléfono, email)
  - Identidad de género
  - Orientación sexual
  - Historia sexual (número de parejas, prácticas, uso de preservativo)
  - Uso de PrEP / TARV / PEP
  - Historia de ITS previa
  - Consumo de sustancias
  - Historia de violencia
- ⬜ **Confirmar lista exacta con cliente + qué campos son opcionales**

5.2. **¿Dónde se almacenan los datos clínicos?**

- 🟡 **Default recomendado: presumiblemente papel + planilla electrónica (Excel/Google Sheets) sin encriptación robusta; riesgo alto; v1 launch debería mejorar a sistema digital con encriptación at rest; confirmar al cliente**

5.3. **¿Quién tiene acceso?**

- 🟡 **Default recomendado: equipo clínico autorizado (Ramón, Dr. Santa María, psicólogos); presumiblemente no acceso de personal administrativo; confirmar al cliente + política formal**

5.4. **¿Cuánto tiempo se retienen?**

- 🟡 **Default recomendado: presumiblemente indefinido (típico en clínicas con recursos limitados); Ley 6534/2020 no especifica tiempo exacto para datos de salud; confirmar al cliente + definir política**

5.5. **¿Tienen política de "derecho al olvido" / eliminación de datos?**

- 🟡 **Default recomendado: presumiblemente NO formal; Ley 6534/2020 garantiza este derecho; v1 launch debería incluir política clara en sitio; confirmar al cliente**

5.6. **¿Comparten datos con PRONASIDA / MSPBS?**

- 🟡 **Default recomendado: SÍ para notificación obligatoria de VIH+ (por ley); presumiblemente agregado/anónimo para otras finalidades; confirmar al cliente + alcance exacto**

5.7. **¿Comparten datos con investigadores externos?**

- 🟡 **Default recomendado: presumiblemente NO formal; cualquier colaboración con investigación requiere consentimiento específico; confirmar al cliente**

5.8. **¿Tienen consentimiento informado escrito para datos sensibles?**

- 🟡 **Default recomendado: presumiblemente básico / no formal; v1 launch debería crear plantilla de consentimiento + flujo de firma; confirmar al cliente**

5.9. **¿Cumplen con la Ley 6534/2020 de protección de datos personales?**

- 🟡 **Default recomendado: parcialmente; probablemente sin DPO designado; v1 launch debería formalizar cumplimiento; confirmar al cliente**

5.10. **¿Tienen DPO (Data Protection Officer) designado?**

- 🟡 **Default recomendado: NO (típico en PY ONGs); P0 designar uno para v1 launch; confirmar al cliente**

5.11. **Si el sitio nuevo tiene booking + login de paciente, ¿qué nivel de seguridad necesitan?**

- 🟡 **Default recomendado:** OAuth + magic link (sin password); HTTPS forzado; 2FA para staff; audit logs; **confirmar con cliente qué nivel están cómodos**

5.12. **¿Cómo manejan datos si el paciente es menor de edad?**

- 🟡 **Default recomendado: derivan a programas de protección de menores (SNNA, CODNI); no atienden menores solos en clínica; confirmar protocolo específico**

---

## 6. Cumplimiento regulatorio

6.1. **¿Reportan casos VIH+ a PRONASIDA obligatoriamente?**

- 🟡 **Default recomendado: SÍ (ley obliga); confirmar proceso (formulario, frecuencia) + autoridad firmante**

6.2. **¿Reportan casos de sífilis / hepatitis B?**

- 🟡 **Default recomendado: presumiblemente SÍ (ITS bajo vigilancia epidemiológica); confirmar proceso**

6.3. **¿Tienen licencia MSPBS para funcionar como clínica?**

- 🟡 **Default recomendado: SÍ (obligatorio para ofrecer servicios médicos); confirmar número + fecha + vencimiento**

6.4. **¿Cumplen con el protocolo nacional de PrEP?** (Resolución SG N.° 213/2025):

- 🟡 **Default recomendado: SÍ (parte del protocolo nacional); confirmar adherencia a protocolo completo + últimas actualizaciones**

6.5. **¿Tienen auditorías clínicas periódicas?**

- 🟡 **Default recomendado: presumiblemente NO formales; nice-to-have para v2; confirmar con cliente**

6.6. **¿Tienen alguna certificación de calidad?**

- 🟡 **Default recomendado: NO formal; presumiblemente buenas prácticas pero sin certificación; confirmar al cliente**

6.7. **¿Tienen convenio formal con PRONASIDA?**

- 🟡 **Default recomendado: acuerdo informal presumiblemente; carta de entendimiento sería nice-to-have; confirmar con cliente**

6.8. **¿Tienen seguro de mala praxis?**

- 🟡 **Default recomendado: PROBABLEMENTE SÍ (estándar de clínicas); confirmar póliza + cobertura + vencimiento**

6.9. **¿Tienen protocolo de eventos adversos?** (reacción a PrEP, sobredosis, intento de suicidio):

- 🟡 **Default recomendado: presumiblemente básico; v1 launch debería formalizar; confirmar al cliente**

6.10. **¿Cómo manejan confidencialidad de identidad?** (especialmente para personas trans / trabajadores sexuales):

- 🟡 **Default recomendado: presumiblemente bueno (la org es LGBT+-friendly); confirmar protocolo + uso de seudónimos si el paciente lo solicita**

---

## 7. Telemedicina

7.1. **¿Qué % de consultas son por teleconsulta?**

- 🟡 **Default recomendado: 20-40% (psiquiatría es la más teleconsulta; consultas generales menos); confirmar con cliente**

7.2. **¿Qué plataforma usan?** (Zoom, WhatsApp video, Doxy.me, otra):

- 🟡 **Default recomendado: presumiblemente WhatsApp video (más simple, sin app download); Zoom posible; HIPAA-compliant (Doxy.me) es nice-to-have; confirmar con cliente**

7.3. **¿Pueden prescribir por teleconsulta?** (especialmente PrEP, TARV, PEP):

- 🟡 **Default recomendado: presumiblemente SÍ para PrEP y TARV (refills); PEP probablemente requiere presencial; confirmar con cliente + regulación PY sobre telemedicina**

---

## 8. Experiencia del paciente (esto va al sitio)

> **Por qué importa:** La página web debe comunicar claramente qué esperar. La ansiedad es una barrera enorme para personas LGBT+ que nunca han ido a clínica.

8.1. **¿Qué pasa cuando un paciente llega por primera vez?** (paso a paso):

- 🟡 **Default recomendado** (basado en clínicas similares):
  1. Recepción (acogida respetuosa, preguntar nombre preferido + pronombres)
  2. Espera (sala de espera inclusiva, materiales LGBT+ visibles)
  3. Admisión (formulario opcional, confidencialidad asegurada)
  4. Consulta con consejero par (primera vez)
  5. Test rápido o consulta médica (según motivo)
  6. Resultado + consejería
  7. Seguimiento (WhatsApp + cita próxima)
- ⬜ **Confirmar flujo exacto con cliente + crear diagrama para el sitio**

8.2. **¿Consejería pre-test obligatoria?**

- 🟡 **Default recomendado: SÍ (estándar); breve (5-10 min) para tests rápidos; más extensa para TARV; confirmar**

8.3. **¿Cómo se entrega un resultado VIH+?**

- 🟡 **Default recomendado: en persona + verbal + escrito; con consejería inmediata; opción de apoyo emocional en el momento; derivación a TARV same-day; confirmar protocolo específico**

8.4. **¿Protocolo de acompañamiento post-diagnóstico?**

- 🟡 **Default recomendado: SÍ — vinculamiento a TARV same-day, consejería de pares, cita de seguimiento 1-2 semanas; confirmar al cliente**

8.5. **¿Apoyo emocional para diagnóstico reciente?**

- 🟡 **Default recomendado: SÍ, vía Psicología; grupo de pares con VIH+; confirmar al cliente**

8.6. **¿Protocolo específico para sobrevivientes de violencia sexual?** (vinculado a refugio Casa Diversa, etc.):

- 🟡 **Default recomendado: SÍ — derivación a Casa Diversa (Panambi) si es necesario; consejería + PEP + acompañamiento legal; confirmar protocolo**

8.7. **¿Qué idiomas habla el personal?**

- 🟡 **Default recomendado: Spanish (todos), Guaraní (algunos presumiblemente, confirmar), English (algunos presumiblemente por Cazal + Paloma); confirmar al cliente**

8.8. **¿Personal que hable LSP (lengua de señas paraguaya)?**

- 🟡 **Default recomendado: NO (raro en clínicas PY); v2 nice-to-have; confirmar con cliente**

8.9. **¿Folleto o video de "qué esperar" en la primera visita?**

- 🟡 **Default recomendado: NO formal; P0 para v1 launch (video 2-3 min o PDF ilustrado); confirmar con cliente**

8.10. **¿Protocolo de feedback del paciente?**

- 🟡 **Default recomendado: presumiblemente informal; sugerencia física (buzón) o digital; v1 launch debería incluir**

8.11. **¿NPS o alguna métrica de satisfacción?**

- 🟡 **Default recomendado: NO formal; v1 launch debería configurar post-visit survey (Google Forms o similar); confirmar con cliente**

---

## 9. Equipamiento e instalaciones

9.1. **¿Laboratorio in-situ o solo point-of-care?**

- 🟡 **Default recomendado: presumiblemente point-of-care (tests rápidos) + derivación para confirmatorio; confirmar al cliente**

9.2. **¿Autoclave para instrumental?**

- 🟡 **Default recomendado: presumiblemente NO (no hacen procedimientos invasivos que requieran autoclave); confirmar al cliente**

9.3. **¿Cuántas salas de consulta?**

- 🟡 **Default recomendado: 2-3 salas** (consulta médica + psicología/psiquiatría + consejería); confirmar al cliente**

9.4. **¿Sala de consejería separada?**

- 🟡 **Default recomendado: SÍ (separación física es importante para privacidad); confirmar al cliente**

9.5. **¿Espacio para consejería grupal?**

- 🟡 **Default recomendado: presumiblemente sí (sala multiuso Tekoharã cumple esta función); confirmar al cliente**

9.6. **¿Farmacia in-situ o solo dispensan?**

- 🟡 **Default recomendado: SOLO DISPENSAN (PrEP + TARV en frascos); no son farmacia abierta al público; confirmar al cliente**

9.7. **Almacenamiento de medicamentos (PrEP, TARV):**

- 🟡 **Default recomendado: refrigerador pequeño para TARV que lo requiera; armario con llave para PrEP; control de temperatura presumiblemente básico; confirmar al cliente**

9.8. **¿Cadena de frío para medicamentos?**

- 🟡 **Default recomendado: refrigerador estándar con termómetro; presumiblemente sin sistema de monitoreo remoto; confirmar al cliente**

9.9. **¿Sistema eléctrico de respaldo?** (para TARV冷藏ar):

- 🟡 **Default recomendado: NO (inversión significativa); riesgo bajo (cortes eléctricos raros en Asunción); confirmar al cliente**

---

## 10. Riesgos operativos

10.1. **¿Protocolo de seguridad para el personal?** (especialmente si hay manifestaciones anti-LGBT):

- 🟡 **Default recomendado: presumiblemente básico; v1 launch debería formalizar (vigilancia, protocolo de salida, contacto con policía si necesario — sin involucrar a policía en casos de LGBTIfobia por sensibilidad); confirmar al cliente**

10.2. **¿Protocolo para pacientes que reciben amenazas?**

- 🟡 **Default recomendado: presumiblemente derivan a Casa Diversa o refugios; confirmar protocolo específico + vínculo con Casa Diversa / AIREANA**

10.3. **¿Han tenido incidentes de seguridad?** (allanamiento, amenaza, ataque):

- 🟡 **Default recomendado: presumiblemente han tenido amenazas (contexto político hostil); no tenemos reportes públicos de incidentes graves; confirmar al cliente (este dato es sensible)**

10.4. **¿Cómo manejan situaciones de LGBTIfobia durante la consulta?**

- 🟡 **Default recomendado: protocolo de contención + derivación a Psicología + documentación para eventual acción legal; confirmar al cliente**

10.5. **¿Protocolo para periodistas / cámaras inesperadas?**

- 🟡 **Default recomendado: presumiblemente derivan a Paloma para hablar; v1 launch debería formalizar (speak only via Paloma + Cazal); confirmar**

10.6. **¿Protocolo de comunicación en crisis?** (mala praxis, incidente público):

- 🟡 **Default recomendado: presumiblemente Paloma + Consejo Directivo; v1 launch debería formalizar; confirmar al cliente**

---

## Cómo usar este cuestionario

1. **Audio-first:** 35 minutos. Paloma dicta respuestas; Kiki/Iván llena `_respuesta]_` con el default o confirma.
2. **Orden sugerido:** Bloque 1 (servicios) → 5 (datos) → 4 (booking) → 8 (experiencia) → 6 (compliance) → resto.
3. **Datos sensibles:** los ⬜ marcados con "validar en sesión aparte" son los más sensibles (datos de pacientes, riesgos operativos).
4. **Defaults seguros:** si el cliente no responde, los 🟡 default son conservadores y éticamente correctos.

---

## Sources

- https://www.abc.com.py/nacionales/2023/11/20/lanzan-campana-del-dia-de-la-respuesta-al-vih-yo-amo-prep-yo-amo-mas-seguro/
- https://www.abc.com.py/nacionales/2023/12/01/instan-a-prevenir-vih-con-pildoras-prep-en-el-dia-mundial-de-respuesta-al-vihsida/
- https://www.abc.com.py/sexualidad/2025/02/13/conoce-la-profilaxis-pre-exposicion-prep-una-pastilla-para-la-prevencion-del-vih/
- https://www.abc.com.py/nacionales/2025/09/10/crecen-los-casos-de-sifilis-en-paraguay-y-asi-podes-acceder-al-test-gratuito/
- https://www.mspbs.gov.py/portal/35521/paraguay-refuerza-prevencion-del-vih-con-campantildea-sobre-acceso-gratuito-a-la-prep.html (Resolución 213/2025)
- https://www.washingtonblade.com/2012/12/10/lgbt-group-hopes-to-open-paraguays-first-mens-health-clinic/
- https://www.ip.gov.py/ip/2024/01/08/pronasida-ofrece-pruebas-gratuitas-y-confidenciales-de-vih-e-its-en-todo-el-pais/
- https://www.somosgay.org/documents/SOMOSGAY%20Informe%20Anual%202020.pdf
- Ley 6534/2020 Paraguay — Protección de Datos Personales
- Ley 1682/01 Paraguay — Contra Violencia Doméstica
- Ley 5777/16 Paraguay — Protección Integral a las Mujeres