# NEXT_TASK

## Tarea actual

**Reconstruir con Rebirth la Fase A — World Foundation de Islas.**

El prototipo anterior está rechazado. La nueva construcción debe plantearse como base real de producción y seguir `PRODUCTION_PLAN.md`.

## Documentos obligatorios

Antes de evaluar o continuar esta fase, revisar:

- `GAME_DESIGN.md`
- `WORLD_DESIGN.md`
- `ART_DIRECTION.md`
- `ECONOMY_DESIGN.md`
- `COMBAT_DESIGN.md`
- `MATCH_FLOW.md`
- `PRODUCTION_PLAN.md`
- `DECISIONS.md`

## Objetivo de Fase A

Crear dentro del Studio de desarrollo:

1. Un lobby/hub tropical de calidad de producto con:
   - 1v1 / 2v2 / 3v3 integrados en arquitectura real;
   - área futura de progresión/comercio;
   - Practice Cannon Range.
2. Una arena radial de desarrollo con 6 `IslandAnchorSockets`.
3. Una isla arquetipo real de aproximadamente 420–520 x 350–460 studs, orgánica, explorable y con relieve.
4. Duplicados/rotaciones de esa isla suficientes para visualizar Duel y Triad.
5. `CombatFront`, `ExplorationBackland`, `DefenseZone`, `CoreSockets`, `CannonPlatform`, `Shop`, `Workshop`, `Spawns`, `ResourceSockets` y `TreasureSockets`.
6. Calidad visual tropical de aventura según `ART_DIRECTION.md`.
7. Líneas de tiro geográficas válidas hacia los `CoreSockets`.

## Arena escalable

Usar 6 anchors alrededor del centro separados 60°:

- A 0°
- B 60°
- C 120°
- D 180°
- E 240°
- F 300°

Preview de configuraciones:

- Duel: A + D.
- Triad: A + C + E.

Cada isla debe orientar su `CombatFront` hacia el centro.

## Regla del Core

El Core NO aparece libremente por la isla.

Cada isla tendrá 3–4 `CoreSockets` dentro del `CombatFront`/`DefenseZone`.

Todos deben:

- ser atacables desde cada rival válido;
- no quedar ocultos por geografía permanente;
- permitir fortificación alrededor;
- tener valor competitivo equivalente.

El Core activo podrá identificarse por una señal vertical/energética visible desde las islas enemigas.

## Escala inicial

- isla: ~420–520 x 350–460 studs;
- relieve: ~35–65 studs;
- DefenseZone: ~130–170 studs;
- cruce de isla objetivo: 30–45 s;
- recurso lejano: 22–32 s;
- distancia final entre islas NO se congela todavía; se ajustará con la futura balística.

## Calidad visual obligatoria

No aceptar:

- discos planos;
- baseplates como terreno principal;
- árboles de cilindros y bolas como resultado visible;
- cañones de geometría primitiva;
- pads/carteles flotantes como lobby;
- composición vacía o de blockout técnico.

Se permite Terrain, MeshParts y assets seguros sin scripts cuando mejoren el resultado.

## Alcance de este prompt

Rebirth debe recibir el contexto completo del juego, pero en esta intervención construir **sólo Fase A — World Foundation**.

NO implementar todavía:

- matchmaking real;
- DataStore;
- MatchCoins funcionales;
- recolección funcional;
- crafting funcional;
- shop funcional;
- building funcional;
- daño;
- disparo del cañón;
- progresión;
- Robux.

## Criterios de aceptación

La Fase A sólo se aprueba si:

- el lobby parece un lugar real;
- la isla invita a explorar;
- hay rutas, zonas y relieve reconocibles;
- la escala respecto al avatar es creíble;
- las zonas de recursos tienen sentido;
- el CombatFront mantiene lectura hacia rivales;
- cada CoreSocket tiene línea de ataque válida;
- la isla puede orientarse en Duel y Triad;
- la calidad visual puede servir como base de producción, no como prototipo que haya que rehacer entero.

## Después

No enviar un segundo prompt automáticamente. Revisar visualmente y medir recorridos antes de pasar a Fase B.