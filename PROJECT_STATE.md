# PROJECT_STATE

Última actualización: 2026-08-16

## Estado general

Fase: **preproducción seria / calibración profesional de Rebirth para el lobby**.

El concepto de Islas está definido. Los dos intentos amplios de worldbuilding con Rebirth están rechazados. El proyecto no abandona Rebirth: se ha investigado su uso profesional y se ha creado un protocolo nuevo para aprovecharlo sin repetir los fallos.

No se continuará construyendo encima de V1/V2.

## Repositorio y entorno

- Repositorio: `Carlaidus/Islas`
- Rama principal: `main`
- Directorio local: `C:\Dev\Islas`
- Place de trabajo acordado: `C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`
- Snapshot V2 recomendado: `C:\Dev\Islas\snapshots\Islas_REBIRTH_V2_RECHAZADO.rbxlx`
- Git funcionando.
- Rojo 7.6.1 instalado.
- Rojo de Islas: puerto `34873`.
- Roblox Studio puede conectarse mediante Rojo.
- Rebirth instalado y conectado.
- VS Code opcional.
- Codex disponible como operador técnico.

## Modelo operativo

- ChatGPT: dirección/producto, investigación, prompts y QA.
- Rebirth: construcción dentro de Studio, incluyendo mundo, UI, assets, scripts y mecánicas acotadas.
- Codex: arquitectura, seguridad, Rojo, inspección del `.rbxlx`, GitHub, pruebas y consolidación.
- Carlos/Marc: diseño humano y playtest; cuenta Rebirth operada por adulto.

## Investigación y aprendizaje completados

Se han revisado:

- documentación oficial de Rebirth;
- términos y privacidad vigentes;
- material oficial de uso;
- comunidad/Discord;
- reseñas y comparativas externas con cautela;
- documentación Roblox sobre onboarding, retención, analítica, rendimiento, Places, teleport, MemoryStore y monetización;
- los dos Places reales generados por Rebirth.

Documentos operativos:

- `REBIRTH_PLAYBOOK.md`
- `REBIRTH_PROMPT_TEMPLATES.md`
- `REBIRTH_POSTMORTEMS.md`
- `REBIRTH_REVIEW_WORKFLOW.md`
- `AI_TOOLING_MATRIX.md`
- `ROBLOX_PRODUCT_STRATEGY.md`
- `RESEARCH_SOURCES.md`

Método obligatorio:

`referencias -> plan-only -> aprobación -> calibration set -> construcción acotada -> Play/QA -> auditoría/consolidación`

No volver a usar:

`megaprompt -> mundo entero -> miles de instancias -> descubrir fallos al final`

## Cuenta y privacidad

- Rebirth declara el servicio para usuarios de 13 años o más.
- Carlos/adulto opera la cuenta y suscripción.
- Marc participa bajo supervisión.
- Plugin de Studio preferido.
- `Direct-to-ROBLOX` apagado salvo decisión posterior.
- No enviar secretos, credenciales ni datos privados.

## Diseño base actual

### Entrada

- Lobby/Hub compacto como Start Place.
- Quick Play.
- 1v1/2v2/3v3.
- estadísticas/leaderboards.
- práctica de cañón.
- placeholders de tienda cosmética, misiones, rango y party.

### Partida

- Match Place separado.
- Duel primero: 2 islas/equipos.
- Triad previsto después: 3 islas/equipos.
- 1–3 jugadores por equipo.

### Preparación

- explorar;
- madera/piedra/cocos;
- minijuegos de recolección;
- MatchCoins;
- contratos;
- tienda/taller;
- construcción;
- preparación del cañón.

### Batalla

- un cañón principal por equipo;
- dirección/elevación/potencia;
- coco balístico;
- daño modular;
- reparación;
- destruir Core.

### Core

- CoreSockets validados;
- CombatFront visible/atacable;
- beacon a distancia;
- defensas construidas pueden bloquear físicamente.

## Arquitectura de Roblox

Dirección:

- Lobby Place + Match Place;
- servidor reservado para partida cuando se implemente;
- TeleportService server-side;
- MemoryStore sólo cuando se necesiten colas cross-server;
- Instance Streaming y optimización en Match grande;
- pruebas de teleport en cliente publicado, no sólo Studio.

## Producto

Prioridades:

1. diversión rápida/FTUE;
2. 1v1 completo;
3. calidad visual y rendimiento;
4. segunda partida y D1;
5. 2v2/3v3;
6. progresión;
7. monetización cosmética;
8. Triad/contenido.

Funnel inicial definido en `ROBLOX_PRODUCT_STRATEGY.md`.

## Rebirth V1

Estado: **RECHAZADO**.

Problemas:

- islas diminutas/circulares;
- sin exploración;
- blockout primitivo;
- lobby de pads/carteles;
- falta de referencias;
- prompt excesivo y escala mal diseñada.

## Rebirth V2

Estado: **RECHAZADO**.

Auditoría real del Place:

- spawn en agua / ausencia de SpawnLocation válido;
- nado posible entre islas;
- palmeras rotas y segmentadas;
- árboles en agua;
- vegetación desigual/incompleta;
- debug transparente visible;
- bloques sin lectura;
- geometría duplicada/triplicada;
- CoreVisual/colas/tienda/taller duplicados;
- CoreSockets superpuestos;
- miles de Parts primitivas y 0 MeshParts;
- informe de Rebirth no reflejaba defectos bloqueantes.

No se reparará parche a parche como base de producción.

Ver `REBIRTH_POSTMORTEMS.md`.

## Paquete de lobby preparado

Se ha diseñado el lobby compacto como primer entregable de calibración.

Documentos nuevos:

- `LOBBY_DESIGN.md` — escala, flujo, composición, jerarquía y QA;
- `LOBBY_REFERENCE_BRIEF.md` — autoridad de las dos imágenes de referencia;
- `REBIRTH_LOBBY_PLAN_PROMPT.md` — prompt plan-only listo para Rebirth.

Referencias preparadas:

- concept art en perspectiva del lobby;
- plano top-down técnico del lobby.

Dirección espacial inicial:

- huella ~280 x 220 studs;
- Spawn al sur;
- plaza central;
- Quick Play en eje principal;
- 1v1/2v2/3v3 como salidas de puerto en abanico;
- estadísticas al oeste;
- cosméticos al este;
- misiones/rango y party al sur;
- práctica de cañón al noroeste.

## Estado de implementación

### Preparado

- concepto y documentación maestra;
- diseño de mundo/arte/economía/combate;
- estrategia de producto;
- herramientas conectadas;
- playbook profesional Rebirth;
- postmortems V1/V2;
- matriz Rebirth/Codex/Studio;
- workflow de revisión;
- plan de producción revisado;
- especificación y referencias del lobby;
- prompt plan-only del lobby.

### No implementado de producción

- Place limpio confirmado;
- plan de Rebirth aprobado;
- Calibration Yard aprobado;
- lobby producible;
- Place/arquitectura publicada;
- isla real;
- arena Duel;
- recolección;
- inventario;
- economía;
- construcción;
- Core funcional;
- cañón funcional;
- estado de partida;
- matchmaking/teleport;
- analítica;
- progresión;
- monetización.

## Próxima tarea

Seguir `NEXT_TASK.md`:

1. snapshot V2;
2. abrir y guardar Place limpio;
3. abrir conversación nueva de Rebirth;
4. adjuntar concept art + plano top-down;
5. pegar `REBIRTH_LOBBY_PLAN_PROMPT.md`;
6. recibir plan sin cambios en Studio;
7. traer la respuesta a ChatGPT para revisión.

No construir el lobby entero antes de aprobar Calibration Yard y sección representativa.

## Criterio para avanzar

La calibración sólo se aprueba si:

- spawn funciona;
- arte coincide con referencias;
- assets no están rotos;
- no hay duplicados/debug;
- escala con avatar correcta;
- Output limpio;
- el resultado merece conservarse en producción.