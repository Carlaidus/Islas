# ECONOMY_DESIGN

Última actualización: 2026-08-16

## Objetivo

Diseñar la fase de preparación como una sucesión de pequeños juegos y decisiones tácticas, no como una espera antes de disparar.

La preparación debe ser divertida por sí misma: explorar, recolectar, decidir qué conservar, qué transformar, qué vender, qué comprar y dónde invertir los recursos antes de que empiece la batalla.

## Principios

- La moneda de partida y los recursos son sistemas distintos.
- Los recursos sirven principalmente para construir, reparar, fabricar y preparar munición/mejoras.
- La moneda sirve para comprar decisiones tácticas en el comerciante.
- No debe existir una ruta óptima obvia que convierta todas las partidas en la misma secuencia.
- El equipo debe poder dividirse tareas, pero un jugador solo debe poder realizar todo el bucle.
- Los valores se escalarán por tamaño de equipo sin crear sistemas distintos para 1v1, 2v2 y 3v3.

## Recursos base

### Madera

Fuente principal: árboles y palmeras.

Usos iniciales:

- paredes y piezas de madera;
- reparaciones rápidas;
- componentes sencillos;
- posibles barricadas o protecciones de cañón.

Características:

- abundante;
- rápida de obtener;
- defensas baratas;
- resistencia baja/media.

### Piedra

Fuente principal: vetas y formaciones rocosas.

Usos iniciales:

- paredes y defensas resistentes;
- reforzar piezas;
- reparaciones pesadas;
- posibles mejoras del emplazamiento del cañón.

Características:

- menos abundante;
- más lenta de extraer;
- defensas caras;
- resistencia alta.

### Cocos

Fuente principal: cocoteros y puntos especiales de recolección.

Uso principal:

- munición básica de cañón.

Inicialmente se evita crear muchos tipos de munición. Cuando el cañón base funcione se podrán añadir cocos pesados, explosivos, perforantes u otros.

## Recolección como minijuegos

La recolección no será únicamente mantener pulsado un botón durante varios segundos.

### Tala

Propuesta:

- interacción corta de varios golpes;
- pequeño timing que premia acertar una zona buena del indicador;
- acertar bien acelera la tala o concede un pequeño bonus de madera;
- fallar no bloquea al jugador: simplemente es menos eficiente.

### Minería

Propuesta:

- aparecen puntos débiles/cracks sobre la roca;
- golpear el punto correcto acelera la extracción;
- la posición cambia durante la interacción;
- habilidad sencilla y legible para jugadores jóvenes.

### Cocos

Propuesta:

- sacudir/activar una palmera;
- uno o varios cocos caen o aparecen en posiciones cercanas;
- recogerlos requiere un pequeño desplazamiento;
- puede evolucionar a una interacción de captura/timing si resulta divertida.

Regla: ninguno de estos minijuegos debe convertirse en una barrera frustrante. La habilidad mejora rendimiento; no impide progresar.

## Sockets y aleatoriedad

Los recursos no aparecen en coordenadas totalmente aleatorias.

Cada isla tendrá muchos `ResourceSockets` diseñados a mano y clasificados por:

- tipo;
- distancia a la base;
- dificultad de acceso;
- valor;
- zona de la isla.

Al comenzar una partida, el servidor activa una selección equilibrada.

Objetivos:

- que cada partida cambie;
- que explorar sea necesario;
- conservar equilibrio competitivo;
- evitar recursos dentro de rocas, detrás de límites o en posiciones absurdas.

## Economía de partida

La moneda provisional se denomina `MatchCoins` hasta decidir nombre final.

Se reinicia en cada partida y nunca se compra directamente con Robux.

Fuentes iniciales candidatas:

- completar pequeños contratos del comerciante;
- descubrir cajas/objetivos secundarios de la isla;
- bonificaciones por recolección eficiente;
- vender excedentes de recursos;
- acciones de equipo concretas.

No se recomienda conceder grandes cantidades de moneda simplemente por talar/minar de forma infinita.

## Contratos del comerciante

El comerciante puede ofrecer 2-3 encargos cortos por partida, por ejemplo:

- entregar cierta madera;
- entregar cierta piedra;
- entregar cocos;
- completar una combinación de recursos;
- localizar una caja o punto de interés.

El jugador debe elegir entre usar esos recursos para su base o cambiarlos por moneda.

Esto crea una decisión real: fortificar ahora o invertir en una compra táctica.

## Tienda de partida

La tienda NO será una tienda de Robux.

Compra con `MatchCoins` y vende ventajas temporales de esa partida.

Catálogo inicial candidato, todavía sujeto a pruebas:

- kit de reparación rápida;
- paquete de cocos adicionales;
- refuerzo temporal de una pieza;
- barricada/pieza especial limitada;
- mejora de almacenamiento de munición;
- mejora ligera de recarga del cañón;
- herramienta temporal que acelera una tarea de preparación.

Reglas:

- ninguna compra debe sustituir la habilidad de apuntar;
- ninguna compra debe hacer invencible el Core;
- evitar una escalada en la que el equipo que va por delante genere cada vez más dinero;
- precios y cantidades centralizados en configuración.

## Fabricación / taller

No se pretende convertir Islas en un survival con decenas de recetas.

Dirección inicial:

- construcción básica consume madera/piedra directamente;
- el taller fabrica únicamente objetos tácticos o componentes especiales;
- pocas recetas, visualmente claras;
- interacción rápida y física cuando sea posible, no menús interminables.

Candidatos:

- kit de reparación;
- lote de munición preparado;
- refuerzo de muro;
- componente/mejora del cañón;
- pieza defensiva especial.

## Preparación del cañón

El cañón debe formar parte de la fase de preparación, pero una mala partida de recolección no puede dejar al jugador sin poder combatir.

Dirección propuesta:

- el emplazamiento del cañón existe desde el inicio;
- durante preparación el equipo lo arma/prepara mediante una secuencia corta y garantizable;
- completar la preparación básica es fácil;
- recursos adicionales permiten mejoras, almacenamiento o protección;
- si el equipo llega al final de la preparación sin completar lo básico, el sistema garantiza una versión mínima funcional para evitar una partida rota.

## Construcción

La construcción usa principalmente recursos directos.

Sistema inicial:

- snap/grid contextual dentro de la `DefenseZone`;
- piezas sencillas y legibles;
- madera: barata y rápida;
- piedra: cara y resistente;
- futuras variantes sólo después de validar estas dos.

Piezas iniciales candidatas:

- pared completa;
- media pared;
- suelo/plataforma;
- rampa;
- protección/techo corto.

## Reparación

Durante la batalla:

- se permite reparar estructuras existentes;
- consume recursos reservados;
- reparar obliga a dejar de atacar durante un tiempo;
- no se permite reconstruir una fortaleza completa desde cero mientras caen proyectiles.

La construcción nueva durante batalla queda bloqueada inicialmente, salvo futuras piezas de emergencia muy limitadas.

## Escalado 1v1 / 2v2 / 3v3

El mismo mapa y sistemas deben funcionar con uno, dos o tres jugadores por equipo.

Variables configurables por modo:

- cantidad total de recursos activos;
- rendimiento por nodo;
- costes de construcción;
- número/valor de contratos;
- velocidad de algunas interacciones;
- presupuesto de tienda;
- cantidad inicial/máxima de munición.

No se deben duplicar scripts por modo.

## Duración de preparación: objetivo inicial

Valores iniciales para prototipar:

- 1v1: alrededor de 6:00 min;
- 2v2: alrededor de 5:30 min;
- 3v3: alrededor de 5:00 min.

No son valores finales. Se medirán según cuánto tarda realmente un equipo en explorar, construir y preparar el cañón.

## Progresión persistente y Robux

La economía de partida está separada de la progresión persistente.

Más adelante podrá existir:

- XP;
- moneda persistente para cosméticos/desbloqueos no competitivos;
- misiones;
- rangos.

Robux se orientará principalmente a cosméticos y personalización. Nunca debe poder comprar directamente `MatchCoins` o poder de combate que rompa el equilibrio.
