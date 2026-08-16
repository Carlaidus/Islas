# NEXT_TASK

## Tarea actual

**Instalar y conectar Rebirth al proyecto Islas sin gastar créditos.**

Esta es la única tarea prioritaria actual.

## Objetivo

Conseguir que Rebirth quede correctamente instalado y conectado al Roblox Studio del proyecto Islas para poder utilizar después sus créditos en tareas de alto valor.

## Estado previo ya completado

- Repositorio clonado en `C:\Dev\Islas`.
- Git funcionando.
- Rojo 7.6.1 instalado.
- Proyecto Islas inicializado con `rojo init`.
- Rojo de Islas funcionando en el puerto `34873`.
- Roblox Studio conectado correctamente a Islas mediante Rojo.

## Alcance

1. Instalar el plugin oficial de Rebirth en Roblox Studio.
2. Crear/iniciar sesión en la cuenta de Rebirth.
3. Abrir el proyecto Islas en Roblox Studio.
4. Conectar el plugin con el Dashboard de Rebirth.
5. Verificar estado `Connected`.
6. Confirmar cuántos créditos de prueba hay disponibles.
7. No enviar todavía ningún prompt.
8. Informar a ChatGPT cuando Rebirth esté conectado para preparar el primer prompt de construcción.

## Reglas importantes

- No tocar el proyecto de clicks.
- No gastar créditos durante la instalación o prueba de conexión.
- No pedir todavía a Rebirth que cree objetos, scripts o sistemas.
- Antes del primer prompt, ChatGPT decidirá el alcance exacto y qué debe pertenecer a Rebirth frente a Rojo/Codex.
- Evitar que Rebirth y Rojo modifiquen simultáneamente el mismo árbol sin decidir primero qué sistema es fuente de verdad.

## Diseño que debe recordar el siguiente paso

El primer prototipo no puede asumir que el jugador empieza directamente en una isla.

El flujo base es:

lobby -> zona/cola 1v1, 2v2 o 3v3 -> partida de dos islas -> preparación -> batalla -> resultado -> vuelta al ciclo.

## Fuera de alcance de esta tarea

Todavía no construir:

- lobby;
- islas;
- recursos;
- cañones;
- tienda;
- moneda;
- matchmaking;
- monetización;
- arte final.

## Criterios de aceptación

La tarea termina cuando:

- Rebirth está instalado;
- Rebirth está conectado al Studio correcto;
- el usuario conoce los créditos disponibles;
- no se ha gastado ningún crédito;
- el proyecto de clicks no ha sido modificado.
