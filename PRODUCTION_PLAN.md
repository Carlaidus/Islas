# PRODUCTION_PLAN

Última actualización: 2026-08-16

## Principio

Islas se construye por entregables reales y conservables.

No se volverá a pedir a Rebirth que genere en una sola sesión:

- lobby;
- arena;
- varias islas;
- biblioteca de assets;
- hero assets;
- validaciones;
- mecánicas.

Cada fase sigue:

`referencia -> plan-only -> aprobación -> calibración -> construcción -> Play/QA -> consolidación`

## Objetivo comercial inicial

Llegar primero a un **vertical slice 1v1** que demuestre:

- entrar desde un lobby;
- formar partida;
- explorar/recolectar;
- construir;
- preparar y usar cañón;
- destruir Core;
- resultado y retorno;
- calidad suficiente para mostrar públicamente;
- analítica básica.

Después ampliar a 2v2/3v3, progresión y monetización.

---

# Fase 0 — Limpieza, referencias y calibración

## Objetivo

Preparar un entorno limpio y demostrar que el nuevo método de Rebirth funciona antes de reconstruir mundo completo.

## Entregables

1. conservar snapshot de V2 rechazada;
2. crear Place limpio/working copy;
3. definir concept/moodboard del lobby;
4. definir plano top-down compacto del lobby;
5. definir referencias de isla/vegetación/Core/cañón;
6. crear `Visual Calibration Yard` separado;
7. Rebirth genera muestras, no mapa:
   - 3 palmeras;
   - 3 rocas;
   - 2 clusters de vegetación;
   - 1 módulo de puesto tropical;
   - 1 Core preview;
   - 1 cañón preview.
8. aprobar/rechazar cada familia.

## Criterio de salida

No se construye lobby/isla hasta aprobar una biblioteca visual mínima.

---

# Fase A — Lobby de producción

## A1 — Plan-only

Rebirth inspecciona Place limpio y propone:

- jerarquía;
- composición;
- spawn;
- Quick Play;
- 1v1/2v2/3v3;
- práctica de cañón;
- estadísticas/leaderboards;
- zonas futuras;
- assets aprobados;
- pruebas.

No modifica nada.

## A2 — Slice del lobby

Construir primero:

- spawn/arrival;
- plaza principal;
- Quick Play;
- una entrada de cola;
- un módulo de estadísticas;
- una parte del entorno.

Probar en Play y aprobar estilo/escala.

## A3 — Lobby completo compacto

Completar:

- 1v1/2v2/3v3;
- Quick Play;
- party placeholder;
- leaderboards/estadísticas visuales;
- tienda cosmética placeholder;
- misiones/rango placeholder;
- Practice Cannon Range;
- límites y recorrido.

Sin matchmaking real todavía.

## Criterios

- spawn correcto siempre;
- jugador entiende cómo jugar en segundos;
- no hay pads de desarrollo como diseño principal;
- compacto y rápido;
- móvil/PC legibles;
- no hay duplicados/debug/errores.

---

# Fase B — Una isla de producción

## B1 — Plan top-down y Terrain

Una sola isla, sin duplicar.

- silueta orgánica;
- CombatFront;
- ExplorationBackland;
- DefenseZone;
- rutas;
- zonas de recursos;
- Shop/Workshop;
- TeamSpawns;
- CannonPlatform;
- CoreSockets;
- límites de agua.

Construir primero Terrain/rutas principales y medir recorrido con avatar.

## B2 — Biblioteca aplicada

Poblar sólo una zona representativa con assets aprobados:

- costa;
- bosque/palmeras;
- cantera;
- vegetación secundaria;
- landmark.

Aprobar densidad/rendimiento antes de poblar toda la isla.

## B3 — Isla completa

- vegetación equilibrada;
- rutas secundarias;
- ResourceSockets;
- TreasureSockets;
- Shop;
- Workshop;
- CoreSockets invisibles en Play;
- CannonPlatform;
- límites temáticos del mar.

## Criterios

- 30–45 s de cruce objetivo;
- recurso lejano 22–32 s;
- CoreSockets atacables;
- no hay árboles bajo agua;
- no hay geometría rota;
- no hay marcadores visibles;
- rendimiento móvil razonable;
- invita a explorar.

---

# Fase C — Arena Duel y preparación Triad

## Objetivo

Crear la primera arena de dos islas a partir de una isla aprobada.

## Entregables

- duplicar/rotar isla de forma controlada;
- simetría funcional;
- centro marino;
- distancia provisional;
- límites para impedir nado entre islas;
- sightlines a todos los CoreSockets;
- anchors futuros de Triad sólo como datos/markers ocultos;
- Instance Streaming configurado/probado si procede.

No construir tres islas todavía.

## Criterio

Duel se ve, recorre y funciona. La geometría no bloquea la futura balística.

---

# Fase D — Movimiento, recursos e inventario de partida

Construir sistemas de uno en uno:

1. framework común de ResourceNode;
2. madera funcional;
3. minijuego de tala;
4. inventario de partida;
5. piedra/minería;
6. cocos;
7. selección de sockets;
8. treasure opportunities.

Responsabilidad:

- Rebirth puede crear/prototipar interacción, UI y feedback;
- Codex audita/modulariza servidor/cliente y Rojo.

Criterio: el bucle de preparación es divertido aun sin combate.

---

# Fase E — Economía, comerciante y taller

1. MatchCoins server-authoritative;
2. contratos;
3. vender excedentes;
4. tienda de partida;
5. UI;
6. pocas recetas de taller;
7. balance por tamaño de equipo.

No Robux.

---

# Fase F — Construcción y Core

1. selección CoreSocket;
2. Core + beacon;
3. DefenseZone;
4. preview/snap;
5. paredes madera;
6. paredes piedra;
7. resto de piezas mínimas;
8. vida/estado visual;
9. reparación;
10. bloqueo de construcción en batalla.

---

# Fase G — Cañón y combate

1. cañón visual aprobado;
2. interacción/carga;
3. yaw;
4. elevación;
5. potencia;
6. proyectil coco;
7. impacto;
8. daño modular;
9. Core damage;
10. feedback audiovisual;
11. repair loop;
12. balance distancia/tiempo de vuelo.

La separación de islas se congela aquí, no antes.

---

# Fase H — Match state machine

- Intro/Core reveal;
- Preparation;
- transición/countdown;
- Battle;
- Overtime;
- Results;
- reset;
- retorno.

Instrumentar funnel y custom events.

---

# Fase I — Lobby funcional, colas y Places

- Experience con Lobby Place y Match Place;
- Quick Play;
- cola 1v1;
- servidor reservado;
- teleport server-side;
- fallos/reintentos;
- retorno;
- después 2v2/3v3;
- parties;
- MemoryStore si se necesita matchmaking entre servidores.

TeleportService se prueba en experiencia publicada/cliente real.

---

# Fase J — Soft launch

- alpha cerrada;
- onboarding funnel;
- primera sesión;
- D1;
- sesión media;
- rendimiento/crashes;
- balance;
- correcciones.

No gastar en adquisición importante antes de demostrar retención.

---

# Fase K — Progresión y monetización

Después de validar el juego:

- XP/rango;
- misiones;
- estadísticas;
- cosméticos;
- skins Core/cañón;
- banners/emotes/efectos;
- pase cosmético;
- productos/pases sólo con recibos seguros;
- monetización ética.

No vender MatchCoins, daño o ventaja competitiva directa.

---

# Fase L — Expansión

- 2v2/3v3 profundos;
- nuevos mapas/biomas;
- tipos de coco;
- Triad;
- eventos;
- temporadas;
- contenido social.

Triad se implementa cuando Duel ya es divertido y estable.

## Regla de entregable

Cada entregable necesita:

- propietario principal;
- prompt/tarea;
- criterio observable;
- prueba;
- capturas/informe;
- decisión conservar/corregir/rechazar;
- documentación.

## Regla de Rebirth

Rebirth recibe contexto completo relevante, pero construye únicamente el entregable actual.

Normalmente:

- 1 prompt plan-only;
- 1 prompt ejecución;
- 0–1 prompt reparación precisa.

Si hacen falta correcciones vagas repetidas, detener, auditar y replantear.
