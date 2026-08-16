# NEXT_TASK

Última actualización: 2026-08-16

## Tarea actual

**Preparar y ejecutar la calibración profesional de Rebirth antes de reconstruir el juego.**

No enviar todavía otro megaprompt de mundo.

## Motivo

Los prototipos V1 y V2 de Rebirth están rechazados.

El problema no se resolverá abandonando Rebirth ni repitiendo la misma estrategia. Se aplicará el flujo definido en:

- `REBIRTH_PLAYBOOK.md`
- `REBIRTH_PROMPT_TEMPLATES.md`
- `REBIRTH_POSTMORTEMS.md`
- `AI_TOOLING_MATRIX.md`
- `PRODUCTION_PLAN.md`

## Resultado esperado de esta tarea

Terminar con:

1. Place limpio de trabajo;
2. V2 guardada como snapshot histórico;
3. referencias visuales del lobby;
4. plano top-down del lobby compacto;
5. `Visual Calibration Yard`;
6. una conversación nueva de Rebirth;
7. un prompt de planificación sin modificar Studio;
8. plan revisado y aprobado antes de construir;
9. primera muestra visual limitada y evaluable.

## Paso 1 — Seguridad y limpieza

- guardar el Place actual como snapshot rechazado;
- no construir encima de V2;
- crear/abrir una copia limpia de desarrollo;
- establecer:

`C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

- confirmar Rebirth conectado mediante la cuenta adulta de Carlos;
- mantener `Direct-to-ROBLOX` apagado;
- decidir estado de Rojo para no competir por objetos.

## Paso 2 — Referencia del lobby

Crear antes de usar Rebirth:

- moodboard/concept propio;
- vista top-down;
- escala con avatar;
- paleta/materiales;
- composición de:
  - spawn/arrival;
  - Quick Play;
  - 1v1/2v2/3v3;
  - práctica de cañón;
  - estadísticas/leaderboards;
  - tienda cosmética placeholder;
  - misiones/rango placeholder.

Dirección:

- pequeño puerto/isla-base tropical;
- compacto;
- aspecto de experiencia publicada;
- jugador entiende cómo jugar en segundos;
- no pads y carteles de desarrollo como arquitectura principal.

## Paso 3 — Calibration Yard

Antes de construir lobby completo, aprobar muestras:

- 3 palmeras;
- 3 rocas;
- 2 clusters de vegetación;
- 1 módulo de madera/tela para puesto;
- 1 módulo de muelle/portal/cola;
- avatar para escala.

Requisitos:

- no troncos segmentados con huecos;
- no bolas como rocas finales;
- sin duplicados;
- sin scripts desconocidos;
- pivots/colisiones razonables;
- instance count razonable;
- calidad suficiente para usar en producción.

## Paso 4 — Prompt plan-only

Abrir sesión nueva y pedir a Rebirth:

- inspeccionar Place limpio;
- estudiar referencias;
- proponer jerarquía, composición, assets, escala y pruebas;
- no modificar nada;
- detenerse tras el plan.

Usar plantilla A de `REBIRTH_PROMPT_TEMPLATES.md`.

## Paso 5 — Revisión

ChatGPT revisará el plan antes de ejecución.

No aprobar si:

- mezcla lobby e isla;
- propone miles de primitivas;
- no incluye spawn/Playtest;
- no usa referencias;
- no define Quick Play;
- no contempla móvil;
- no define QA de duplicados/debug;
- vuelve a basarse en V1/V2.

## Paso 6 — Primera ejecución limitada

Construir únicamente:

- calibration set;
- spawn/arrival;
- una pequeña sección representativa del lobby.

No completar todo el lobby hasta aprobar:

- arte;
- escala;
- composición;
- calidad de assets;
- recorrido.

## Criterios de aceptación

- spawn válido en Play;
- no se empieza en agua/vacío;
- muestras sin geometría rota;
- no hay duplicados exactos;
- no hay debug visible;
- estética coincide con referencias;
- escala correcta con avatar;
- Output sin errores nuevos;
- resultado digno de convertirse en base de producción;
- capturas aprobadas por Carlos/Marc/ChatGPT.

## Fuera de alcance

Todavía no construir:

- lobby entero;
- islas;
- arena;
- recursos funcionales;
- economía;
- construcción;
- cañón funcional;
- matchmaking;
- Robux.

## Después

Si la calibración se aprueba:

1. completar lobby por fases;
2. crear referencias/calibration de isla;
3. construir una única isla;
4. medir/QA;
5. continuar `PRODUCTION_PLAN.md`.

Si falla:

- hacer auditoría;
- separar fallo de referencias, prompt y herramienta;
- actualizar postmortem/playbook;
- no continuar generando volumen.
