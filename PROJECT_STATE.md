# PROJECT_STATE

Última actualización: 2026-08-16

## Estado general

Fase: **preproducción seria / calibración de herramientas y dirección de producto**.

El concepto de Islas está definido. Los dos intentos amplios de worldbuilding con Rebirth están rechazados. El proyecto no abandona Rebirth: se ha investigado su uso profesional y se ha creado un protocolo nuevo para aprovecharlo sin repetir los fallos.

No se continuará construyendo encima de V1/V2.

## Repositorio y entorno

- Repositorio: `Carlaidus/Islas`
- Rama principal: `main`
- Directorio local: `C:\Dev\Islas`
- Place de trabajo acordado: `C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`
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

## Investigación completada

Se han revisado:

- documentación oficial de Rebirth;
- términos y privacidad vigentes;
- material oficial de uso;
- comunidad/Discord;
- reseñas y comparativas externas con cautela;
- documentación Roblox sobre onboarding, retención, analítica, rendimiento, Places, teleport, MemoryStore y monetización.

Documentos nuevos:

- `REBIRTH_PLAYBOOK.md`
- `REBIRTH_PROMPT_TEMPLATES.md`
- `REBIRTH_POSTMORTEMS.md`
- `REBIRTH_REVIEW_WORKFLOW.md` actualizado
- `AI_TOOLING_MATRIX.md`
- `ROBLOX_PRODUCT_STRATEGY.md`
- `RESEARCH_SOURCES.md`

## Conclusión sobre Rebirth

Rebirth se mantiene como herramienta importante.

Capacidades útiles:

- leer/modificar Studio;
- scripts y UI;
- assets/3D;
- edición contextual;
- debugging;
- ejecución rápida.

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
- placeholders de tienda cosmética, misiones y rango.

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

- spawn en agua / SpawnLocation inválido o ausente;
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

## Estado de implementación

### Preparado

- concepto y documentación maestra;
- diseño de mundo/arte/economía/combate;
- estrategia de producto;
- herramientas conectadas;
- playbook profesional Rebirth;
- matriz Rebirth/Codex/Studio;
- workflow de revisión;
- plan de producción revisado.

### No implementado de producción

- calibration visual aprobada;
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

- snapshot V2;
- Place limpio;
- referencias top-down/moodboard del lobby;
- Visual Calibration Yard;
- sesión nueva Rebirth;
- prompt plan-only;
- primera muestra limitada.

No construir el lobby entero antes de aprobar la calibración.

## Criterio para avanzar

La calibración sólo se aprueba si:

- spawn funciona;
- arte coincide con referencias;
- assets no están rotos;
- no hay duplicados/debug;
- escala con avatar correcta;
- Output limpio;
- el resultado merece conservarse en producción.
