# PRODUCTION_PLAN

Última actualización: 2026-08-16

## Principio

Rebirth recibe el contexto completo del juego, pero no se le pide construir todos los sistemas de una vez. Se trabajará en fases conservables y verificables. Codex/Rojo asumirán arquitectura y lógica cuando aporten más control/mantenibilidad.

## Arena escalable por slots

La arena se diseñará alrededor de un centro común con **6 IslandAnchorSockets** potenciales separados 60 grados.

- `Anchor_A`: 0°
- `Anchor_B`: 60°
- `Anchor_C`: 120°
- `Anchor_D`: 180°
- `Anchor_E`: 240°
- `Anchor_F`: 300°

Configuraciones iniciales:

- Duel (2 equipos): `A + D` -> 180°.
- Triad (3 equipos): `A + C + E` -> 120° entre equipos.

Esto permite usar la misma lógica radial sin obligar a diseñar una arena distinta para 2 y 3 equipos.

Cada isla se orienta automáticamente con su `CombatFront` hacia el centro de la arena.

## Fases de producción

### Fase A — World Foundation

Responsable preferente: Rebirth + Studio.

Objetivo:

- eliminar/aislar el prototipo rechazado;
- crear lobby/hub visual de calidad;
- crear arena radial y anchors;
- crear una isla arquetipo de producción con Terrain/meshes/assets seguros;
- CoreSockets, ResourceSockets, TreasureSockets, DefenseZone, CannonPlatform, Shop, Workshop y Spawns;
- duplicar la isla para validar Duel/Triad sin convertir aún cada isla en un mapa artístico distinto;
- medir escala visual, lectura y líneas de tiro.

Sin gameplay funcional todavía.

### Fase B — Movement / resource loop

Responsable: Codex/Rojo para lógica; Rebirth para interacciones/feedback visual cuando convenga.

- selección de ResourceSockets;
- tala;
- minería;
- cocos;
- inventario de partida;
- cajas/tesoros opcionales;
- escalado por equipo.

### Fase C — Economy / shop / workshop

- MatchCoins;
- contratos variables;
- merchant shop;
- pocas recetas tácticas;
- seguridad server-authoritative;
- UI funcional.

### Fase D — Building / Core

- CoreSocket selection;
- Core beacon;
- DefenseZone;
- snap building;
- madera/piedra;
- vida y estados visuales de piezas;
- reparación.

### Fase E — Cannon combat

- montaje básico del cañón;
- carga;
- yaw/elevation;
- barra de potencia;
- balística del coco;
- impacto/daño;
- knockback opcional a jugadores;
- feedback audiovisual;
- balance de distancia real.

### Fase F — Match state machine

- Intro/Core reveal;
- Preparation;
- countdown;
- Battle;
- Overtime;
- Results;
- reset/return.

### Fase G — Lobby real / queues / server architecture

- lobby Place;
- match Place;
- colas 1v1, 2v2, 3v3;
- parties;
- reserved match servers;
- matchmaking cross-server;
- return flow.

### Fase H — Progression and monetization

Sólo después de validar diversión:

- XP/rank;
- missions;
- persistent cosmetics currency if needed;
- cannon skins;
- Core skins;
- banners;
- effects;
- emotes;
- victory animations;
- passes/cosmetic products.

No vender MatchCoins ni potencia competitiva directa.

## Mecánicas adicionales aprobadas como candidatas

- Practice Cannon Range en lobby.
- Treasure/washed-up crate sockets en exploración.
- Merchant contracts variables por partida.
- Golden coconut / small island event como evento raro no decisivo.
- Core beacon visible a distancia.
- impactos de cañón con knockback/derribo breve a jugadores, sin convertir player-kills en objetivo principal.

## Regla de calidad

Cada fase debe terminar con una prueba jugable/visual y criterios de aceptación antes de abrir la siguiente. No se acepta una lista de objetos como sustituto de calidad visible.