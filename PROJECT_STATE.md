# PROJECT_STATE

Última actualización: 2026-08-16

## Estado general

Fase: **preproducción de producto / rediseño completo previo a nueva construcción**.

El primer escenario de Rebirth está rechazado. No se continuará sobre él. El proyecto ha sido reorganizado para definir antes de construir:

- escala real;
- exploración;
- CombatFront y CoreSockets;
- soporte futuro de 2–3 islas;
- economía de preparación;
- minijuegos de recolección;
- tienda/contratos;
- fabricación;
- construcción;
- cañón y batalla;
- dirección artística.

## Repositorio y entorno

- Repositorio: `Carlaidus/Islas`
- Rama principal: `main`
- Directorio local: `C:\Dev\Islas`
- Git funcionando.
- Rojo 7.6.1 instalado.
- Islas usa puerto Rojo `34873`.
- Roblox Studio puede conectarse correctamente mediante Rojo.
- Rebirth está instalado y conectado.
- VS Code no es obligatorio.

## Documentos de diseño vigentes

- `README.md` — resumen del proyecto y flujo operativo.
- `GAME_DESIGN.md` — diseño maestro actual.
- `WORLD_DESIGN.md` — escala, rutas, arena radial, CombatFront, ExplorationBackland y CoreSockets.
- `ART_DIRECTION.md` — calidad y estilo visual.
- `ECONOMY_DESIGN.md` — recursos, MatchCoins, contratos, tienda, fabricación, construcción y preparación.
- `COMBAT_DESIGN.md` — Core, cañón, balística, daño, reparación, Duel/Triad y victoria.
- `DECISIONS.md` — decisiones vigentes.
- `NEXT_TASK.md` — única prioridad siguiente.
- `AGENTS.md` — reglas para agentes.
- `WORKFLOW.md`
- `LAST_CODEX_REPORT.md`
- `PROMPTS_LOG.md`
- `IDEAS_BACKLOG.md`

## Diseño base actual

### Entrada

- Lobby/hub tropical real.
- Colas 1v1, 2v2 y 3v3.

### Tamaño de equipo

- 1–3 jugadores por equipo.

### Número de equipos

- `Duel`: 2 islas/equipos — primera prioridad.
- `Triad`: 3 islas/equipos — previsto desde arquitectura.

### Partida

- despliegue corto;
- preparación;
- transición;
- batalla;
- resultado;
- regreso a lobby.

### Preparación

Incluye pequeños bucles jugables:

- explorar;
- tala;
- minería;
- cocos;
- contratos;
- MatchCoins;
- comerciante;
- fabricación compacta;
- construcción;
- preparación/mejora del cañón.

### Batalla

- un cañón principal por equipo inicialmente;
- orientación + elevación + potencia;
- coco balístico;
- daño modular;
- reparación de estructuras existentes;
- victoria por destruir Core.

## Core y visibilidad

La posición del Core se resuelve mediante `CoreSockets`.

- No puede aparecer en cualquier lugar.
- Cada isla define varios sockets en su CombatFront.
- El servidor selecciona uno al comenzar la partida.
- El Core se revela durante preparación.
- Todo socket debe ser atacable por todos los rivales del modo.
- En Triad debe existir línea de tiro desde las otras dos islas.
- El Core tendrá una señal visual a distancia.
- Las construcciones del jugador sí pueden ocultarlo físicamente.

## Mundo objetivo

Escala inicial aproximada por isla:

- 420–520 studs de largo;
- 350–460 studs de ancho;
- relieve útil 35–65 studs;
- DefenseZone de ~130–170 studs;
- 30–45 s para cruzar buena parte de la isla;
- 22–32 s hasta recurso lejano;
- 60–90 s de recorrido amplio.

Arena radial:

- Duel: islas ~180°.
- Triad: islas ~120°.
- CombatFront hacia centro.
- ExplorationBackland hacia exterior/laterales.

La distancia definitiva entre islas no se congela hasta prototipar la balística.

## Tiempos iniciales para probar

- preparación 1v1: ~6:00;
- preparación 2v2: ~5:30;
- preparación 3v3: ~5:00;
- batalla: ~4:00;
- overtime: hasta ~1:00.

Configurables y pendientes de playtest.

## Primer intento Rebirth

Estado: **RECHAZADO**.

No usar como referencia de:

- escala;
- arte;
- layout;
- calidad visual.

Se mantiene temporalmente únicamente para no borrar nada antes de ordenar el nuevo flujo.

## No implementado todavía

- isla de producción;
- arena Duel real;
- Triad;
- lobby producible;
- recolección;
- economía funcional;
- construcción;
- taller;
- cañón;
- balística;
- Core funcional;
- daño;
- matchmaking;
- persistencia;
- progresión;
- monetización.

## Herramientas: criterio actual

No asignar automáticamente "arte = Rebirth" y "código = Codex".

ChatGPT decide por tarea entre:

- Roblox Studio;
- Rebirth;
- Codex/Rojo;
- herramientas propias de Roblox;
- combinación de Terrain, MeshParts y assets seguros.

La próxima intervención de Rebirth debe partir de una referencia visual/compositiva mucho más concreta que el primer prompt.

## Criterio para avanzar

Antes de implementar sistemas grandes debe existir una primera isla aprobada que demuestre:

- escala de exploración;
- rutas;
- calidad artística;
- DefenseZone;
- varios CoreSockets válidos;
- CannonPlatform;
- distribución de recursos;
- tienda/taller integrados;
- líneas de tiro válidas;
- tiempos de recorrido medidos.
