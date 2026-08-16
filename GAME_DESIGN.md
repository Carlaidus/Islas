# GAME_DESIGN

## Visión

Islas es un juego competitivo multijugador de Roblox con un lobby de entrada y partidas por equipos basadas en dos fases: preparación y batalla. Los jugadores no aparecen directamente en una isla. Primero entran en un lobby, eligen el formato de partida y después son enviados a una arena con dos islas enfrentadas.

Cada equipo ocupa una isla propia, recolecta recursos, obtiene moneda, construye defensas y se prepara para una fase corta de combate con cañones. Gana el equipo que destruya el núcleo de la isla rival antes de perder el suyo.

La prioridad es que el juego sea divertido antes de añadir progresión compleja o monetización.

## Lobby y acceso a partidas

El lobby forma parte del diseño base del juego.

Objetivos del lobby inicial:

- servir como punto de entrada de todos los jugadores;
- dejar claro cómo empezar a jugar sin depender de menús complicados;
- ofrecer zonas o accesos físicos diferenciados para 1v1, 2v2 y 3v3;
- permitir ampliar después el espacio con progresión, personalización, misiones, información, eventos u otras actividades sociales.

Propuesta inicial de dirección:

- una zona central sencilla y legible;
- tres accesos/colas claramente identificados: 1v1, 2v2 y 3v3;
- cada acceso comunica cuántos jugadores necesita y el estado de la cola;
- un jugador solo puede entrar en cualquier formato y el sistema podrá completar su equipo con otros jugadores;
- en una fase posterior, los grupos/parties deberán poder mantenerse juntos al entrar en cola;
- la decoración y los sistemas sociales avanzados no son prioritarios hasta validar el núcleo jugable.

El lobby mínimo debe existir en el vertical slice porque representa el flujo real de entrada al juego.

## Formato de partida inicial

- 2 islas enfrentadas.
- 1 a 3 jugadores por isla.
- Modos naturales: 1v1, 2v2 y 3v3.
- Todos los jugadores pueden realizar todas las acciones.
- En equipos, la ventaja proviene de repartir tareas simultáneamente, no de clases obligatorias.

Más adelante se podrán estudiar partidas con más islas, pero no forman parte de la primera versión.

## Fase 1: preparación

Duración provisional: alrededor de 4 minutos. Se ajustará mediante pruebas.

Durante esta fase los jugadores:

- recolectan recursos;
- consiguen moneda de partida;
- construyen la base;
- protegen el núcleo;
- compran objetos o mejoras tácticas en la tienda de la isla;
- almacenan munición;
- preparan su estrategia para la batalla.

### Recursos iniciales

#### Madera

- Muy abundante.
- Construcción rápida y barata.
- Resistencia baja.

#### Piedra

- Menos abundante.
- Construcción más cara.
- Resistencia claramente superior.

#### Cocos

- Munición básica del cañón.
- Inicialmente habrá un único tipo de coco para mantener el prototipo simple.
- En versiones posteriores podrán existir variantes: pesados, explosivos, perforantes, incendiarios u otros.

### Moneda de partida

Cada isla contará con una economía sencilla durante la partida. La moneda deberá crear decisiones tácticas, no trabajo repetitivo sin interés.

Posibles fuentes, pendientes de balance:

- recolección;
- pequeños objetivos de isla;
- acciones útiles;
- recompensas durante la preparación.

La moneda de partida es independiente de Robux.

## NPC / tienda de isla

Cada isla tendrá un personaje o puesto de tienda accesible durante la partida.

La tienda podrá vender, según el balance futuro:

- cocos adicionales;
- materiales;
- kits de reparación;
- mejoras temporales;
- piezas especiales;
- utilidades defensivas u ofensivas.

Regla: ninguna compra debe eliminar la necesidad de recolectar, construir o jugar con habilidad.

## Construcción

La construcción inicial será modular, no totalmente libre.

Piezas candidatas para el prototipo:

- pared;
- suelo/plataforma;
- rampa;
- protección de cañón.

Las piezas se colocarán mediante un sistema de previsualización y snap para que construir sea rápido, comprensible y compatible con mando, teclado/ratón y, más adelante, móvil.

Cada pieza tendrá:

- coste;
- material;
- resistencia;
- estado de daño.

La posición de las piezas y el material elegido deberán importar durante el combate.

## Núcleo de la isla

Cada equipo tiene un objetivo principal que proteger: núcleo, ídolo, tótem o equivalente visual. El nombre definitivo está pendiente.

- La victoria se produce al destruir el núcleo rival.
- Debe ser visible y fácil de comprender.
- Sus distintos estados de daño deben tener feedback visual claro.

Esto evita que la condición de victoria dependa de destruir toda la construcción enemiga.

## Fase 2: batalla

Duración provisional: 2-3 minutos, pendiente de pruebas.

Al terminar la preparación:

- se bloquea la construcción de nuevas defensas, al menos en la primera propuesta;
- comienza la batalla;
- los jugadores disparan contra la isla rival;
- pueden reparar parcialmente estructuras existentes usando recursos reservados;
- deben decidir entre atacar, recargar, reparar o gestionar recursos.

### Cañón

Mecánica prevista:

- orientación horizontal;
- ángulo vertical;
- control de potencia mediante una barra o indicador de timing;
- disparo balístico visible;
- impacto sobre la pieza concreta alcanzada.

La habilidad del jugador debe influir claramente en el resultado.

### Cooperación

No habrá roles bloqueados. Un jugador solo debe poder operar todo el sistema.

En 2v2 o 3v3, los jugadores podrán repartirse espontáneamente tareas como:

- disparar;
- buscar o transportar munición;
- reparar;
- gestionar la tienda;
- defender zonas críticas.

## Daño y destrucción

Primera versión:

- daño modular por pieza;
- distintas resistencias según material;
- impacto localizado;
- núcleo con vida propia.

Escalado posterior posible:

- soporte estructural;
- derrumbes;
- daño de área;
- tipos especiales de proyectil.

No implementar destrucción física compleja antes de validar el prototipo básico.

## Final de partida

Al destruir un núcleo:

- termina la partida;
- se muestra claramente el equipo vencedor;
- se entregan recompensas;
- se registran estadísticas;
- se prepara el retorno al lobby o al siguiente ciclo de juego.

## Progresión futura

Una vez validado el juego base:

- XP;
- rangos;
- misiones;
- estadísticas;
- desbloqueos;
- matchmaking que intente agrupar niveles/rangos similares;
- cosméticos y personalización.

Ejemplos de rangos provisionales: Grumete, Marinero, Artillero, Capitán, Almirante. No están cerrados.

## Monetización futura

Principio: no diseñar el núcleo de combate alrededor de pagar para ganar.

Candidatos adecuados para Robux:

- skins de cañón;
- apariencias de cocos/proyectiles;
- explosiones y efectos visuales;
- banderas;
- decoraciones de isla;
- animaciones y celebraciones;
- cosméticos de personaje;
- pases o contenido cosmético.

Las decisiones concretas de monetización se tomarán después de demostrar que el bucle básico produce ganas de jugar otra partida.

## Escalabilidad técnica y de diseño

Los sistemas deberán estar desacoplados y configurables para poder cambiar sin reescribir el juego:

- número de jugadores por equipo;
- formatos/colas disponibles en lobby;
- duración de fases;
- tipos y cantidades de recursos;
- precios de tienda;
- estadísticas de materiales;
- vida de estructuras;
- parámetros del cañón;
- recompensas;
- mapas/islas;
- modos de juego.

Siempre que sea razonable, los valores de balance deben vivir en configuración y no dispersos como números fijos por el código.

## Preguntas abiertas

- Nombre definitivo del juego.
- Dirección visual definitiva del lobby.
- Nombre/estética del núcleo.
- Duraciones finales.
- Cómo se obtiene exactamente la moneda.
- Catálogo inicial de la tienda.
- Número y posición de cañones por equipo.
- Si la munición requiere carga manual o una interacción más simple.
- Cantidad de materiales y ritmo de recolección.
- Qué se puede reparar durante combate y a qué coste.
- Funcionamiento exacto de parties, colas y matchmaking por rango cuando llegue esa fase.

Estas preguntas deben resolverse mediante prototipos y pruebas, no sólo sobre el papel.
