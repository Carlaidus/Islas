# COMBAT_DESIGN

Última actualización: 2026-08-16

## Objetivo

Definir la fase de batalla y, especialmente, resolver desde el diseño espacial cómo se ataca el Core en partidas de dos o tres islas sin sacrificar la exploración del resto de la isla.

## Principio principal

El Core debe poder ocultarse mediante defensas construidas por los jugadores, pero **su posición base nunca puede quedar oculta por la propia geografía de la isla**.

La exploración puede extenderse hacia la parte trasera y lateral de la isla. La zona de combate debe mantener líneas de tiro válidas hacia el Core.

## Arena radial y escalabilidad

La arquitectura del mapa se diseña desde el principio para soportar 2 o 3 islas/equipos.

### Dos islas

- posiciones opuestas aproximadamente a 180 grados alrededor del centro de la arena;
- cada isla presenta su `CombatFront` hacia el centro;
- el cañón principal apunta hacia el arco central y tiene margen de giro suficiente para cubrir los CoreSockets rivales.

### Tres islas

- posiciones aproximadamente a 120 grados alrededor del centro de la arena;
- cada isla presenta su `CombatFront` hacia el centro;
- el cañón debe poder rotar horizontalmente lo suficiente para elegir entre cualquiera de las otras dos islas;
- los CoreSockets de cada isla deben ser atacables desde las otras dos posiciones de combate.

El lanzamiento inicial puede centrarse en dos equipos, pero mapa, Core y cañón no deben diseñarse de forma que una tercera isla obligue a rehacerlos desde cero.

## CombatFront

Cada isla tendrá una mitad/franja orientada hacia el centro de la arena denominada conceptualmente `CombatFront`.

Contiene:

- `DefenseZone`;
- `CoreSockets`;
- `CannonPlatform`;
- rutas principales entre base, tienda y cañón;
- vegetación y relieve controlados para no bloquear las líneas de tiro fundamentales.

La zona de exploración puede extenderse hacia la parte exterior de la arena y tener más vegetación, relieve y rincones.

## CoreSockets

El Core NO aparece en una coordenada aleatoria libre.

Cada isla tendrá varios puntos diseñados y validados previamente:

- `CoreSocket_A`
- `CoreSocket_B`
- `CoreSocket_C`
- opcionalmente más si el mapa lo permite.

Al comenzar la partida, el servidor escoge uno de los sockets válidos y coloca/activa el Core allí.

### Reglas de cada CoreSocket

Todo socket debe:

- quedar dentro de la `DefenseZone`;
- permitir una fortificación significativa alrededor;
- mantener línea de tiro geográfica desde cada isla enemiga prevista para ese modo;
- no quedar tapado por montañas, acantilados, edificios permanentes o vegetación grande;
- tener una elevación y entorno que permitan distinguir la zona desde larga distancia;
- estar a una distancia comparable de los recursos/base/cañón respecto a otros sockets válidos;
- no crear un punto claramente mejor o peor que los demás.

## Visibilidad del Core

Al comenzar la preparación, el equipo conoce inmediatamente qué CoreSocket está activo y puede adaptar su fortaleza.

Los enemigos también pueden identificar la zona objetivo.

Dirección visual:

- el Core emite una columna/halo/energía vertical visible a gran distancia;
- puede existir un indicador discreto de objetivo en HUD durante batalla;
- la señal indica dónde está el Core, pero no permite atravesar defensas con proyectiles.

Una fortaleza puede tapar físicamente el Core. Eso forma parte del juego: el atacante ve dónde está y debe abrirse paso destruyendo las defensas.

## Aleatoriedad del Core

La selección entre sockets aporta rejugabilidad sin romper la geometría.

No mover el Core durante la batalla.

No permitir inicialmente que el jugador coloque el Core en cualquier punto.

Más adelante se puede prototipar una fase de selección/votación de CoreSocket como mecánica estratégica, pero el primer sistema será selección aleatoria del servidor entre puntos válidos.

## DefenseZone

Cada CoreSocket pertenece a una zona amplia de construcción, no a una plataforma pequeña.

Objetivo espacial inicial:

- aproximadamente 130–160 studs de zona defensiva útil;
- terreno natural relativamente llano con pequeñas variaciones;
- varios enfoques de fortificación posibles;
- suficiente espacio para proteger Core y cañón sin que todo quede amontonado.

La zona no debe permitir construir fuera de los límites estratégicos previstos y ocultar el Core en la parte trasera de la isla.

## Cañón principal

La primera versión tendrá un cañón principal por equipo.

Todos los jugadores pueden usarlo.

En 1v1 una persona debe poder completar todas las acciones de forma razonable.

En 2v2/3v3 se puede colaborar mediante acciones simultáneas.

### Interacciones previstas

- cargar munición;
- orientación horizontal;
- elevación vertical;
- selección de potencia/timing;
- disparar;
- preparar siguiente munición;
- reparar/proteger el emplazamiento.

No habrá clases obligatorias de artillero/cargador.

## Giro para 2 y 3 islas

El cañón no se diseñará como un objeto fijo que sólo mira a un enemigo concreto.

Debe tener un rango horizontal amplio.

Objetivo inicial para prototipar:

- al menos 160–200 grados de giro útil, sujeto al diseño final del mapa;
- límites físicos visibles y comprensibles;
- en tres islas, posibilidad clara de seleccionar cualquiera de los otros dos objetivos sin mover el cañón de emplazamiento.

## Apuntado y habilidad

La habilidad debe importar.

Variables principales:

- dirección horizontal;
- ángulo/elevación;
- potencia.

Propuesta inicial de potencia:

- barra que oscila/se llena;
- click/tap para fijar potencia;
- lectura rápida y compatible con móvil/mando.

No mostrar inicialmente una trayectoria completa exacta hasta el punto de impacto.

Se puede mostrar orientación, elevación y feedback suficiente para aprender por ensayo/error.

## Proyectil

Munición inicial: coco.

Debe tener:

- trayectoria balística visible;
- velocidad suficientemente lenta para que el vuelo sea emocionante;
- impacto legible;
- feedback sonoro/visual fuerte;
- daño en la pieza impactada y/o pequeña zona según balance.

La distancia entre islas se cerrará después de probar tiempo de vuelo, arco y precisión.

## Defensa durante batalla

Al comenzar batalla:

- se bloquea la construcción normal de nuevas estructuras;
- se mantienen las estructuras preparadas;
- se permite reparar usando recursos reservados;
- los jugadores deben elegir entre disparar, recargar, reparar o moverse.

El objetivo es que 2v2/3v3 generen cooperación espontánea y que 1v1 genere decisiones de prioridad.

## Daño modular

Primera versión:

- cada pieza construida tiene vida propia;
- madera y piedra tienen resistencias distintas;
- el proyectil daña la pieza/área realmente alcanzada;
- el Core tiene vida independiente;
- efectos visuales muestran estados de daño.

No implementar derrumbe estructural complejo hasta que este sistema sea divertido.

## Protección del Core

El Core no debe recibir daño a través de una pared que físicamente intercepta el proyectil.

Las defensas son parte esencial de la estrategia.

El Core podrá tener una base/pedestal resistente, pero no un escudo gratuito que invalide el diseño de fortaleza.

## Duración de batalla: objetivo inicial

Prototipo inicial:

- batalla principal: aproximadamente 4:00 min;
- overtime: hasta 1:00 min si siguen varios Cores vivos.

Durante overtime, dirección candidata:

- reparaciones desactivadas o muy limitadas;
- incremento moderado de daño/velocidad de recarga;
- objetivo: cerrar la partida sin depender de una decisión arbitraria.

Valores pendientes de pruebas reales.

## Victoria en dos equipos

- gana el equipo que destruye el Core enemigo;
- si el tiempo máximo termina sin destrucción, se define una regla de desempate basada en vida del Core y, secundariamente, daño total, evitando que el sistema premie únicamente esconderse.

## Victoria en tres equipos

Dirección inicial:

- último Core vivo gana;
- al destruirse un Core, ese equipo queda eliminado de la batalla;
- los supervivientes continúan;
- si se agota el tiempo, gana el Core con mayor porcentaje de vida, con reglas secundarias configurables.

El problema de focus fire 2 contra 1 se evaluará durante pruebas. No añadir ayudas artificiales antes de comprobar si realmente son necesarias.

## Lectura a distancia

Desde cualquier CannonPlatform se debe poder:

- distinguir cada isla enemiga;
- identificar la zona aproximada del Core activo;
- ver estructuras defensivas importantes;
- percibir impactos y daño;
- comprender qué equipo corresponde a cada isla mediante acentos visuales, no coloreando todo el escenario.

## Métricas obligatorias del prototipo

Antes de fijar el mapa se medirán:

- tiempo de vuelo del coco a potencia baja/media/alta;
- margen angular para alcanzar cada CoreSocket;
- porcentaje de isla que bloquea disparos por geografía;
- posibilidad de disparar a ambos rivales en modo tres islas;
- distancia visual real a estructuras/Core;
- tamaño de defensa necesario para proteger el objetivo;
- tiempo medio para abrir una defensa de madera y piedra.
