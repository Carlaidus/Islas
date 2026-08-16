# GAME_DESIGN

Última actualización: 2026-08-16

## Visión

**Islas** es un juego competitivo multijugador de Roblox donde cada equipo dispone de una isla propia durante una partida.

La partida tiene dos grandes actos:

1. **Preparación**: explorar, recolectar, comerciar, fabricar, construir defensas y preparar el cañón.
2. **Batalla**: disparar contra los rivales, romper sus defensas y destruir su Core antes de perder el propio.

La preparación no es un trámite: está formada por varios pequeños minijuegos y decisiones tácticas. La batalla tampoco es sólo apuntar: lo construido, lo comprado, los recursos reservados y la coordinación del equipo influyen directamente.

El objetivo es que una partida cuente una pequeña historia: empiezas con una isla casi sin fortificar y terminas defendiendo una base construida por tu equipo mientras intercambias cañonazos con otras islas.

## Calidad objetivo

No se está construyendo una demo técnica desechable.

El proyecto debe evolucionar desde el principio hacia un juego:

- bonito;
- legible;
- profundo sin ser complicado de aprender;
- divertido en solitario y cooperando;
- escalable;
- adecuado para público infantil/juvenil;
- monetizable sin depender de pay-to-win;
- mantenible técnicamente.

La dirección visual se define en `ART_DIRECTION.md` y el mundo en `WORLD_DESIGN.md`.

## Flujo general

`Lobby -> cola/modo -> Match -> preparación -> batalla -> resultado -> recompensas -> Lobby`

## Lobby

Todos los jugadores comienzan en un lobby/hub, no directamente en una isla.

Dirección:

- pequeña isla-base/puerto tropical;
- accesos claros a 1v1, 2v2 y 3v3;
- futuros espacios para tienda, misiones, cosméticos, rangos, tutorial, estadísticas y eventos;
- parties/grupos podrán mantenerse juntos cuando se implemente matchmaking;
- el lobby debe sentirse como un lugar real, no como un menú 3D vacío.

## Tamaño de equipo vs número de islas

Son variables diferentes.

### Tamaño de equipo

- 1v1: 1 jugador por equipo;
- 2v2: 2 jugadores por equipo;
- 3v3: 3 jugadores por equipo.

### Formato de arena

- `Duel`: 2 equipos/islas;
- `Triad`: 3 equipos/islas, modo futuro previsto desde arquitectura.

Ejemplos futuros posibles:

- 1v1v1;
- 2v2v2;
- 3v3v3.

El primer vertical slice y el lanzamiento inicial pueden centrarse en Duel, pero los sistemas no deben asumir que siempre existen exactamente dos equipos.

## Estructura de una partida

### 0. Entrada / despliegue

Duración orientativa: 10–20 s.

Objetivos:

- presentar equipos/islas;
- seleccionar aleatoriamente el CoreSocket activo de cada equipo;
- revelar la posición del Core;
- activar la distribución de recursos de esa partida;
- permitir que el jugador entienda rápidamente su isla antes de empezar el cronómetro principal.

### 1. Preparación

Objetivos de tiempo iniciales para pruebas:

- 1v1: ~6:00 min;
- 2v2: ~5:30 min;
- 3v3: ~5:00 min.

Valores configurables y no definitivos.

Durante preparación los jugadores pueden:

- explorar;
- talar madera;
- minar piedra;
- recoger cocos;
- buscar objetivos secundarios;
- completar contratos del comerciante;
- conseguir moneda de partida;
- comprar utilidades;
- fabricar objetos tácticos;
- construir defensas;
- preparar/armar el cañón;
- almacenar munición;
- decidir qué recursos reservar para reparar durante batalla.

### 2. Transición a batalla

Últimos segundos de preparación:

- aviso audiovisual fuerte;
- se cierra o limita la recolección normal;
- se termina la construcción libre;
- el cañón queda operativo;
- se muestran claramente los Core enemigos;
- comienza la fase de combate.

### 3. Batalla

Objetivo inicial: ~4:00 min + posible overtime de hasta ~1:00 min.

Durante batalla:

- disparar;
- cargar munición;
- escoger objetivo;
- reparar estructuras existentes;
- proteger el cañón;
- decidir cuándo abandonar el ataque para defender;
- en tres islas, decidir a qué rival atacar.

La construcción normal queda bloqueada inicialmente durante esta fase. Más adelante se pueden probar piezas de emergencia limitadas.

### 4. Resultado

- Core destruido = equipo eliminado/derrotado;
- Duel termina al destruirse uno de los dos Cores;
- Triad continúa hasta quedar un único Core vivo o alcanzar el límite temporal;
- pantalla de victoria/derrota;
- estadísticas de partida;
- XP/recompensas persistentes cuando ese sistema exista;
- regreso al lobby.

## La isla como espacio jugable

Una isla es una arena de exploración compacta, no una plataforma circular.

Debe contener:

- CombatFront orientado al centro;
- ExplorationBackland con recursos/rutas;
- DefenseZone;
- CoreSockets;
- CannonPlatform;
- Shop;
- Workshop;
- resource sockets;
- spawn/team area;
- pequeños puntos de interés.

Consultar `WORLD_DESIGN.md` para medidas y reglas espaciales.

## El Core

El objetivo principal de cada equipo.

Dirección:

- tótem/reliquia/cristal tropical memorable;
- colocado en uno de varios CoreSockets validados;
- la posición se selecciona al inicio de la partida;
- nunca aparece en cualquier punto aleatorio de la isla;
- siempre es atacable por geografía desde todos los rivales del modo;
- puede ser tapado mediante estructuras construidas por el jugador;
- emite una señal visual para que el rival sepa qué zona debe atacar;
- no se mueve durante batalla.

La construcción alrededor del Core es uno de los principales elementos estratégicos.

## Recursos

Primera economía física:

### Madera

- abundante;
- rápida de conseguir;
- construcción barata;
- resistencia baja/media.

### Piedra

- más escasa;
- más lenta de obtener;
- construcción cara;
- alta resistencia.

### Cocos

- munición básica;
- distribuidos mediante cocoteros/resource sockets;
- variantes especiales se introducirán sólo después de que la munición base funcione.

## Recolección como minijuego

No queremos simples barras de progreso largas.

Dirección:

- tala con pequeños timings;
- minería buscando puntos débiles;
- cocos mediante interacción/movimiento corto;
- habilidad concede eficiencia extra, pero nunca bloquea a jugadores pequeños o nuevos.

Consultar `ECONOMY_DESIGN.md`.

## Moneda de partida

Nombre técnico provisional: `MatchCoins`.

Características:

- se obtiene durante esa partida;
- se reinicia al terminar;
- no se compra con Robux;
- sirve para decisiones tácticas;
- no sustituye madera/piedra/cocos.

Fuentes candidatas:

- contratos;
- objetivos secundarios;
- bonus de habilidad/recolección;
- vender excedentes;
- descubrimientos.

## Comerciante / Shop

Cada isla tiene un comerciante integrado en el mundo.

La tienda usa MatchCoins.

Productos tácticos candidatos:

- kits de reparación;
- cocos adicionales;
- refuerzos;
- piezas limitadas;
- mejoras pequeñas de recarga/almacenamiento;
- herramientas temporales de preparación.

No debe vender una victoria.

## Taller / fabricación

Fabricación deliberadamente compacta.

Construcción básica consume madera/piedra directamente.

El taller se reserva para pocas recetas significativas:

- kit de reparación;
- munición preparada;
- refuerzo;
- componente/mejora de cañón;
- pieza defensiva especial.

No convertir el juego en un survival con docenas de recetas.

## Construcción

Sistema modular con snap/contexto de terreno.

Zona principal: `DefenseZone`.

Materiales iniciales:

- madera;
- piedra.

Piezas iniciales candidatas:

- pared;
- media pared;
- suelo;
- rampa;
- pequeña cubierta/protección.

Cada pieza tiene:

- coste;
- material;
- vida;
- estado visual de daño.

La forma de la fortaleza debe importar.

## Cañón

Un cañón principal por equipo en la primera versión.

Todos los jugadores pueden utilizar todas sus acciones.

Mecánicas base:

- carga;
- orientación horizontal;
- elevación;
- potencia/timing;
- disparo balístico;
- recarga.

En 1v1 una persona debe poder realizar el ciclo sin que resulte pesado.

En 2v2/3v3 el equipo puede dividir tareas de manera natural.

Para Triad el cañón debe poder girar lo suficiente para atacar a cualquiera de los otros dos equipos.

Consultar `COMBAT_DESIGN.md`.

## Preparación del cañón

La fase de preparación debe incluir el cañón como objetivo.

Dirección:

- el emplazamiento/chasis existe;
- el equipo completa una preparación básica durante la fase 1;
- no debe ser posible llegar a batalla y quedarse sin juego por haber fallado una receta;
- el sistema garantiza una versión básica operativa;
- recursos/moneda adicionales pueden mejorar protección, almacenamiento o ritmo de recarga.

## Daño

Primera versión:

- daño localizado;
- estructuras con vida individual;
- madera y piedra con resistencias distintas;
- Core con vida propia;
- efectos visuales claros de deterioro.

No introducir destrucción estructural compleja hasta validar esta capa.

## Reparación

Durante batalla:

- reparar estructuras existentes;
- consumir recursos reservados;
- tiempo de reparación suficiente para crear riesgo;
- obliga a elegir entre atacar o defender.

Esto adquiere especial valor en 2v2/3v3 porque los jugadores pueden repartir funciones sin roles bloqueados.

## Cooperación

No existen clases obligatorias.

Todos pueden:

- recolectar;
- fabricar;
- comprar;
- construir;
- cargar;
- apuntar;
- disparar;
- reparar.

La cooperación emerge porque varios jugadores pueden hacerlo simultáneamente.

## Triad / tres islas

No es necesario construir este modo primero, pero debe estar previsto.

Principios:

- arena radial;
- islas a ~120°;
- Core de cada isla visible/atacable desde las otras dos;
- cañón con giro suficiente;
- último Core vivo gana;
- focus fire 2 contra 1 se estudiará mediante pruebas antes de introducir compensaciones artificiales.

## Aprendizaje

El juego debe enseñar haciendo.

Primera partida:

- pequeñas indicaciones contextuales;
- marcadores sobre recursos útiles;
- señal del Core;
- instrucciones simples del comerciante/taller;
- indicaciones claras de fase y temporizador;
- tutorial pesado sólo si las pruebas demuestran que es necesario.

## Progresión persistente

Después de validar el bucle principal:

- XP;
- rangos;
- misiones;
- estadísticas;
- desbloqueos cosméticos;
- historial/logros;
- matchmaking orientado por habilidad/rango cuando haya suficiente población.

Los rangos concretos todavía no están cerrados.

## Monetización con Robux

Principio: no vender directamente poder competitivo determinante.

Buenos candidatos:

- skins de cañón;
- skins/efectos de coco;
- explosiones visuales;
- banderas;
- apariencias del Core;
- decoraciones cosméticas del área de base;
- animaciones/celebraciones;
- emotes;
- cosméticos de personaje;
- pases estéticos/progresión cosmética.

No vender MatchCoins directamente por Robux.

No permitir que un jugador pague para empezar una partida con una fortaleza objetivamente superior.

## Arquitectura configurable

El juego debe permitir cambiar mediante configuración:

- número de equipos;
- jugadores por equipo;
- duración de fases;
- mapa;
- recursos activos;
- nodos/socket groups;
- costes;
- tienda;
- contratos;
- vida de materiales;
- CoreSockets;
- parámetros del cañón;
- munición;
- reglas de overtime;
- recompensas.

No duplicar sistemas por modo.

## Vertical slice real

Orden de validación:

1. definir y construir una isla real de calidad;
2. validar escala/rutas/CoreSockets;
3. duplicar/colocar arena Duel;
4. prototipo de balística del cañón;
5. recolección básica;
6. construcción básica;
7. Core y daño;
8. transición preparación -> batalla -> resultado;
9. economía/tienda/taller mínimos;
10. lobby/colas funcionales;
11. 2v2/3v3 y escalado;
12. Triad cuando Duel sea sólido.

## Criterio de diversión

Antes de progresión/Robux, una partida debe conseguir que el jugador quiera repetir porque:

- la distribución cambió;
- podría haber construido mejor;
- podría haber usado mejor su tiempo;
- podría haber comprado otra cosa;
- podría haber apuntado mejor;
- el equipo rival hizo una estrategia distinta.

Ese deseo de jugar "otra" es el producto principal.
