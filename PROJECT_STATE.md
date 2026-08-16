# PROJECT_STATE

Última actualización: 2026-08-16

## Estado general

Fase: **preproducción / prototipado visual inicial**.

El concepto principal del juego está definido y documentado. El entorno local está preparado, Roblox Studio se conecta correctamente mediante Rojo y Rebirth ya está instalado y conectado al Studio de Islas. Todavía no existe una implementación jugable completa.

## Repositorio y entorno local

- Repositorio: `Carlaidus/Islas`
- Rama principal: `main`
- Directorio local: `C:\Dev\Islas`
- Git para Windows instalado y funcionando.
- Rojo instalado: 7.6.1.
- Proyecto local inicializado con `rojo init`.
- Islas usa el puerto Rojo `34873` para no interferir con otro proyecto.
- Roblox Studio se ha conectado correctamente a `localhost:34873`.
- Rebirth está instalado y aparece `Connected` en verde dentro de Roblox Studio.

## Herramientas acordadas

- Roblox Studio
- Rojo
- GitHub
- Codex
- Rebirth para tareas donde modificar directamente Studio aporte una ventaja real
- VS Code opcional, no necesario

## Diseño actualmente acordado

- El jugador empieza en un lobby, no directamente en una isla.
- Lobby con accesos/colas claros para 1v1, 2v2 y 3v3.
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
- Rebirth instalado y conectado correctamente al Studio de Islas.
- Diseño inicial y flujo de lobby documentados.

## No implementado todavía

- Primer prototipo visual generado con Rebirth.
- Lobby físico.
- Colas 1v1/2v2/3v3.
- Islas.
- Recursos.
- Recolección.
- Construcción.
- Moneda.
- Tienda/NPC funcional.
- Cañón funcional.
- Núcleo funcional.
- Daño.
- Flujo completo de partida.
- UI definitiva.
- Persistencia.
- Matchmaking.
- Rangos.
- Misiones.
- Monetización.

## Próximo objetivo

Usar el primer prompt de Rebirth para generar un **prototipo visual y estructural amplio** del lobby y de una arena 1v1/2v2/3v3 de dos islas, sin implementar todavía sistemas sensibles ni arquitectura definitiva.

La primera intervención debe crear elementos modulares, claramente nombrados y agrupados bajo un contenedor propio para poder revisarlos, corregirlos o eliminarlos sin contaminar el resto del proyecto.

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
