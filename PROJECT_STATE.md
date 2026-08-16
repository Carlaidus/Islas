# PROJECT_STATE

Última actualización: 2026-08-16

## Estado general

Fase: **preproducción de producto / rediseño de mundo y dirección artística**.

El concepto del juego sigue vigente, pero el primer escenario visual generado por Rebirth ha sido rechazado. No se continuará construyendo encima de esa maqueta. Antes de volver a generar mundo se han definido criterios profesionales de escala, recorrido y arte.

## Repositorio y entorno local

- Repositorio: `Carlaidus/Islas`
- Rama principal: `main`
- Directorio local: `C:\Dev\Islas`
- Git para Windows instalado y funcionando.
- Rojo instalado: 7.6.1.
- Proyecto local inicializado con `rojo init`.
- Islas usa el puerto Rojo `34873` para no interferir con otro proyecto.
- Roblox Studio se conecta correctamente a `localhost:34873`.
- Rebirth está instalado y conectado correctamente al Studio de Islas.

## Herramientas

- Roblox Studio
- Rojo
- GitHub
- Codex
- Rebirth cuando demuestre ventaja real
- VS Code opcional, no necesario

No se asume ya que Rebirth deba hacer automáticamente todo el worldbuilding. Se evaluará herramienta por tarea.

## Diseño actualmente acordado

- El jugador empieza en un lobby/hub real, no directamente en una isla.
- Accesos/colas para 1v1, 2v2 y 3v3.
- Dos islas enfrentadas por partida.
- Equipos de 1 a 3 jugadores.
- Fase de preparación basada en explorar, recolectar, comprar y construir.
- Fase de batalla basada en cañón, munición, reparación y defensa.
- Recursos iniciales: madera, piedra y cocos.
- Moneda de partida.
- NPC/tienda por isla.
- Construcción modular con snap.
- Núcleo/tótem como objetivo principal.
- Progresión, rangos y monetización después de validar el núcleo jugable.

## Escala de mundo objetivo v0.2

Ver `WORLD_DESIGN.md`.

Objetivos iniciales por isla:

- 420–500 studs de largo;
- 350–450 studs de ancho;
- costa irregular;
- relieve útil 30–50 studs;
- zona construible aproximada de 130–160 studs;
- cruce de isla: 30–45 s;
- recurso lejano desde base: 20–30 s;
- perímetro amplio: 60–90 s;
- separación objetivo entre costas: 250–350 studs, pendiente de validar con física real del cañón.

## Dirección artística

Ver `ART_DIRECTION.md`.

Objetivo: experiencia tropical de aventura, estilizada y colorida, con calidad visual suficiente para parecer un juego Roblox publicado. No se aceptarán círculos planos, árboles primitivos, pads flotantes ni composición de baseplate como dirección del producto.

## Primer intento con Rebirth

Estado: **RECHAZADO**.

Rebirth generó una estructura técnicamente ordenada con 763 instancias, lobby, dos islas y jerarquía correcta, pero el resultado visual y espacial no cumple el nivel requerido.

Problemas principales:

- isla demasiado pequeña para explorar;
- geometría plana/circular;
- lobby sin arquitectura real;
- recursos y props primitivos;
- falta de dirección artística;
- escala decidida antes de definir tiempos de recorrido.

No se invertirá trabajo en pulir esta maqueta. Debe sustituirse por un diseño nuevo.

## Memoria operativa

- `README.md`
- `GAME_DESIGN.md`
- `WORLD_DESIGN.md`
- `ART_DIRECTION.md`
- `DECISIONS.md`
- `PROJECT_STATE.md`
- `NEXT_TASK.md`
- `AGENTS.md`
- `WORKFLOW.md`
- `LAST_CODEX_REPORT.md`
- `PROMPTS_LOG.md`
- `IDEAS_BACKLOG.md`

## Preparado

- repositorio y memoria operativa;
- entorno Git/Rojo/Studio;
- conexión Rebirth;
- concepto de juego;
- flujo de lobby;
- escala y tiempos objetivo de primera isla real;
- dirección artística inicial;
- registro del fallo del primer prototipo.

## No implementado todavía

- lobby definitivo/producible;
- isla real con escala correcta;
- arena real;
- recursos funcionales;
- recolección;
- construcción;
- moneda;
- tienda funcional;
- cañón funcional;
- núcleo funcional;
- daño;
- matchmaking;
- UI definitiva;
- persistencia;
- progresión;
- monetización.

## Próximo objetivo

No enviar otro prompt grande a Rebirth todavía.

Primero preparar una **referencia visual y espacial concreta** de la isla/lobby basada en `WORLD_DESIGN.md` y `ART_DIRECTION.md`. Después se reconstruirá el escenario desde cero con la herramienta que ofrezca mejor calidad, utilizando esa referencia y midiendo tiempos reales de recorrido.

El siguiente escenario debe plantearse como parte real del juego, no como un blockout desechable sin dirección.

## Criterio para avanzar

No se aprobará la nueva isla por cumplir una lista de objetos. Debe demostrar:

- ganas de explorar;
- rutas y zonas reconocibles;
- relieve y vegetación coherentes;
- espacio real de construcción;
- posición defendible del Core;
- lectura clara del cañón y enemigo;
- tiempos de recorrido dentro de objetivos;
- calidad visual coherente con `ART_DIRECTION.md`.
