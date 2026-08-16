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

## Arquitectura

Prioridades:

- sistemas desacoplados;
- configuración centralizada para valores de balance;
- autoridad del servidor para lógica sensible, economía y resultados de combate;
- validación de entradas remotas;
- evitar confiar en el cliente para moneda, daño, inventario o recompensas;
- código legible antes que abstracciones innecesarias;
- soporte futuro para 1v1, 2v2 y 3v3 sin duplicar sistemas.

## Roblox / Rojo

- El repositorio local es la fuente de verdad del código gestionado por Rojo.
- No crear manualmente en Studio scripts que deberían vivir en el árbol sincronizado salvo necesidad documentada.
- Mantener clara la separación servidor/cliente/compartido.
- No introducir dependencias externas sin justificar su necesidad.

## Pruebas

Cada tarea debe incluir una forma concreta de comprobar el resultado.

No declarar una tarea completada sólo porque el código compila. Cuando sea aplicable, indicar los pasos de prueba dentro de Roblox Studio.

## Seguridad y explotación

Asumir que el cliente puede ser manipulado.

Nunca confiar en datos enviados por el cliente para:

- conceder moneda;
- conceder recursos;
- validar compras;
- aplicar daño;
- declarar una victoria;
- guardar progresión.

## Coste de herramientas

Rebirth u otras herramientas con coste por solicitud sólo se usarán cuando ChatGPT determine que aportan una ventaja real. Los prompts deben estar cerrados y ser verificables antes de enviarlos.

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
