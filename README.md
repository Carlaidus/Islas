# Islas

Proyecto de juego multijugador competitivo para Roblox.

## Visión

`Islas` enfrenta equipos que disponen de una isla propia. Antes de combatir, los jugadores exploran, recolectan, comercian, fabrican, construyen defensas y preparan su cañón. Después comienza una fase de batalla balística donde gana el equipo que destruya el Core rival antes de perder el suyo.

La preparación y la batalla deben ser divertidas por separado y combinarse en una partida que genere ganas de repetir con otra estrategia.

## Flujo principal

1. Lobby/hub.
2. Cola 1v1, 2v2 o 3v3.
3. Despliegue y revelado de Core/recursos.
4. Preparación: explorar, recolectar, comerciar, fabricar, construir y preparar cañón.
5. Batalla: cargar, apuntar, disparar, reparar y defender.
6. Destrucción de Core / resultado.
7. Recompensas y vuelta al lobby.

## Modos y escalabilidad

### Jugadores por equipo

- 1v1
- 2v2
- 3v3

### Equipos/islas

- `Duel`: 2 islas/equipos — prioridad inicial.
- `Triad`: 3 islas/equipos — previsto desde arquitectura para futuros 1v1v1, 2v2v2 o 3v3v3.

## Sistemas principales

- isla explorable con recursos variables;
- madera, piedra y cocos;
- recolección mediante pequeños minijuegos;
- MatchCoins de partida;
- comerciante y contratos;
- fabricación compacta;
- construcción modular;
- Core colocado en CoreSockets validados;
- cañón con orientación, elevación y potencia;
- daño modular y reparación;
- progresión y monetización después de validar el juego base.

## Reglas del Core

El Core nunca aparece libremente en cualquier punto de la isla.

Cada mapa contiene varios `CoreSockets` dentro del CombatFront. El servidor selecciona uno al comenzar la partida. Todo socket debe ser atacable desde todos los rivales previstos por el modo. En una futura arena de tres islas, debe poder atacarse desde las otras dos.

Las defensas construidas sí pueden ocultar físicamente el Core, obligando al rival a destruirlas.

## Diseño del mundo

La isla se divide conceptualmente en:

- `CombatFront`: zona orientada hacia el centro de la arena, con DefenseZone, CoreSockets y CannonPlatform.
- `ExplorationBackland`: zona exterior/lateral de exploración, rutas y recursos.

Esto permite islas grandes sin esconder el objetivo detrás de la propia geografía.

## Herramientas

- Roblox Studio
- Rojo
- GitHub
- Codex
- Rebirth cuando aporte valor real
- VS Code opcional

ChatGPT dirige herramienta, orden de trabajo y prompts. No existe una división rígida del tipo "arte = Rebirth / código = Codex".

## Directorio local

Windows: `C:\Dev\Islas`

Rojo de Islas usa actualmente el puerto `34873` para no interferir con otro proyecto.

## Documentación obligatoria

Antes de una tarea importante revisar:

- `README.md`
- `GAME_DESIGN.md`
- `WORLD_DESIGN.md`
- `ART_DIRECTION.md`
- `ECONOMY_DESIGN.md` cuando afecte a preparación/economía
- `COMBAT_DESIGN.md` cuando afecte a Core/cañón/batalla
- `PROJECT_STATE.md`
- `DECISIONS.md`
- `NEXT_TASK.md`
- `AGENTS.md`
- `WORKFLOW.md`
- `LAST_CODEX_REPORT.md`

Consultar también `PROMPTS_LOG.md` antes de reutilizar prompts de pago e `IDEAS_BACKLOG.md` para ideas aún no cerradas.

## Estado actual

El primer prototipo visual de Rebirth está rechazado y no se utilizará como referencia de escala o arte.

El proyecto está en preproducción seria. Ya están documentados el diseño maestro, mundo, arte, economía y combate. La siguiente tarea es crear el plano top-down y las referencias visuales de la primera isla real antes de volver a generar/construir escenario.
