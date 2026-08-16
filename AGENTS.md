# AGENTS

Instrucciones para cualquier agente de IA que trabaje en este repositorio, especialmente Codex.

## Modelo operativo del proyecto

Hay tres responsabilidades distintas:

- **ChatGPT**: dirección de juego/producto. Decide prioridades, diseño, alcance, criterios de calidad y prepara las órdenes para Rebirth o Codex.
- **Rebirth**: constructor dentro de Roblox Studio. Puede crear mundo, objetos, UI, scripts y mecánicas cuando sea la herramienta adecuada.
- **Codex**: operador técnico permanente del proyecto local y GitHub. Mantiene `C:\Dev\Islas`, inspecciona el estado guardado de Studio, sincroniza/exporta código para revisión, ejecuta comprobaciones, actualiza documentación y realiza commit/push cuando corresponde.

Codex NO debe reinventar decisiones de game design cerradas por ChatGPT/usuarios. Si detecta una contradicción importante, debe detenerse y reportarla.

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

## Sincronización después de Rebirth

El Place de trabajo debe guardarse en una ruta fija dentro del proyecto, preferiblemente:

`C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

Después de una sesión significativa de Rebirth, Codex debe poder recibir la orden corta `Sincroniza la sesión de Rebirth` y realizar el trabajo técnico sin pedir al usuario que haga Git manualmente.

Al sincronizar:

1. Leer `git status` y el estado del repositorio.
2. Inspeccionar `studio/Islas_CURRENT.rbxlx` si existe.
3. Extraer a archivos de revisión cualquier `Script`, `LocalScript` y `ModuleScript` contenido en el `.rbxlx`, manteniendo una ruta/nombre reconocible y sin convertirlo automáticamente en código de producción.
4. Generar/actualizar un manifiesto legible con scripts encontrados, rutas y cambios relevantes para revisión.
5. No migrar automáticamente código bruto de Rebirth al árbol Rojo definitivo salvo que la tarea lo autorice explícitamente.
6. Actualizar la documentación operativa necesaria.
7. Ejecutar las comprobaciones razonables para la tarea.
8. Crear commit y hacer push a GitHub cuando el estado sea coherente y la tarea lo permita.
9. Dejar `LAST_CODEX_REPORT.md` con un resumen suficiente para que ChatGPT pueda revisar lo ocurrido desde GitHub.

El objetivo es que el usuario no tenga que gestionar comandos Git ni exportaciones repetitivas. Su acción normal debe limitarse a guardar el Place y lanzar una orden corta a Codex.

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

- El repositorio local es la fuente de verdad del código aprobado gestionado por Rojo.
- Rebirth puede crear código dentro de Studio, pero ese código se considera candidato hasta ser inspeccionado y, si procede, migrado al árbol Rojo.
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

Rebirth u otras herramientas con coste por solicitud se usan cuando ChatGPT determine que aportan ventaja real. Los prompts deben estar cerrados y ser verificables antes de enviarlos.

## Al finalizar una tarea de Codex

Actualizar `LAST_CODEX_REPORT.md` con:

- tarea realizada;
- archivos modificados;
- estado Studio/repo observado;
- decisiones técnicas tomadas;
- pruebas realizadas;
- resultados;
- problemas pendientes;
- commit y push si existen.

Actualizar también `PROJECT_STATE.md` y `NEXT_TASK.md` cuando corresponda.