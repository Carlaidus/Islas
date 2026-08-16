# WORLD_DESIGN

Última actualización: 2026-08-16

## Objetivo

Definir la escala, recorrido, estructura espacial y criterios de diseño del mundo de **Islas** antes de volver a generar arte o escenarios con IA.

El primer prototipo de Rebirth de 2026-08-16 queda rechazado como referencia visual y de escala. Sirvió únicamente para comprobar que Rebirth puede crear una jerarquía grande y respetar restricciones, pero no representa el juego que queremos construir.

## Principio principal

Las dimensiones no se elegirán porque "quepan" los objetos. Se elegirán a partir del tiempo que queremos que tarde un jugador en desplazarse, explorar, decidir y volver a la base.

La isla debe sentirse como un lugar pequeño pero real: suficientemente grande para explorar y repartir tareas, suficientemente compacta para que una fase de preparación de pocos minutos no se convierta en caminar sin hacer nada.

## Estructura de la experiencia

La experiencia se diseñará desde el principio con dos espacios conceptualmente distintos:

1. **Lobby / Hub**: punto de entrada, social y de selección de modo.
2. **Arena de partida**: dos islas enfrentadas, dedicadas al bucle de recolección, construcción y combate.

A nivel técnico se estudiará usar Places separados dentro de la misma experiencia para Lobby y Match. No mezclar físicamente el lobby y las partidas a 800 studs de distancia se considera una solución de prototipo, no la arquitectura final deseada.

## Lobby objetivo

El lobby no debe ser una baseplate decorada ni una colección de carteles flotantes.

Objetivo de escala inicial:

- zona jugable aproximada: **250–300 studs de ancho**;
- plaza o espacio central reconocible;
- accesos 1v1, 2v2 y 3v3 integrados en arquitectura real;
- recorridos cortos: un jugador debe poder entender el lobby y llegar a cualquier cola rápidamente;
- espacios futuros para tienda, misiones, rangos, cosméticos, tutorial, estadísticas y eventos;
- sensación de pequeña isla/puerto/base tropical habitada, no de menú 3D vacío.

El lobby puede crecer más adelante, pero no debe competir en tamaño con la arena de partida.

## Arena: escala objetivo v0.2

Las primeras islas reales deben ser mucho mayores que las del prototipo rechazado.

### Tamaño por isla

Objetivo inicial de huella jugable:

- aproximadamente **420–500 studs de largo**;
- aproximadamente **350–450 studs de ancho**;
- forma irregular y orgánica, nunca un círculo perfecto;
- relieve vertical útil de aproximadamente **30–50 studs** entre playas, zonas interiores y puntos elevados.

Estas cifras son objetivos de diseño para el primer prototipo serio, no valores sagrados. Se ajustarán según tiempos reales de recorrido en Studio.

### Tiempos de recorrido objetivo

El diseño debe buscar aproximadamente:

- base/núcleo -> recurso común cercano: **8–12 s**;
- base/núcleo -> recurso lejano o valioso: **20–30 s**;
- cruzar la isla por una ruta razonable: **30–45 s**;
- recorrer gran parte del perímetro: **60–90 s**.

Estos tiempos deben medirse jugando, no suponerse sólo por studs.

La finalidad es que explorar importe sin convertir la preparación en un simulador de caminar.

## Separación entre islas

Objetivo inicial:

- separación entre costas enfrentadas: aproximadamente **250–350 studs**;
- distancia aproximada entre centros: alrededor de **700–800 studs**, dependiendo de la forma final de las islas.

La distancia debe permitir:

- ver claramente la isla enemiga;
- observar el vuelo del proyectil durante varios segundos;
- necesitar controlar ángulo y potencia;
- fallar por habilidad, no sólo por aleatoriedad;
- distinguir impactos en distintas zonas de la base enemiga.

La distancia final se validará junto al prototipo de física del cañón. No se fijará definitivamente antes de probar el proyectil.

## Estructura interna de cada isla

Cada isla se organiza en capas y rutas, no en objetos puestos alrededor de un círculo.

### 1. Costa / playa

- contorno irregular;
- zonas de arena, pequeñas rocas, vegetación de costa;
- algunas rutas rápidas alrededor de la isla;
- vistas abiertas hacia el enemigo en la costa enfrentada;
- posibles pequeños embarcaderos o restos decorativos en el futuro.

### 2. Cinturón de exploración y recursos

Ocupa buena parte de la isla y contiene:

- palmeras y árboles;
- zonas de piedra;
- cocoteros y cocos;
- caminos naturales;
- desniveles suaves;
- pequeñas zonas ocultas o rincones que recompensen explorar;
- suficiente vegetación para dar sensación de isla real sin bloquear navegación o visibilidad.

### 3. Zona base / construcción

Una meseta o zona relativamente plana integrada en el terreno, no una plataforma cuadrada evidente.

Objetivo inicial:

- área construible aproximada: **130–160 studs por lado**, ajustada a la forma del terreno;
- Core dentro de la zona defensiva pero no necesariamente exactamente en el centro geométrico;
- espacio para varios diseños de fortaleza;
- entradas/rutas de acceso desde varios lados;
- líneas de tiro que puedan modificarse mediante construcción.

### 4. Zona de cañón

- debe mirar naturalmente hacia la isla rival;
- ligeramente elevada respecto a la playa, sin convertirse en una torre dominante;
- espacio suficiente para tres jugadores;
- no pegada al Core;
- conectada a la base mediante una ruta corta;
- debe permitir leer claramente la trayectoria hacia el enemigo.

Dirección de diseño preferida: el cañón básico forma parte del objetivo de preparación y se ensambla/desbloquea al final de esa fase, en vez de existir como un objeto totalmente funcional desde el segundo cero. La mecánica exacta queda por prototipar.

### 5. Tienda

- integrada físicamente en la isla, como pequeño puesto/refugio/personaje;
- accesible desde la zona base;
- suficientemente separada del Core y el cañón para que no parezca todo amontonado;
- visible desde rutas principales.

## Exploración real

La isla debe ofrecer decisiones de ruta.

Objetivo inicial:

- 2–3 caminos naturales principales;
- rutas secundarias más cortas o más arriesgadas;
- uno o dos rincones secundarios memorables por isla;
- cambios de altura suficientes para que el jugador reconozca distintas zonas;
- ninguna zona puramente decorativa que obligue a recorrer grandes distancias sin recompensa.

No se busca un mundo abierto. Se busca una arena compacta que tenga sensación de exploración.

## Recursos y aleatoriedad

No generar recursos en posiciones totalmente aleatorias.

Usar **resource sockets** o puntos de aparición diseñados previamente.

Cada isla tendrá un conjunto amplio de ubicaciones posibles y, al comenzar una partida, se activará una selección equilibrada.

Ventajas:

- cada partida cambia;
- obliga a mirar/explorar;
- mantiene equilibrio entre equipos;
- evita nodos imposibles o colocaciones absurdas;
- permite balancear distancias reales.

Los dos equipos deben recibir valor y tiempos de acceso equivalentes, aunque la distribución concreta pueda variar.

## Simetría competitiva

No queremos dos círculos idénticos.

Queremos **simetría funcional**:

- superficie jugable comparable;
- tiempos de acceso a recursos comparables;
- posiciones de Core y cañón equivalentes en ventaja;
- coberturas y rutas equivalentes;
- pequeñas diferencias visuales y geográficas permitidas.

## Fase de preparación y escala

Duración objetivo inicial para probar: **aproximadamente 5 minutos**, configurable por modo.

El balance debe considerar el tamaño del equipo:

- 1v1 no puede exigir la misma cantidad total de trabajo que 3v3;
- producción de recursos, costes, objetivos o duración podrán escalar por modo;
- nunca diseñar una isla que sólo funcione si tres personas recolectan simultáneamente.

## Construcción

La construcción no debe ocupar toda la isla.

Debe concentrarse principalmente en la zona base para:

- evitar fortalezas absurdas en cualquier rincón;
- mantener legibilidad del combate;
- simplificar validación;
- permitir que el resto de la isla conserve su función de exploración y recursos.

El sistema de snap debe respetar el terreno y permitir distintos diseños de defensa.

## Criterios del próximo prototipo serio

No se acepta un nuevo prototipo únicamente porque contenga todos los objetos solicitados.

Debe demostrar visual y jugablemente:

1. una isla de escala suficiente para explorar;
2. rutas distinguibles;
3. relieve real;
4. vegetación y recursos integrados en el paisaje;
5. zona de construcción amplia y natural;
6. Core con posición defendible;
7. zona de cañón con buena lectura hacia el enemigo;
8. tienda integrada;
9. dos islas que se sientan como lugares, no plataformas;
10. recorrido medido dentro de los tiempos objetivo.

## Validación

Antes de dar por buena una isla se harán pruebas reales dentro de Roblox Studio midiendo:

- tiempo desde spawn/base a recursos cercanos;
- tiempo a recursos lejanos;
- tiempo de cruce de isla;
- legibilidad de rutas;
- visibilidad de la isla rival;
- espacio real disponible para una defensa de 1v1 y 3v3.

Sólo después se fijarán dimensiones definitivas.