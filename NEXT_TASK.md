# NEXT_TASK

## Tarea actual

**Generar con Rebirth el primer prototipo visual/estructural de Islas.**

Esta es la única tarea prioritaria actual.

## Estado previo ya completado

- Repositorio clonado en `C:\Dev\Islas`.
- Git funcionando.
- Rojo 7.6.1 instalado.
- Proyecto Islas inicializado con `rojo init`.
- Rojo de Islas usa el puerto `34873`.
- Roblox Studio se conecta correctamente a Islas mediante Rojo.
- Plugin Rebirth instalado.
- Rebirth conectado correctamente al Studio de Islas (`Connected`).

## Objetivo

Usar un único prompt de Rebirth de alto valor para construir una primera maqueta visual que permita evaluar el juego rápidamente antes de invertir tiempo en sistemas complejos.

Debe incluir:

1. Un lobby tropical/colorido con zonas claras para entrar en 1v1, 2v2 y 3v3.
2. Una arena prototipo separada con dos islas equilibradas enfrentadas.
3. Tres posiciones de spawn por isla.
4. Zona de construcción alrededor del objetivo principal.
5. Recursos visuales provisionales: madera/palmeras, piedra/rocas y cocos.
6. NPC/puesto de tienda provisional por isla.
7. Núcleo/tótem claramente identificable por isla.
8. Posición y modelo provisional de cañón por isla.
9. Espacios y distancias pensados para partidas rápidas y disparos balísticos visibles.
10. Organización limpia y modular en Explorer.

## Estrategia de propiedad

Durante esta primera generación:

- Rebirth modificará únicamente el contenido visual/prototipo dentro de un contenedor propio, idealmente `Workspace/RebirthPrototype`.
- No debe modificar código gestionado por Rojo.
- No debe tocar ningún otro proyecto.
- No debe implementar sistemas sensibles o definitivos.

## Fuera de alcance

No implementar todavía:

- matchmaking real;
- teletransporte entre servidores/places;
- DataStore;
- Robux;
- rangos;
- misiones;
- economía definitiva;
- tienda funcional completa;
- recolección definitiva;
- sistema de construcción definitivo;
- daño definitivo;
- destrucción estructural avanzada;
- arquitectura grande de scripts.

## Criterios de aceptación

Tras el primer prompt debe ser posible inspeccionar en Studio, sin necesidad de Play:

- el lobby;
- las tres zonas 1v1/2v2/3v3;
- las dos islas;
- los spawns;
- la disposición de recursos;
- la tienda;
- el núcleo;
- el cañón;
- la zona construible;
- la distancia y lectura visual de la batalla.

Después se revisará el resultado antes de gastar un segundo crédito.

## Regla

No enviar un segundo prompt de Rebirth hasta que ChatGPT y los usuarios hayan evaluado visualmente el resultado del primero y decidido qué conservar/corregir.
