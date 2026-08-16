# ROBLOX_PRODUCT_STRATEGY

Última actualización: 2026-08-16

## Objetivo

Definir cómo convertir **Islas** en una experiencia de Roblox publicable, comprensible, retenedora y monetizable sin sacrificar la calidad ni convertirla en pay-to-win.

Este documento guía decisiones de producto. No fija para siempre todos los valores; define prioridades, métricas, alcance de lanzamiento y criterios para no construir funciones que no ayudan al juego.

## Propuesta de valor

La promesa de Islas debe poder entenderse en una frase:

> Explora tu isla, reúne recursos, construye una fortaleza y destruye el Core enemigo con un cañón de cocos antes de que destruyan el tuyo.

Los dos actos deben tener identidad propia:

1. **Preparación**: pequeños minijuegos, exploración, economía y estrategia de construcción.
2. **Batalla**: habilidad balística, cooperación, destrucción y reparación bajo presión.

La diferencia frente a un simple simulador o tycoon es que todo lo conseguido durante la preparación cambia directamente una batalla corta y visible.

## Público objetivo

Dirección inicial:

- público infantil y juvenil;
- controles comprensibles con teclado/ratón, mando y móvil;
- profundidad suficiente para que equipos coordinados mejoren;
- reglas visuales y objetivos claros;
- humor y espectáculo sin violencia realista.

## Arquitectura de experiencia

### Place 1 — Lobby / Hub

Debe ser el Start Place.

Funciones del lanzamiento inicial:

- spawn siempre correcto;
- botón/zona de `Quick Play`;
- accesos claros a 1v1, 2v2 y 3v3;
- creación/unión a party cuando llegue esa fase;
- estadísticas personales básicas;
- leaderboards seleccionados;
- práctica de cañón;
- tienda cosmética visible pero no invasiva;
- espacio para misiones y rango.

El lobby debe ser compacto. El jugador no debe tardar en encontrar la partida.

### Place 2 — Match

Un Place dedicado a partidas reduce mezcla visual/lógica con el lobby y facilita rendimiento, reset y servidores reservados.

Dirección técnica:

- partidas en servidores reservados cuando se implemente matchmaking completo;
- colas compartidas entre servidores mediante MemoryStore cuando resulte necesario;
- teletransporte decidido por el servidor;
- datos competitivos validados por el servidor;
- retorno seguro al lobby al terminar o fallar la partida.

TeleportService no se valida únicamente con Play Solo de Studio: las pruebas reales de teletransporte requieren publicar y usar el cliente de Roblox.

## Primeros cinco minutos

Roblox recomienda llevar al jugador a la parte divertida rápidamente. Por tanto:

- el lobby no será un museo que recorrer antes de jugar;
- debe existir `Quick Play` además de entradas físicas;
- el jugador nuevo debe llegar a una acción divertida en menos de cinco minutos;
- la práctica del cañón sirve como tutorial contextual;
- el tutorial de recolección aparecerá cuando el jugador encuentre su primer recurso;
- el tutorial de construcción aparecerá cuando tenga suficientes materiales;
- no habrá un tutorial largo obligatorio antes de entrar a partida.

## FTUE — primera experiencia de usuario

### Objetivo

Que un jugador nuevo complete una partida entendiendo:

- qué proteger;
- qué recolectar;
- cómo construir;
- cómo apuntar y disparar;
- cómo se gana.

### Secuencia recomendada

1. Spawn en lobby mirando a `Quick Play` y práctica de cañón.
2. Mensaje corto: “Construye. Defiende. Destruye el Core enemigo”.
3. Primera partida con ayudas contextuales.
4. Core propio y enemigo resaltados durante presentación.
5. Primer árbol/roca/cocotero cercano con guía breve.
6. Primera pieza de construcción con selección simple.
7. Cuenta atrás fuerte a batalla.
8. Al usar cañón por primera vez, mostrar orientación, ángulo y potencia en pasos cortos.
9. Resultado con una estadística entendible y una siguiente meta.

## Alcance del MVP vendible

“MVP” no significa feo o roto. Significa el conjunto mínimo capaz de demostrar el bucle comercial real.

### Debe incluir

- lobby compacto y presentable;
- Quick Play;
- una cola/modo Duel funcional;
- 1v1 funcional de extremo a extremo;
- mapa con dos islas explorables y equilibradas;
- madera, piedra y cocos;
- un minijuego sencillo de recolección por recurso;
- inventario de partida;
- DefenseZone y construcción modular básica;
- Core seleccionado entre sockets válidos;
- un cañón principal por equipo;
- dirección, elevación y potencia;
- proyectil balístico;
- daño de madera/piedra/Core;
- reparación limitada;
- estado de partida y temporizadores;
- victoria, resultado y vuelta a lobby;
- telemetría de onboarding y bucle principal;
- controles móviles básicos;
- al menos una primera familia cosmética que no dé ventaja.

### Puede esperar

- Triad;
- 2v2/3v3 si retrasan la validación del 1v1;
- matchmaking por rango;
- parties avanzadas;
- múltiples mapas;
- derrumbes estructurales completos;
- muchos tipos de munición;
- docenas de recetas;
- sistema social complejo;
- eventos estacionales;
- monetización amplia.

## Secuencia de lanzamiento

### Milestone 1 — Core Loop interno

- una partida 1v1 completa;
- arte suficiente para leer el juego;
- sin monetización necesaria;
- pruebas familiares y privadas.

### Milestone 2 — Alpha cerrada

- lobby + Match Place;
- 1v1 estable;
- primeras métricas;
- controles móvil/PC;
- 20–50 testers conocidos;
- corrección de onboarding, duración y equilibrio.

### Milestone 3 — Beta pública pequeña

- 1v1 robusto;
- estudiar añadir 2v2;
- progresión básica;
- cosméticos limitados;
- analítica de retención y embudo;
- no invertir en adquisición si D1/primera sesión son débiles.

### Milestone 4 — Lanzamiento inicial

- contenido suficiente para repetición;
- 1v1 y, si está validado, 2v2/3v3;
- tienda cosmética clara;
- estabilidad y rendimiento en móvil;
- plan de actualización.

## Métricas desde el principio

### Funnel de onboarding

Eventos candidatos:

1. `joined_lobby`
2. `selected_queue`
3. `entered_match`
4. `collected_first_resource`
5. `placed_first_build_piece`
6. `used_shop_or_workshop`
7. `fired_first_cannon_shot`
8. `completed_first_match`
9. `queued_second_match`

### Eventos del core loop

- recursos obtenidos por tipo;
- precisión de recolección;
- rutas/zona de recursos visitadas;
- piezas construidas por material;
- MatchCoins ganadas/gastadas;
- contratos completados;
- tiempo hasta cañón listo;
- disparos, impactos y precisión;
- daño a estructuras/Core;
- reparaciones;
- duración de preparación/batalla;
- abandono por fase.

### KPIs prioritarios

1. retención de primera sesión;
2. porcentaje que completa primera partida;
3. porcentaje que inicia una segunda partida;
4. D1;
5. duración media de sesión;
6. D7 cuando haya progresión suficiente;
7. conversión y ARPPU sólo después de que el juego retenga.

## Duración y ritmo

Hipótesis inicial:

- presentación: 20–30 s;
- preparación: 5–6 min según tamaño de equipo;
- transición: 10–15 s;
- batalla: ~4 min;
- overtime: hasta 1 min;
- resultado: 20–30 s.

Objetivo de partida: aproximadamente 10–12 minutos.

Los valores se medirán. La partida debe evitar:

- largos periodos andando sin decisión;
- preparación resuelta demasiado pronto;
- batalla decidida por una sola mala acción inicial;
- reparaciones que creen estancamiento;
- tiempos muertos tras eliminación.

## Diseño social

- permitir que un jugador solo encuentre equipo;
- mantener juntos a los miembros de una party;
- evitar roles obligatorios;
- ofrecer emotes/pings simples para coordinar;
- destacar contribuciones distintas al daño;
- mostrar estadísticas como recursos, reparaciones, construcción y precisión, no sólo destrucción.

## Límite entre islas

No se permitirá nadar hasta el rival.

Dirección temática:

- mar profundo/corriente fuerte fuera de la zona segura;
- aviso visual/sonoro breve;
- retorno automático o daño ambiental moderado;
- sin paredes invisibles evidentes como única solución;
- el cañón es el método principal de interacción ofensiva entre islas.

## Rendimiento

El Match Place será relativamente grande y rico en vegetación. Por tanto:

- habilitar y probar Instance Streaming;
- usar MeshParts/terrain/LOD con criterio;
- evitar miles de Parts pequeñas cuando un asset optimizado resuelve lo mismo;
- decoración con colisiones simplificadas;
- limitar partículas y luces dinámicas;
- probar en móviles modestos;
- medir memoria, FPS, errores y crashes tras cambios grandes.

## Monetización ética

### Principios

- no vender MatchCoins;
- no vender daño, vida del Core, puntería automática ni materiales competitivos;
- no presionar con urgencia falsa;
- no bloquear la diversión inicial tras pago;
- diseñar para menores con claridad y sin manipulación.

### Candidatos de lanzamiento

- skins de cañón;
- skins de Core;
- banderas y emblemas;
- efectos de disparo/impacto;
- celebraciones de victoria;
- emotes;
- cosméticos de herramientas;
- decoración del lobby/perfil;
- pase cosmético o de progresión no competitiva cuando exista contenido suficiente.

### Más adelante

- suscripción con beneficios cosméticos/conveniencia no competitiva;
- bundles temáticos;
- mapas/biomas visuales si no afectan al equilibrio;
- eventos estacionales.

Cualquier mecánica aleatoria de pago deberá cumplir las políticas aplicables de Roblox y mostrar probabilidades cuando corresponda. La dirección preferida es evitarla en el lanzamiento.

## Descubrimiento y presentación

La adquisición no compensa una mala primera sesión.

Antes de gastar en promoción:

- icono y thumbnails honestos;
- promesa visual que coincida con el juego;
- primera partida estable;
- buen tiempo hasta diversión;
- D1 y sesión comparables con juegos similares;
- título/descripción sin spam ni engaños.

## Contenido y repetición

La rejugabilidad inicial vendrá de:

- CoreSocket variable;
- ResourceSockets variables;
- contratos variables;
- decisiones de gasto;
- defensas distintas;
- habilidad del cañón;
- equipos diferentes;
- pequeñas oportunidades de exploración.

Esto tiene prioridad frente a fabricar muchos mapas antes de que el primer mapa sea divertido.

## Criterios para monetizar más

No ampliar monetización hasta comprobar:

- jugadores completan partidas;
- una parte significativa inicia otra;
- el combate no produce frustración sistémica;
- 1v1 y equipos están razonablemente equilibrados;
- la tienda no interrumpe onboarding;
- los cosméticos tienen identidad visual suficiente.

## Fuentes oficiales de Roblox

- https://create.roblox.com/docs/production/analytics/engagement
- https://create.roblox.com/docs/production/analytics/retention
- https://create.roblox.com/docs/production/analytics/funnel-events
- https://create.roblox.com/docs/production/analytics
- https://create.roblox.com/docs/projects/teleport
- https://create.roblox.com/docs/cloud-services/memory-stores/queue
- https://create.roblox.com/docs/performance-optimization/design
- https://create.roblox.com/docs/monetize-experiences
