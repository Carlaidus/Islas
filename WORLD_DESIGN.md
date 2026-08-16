# WORLD_DESIGN

Última actualización: 2026-08-16

## Objetivo

Definir la escala, recorrido, estructura espacial y reglas competitivas del mundo de **Islas** antes de generar un nuevo escenario.

El primer prototipo de Rebirth del 2026-08-16 queda rechazado como referencia visual, espacial y de escala. No se reutilizan sus medidas.

## Principio principal

La isla debe sentirse como un lugar que merece ser explorado durante la preparación, pero la zona de combate debe estar deliberadamente diseñada para que el Core pueda ser atacado.

No se elegirá una escala porque los objetos "quepan". Se elegirá según:

- tiempos de recorrido;
- ritmo de recolección;
- cantidad de decisiones por minuto;
- tamaño de fortaleza;
- visibilidad de objetivos;
- balística del cañón;
- número de equipos.

## Dos conceptos diferentes

No confundir:

### Tamaño de equipo

- 1v1 = 1 jugador por equipo;
- 2v2 = 2 jugadores por equipo;
- 3v3 = 3 jugadores por equipo.

### Número de equipos/islas

- `Duel`: 2 islas/equipos;
- `Triad`: 3 islas/equipos, futuro modo escalable.

Esto permite diseñar en el futuro formatos como 1v1v1, 2v2v2 o 3v3v3 sin rehacer los sistemas base.

El primer vertical slice se centrará en `Duel`, pero el diseño espacial se construirá para no bloquear `Triad`.

## Arquitectura general de la experiencia

La experiencia tendrá dos espacios conceptualmente distintos:

1. **Lobby / Hub**: entrada, social, selección de cola/modo, progresión futura.
2. **Match Arena**: arena dedicada a preparación y batalla.

Dirección técnica preferida: Lobby y Match terminarán como Places separados dentro de la misma experiencia cuando el flujo de teleport/matchmaking esté listo.

No considerar solución final colocar lobby y arena a cientos de studs dentro del mismo Place.

## Lobby objetivo

El lobby debe parecer una pequeña isla-base/puerto tropical habitado.

Objetivo aproximado inicial:

- 250–320 studs de zona principal;
- arquitectura real integrada en el terreno;
- cola 1v1, 2v2 y 3v3 claramente comprensible;
- espacios futuros para tienda, misiones, rangos, cosméticos, tutorial, estadísticas y eventos;
- recorridos cortos: llegar a una cola no debe ser una excursión;
- un punto visual central memorable.

Los accesos no serán carteles flotantes sobre pads de debug.

## Geometría de la arena

La arena se organiza alrededor de un **centro de combate abierto** —mar/laguna— y las islas se colocan alrededor de ese centro.

Cada isla tiene dos direcciones funcionales:

### Frente de combate (`CombatFront`)

La cara de la isla orientada hacia el centro de la arena.

Contiene o conecta directamente con:

- DefenseZone;
- CoreSockets;
- CannonPlatform;
- tienda/taller cercanos;
- líneas de tiro controladas.

### Zona exterior de exploración (`ExplorationBackland`)

Se extiende hacia atrás y hacia los laterales, alejándose del centro de la arena.

Contiene:

- selva/vegetación;
- árboles;
- canteras;
- cocoteros;
- rutas;
- desniveles;
- objetivos secundarios;
- resource sockets.

Esta forma permite una isla grande y explorable sin esconder el Core detrás de la propia geografía.

## Disposición de islas

### Duel — 2 islas

- colocadas aproximadamente a 180° una de otra;
- ambas CombatFront miran al centro;
- sus zonas de exploración se extienden hacia fuera;
- el espacio central queda libre para balística y lectura visual.

### Triad — 3 islas

- colocadas aproximadamente a 120° entre sí;
- las tres CombatFront miran hacia el centro;
- cada CannonPlatform debe poder apuntar a cualquiera de las otras dos;
- cada CoreSocket válido debe ser atacable desde ambos rivales.

No se diseñará una isla que sólo funcione mirando a un único enemigo situado exactamente enfrente.

## Escala objetivo de la isla v0.3

Objetivo inicial de huella jugable por isla:

- largo: aproximadamente **420–520 studs**;
- ancho: aproximadamente **350–460 studs**;
- forma orgánica/irregular;
- relieve útil: aproximadamente **35–65 studs** entre costa, rutas, colinas y zona base.

No son medidas definitivas. Se ajustarán mediante pruebas de recorrido con avatar real.

## Tiempos de recorrido objetivo

A velocidad normal de jugador, buscando rutas reales y no líneas rectas perfectas:

- base -> recurso cercano: **8–12 s**;
- base -> recurso medio: **15–20 s**;
- base -> recurso lejano/valioso: **22–32 s**;
- cruzar buena parte de la isla: **30–45 s**;
- recorrer gran parte del perímetro: **60–90 s**.

La preparación debe tener exploración, no caminar por caminar.

## Forma de la isla

Dirección recomendada: silueta tipo hoja/abanico irregular.

- parte interior (hacia el centro): costa/terrazas de combate más controladas;
- parte media: base, tienda, taller y conexiones;
- parte exterior: exploración más amplia y orgánica;
- laterales: rutas alternativas y recursos secundarios.

No usar círculos, discos ni plataformas uniformes.

## DefenseZone

Zona principal de construcción y protección del Core.

Objetivo inicial:

- aproximadamente **130–170 studs** de espacio defensivo útil;
- integrada en una meseta/terraza natural;
- varias rutas de entrada;
- suficiente espacio para diseños de fortaleza distintos;
- no necesariamente cuadrada;
- situada dentro del CombatFront.

La DefenseZone no ocupará toda la isla.

## Core y CoreSockets

El Core no puede aparecer en cualquier coordenada aleatoria.

Cada isla tendrá varios `CoreSockets` diseñados y validados previamente dentro del CombatFront.

Ejemplo:

- CoreSocket_A
- CoreSocket_B
- CoreSocket_C
- CoreSocket_D si el mapa lo permite.

Al comenzar cada partida, el servidor escoge uno de los sockets válidos.

### Reglas de un CoreSocket válido

Debe:

- ser defendible con construcción;
- permanecer geográficamente atacable desde todos los equipos enemigos del modo;
- no quedar detrás de colinas/acantilados permanentes;
- no quedar bloqueado por árboles grandes permanentes;
- ofrecer ventaja comparable al resto de sockets;
- permitir una línea de tiro suficiente para balística;
- tener espacio de fortificación alrededor;
- estar claramente integrado en el terreno, no sobre una plataforma de debug.

En `Triad`, cada socket debe pasar validación de línea de tiro desde las otras dos CannonPlatforms.

## Señal del Core

El jugador debe saber siempre qué zona está atacando.

Dirección visual:

- pedestal/tótem visible;
- haz/energía/partículas verticales moderadas visibles desde lejos;
- indicador discreto de objetivo durante batalla.

Las defensas construidas sí pueden ocultar físicamente el Core. Eso es estrategia válida: el rival sabe dónde está, pero debe romper las defensas.

## Selección del Core

Primera versión:

- selección aleatoria server-side entre sockets validados;
- la posición se revela al comenzar preparación;
- el Core no se mueve durante la partida.

Posible evolución:

- fase corta donde el equipo vota/elige entre 2–3 CoreSockets;
- sólo después de validar que añade estrategia sin complicar onboarding.

## CannonPlatform

- situada en el CombatFront;
- conectada a DefenseZone mediante ruta corta;
- elevada lo suficiente para leer el horizonte;
- no pegada al Core;
- área amplia para colaboración de 1–3 jugadores;
- rango horizontal preparado para 2 o 3 enemigos.

La plataforma debe evitar que la propia isla bloquee la mayoría de disparos.

## Separación entre islas

No se fija todavía un número definitivo.

Objetivo inicial para `Duel`:

- aproximadamente **250–380 studs de agua útil entre costas de combate**;
- centros probablemente en el rango de **700–900 studs**, dependiendo de la forma real.

Para `Triad`, la distancia radial se ajustará para conseguir tiempos de vuelo y lectura equivalentes entre cualquier par de islas.

La distancia final la decide la física del cañón:

- tiempo de vuelo;
- arco;
- potencia;
- precisión;
- legibilidad de impactos.

## Estructura interna

### 1. Costa

- contorno irregular;
- arena de anchura variable;
- roca y vegetación costera;
- pequeños entrantes/salientes;
- rutas laterales;
- vistas importantes hacia la arena central.

### 2. ExplorationBackland

- vegetación rica pero navegable;
- resource sockets distribuidos;
- 2–3 rutas principales;
- rutas secundarias;
- cambios de altura;
- 2–3 puntos de interés pequeños;
- ningún espacio enorme sin función jugable.

### 3. Base / DefenseZone

- CoreSocket activo;
- espacio de construcción;
- conexión a CannonPlatform;
- acceso al comerciante/taller;
- rutas hacia recursos.

### 4. Tienda y taller

- integrados físicamente en el mundo;
- cerca de la base pero no amontonados con Core/cañón;
- visibles desde rutas principales;
- suficiente espacio para varios jugadores.

## ResourceSockets

No usar spawn completamente aleatorio.

Cada socket tiene metadata conceptual:

- tipo;
- zona;
- distancia;
- valor;
- dificultad/ruta;
- grupo de equilibrio.

El servidor selecciona combinaciones equivalentes para cada equipo.

## Simetría funcional

Las islas no tienen que ser clones visuales.

Deben ser equivalentes en:

- superficie útil;
- tiempos de acceso;
- cantidad/valor de recursos;
- opciones de CoreSocket;
- coberturas principales;
- líneas de cañón;
- rutas de base.

Las diferencias artísticas y pequeñas variaciones geográficas son deseables si no cambian la ventaja competitiva.

## Preparación y tamaño de equipo

La isla debe funcionar en 1v1, 2v2 y 3v3.

No exigir que tres personas hagan tareas simultáneas para que la partida sea viable.

La economía puede ajustar por modo:

- nodos activos;
- rendimientos;
- costes;
- tiempos;
- contratos.

## Criterios obligatorios del próximo escenario

No se acepta por contener una lista de objetos.

Debe demostrar:

1. escala real de exploración;
2. isla con silueta orgánica;
3. CombatFront y ExplorationBackland comprensibles sin carteles de debug;
4. 2–3 rutas reales;
5. vegetación y relieve de calidad;
6. DefenseZone integrada;
7. al menos 3 CoreSockets válidos;
8. línea de tiro validable a los CoreSockets;
9. CannonPlatform preparada para múltiples objetivos;
10. recursos distribuidos por zonas;
11. tienda/taller integrados;
12. calidad visual coherente con ART_DIRECTION.md.

## Validación antes de aprobar el mapa

Medir en Studio:

- tiempos de recorrido;
- tiempo a recursos;
- rutas principales;
- porcentaje de visión desde CannonPlatform;
- línea de tiro a cada CoreSocket;
- giro requerido para dos/tres enemigos;
- tamaño real de fortaleza posible;
- FPS/rendimiento aproximado con vegetación;
- lectura del Core y construcciones desde la distancia de combate.

Las dimensiones definitivas sólo se congelarán después de esas pruebas.
