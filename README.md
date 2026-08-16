# Islas

Proyecto de juego multijugador competitivo para Roblox.

## Visión

**Islas** enfrenta equipos que disponen de una isla propia.

Durante la preparación, los jugadores:

- exploran;
- recolectan madera, piedra y cocos;
- realizan pequeños minijuegos;
- comercian y completan contratos;
- fabrican;
- construyen defensas;
- preparan el cañón.

Después comienza una batalla balística. Los equipos cargan, apuntan y disparan cocos para romper la fortaleza rival y destruir su Core antes de perder el propio.

La preparación y la batalla deben ser divertidas por separado y producir partidas distintas según rutas, recursos, gastos y construcción.

## Flujo

`Lobby -> Quick Play/cola -> Match -> preparación -> batalla -> resultado -> Lobby`

## Alcance inicial

### Prioridad comercial

Un vertical slice 1v1 completo, bonito y estable:

- lobby compacto;
- Match Place separado;
- dos islas explorables;
- recursos/minijuegos;
- construcción;
- Core;
- cañón;
- daño/reparación;
- resultado/retorno;
- analítica básica;
- controles PC/móvil;
- monetización cosmética mínima sólo cuando el bucle retenga.

### Escalabilidad

- 1v1, 2v2 y 3v3 = jugadores por equipo.
- `Duel` = 2 islas/equipos, prioridad inicial.
- `Triad` = 3 islas/equipos, previsto para después.

## Core

El Core no aparece en cualquier punto.

Cada isla contiene CoreSockets validados dentro del CombatFront. El servidor selecciona uno al empezar. La geografía permanente no puede esconderlo de los rivales; las defensas construidas sí pueden bloquear los proyectiles.

## Mundo

Cada isla combina:

- `CombatFront`: DefenseZone, CoreSockets, CannonPlatform, Shop/Workshop.
- `ExplorationBackland`: rutas, bosque, cantera, cocoteros, tesoros y recursos.

## Herramientas

- Roblox Studio
- Rebirth
- Codex
- Rojo
- GitHub
- herramientas nativas/Assistant cuando convenga
- VS Code opcional

No existe una división rígida “visual = Rebirth / código = Codex”. Ver `AI_TOOLING_MATRIX.md`.

## Modelo operativo

- ChatGPT: dirección de producto/diseño, investigación y prompts.
- Rebirth: constructor contextual dentro de Studio.
- Codex: operador técnico, arquitectura, revisión, Rojo/GitHub.
- Carlos/Marc: diseño humano y playtest.

La cuenta Rebirth es operada por Carlos/adulto; Marc participa bajo supervisión.

## Directorio local

`C:\Dev\Islas`

Place de trabajo:

`C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

Rojo de Islas usa el puerto `34873`.

## Documentación central

### Estado y operación

- `PROJECT_STATE.md`
- `NEXT_TASK.md`
- `DECISIONS.md`
- `WORKFLOW.md`
- `AGENTS.md`
- `LAST_CODEX_REPORT.md`

### Diseño del juego

- `GAME_DESIGN.md`
- `WORLD_DESIGN.md`
- `ART_DIRECTION.md`
- `ECONOMY_DESIGN.md`
- `COMBAT_DESIGN.md`
- `MATCH_FLOW.md`
- `ROBLOX_PRODUCT_STRATEGY.md`
- `PRODUCTION_PLAN.md`

### Rebirth y herramientas

- `REBIRTH_PLAYBOOK.md`
- `REBIRTH_PROMPT_TEMPLATES.md`
- `REBIRTH_POSTMORTEMS.md`
- `REBIRTH_REVIEW_WORKFLOW.md`
- `AI_TOOLING_MATRIX.md`
- `PROMPTS_LOG.md`
- `RESEARCH_SOURCES.md`

### Ideas

- `IDEAS_BACKLOG.md`

## Regla antes de tareas importantes

Leer siempre:

- `PROJECT_STATE.md`
- `NEXT_TASK.md`
- `DECISIONS.md`
- `WORKFLOW.md`
- `AGENTS.md`

Y los documentos específicos de la tarea.

Si se usa Rebirth, leer obligatoriamente:

- `REBIRTH_PLAYBOOK.md`
- `REBIRTH_POSTMORTEMS.md`
- `REBIRTH_PROMPT_TEMPLATES.md`

## Estado actual

- concepto y estrategia documentados;
- Git/Rojo/Studio/Rebirth disponibles;
- dos generaciones amplias de Rebirth rechazadas;
- investigación profesional completada;
- playbook y protocolo nuevos creados;
- próximo paso: calibración visual y prompt plan-only del lobby, no otro megaprompt.

Ver `PROJECT_STATE.md` y `NEXT_TASK.md`.
