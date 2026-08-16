# MATCH_FLOW

Última actualización: 2026-08-16

## Objetivo

Definir el flujo de una partida completa de Islas como una sucesión de minijuegos y decisiones, manteniendo un ritmo claro entre preparación, combate y resultado.

## Flujo macro

1. Lobby / Hub.
2. Cola de modo y formación de equipo.
3. Carga de arena.
4. Presentación de islas y revelado del Core activo.
5. Fase de preparación.
6. Cuenta atrás de bloqueo.
7. Fase de batalla.
8. Overtime si hace falta.
9. Resultado y recompensas.
10. Regreso al lobby / siguiente cola.

## Lobby

El lobby debe incluir desde temprano:

- accesos 1v1, 2v2 y 3v3;
- zona de práctica de cañón con objetivos sin impacto competitivo;
- espacio futuro para tienda cosmética, misiones, rangos y eventos;
- lectura clara de la cola y del tamaño del equipo.

La práctica de cañón sirve como tutorial natural mientras se espera.

## Entrada a partida

La primera versión jugable se centrará en 2 equipos/islas. La arquitectura deberá poder ampliarse a 3 equipos/islas sin rehacer el sistema.

Antes de comenzar la preparación:

- se elige el `CoreSocket` activo de cada isla entre puntos válidos;
- se activan `ResourceSockets` equilibrados;
- se seleccionan 2-3 contratos del comerciante;
- pueden activarse 1-2 oportunidades opcionales de exploración, como cajas o tesoros;
- el equipo ve claramente la posición de su Core y la señal de los Cores rivales.

## Fase de preparación

Objetivos iniciales de tiempo:

- 1v1: ~6:00 min;
- 2v2: ~5:30 min;
- 3v3: ~5:00 min.

Durante preparación se puede:

- explorar;
- talar madera mediante minijuego de timing;
- minar piedra mediante puntos débiles;
- obtener cocos y recogerlos físicamente;
- encontrar cajas/tesoros opcionales;
- completar contratos del comerciante;
- ganar y gastar `MatchCoins`;
- fabricar pocos objetos tácticos en el taller;
- construir defensas en `DefenseZone`;
- preparar/ensamblar el cañón básico;
- invertir recursos extra en protección, munición o pequeñas mejoras de partida.

## Oportunidades opcionales de exploración

Cada partida puede activar de forma controlada uno o varios elementos en sockets válidos:

- caja arrastrada por la marea;
- pequeño tesoro escondido;
- coco dorado / recurso especial de evento;
- encargo urgente del comerciante;
- depósito de piedra o madera especialmente rentable.

Estas oportunidades deben premiar desviarse de la ruta óptima sin convertirse en lotería decisiva.

## Preparación del cañón

El cañón forma parte del bucle de preparación:

- el emplazamiento existe desde el inicio;
- el equipo realiza una secuencia corta de montaje/preparación;
- terminar el montaje básico debe ser alcanzable incluso en 1v1;
- recursos adicionales pueden mejorar almacenamiento, protección o velocidad de recarga;
- si el equipo no termina el montaje básico al final de preparación, se garantiza una versión mínima funcional para que la partida nunca quede rota.

## Cuenta atrás de batalla

Últimos 10-15 segundos:

- feedback visual y sonoro fuerte;
- se avisa de que la construcción normal va a bloquearse;
- los jugadores pueden hacer ajustes finales;
- al llegar a cero comienza la batalla y cambia claramente el estado de la arena.

## Fase de batalla

Objetivo inicial: ~4:00 min.

Durante batalla:

- construcción normal nueva bloqueada;
- reparación de estructuras existentes permitida con recursos reservados;
- cañón operativo;
- carga, apuntado horizontal, elevación, potencia y disparo;
- cocos como proyectil base;
- daño localizado por piezas;
- Core vulnerable únicamente si el proyectil alcanza físicamente el objetivo;
- jugadores pueden repartirse tareas sin roles obligatorios.

Las acciones principales generan decisiones de prioridad:

- disparar;
- cargar munición;
- reparar;
- gestionar los cocos restantes;
- usar una compra táctica de MatchCoins;
- reposicionarse por la isla.

## Impacto sobre jugadores

Dirección inicial para prototipar:

- los impactos de cañón pueden provocar empuje/derribo breve y feedback visual;
- eliminar jugadores no es la condición de victoria;
- si se permite daño personal, el respawn debe ser rápido y secundario frente al objetivo del Core;
- no diseñar el juego como un shooter de PvP personal.

## Overtime

Hasta ~1:00 min si hace falta cerrar la partida.

Dirección inicial:

- reparaciones muy limitadas o desactivadas;
- ligera aceleración del ritmo de combate;
- no introducir muerte súbita arbitraria si puede resolverse por daño al Core.

## Final

Al destruir un Core:

- efecto visual/sonoro espectacular;
- se detiene el combate;
- se muestran ganador, estadísticas relevantes y recompensas;
- XP/progresión persistente se añadirá cuando el núcleo jugable esté validado;
- retorno al lobby o opción de volver a cola.

## Métricas a medir

- porcentaje de preparación dedicado a explorar/recolectar/construir;
- tiempo hasta tener el cañón básico listo;
- cantidad de decisiones reales de gasto;
- frecuencia de rutas repetitivas;
- tiempo entre disparos en batalla;
- duración media para abrir defensa de madera/piedra;
- duración total de partida;
- si 1v1 resulta abrumador o 3v3 demasiado fácil por división de trabajo.

## Principio de diseño

La fase de preparación debe ser divertida aunque se eliminara temporalmente el combate, y la batalla debe hacer que todas las decisiones de preparación importen.