# NEXT_TASK

## Tarea actual

**Diseñar la referencia de producción de la primera isla real antes de reconstruir Studio.**

No enviar todavía otro prompt de Rebirth.

## Objetivo

Crear una especificación visual y espacial suficientemente concreta para que la siguiente construcción no dependa de que una IA improvise el mapa.

La primera isla debe plantearse como base real de producción del juego.

## Documentos obligatorios

Antes de construir, revisar:

- `GAME_DESIGN.md`
- `WORLD_DESIGN.md`
- `ART_DIRECTION.md`
- `ECONOMY_DESIGN.md`
- `COMBAT_DESIGN.md`
- `DECISIONS.md`

## Entregables de esta tarea

### 1. Plano top-down de una isla

Debe definir aproximadamente:

- costa orgánica;
- CombatFront;
- ExplorationBackland;
- DefenseZone;
- 3–4 CoreSockets;
- CannonPlatform;
- Shop;
- Workshop;
- zona/spawn de equipo;
- rutas principales;
- rutas secundarias;
- bosque/palmeras;
- cantera/piedra;
- zonas de cocos;
- puntos secundarios/contratos;
- resource socket groups.

### 2. Referencia artística

Crear una o varias imágenes de referencia propias para mostrar:

- calidad visual objetivo;
- densidad de vegetación;
- terreno/costa;
- escala respecto al avatar;
- aspecto del CombatFront;
- aspecto del Core;
- lenguaje visual del cañón, tienda y taller.

Estas imágenes se podrán adjuntar posteriormente a Rebirth como contexto.

### 3. Regla de líneas de tiro

Validar sobre el plano que:

- cada CoreSocket pertenece al CombatFront;
- ningún socket depende de disparar a través de una montaña;
- la futura CannonPlatform puede cubrir todos los sockets rivales;
- la misma geometría puede funcionar colocada en Duel y posteriormente en Triad.

### 4. Escala

Usar como punto de partida:

- isla ~420–520 x 350–460 studs;
- relieve 35–65 studs;
- DefenseZone ~130–170 studs;
- cruce ~30–45 s;
- recurso lejano ~22–32 s.

Las medidas se ajustarán al probar el mapa.

## Arquitectura recomendada de la isla

Dirección base:

- silueta tipo hoja/abanico irregular;
- CombatFront en el borde interior de la arena;
- DefenseZone/Core en terraza del frente, claramente atacable;
- CannonPlatform desplazada respecto al Core;
- Shop/Workshop detrás o lateral de la defensa;
- exploración extendida hacia exterior y laterales;
- 2–3 rutas principales conectando base y recursos;
- vegetación más densa en exploración y más controlada en líneas de combate.

## Después de aprobar la referencia

1. decidir herramienta exacta de construcción;
2. eliminar/aislar el `RebirthPrototype` rechazado;
3. crear la primera isla desde cero;
4. medir recorridos reales en Studio;
5. corregir escala/layout antes de duplicarla;
6. crear arena Duel;
7. prototipar balística;
8. sólo entonces congelar separación entre islas.

## Regla

No gastar créditos en generar un nuevo mapa hasta tener el plano/referencia aprobados.

La próxima generación debe tener un objetivo de calidad visual y una composición concreta, no una lista genérica de objetos.
