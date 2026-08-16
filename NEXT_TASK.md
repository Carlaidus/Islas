# NEXT_TASK

## Tarea actual

**Preparar el entorno local y el esqueleto mínimo del proyecto Roblox/Rojo.**

Esta es la única tarea prioritaria antes de comenzar a implementar mecánicas.

## Objetivo

Conseguir que el repositorio `Carlaidus/Islas` esté clonado en el PC y que una estructura mínima de Rojo pueda sincronizar código entre VS Code y Roblox Studio de forma reproducible.

## Directorio local recomendado

En Windows:

`C:\Dev\Islas`

Se puede usar otra ruta, pero conviene evitar nombres raros y mantener una ubicación fija para todo el proyecto.

## Alcance

1. Clonar `Carlaidus/Islas` en el directorio local.
2. Abrir esa carpeta con VS Code.
3. Confirmar que Git apunta al repositorio correcto.
4. Preparar la estructura mínima de Rojo.
5. Añadir configuración básica del proyecto.
6. Crear un script de prueba mínimo.
7. Conectar Roblox Studio mediante Rojo.
8. Verificar que un cambio local aparece correctamente en Studio.
9. Documentar el resultado en `PROJECT_STATE.md` y `LAST_CODEX_REPORT.md` si Codex interviene.

## Fuera de alcance

No implementar todavía:

- sistemas de recolección;
- construcción;
- cañones;
- tienda;
- moneda;
- lobby;
- matchmaking;
- monetización;
- arte final.

## Criterios de aceptación

La tarea está terminada cuando:

- el proyecto abre correctamente en VS Code;
- Git funciona contra `Carlaidus/Islas`;
- Rojo inicia sin errores relevantes;
- Roblox Studio se conecta al proyecto;
- un archivo Luau local de prueba se refleja en Studio;
- los cambios quedan guardados en GitHub;
- la documentación refleja el nuevo estado real.

## Regla

No pasar a la primera mecánica hasta completar y comprobar esta tarea.
