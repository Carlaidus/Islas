# DECISIONS

Registro de decisiones que se consideran vigentes. Si una decisión cambia, se añade una nueva entrada explicando el cambio; no se borra la historia sin motivo.

## 2026-08-16 — Repositorio principal

- Repositorio operativo: `Carlaidus/Islas`.
- Rama principal: `main`.
- De momento el proyecto se gestionará desde la cuenta GitHub `Carlaidus`.

## 2026-08-16 — Herramientas base

- Roblox Studio para construir, probar y publicar.
- Rojo para sincronizar el proyecto entre archivos locales y Roblox Studio.
- VS Code como editor principal local.
- GitHub para historial, colaboración y memoria operativa.
- Codex disponible y preferido para muchas tareas de código, ya que la cuenta de pago ya está contratada.
- No usar Cursor Pro por ahora.
- Rebirth puede utilizarse cuando aporte una ventaja clara dentro de Roblox Studio.
- Los prompts de herramientas con coste deben prepararse con precisión para evitar gasto innecesario.

## 2026-08-16 — Dirección del proyecto

ChatGPT actuará como director técnico y de diseño del proyecto:

- dividirá el trabajo en tareas pequeñas y verificables;
- decidirá qué herramienta conviene para cada tarea;
- preparará prompts detallados para Codex y Rebirth;
- revisará la documentación operativa antes de tareas importantes;
- priorizará un prototipo divertido antes de sistemas secundarios.

## 2026-08-16 — Formato inicial de partida

- Dos islas enfrentadas.
- Equipos de 1 a 3 jugadores por isla.
- El mismo diseño debe soportar 1v1, 2v2 y 3v3.
- No se implementarán más de dos islas en la primera versión.

## 2026-08-16 — Roles

- No habrá roles obligatorios o bloqueados por jugador.
- Todos los jugadores podrán realizar las acciones esenciales.
- La cooperación surgirá al repartir tareas simultáneamente.

## 2026-08-16 — Bucle principal

- Fase de preparación: recolectar, conseguir moneda, comprar y construir.
- Fase de batalla: disparar, gestionar munición, reparar y defender.
- La condición principal de victoria es destruir el núcleo/tótem rival.

## 2026-08-16 — Recursos iniciales

Para el prototipo se parte de:

- madera;
- piedra;
- cocos como munición.

No añadir muchos recursos antes de comprobar que estos generan decisiones interesantes.

## 2026-08-16 — Construcción

- Construcción modular mediante piezas y snap.
- Materiales con costes y resistencias distintas.
- Primera versión con daño por pieza.
- Derrumbes y simulación estructural compleja quedan para una fase posterior.

## 2026-08-16 — Economía y tienda

- Existirá una moneda de partida independiente de Robux.
- Cada isla tendrá un NPC o puesto de tienda.
- La tienda ofrecerá compras tácticas durante la partida.
- Los precios y objetos concretos se decidirán mediante balance y pruebas.

## 2026-08-16 — Monetización

- La monetización con Robux se diseñará después de validar la diversión del juego base.
- Evitar pay-to-win como principio de diseño.
- Priorizar cosméticos, personalización y contenido que no destruya el equilibrio competitivo.

## 2026-08-16 — Filosofía de implementación

- Sistemas configurables y desacoplados.
- Valores de balance centralizados cuando sea posible.
- No construir lobby avanzado, rangos, matchmaking ni monetización antes del vertical slice jugable.
