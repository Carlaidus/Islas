# LOBBY_DESIGN

Última actualización: 2026-08-16

## Propósito

Definir el primer espacio que verá un jugador de **Islas**. El lobby debe enseñar el producto en pocos segundos, permitir empezar una partida con muy poca fricción y presentar progresión, estadísticas y cosméticos sin convertirse en un centro comercial confuso.

El lobby será un **Place independiente** del Match Place en la arquitectura final. Durante desarrollo puede convivir temporalmente con otras zonas, pero no se considerará solución final colocar lobby y arena a cientos de studs dentro del mismo Place.

## Objetivo de experiencia

Un jugador nuevo debe poder:

1. aparecer en un punto seguro y correcto;
2. entender visualmente el tema del juego;
3. localizar Quick Play, 1v1, 2v2 y 3v3 en menos de 5 segundos;
4. empezar a jugar en menos de 30 segundos si no quiere explorar el lobby;
5. descubrir práctica, estadísticas, misiones y cosméticos sin recibir un tutorial largo.

## Dirección general

Concepto: **pequeño puerto de expediciones tropical / base isleña habitada**.

No es un mapa de exploración grande. Debe ser compacto, bonito y fácil de leer.

Estética:

- aventura tropical estilizada;
- colorida pero no saturada de neón;
- madera, piedra, tela, cuerda, vegetación, arena y agua;
- identidad propia sin depender exclusivamente de estética pirata;
- nivel visual de experiencia Roblox publicada;
- siluetas claras para móvil y jugadores jóvenes.

## Escala inicial

Huella aproximada de tierra/arquitectura principal:

- **280 studs de ancho**;
- **220 studs de fondo**;
- relieve moderado de 15–25 studs;
- recorridos principales sin escaleras estrechas ni obstáculos innecesarios.

Objetivos de desplazamiento con avatar normal:

- Spawn -> plaza central: 3–5 s;
- Spawn -> Quick Play: 5–7 s;
- Spawn -> cualquier cola: máximo 8–10 s;
- plaza -> práctica de cañón: 6–9 s;
- cruzar el lobby: 15–20 s.

Las dimensiones se ajustarán mediante Playtest; no son valores sagrados.

## Plano funcional

El lobby se organiza en forma de abanico mirando hacia el mar.

### Sur — Arrival / Spawn

El jugador aparece en una pequeña plataforma de llegada o embarcadero interior.

Requisitos:

- `SpawnLocation` real y válido;
- Neutral o configuración de equipo correcta;
- situado sobre suelo sólido;
- orientado hacia la plaza y las colas;
- sin posibilidad de aparecer en agua, vacío o dentro de geometría;
- espacio para varios jugadores sin solaparse;
- primera vista con una silueta clara del punto central y de los accesos de partida.

### Centro — Expedition Plaza

Plaza compacta que actúa como referencia visual.

Elemento central recomendado:

- brújula/mesa de expedición/reliquia isleña;
- pequeña energía o animación controlada;
- no bloquear circulación;
- servir como punto de reunión y orientación.

En el borde norte de la plaza se sitúa **Quick Play**.

### Quick Play

Debe ser la opción más inmediata.

Comportamiento futuro:

- selecciona automáticamente el modo disponible adecuado según jugador/party;
- muestra claramente que empezará una partida rápida;
- no obliga a leer varios paneles.

Visualmente debe parecer una salida de expedición real: muelle, embarcación, arco o puesto de embarque; no un botón flotante sobre una Part.

### Norte — Entradas 1v1 / 2v2 / 3v3

Tres salidas integradas en el puerto:

- `Queue_1v1`: muelle/embarcación pequeña para duelo;
- `Queue_2v2`: salida de expedición mediana;
- `Queue_3v3`: muelle/embarcación o portal mayor para equipos.

Cada acceso debe incluir:

- número grande y legible;
- descripción breve del tamaño de equipo;
- estado de cola/jugadores en el futuro;
- espacio de espera sin bloquear el camino;
- forma y arquitectura diferenciadas;
- misma familia visual.

No utilizar colores de equipo como único lenguaje. Forma, escala, iconografía y texto deben funcionar también para personas con dificultades de visión del color.

### Oeste — Estadísticas y leaderboards

Un pabellón de capitanes o muro de expedición contiene:

- estadísticas personales;
- victorias;
- Cores destruidos;
- precisión del cañón;
- partidas completadas;
- racha o rango cuando exista;
- dos leaderboards globales como máximo inicialmente.

Leaderboards iniciales recomendados:

1. victorias de temporada;
2. Cores destruidos o puntuación competitiva.

Evitar llenar el lobby de diez paneles. Priorizar lectura y rendimiento.

### Este — Tienda cosmética

Puesto o edificio pequeño con vista previa física de cosméticos.

Candidatos futuros:

- skins de cañón;
- skins de Core;
- banderas;
- efectos de impacto;
- celebraciones;
- cosméticos de personaje compatibles con Roblox.

No vender MatchCoins ni ventajas directas de combate.

### Suroeste — Misiones y rango

Zona integrada como tablero de contratos/academia de expedición.

Preparada para:

- misiones diarias/semanales futuras;
- progreso de rango;
- recompensas no competitivas;
- tutorial opcional.

Durante el MVP puede ser placeholder visual de alta calidad, sin sistema funcional completo.

### Sureste — Party / social

Área pequeña donde se podrá:

- crear o mostrar party;
- ver miembros;
- entrar juntos en cola;
- esperar sin bloquear Spawn o Quick Play.

No hace falta implementarla en la primera calibración, pero su espacio debe reservarse.

### Noroeste — Practice Cannon Range

Campo de práctica sobre el agua, separado de las colas.

Debe incluir visualmente:

- un cañón de práctica;
- carril de tiro abierto;
- objetivos a tres distancias aproximadas;
- barrera/seguridad temática;
- espacio para observar impactos;
- retorno sencillo a la plaza.

El cañón será funcional en una fase posterior. El lobby inicial sólo necesita preparar el lugar y escala.

## Límites y agua

El lobby puede estar rodeado de agua, pero el jugador no debe perderse nadando.

Dirección recomendada:

- costa/muelles con límites naturales;
- zonas profundas fuera del área jugable;
- corriente o trigger de retorno temático;
- barrera invisible sólo como respaldo;
- si el jugador cae al agua, retorno rápido y claro sin muerte frustrante.

## Primera visita

No usar una cinemática o tutorial largo.

Dirección:

- orientación de Spawn hacia el objetivo;
- señalización ambiental;
- guía NPC opcional;
- una llamada visual a Quick Play;
- práctica de cañón voluntaria;
- tutorial contextual cuando el jugador usa por primera vez cada sistema.

## Jerarquía objetivo de Studio

```text
Workspace
  LobbyProduction
    Environment
      Terrain
      WaterBoundaries
      Vegetation
      Props
    Arrival
      LobbySpawn
      ArrivalArchitecture
    CentralPlaza
      Landmark
      QuickPlay
    Queues
      Queue_1v1
      Queue_2v2
      Queue_3v3
    PracticeCannonRange
    StatsPavilion
    CosmeticsShop
    MissionsAndRank
    PartyArea
    Boundaries
    Development
```

Reglas:

- todo marcador de `Development` invisible durante Play;
- `CanCollide = false`, `CanQuery = false` cuando proceda;
- no dejar Parts transparentes visibles;
- no duplicar objetos en la misma posición;
- assets importados sin scripts desconocidos;
- nombres claros y consistentes.

## Calibration Set obligatorio

Antes de construir el lobby completo, Rebirth debe crear y nosotros aprobar:

- 3 palmeras: recta, curvada y joven;
- 3 rocas orgánicas: pequeña, mediana y grande;
- 2 grupos de vegetación;
- 1 módulo de muelle;
- 1 módulo de puesto madera/tela;
- 1 módulo de entrada de cola;
- 1 avatar/rig de escala;
- 1 pequeño tramo de costa/terreno.

Criterios:

- sin troncos fragmentados con huecos;
- sin árboles hechos como cilindros y bolas visibles;
- sin rocas esféricas primitivas;
- pivots correctos;
- colisiones simples;
- densidad razonable;
- ningún script incluido en assets visuales;
- aspecto coherente en conjunto;
- rendimiento adecuado.

## Sección representativa antes del lobby completo

Después del Calibration Set se construirá sólo:

- Arrival/Spawn;
- una parte de la plaza;
- Quick Play;
- una entrada de cola;
- vegetación y costa circundante.

No continuar al resto del lobby hasta aprobar esta sección en Edit y Play.

## QA bloqueante

Antes de aceptar cualquier entrega de lobby:

- Spawn funciona 5 veces seguidas;
- ningún jugador empieza en agua/vacío;
- no hay objetos duplicados exactos;
- no hay marcadores/debug visibles;
- no hay geometría rota o piezas flotantes involuntarias;
- no hay errores nuevos en Output;
- rutas funcionan con avatar normal;
- señales legibles en escritorio y móvil;
- agua/límites devuelven al jugador correctamente;
- la escena se entiende sin explicación externa;
- captura desde Spawn parece un juego real.

## Fuera de alcance de la primera calibración

- matchmaking real;
- TeleportService;
- DataStore;
- leaderboards funcionales;
- tienda funcional;
- party funcional;
- misiones funcionales;
- Robux;
- cañón funcional;
- isla de partida.

## Criterio de aprobación

El lobby no se aprobará porque contenga todos los nombres del checklist.

Se aprueba cuando:

- un jugador entiende cómo jugar;
- la entrada es correcta;
- la estética es coherente;
- el espacio es compacto y agradable;
- la calidad del Calibration Set permite reutilizarlo;
- la sección representativa puede continuar hacia producción sin rehacerse.