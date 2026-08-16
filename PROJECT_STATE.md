# PROJECT_STATE

Última actualización: 2026-08-16

## Estado general

Fase: **preproducción / prototipado técnico**.

El concepto principal del juego está definido y documentado. El entorno local ya está preparado y Roblox Studio se ha conectado correctamente al proyecto mediante Rojo. Todavía no existe una implementación jugable del juego.

## Repositorio

- Repositorio: `Carlaidus/Islas`
- Rama principal: `main`
- Directorio local: `C:\Dev\Islas`
- Git para Windows instalado y funcionando.
- Rojo instalado: 7.6.1.
- El proyecto local se inicializó con `rojo init`.
- Islas se está sirviendo con Rojo por el puerto `34873` para no interferir con otro proyecto que usa/ocupaba el puerto habitual.
- Roblox Studio se ha conectado correctamente a `localhost:34873`.

## Herramientas acordadas

- Roblox Studio
- Rojo
- GitHub
- Codex
- Rebirth cuando aporte valor real
- VS Code opcional, no necesario

## Diseño actualmente acordado

- El jugador empieza en un lobby, no directamente en una isla.
- Lobby mínimo con accesos/colas 1v1, 2v2 y 3v3.
- Dos islas enfrentadas por partida.
- Equipos de 1 a 3 jugadores.
- Fase de preparación y fase de batalla.
- Recursos iniciales: madera, piedra y cocos.
- Moneda de partida.
- NPC/tienda por isla.
- Construcción modular con snap.
- Núcleo/tótem como objetivo principal.
- Cañón con ángulo, orientación y potencia.
- Daño localizado por piezas.
- Reparación durante combate.
- Progresión, rangos y monetización reservados para fases posteriores.

## Memoria operativa creada

- `README.md` — visión general y reglas básicas del proyecto.
- `GAME_DESIGN.md` — diseño detallado del juego.
- `DECISIONS.md` — decisiones cerradas y vigentes.
- `PROJECT_STATE.md` — estado real actual.
- `NEXT_TASK.md` — única tarea prioritaria siguiente.
- `AGENTS.md` — instrucciones para Codex y otros agentes.
- `WORKFLOW.md` — método de trabajo del proyecto.
- `LAST_CODEX_REPORT.md` — informe operativo de la última tarea de Codex.
- `PROMPTS_LOG.md` — registro de prompts relevantes y de pago.
- `IDEAS_BACKLOG.md` — ideas interesantes todavía no convertidas en requisitos.

## Implementado / preparado

- Repositorio GitHub creado.
- Memoria operativa inicial creada.
- Git instalado y repositorio clonado localmente.
- Rojo 7.6.1 funcionando.
- Proyecto Islas inicializado con Rojo.
- Roblox Studio conectado correctamente al servidor Rojo de Islas.
- Diseño inicial y flujo de lobby documentados.

## No implementado todavía

- Rebirth instalado/conectado y probado.
- Lobby físico.
- Colas 1v1/2v2/3v3.
- Islas.
- Recursos.
- Recolección.
- Construcción.
- Moneda.
- Tienda/NPC.
- Cañón.
- Núcleo.
- Daño.
- Flujo completo de partida.
- UI.
- Persistencia.
- Matchmaking.
- Rangos.
- Misiones.
- Monetización.

## Próximo objetivo técnico

Instalar y conectar Rebirth al proyecto Islas sin gastar créditos. Después, ChatGPT decidirá y preparará la primera intervención de Rebirth para generar un prototipo visual/estructural de alto valor.

## Riesgos a vigilar

- Añadir demasiados sistemas antes de validar el bucle principal.
- Gastar prompts de Rebirth en tareas demasiado pequeñas o mal delimitadas.
- Permitir que Rebirth y Rojo compitan por los mismos objetos/scripts sin una estrategia clara de propiedad.
- Acoplar valores de balance directamente al código.
- Diseñar sistemas que sólo funcionen en 3v3 y rompan el 1v1.
- Introducir pay-to-win.
- Intentar destrucción física compleja demasiado pronto.

## Criterio para avanzar de fase

Antes de progresión/monetización debe existir una versión básica que permita repetir este ciclo:

lobby -> elegir formato -> formar partida -> recolectar -> construir/comprar -> combatir -> destruir/proteger núcleo -> resultado -> volver al ciclo de lobby/partida.
