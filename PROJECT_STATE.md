# PROJECT_STATE

Última actualización: 2026-08-16

## Estado general

Fase: **preproducción / preparación técnica**.

El concepto principal del juego está definido y documentado, pero todavía no existe una implementación jugable.

## Repositorio

- Repositorio: `Carlaidus/Islas`
- Rama principal: `main`
- Estado actual: memoria operativa inicial creada y lista para comenzar la preparación técnica local.

## Herramientas acordadas

- Roblox Studio
- Rojo
- VS Code
- GitHub
- Codex
- Rebirth cuando aporte valor suficiente

## Diseño actualmente acordado

- Dos islas enfrentadas.
- Equipos de 1 a 3 jugadores.
- Soporte natural para 1v1, 2v2 y 3v3.
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

## Implementado

- Repositorio GitHub creado.
- Memoria operativa inicial creada.
- Diseño inicial documentado.
- Flujo de trabajo definido.
- Reglas de trabajo para Codex definidas.
- Estrategia de uso de Rebirth definida.

## No implementado todavía

- Copia local del repositorio en el PC.
- Estructura Rojo.
- Proyecto base de Roblox.
- Código Luau.
- Islas.
- Recursos.
- Recolección.
- Construcción.
- Moneda.
- Tienda/NPC.
- Cañón.
- Núcleo.
- Daño.
- Flujo de partida.
- UI.
- Lobby.
- Persistencia.
- Matchmaking.
- Rangos.
- Misiones.
- Monetización.

## Próximo objetivo técnico

Preparar el entorno local del proyecto en Windows y crear un esqueleto mínimo Rojo/Roblox que sincronice correctamente con Studio antes de implementar mecánicas.

Directorio local recomendado: `C:\Dev\Islas`.

## Riesgos a vigilar

- Añadir demasiados sistemas antes de validar el bucle principal.
- Gastar prompts de Rebirth en tareas que Codex/Rojo pueden resolver sin coste adicional.
- Acoplar valores de balance directamente al código.
- Diseñar sistemas que sólo funcionen en 3v3 y rompan el 1v1.
- Introducir pay-to-win.
- Intentar destrucción física compleja demasiado pronto.

## Criterio para avanzar de fase

No se considerará listo para progresión/monetización hasta que una versión básica 1v1 permita completar repetidamente este ciclo:

recolectar -> construir -> preparar -> combatir -> destruir/proteger núcleo -> terminar partida.
