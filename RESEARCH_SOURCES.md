# RESEARCH_SOURCES

Última revisión: 2026-08-16

## Objetivo

Registrar qué fuentes se han consultado para decidir cómo usar Rebirth y cómo construir/publicar Islas en Roblox.

La existencia de una fuente no implica que todas sus afirmaciones sean verdaderas. Se asigna una confianza según autoría, finalidad y capacidad de verificación.

## Nivel A — Fuentes primarias/oficiales

### Rebirth — documentación

URL: `https://userebirth.com/docs`

Uso:

- instalación y conexión;
- capacidades del plugin;
- reset de sesiones;
- iteración en pasos;
- prompts específicos;
- modularidad;
- revisión de código sensible;
- uso de imágenes;
- planificación antes de construir;
- criterios de éxito;
- pruebas end-to-end.

Confianza: **alta para comportamiento declarado y recomendaciones del producto**. No constituye garantía de calidad de las salidas.

### Rebirth — página principal

URL: `https://userebirth.com/`

Uso:

- alcance comercial declarado;
- conexión directa a Studio;
- scripts, assets, 3D y ejecución.

Confianza: **media**. Es material oficial, pero también promocional.

### Rebirth — términos

URL: `https://userebirth.com/terms`

Uso:

- créditos/suscripción;
- propiedad del contenido;
- datos enviados a proveedores de IA;
- variación de resultados;
- obligación del usuario de revisar y probar;
- ausencia de garantía.

Confianza: **alta**.

### Rebirth — privacidad

URL: `https://userebirth.com/privacy`

Uso:

- datos de cuenta;
- transmisión de prompts/contexto/imágenes;
- plugin frente a Direct-to-ROBLOX;
- claves Open Cloud opcionales;
- servicio destinado a mayores de 13 años.

Confianza: **alta**.

### Rebirth — blog oficial

URLs:

- `https://userebirth.com/blog/how-to-make-a-roblox-game-with-ai`
- `https://userebirth.com/blog/best-ai-tools-for-roblox-studio`

Uso:

- flujo recomendado;
- ejemplos de prompting;
- posicionamiento del producto.

Confianza: **media** por tratarse de contenido oficial/promocional.

### Roblox Creator Hub — diseño, rendimiento y servicios

URLs principales:

- `https://create.roblox.com/docs/performance-optimization/design`
- `https://create.roblox.com/docs/performance-optimization/improve`
- `https://create.roblox.com/docs/projects/teleport`
- `https://create.roblox.com/docs/cloud-services/memory-stores`
- `https://create.roblox.com/docs/cloud-services/memory-stores/queue`
- `https://create.roblox.com/docs/matchmaking`

Uso:

- Instance Streaming;
- múltiples Places;
- lobby + Match Place;
- servidores reservados;
- MemoryStore para matchmaking;
- limitaciones de pruebas de TeleportService.

Confianza: **alta**.

### Roblox Creator Hub — producto y analítica

URLs principales:

- `https://create.roblox.com/docs/production/analytics`
- `https://create.roblox.com/docs/production/analytics/engagement`
- `https://create.roblox.com/docs/production/analytics/retention`
- `https://create.roblox.com/docs/production/analytics/funnel-events`
- `https://create.roblox.com/docs/production/analytics/custom-events`
- `https://create.roblox.com/docs/production/monetization`
- `https://create.roblox.com/docs/monetize-experiences`

Uso:

- tiempo hasta la diversión;
- onboarding;
- retención D1/D7/D30;
- funnel del primer usuario;
- métricas del core loop;
- priorizar retención/engagement antes de adquisición;
- monetización y políticas.

Confianza: **alta**.

## Nivel B — Comunidad oficial o semioficial

### Rebirth Discord

URL: `https://discord.com/servers/rebirth-1446245662013522025`

Uso potencial:

- soporte actual;
- bugs conocidos;
- ejemplos de prompts;
- cambios recientes de producto;
- experiencias de usuarios.

Confianza: **variable por mensaje**. Los anuncios del equipo tienen más peso que opiniones individuales.

### Roblox Developer Forum

URL: `https://devforum.roblox.com/`

Uso:

- patrones técnicos;
- problemas reales;
- experiencias con asistentes de IA;
- limitaciones de plugins y servicios.

Confianza: **media/variable**. Verificar afirmaciones críticas contra documentación oficial.

## Nivel C — Evidencia externa independiente o comparativa

### Trustpilot Rebirth

URL: `https://www.trustpilot.com/review/userebirth.com`

Situación observada en la revisión:

- muestra muy pequeña;
- opiniones positivas y al menos una queja sobre interrupciones/repetición;
- no permite sacar conclusiones estadísticas fiables.

Confianza: **baja para evaluación global; útil como señal anecdótica**.

### Jyme review

URL: `https://jyme.io/article/rebirth-roblox-review`

Uso:

- descripción externa de generación Luau/3D;
- ejemplos declarados de código y cleanup.

Riesgos:

- afirmaciones comerciales difíciles de verificar;
- no considerar autoridad técnica.

Confianza: **baja-media**.

### Picoo comparison

URL: `https://picoo.io/blog/best-ai-tools-for-roblox-studio-2026`

Uso:

- visión comparativa de mercado;
- señal de que Rebirth prioriza velocidad/prototipo.

Riesgo:

- la fuente vende un competidor.

Confianza: **baja; sólo contraste**.

### Material social y vídeos

Se localizaron vídeos/posts promocionales y demos públicas.

Uso:

- observar tipos de tareas y marketing;
- localizar ejemplos para contrastar.

Limitaciones:

- contenido muy editado;
- no muestra normalmente prompts completos, intentos fallidos ni mantenimiento posterior;
- no usar como prueba de que un sistema es seguro o de producción.

Confianza: **baja salvo demostración reproducible**.

## Fuentes internas del proyecto

### `.rbxl` / `.rbxlx` reales

Confianza: **muy alta para saber qué existe realmente en Studio**.

Usos:

- jerarquía;
- scripts;
- propiedades;
- duplicados;
- número/tipo de instancias;
- objetos fuera de lugar;
- debug visible.

No sustituye la inspección visual humana de composición, animación y sensación de juego.

### Capturas y pruebas de Carlos/Marc

Confianza: **muy alta para experiencia de usuario real**.

Son la fuente principal para:

- si se entiende el lobby;
- si el spawn funciona;
- si la escala se siente correcta;
- si el arte parece roto;
- si una mecánica es divertida/frustrante.

### Informes de Rebirth

Confianza: **auxiliar**.

Sirven para saber qué afirma haber hecho, pero deben compararse con:

- Studio;
- Play;
- `.rbxlx`;
- Output;
- capturas;
- código real.

## Regla de actualización

Antes de una decisión que dependa de capacidades/precios/políticas actuales:

- volver a consultar fuentes oficiales;
- registrar fecha;
- no confiar en una captura o memoria antigua;
- actualizar `REBIRTH_PLAYBOOK.md` si cambia el producto.
