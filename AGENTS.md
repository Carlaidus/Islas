# AGENTS

Instrucciones para cualquier agente de IA que trabaje en este repositorio, especialmente Codex.

## Antes de modificar nada

Leer siempre:

1. `README.md`
2. `GAME_DESIGN.md`
3. `PROJECT_STATE.md`
4. `DECISIONS.md`
5. `NEXT_TASK.md`
6. `LAST_CODEX_REPORT.md`
7. `WORKFLOW.md`

Si la tarea afecta a mundo, nivel, mapa, escala, lobby, islas, recursos, vegetación, arte o composición visual, leer además obligatoriamente:

8. `WORLD_DESIGN.md`
9. `ART_DIRECTION.md`

Si la tarea afecta a recursos, moneda, tienda, contratos, fabricación, construcción o preparación, leer:

10. `ECONOMY_DESIGN.md`

Si la tarea afecta a Core, cañón, balística, daño, reparación, victoria, dos/tres islas o fase de batalla, leer:

11. `COMBAT_DESIGN.md`

Si alguno de estos archivos contradice una instrucción nueva y explícita del usuario, prevalece la instrucción nueva, pero la documentación debe actualizarse para reflejar el cambio.

## Regla de alcance

Trabajar sólo en la tarea descrita en `NEXT_TASK.md` o en la tarea explícitamente indicada por ChatGPT/usuario.

No aprovechar una tarea para:

- refactorizar sistemas no relacionados;
- cambiar arquitectura sin necesidad;
- añadir funciones no solicitadas;
- introducir monetización;
- alterar diseño de juego cerrado;
- rehacer arte o UI ajenos a la tarea.

## Dirección de producto

- No elegir dimensiones, distancias o densidad de mundo arbitrariamente.
- Para level design, priorizar tiempos de recorrido, rutas, legibilidad, líneas de tiro y función jugable.
- No aceptar un blockout pobre como resultado visual sólo porque contenga todos los objetos solicitados.
- El primer prototipo Rebirth del 2026-08-16 está rechazado y no debe usarse como referencia de escala o arte.
- `WORLD_DESIGN.md` y `ART_DIRECTION.md` mandan sobre futuros escenarios salvo decisión posterior documentada.
- 1v1/2v2/3v3 significa jugadores por equipo; el número de equipos/islas es otra variable.
- Arquitectura y mapas deben poder evolucionar de `Duel` (2 equipos) a `Triad` (3 equipos) sin reescribir sistemas fundamentales.
- El Core nunca se coloca libremente al azar: se usan CoreSockets validados.

## Arquitectura

Prioridades:

- sistemas desacoplados;
- configuración centralizada para valores de balance;
- autoridad del servidor para lógica sensible, economía y resultados de combate;
- validación de entradas remotas;
- evitar confiar en el cliente para moneda, daño, inventario o recompensas;
- código legible antes que abstracciones innecesarias;
- soporte 1–3 jugadores por equipo sin duplicar sistemas;
- soporte futuro 2–3 equipos mediante configuración donde sea razonable.

## Roblox / Rojo

- El repositorio local es la fuente de verdad del código gestionado por Rojo.
- No crear manualmente en Studio scripts que deberían vivir en el árbol sincronizado salvo necesidad documentada.
- Mantener clara la separación servidor/cliente/compartido.
- No introducir dependencias externas sin justificar su necesidad.
- Para el mundo visual se permite Terrain, MeshParts y assets seguros cuando sean la opción adecuada; no sacrificar calidad visual únicamente para encajar todo dentro de una estructura de archivos cómoda.

## Economía y seguridad

Asumir que el cliente puede ser manipulado.

El servidor decide/valida siempre:

- recursos concedidos;
- MatchCoins;
- contratos;
- compras;
- costes de construcción/fabricación;
- inventario relevante;
- daño;
- reparación;
- Core activo;
- victoria;
- recompensas persistentes.

Nunca permitir que el cliente declare directamente estos resultados.

## Pruebas

Cada tarea debe incluir una forma concreta de comprobar el resultado.

No declarar una tarea completada sólo porque el código compila.

Para level design medir en Studio:

- tiempos de recorrido;
- líneas de tiro a CoreSockets;
- giro de cañón a todos los rivales previstos;
- lectura del objetivo a distancia;
- espacio de construcción;
- rendimiento aproximado.

Para sistemas económicos/combate, probar al menos los tamaños de equipo relevantes y límites/inputs manipulados cuando corresponda.

## Coste de herramientas

Rebirth u otras herramientas con coste por solicitud sólo se usarán cuando ChatGPT determine que aportan una ventaja real. Los prompts deben estar cerrados y ser verificables antes de enviarlos.

No enviar una nueva generación grande de mundo sin referencia visual/compositiva suficiente.

## Al finalizar una tarea de Codex

Actualizar o proporcionar contenido suficiente para actualizar `LAST_CODEX_REPORT.md` con:

- tarea realizada;
- archivos modificados;
- decisiones tomadas;
- pruebas realizadas;
- resultados;
- problemas pendientes;
- commit o rama si existe.

También debe quedar claro si `PROJECT_STATE.md` o `NEXT_TASK.md` necesitan actualización.
