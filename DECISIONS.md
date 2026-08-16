# DECISIONS

Registro de decisiones que se consideran vigentes. Si una decisión cambia, se añade una nueva entrada explicando el cambio; no se borra la historia sin motivo.

## 2026-08-16 — Repositorio principal

- Repositorio operativo: `Carlaidus/Islas`.
- Rama principal: `main`.
- De momento el proyecto se gestionará desde la cuenta GitHub `Carlaidus`.

## 2026-08-16 — Herramientas base

- Roblox Studio para construir, probar y publicar.
- Rojo para sincronizar el proyecto entre archivos locales y Roblox Studio.
- GitHub para historial, colaboración y memoria operativa.
- Codex está disponible mediante la cuenta de pago y se utilizará para código, arquitectura y tareas sobre el repositorio cuando sea la opción más conveniente.
- Rebirth se utilizará cuando su integración directa con Roblox Studio permita crear o modificar el juego más rápido y con suficiente control.
- VS Code es opcional y no forma parte obligatoria del flujo.
- No usar Cursor Pro por ahora.
- ChatGPT decidirá qué herramienta usar tarea por tarea; no se impondrá una división rígida si otra opción es mejor.
- Los prompts de herramientas con coste deben prepararse con precisión para evitar gasto innecesario.

## 2026-08-16 — Dirección del proyecto

ChatGPT actuará como director técnico y de diseño del proyecto:

- decidirá el orden de construcción;
- decidirá qué herramienta conviene para cada tarea;
- preparará prompts detallados para Codex y Rebirth;
- revisará la documentación operativa antes de tareas importantes;
- evitará pedir al usuario que tome decisiones técnicas que puedan resolverse razonadamente desde la dirección del proyecto;
- no fijará escalas, distancias o dirección artística de forma arbitraria sin diseñar antes la experiencia de juego correspondiente;
- priorizará construir un juego real y escalable, no encadenar pruebas técnicas sin valor de producto.

## 2026-08-16 — Lobby y entrada a partida

- Los jugadores NO empiezan directamente en una isla.
- El punto de entrada del juego será un lobby/hub.
- El lobby tendrá zonas o accesos claros para entrar en partidas 1v1, 2v2 y 3v3.
- El lobby debe sentirse como una localización real (puerto/isla-base/aldea tropical), no como una baseplate con pads y carteles.
- El diseño futuro deberá permitir que un jugador solo pueda entrar en una cola de equipo y que grupos puedan mantenerse juntos cuando implementemos parties/matchmaking.
- Se estudiará separar Lobby y Match en Places distintos dentro de la misma experiencia; colocar ambos físicamente alejados dentro de un mismo mapa no se considera arquitectura final.

## 2026-08-16 — Tamaño de equipo y número de islas

- 1v1, 2v2 y 3v3 describen jugadores por equipo, no cantidad de islas.
- `Duel` = 2 equipos/islas.
- `Triad` = 3 equipos/islas y queda previsto desde el diseño aunque no sea el primer modo implementado.
- Arquitectura, Core y cañón no deben asumir que siempre habrá exactamente un único enemigo.

## 2026-08-16 — Roles

- No habrá roles obligatorios o bloqueados por jugador.
- Todos los jugadores podrán realizar las acciones esenciales.
- La cooperación surgirá al repartir tareas simultáneamente.

## 2026-08-16 — Bucle principal

- Lobby: elegir formato/cola y formar partida.
- Despliegue corto: revelar Core y distribución de partida.
- Fase de preparación: explorar, recolectar, comerciar, fabricar, comprar, construir y preparar el cañón.
- Fase de batalla: disparar, gestionar munición, reparar y defender.
- La condición principal de victoria es destruir el Core rival.
- Al finalizar, el flujo debe permitir regresar al ciclo de lobby/partida.

## 2026-08-16 — Tiempos iniciales para prototipo

Valores de partida, no definitivos:

- preparación 1v1: ~6:00;
- preparación 2v2: ~5:30;
- preparación 3v3: ~5:00;
- batalla: ~4:00;
- overtime máximo inicial: ~1:00.

Todos deben vivir en configuración y ajustarse mediante playtests.

## 2026-08-16 — Recursos iniciales

Para el prototipo se parte de:

- madera;
- piedra;
- cocos como munición.

No añadir muchos recursos antes de comprobar que estos generan decisiones interesantes.

## 2026-08-16 — Recolección como minijuego

- La recolección no debe consistir únicamente en mantener pulsado un botón largo.
- Tala, minería y cocos tendrán interacciones cortas con habilidad sencilla que mejore eficiencia sin bloquear a jugadores nuevos.
- Ver `ECONOMY_DESIGN.md`.

## 2026-08-16 — Construcción

- Construcción modular mediante piezas y snap.
- Materiales con costes y resistencias distintas.
- Primera versión con daño por pieza.
- Derrumbes y simulación estructural compleja quedan para una fase posterior.
- La construcción se concentrará principalmente en una DefenseZone amplia e integrada en el terreno; el resto de la isla conserva función de exploración y recursos.

## 2026-08-16 — Economía y tienda

- Existirá una moneda de partida (`MatchCoins` como nombre técnico provisional) independiente de Robux.
- MatchCoins se reinicia en cada partida y no se compra directamente con Robux.
- Cada isla tendrá un comerciante/tienda.
- Se incorporan contratos y pequeñas decisiones de vender excedentes frente a usar recursos.
- La fabricación será compacta y se limitará a objetos tácticos significativos, no a decenas de recetas.
- Ver `ECONOMY_DESIGN.md`.

## 2026-08-16 — Core y visibilidad

- El Core nunca se coloca aleatoriamente en cualquier punto de la isla.
- Cada mapa define varios `CoreSockets` válidos dentro del CombatFront.
- El servidor selecciona uno al inicio y lo revela durante la preparación.
- Todo CoreSocket debe ser geográficamente atacable desde todos los enemigos previstos por el modo.
- En Triad, cada socket debe tener línea de tiro desde las otras dos islas.
- El Core tendrá una señal visual visible a distancia; las defensas construidas pueden ocultarlo físicamente y obligar a romper la fortificación.
- El Core no se mueve durante batalla.

## 2026-08-16 — Cañón y múltiples enemigos

- Primera versión: un cañón principal por equipo.
- Todos los jugadores pueden cargar, apuntar y disparar.
- Debe tener giro horizontal amplio para soportar dos o tres islas.
- El sistema de balística se prototipará antes de congelar separación entre islas.
- Ver `COMBAT_DESIGN.md`.

## 2026-08-16 — Monetización

- La monetización con Robux se diseñará después de validar la diversión del juego base.
- Evitar pay-to-win como principio de diseño.
- Priorizar cosméticos, personalización y contenido que no destruya el equilibrio competitivo.
- No vender MatchCoins directamente por Robux.

## 2026-08-16 — Escala real de las islas

El primer prototipo serio parte de objetivos de recorrido, no de medidas escogidas al azar.

Objetivo inicial por isla:

- aproximadamente 420–520 studs de largo;
- aproximadamente 350–460 studs de ancho;
- costa orgánica e irregular;
- relieve útil de aproximadamente 35–65 studs;
- DefenseZone aproximada de 130–170 studs integrada en el terreno;
- tiempo objetivo de cruce de isla: 30–45 segundos;
- recurso lejano desde base: 22–32 segundos;
- recorrido amplio del perímetro: 60–90 segundos.

La separación definitiva se fijará junto al prototipo físico del cañón. Las cifras son objetivos de primer diseño y se validarán jugando en Studio.

## 2026-08-16 — Arena radial

- Las islas presentan un `CombatFront` hacia el centro de la arena.
- La exploración se extiende hacia atrás/laterales (`ExplorationBackland`).
- Duel coloca dos islas aproximadamente a 180°.
- Triad coloca tres islas aproximadamente a 120°.
- Esta geometría permite islas grandes sin esconder el Core por la propia geografía.

## 2026-08-16 — Aleatoriedad de recursos

- No usar posiciones totalmente aleatorias.
- Diseñar puntos/sockets válidos de recursos y activar subconjuntos distintos en cada partida.
- Mantener igualdad de valor y tiempos de acceso entre equipos, permitiendo variación de posiciones.

## 2026-08-16 — Dirección artística

- Tropical de aventura, estilizado, colorido y de calidad de experiencia Roblox publicada.
- No aceptar círculos planos, árboles de cilindros/bolas, NPCs mannequin ni objetos primitivos como resultado visual del juego.
- Se permite/recomienda Terrain, MeshParts y assets seguros cuando aporten calidad.
- Los colores de equipo son acentos, no el arte entero de la isla.
- Antes de una nueva generación grande con IA habrá referencias visuales y criterios claros de composición/calidad.
- Ver `ART_DIRECTION.md` y `WORLD_DESIGN.md`.

## 2026-08-16 — Primer prototipo Rebirth rechazado

El primer prototipo creado por Rebirth (lobby + dos islas, 763 instancias) queda **rechazado como diseño visual y de escala**.

Razones:

- islas demasiado pequeñas y planas;
- ausencia real de exploración;
- baseplate y composición sin calidad de producto;
- geometría primitiva y elementos amontonados;
- lobby interpretado como pads/carteles en lugar de una localización;
- dirección artística insuficientemente definida antes del prompt.

Se conserva únicamente como evidencia técnica temporal. No se usará como base artística ni espacial del juego.

## 2026-08-16 — Filosofía de implementación

- Sistemas configurables y desacoplados.
- Valores de balance centralizados cuando sea posible.
- Servidor autoritativo para economía, Core, daño, victoria y recompensas.
- El lobby mínimo funcional pertenece al vertical slice porque es el punto de entrada real.
- Un prototipo puede usar arte provisional, pero debe comunicar correctamente escala, navegación, ambiente y calidad objetivo.
