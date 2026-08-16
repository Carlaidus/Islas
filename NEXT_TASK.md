# NEXT_TASK

Última actualización: 2026-08-16

## Tarea actual

**Abrir una sesión limpia de Rebirth y obtener el plan profesional del lobby sin modificar Studio.**

No construir todavía el lobby completo.

## Preparado

Ya están definidos:

- `REBIRTH_PLAYBOOK.md`;
- `REBIRTH_POSTMORTEMS.md`;
- `REBIRTH_PROMPT_TEMPLATES.md`;
- `LOBBY_DESIGN.md`;
- `LOBBY_REFERENCE_BRIEF.md`;
- `REBIRTH_LOBBY_PLAN_PROMPT.md`;
- plano top-down técnico del lobby;
- concept art de referencia del lobby.

## Objetivo inmediato

Conseguir que Rebirth:

1. inspeccione un Place limpio;
2. estudie las dos referencias del lobby;
3. proponga jerarquía, escala, assets, materiales y QA;
4. diseñe primero un `Visual Calibration Yard`;
5. no modifique ningún objeto;
6. se detenga después del plan.

## Preparación del Place

1. Guardar V2 como snapshot rechazado:

   `C:\Dev\Islas\snapshots\Islas_REBIRTH_V2_RECHAZADO.rbxlx`

2. No construir encima de V2.
3. Abrir un Baseplate/Place limpio.
4. Guardarlo como:

   `C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

5. Mantener Rojo desconectado de Studio durante la planificación/construcción visual de Rebirth.
6. Confirmar Rebirth `Connected`.
7. Mantener `Direct-to-ROBLOX` apagado.

## Sesión Rebirth

1. Abrir una conversación nueva.
2. Adjuntar:
   - concept art del lobby;
   - plano top-down técnico.
3. Pegar exactamente `REBIRTH_LOBBY_PLAN_PROMPT.md`.
4. No añadir instrucciones improvisadas.
5. Esperar la respuesta completa.
6. No aceptar que empiece a construir en la misma respuesta.

## Qué debe incluir el plan

- auditoría del Place limpio;
- jerarquía exacta;
- estrategia de Terrain/MeshParts/assets;
- `Visual Calibration Yard`;
- distribución conforme a `LOBBY_DESIGN.md`;
- Spawn real y orientación;
- límites de agua y retorno;
- compatibilidad móvil;
- auditoría de duplicados/debug/scripts;
- prueba en Play;
- punto exacto donde se detendrá para aprobación.

## Bloqueos de aprobación

No aprobar un plan que:

- pretenda construir todo el lobby antes de calibrar assets;
- reutilice V1/V2;
- proponga palmeras con Parts segmentadas;
- dependa de miles de primitivas;
- no incluya un SpawnLocation real;
- no incluya QA en Play;
- no incluya búsqueda de duplicados;
- cambie el layout top-down;
- mezcle lobby y Match Place;
- implemente matchmaking/Robux/sistemas funcionales en esta fase.

## Después de recibir el plan

Carlos/Marc copiarán la respuesta aquí.

ChatGPT:

1. revisará el plan;
2. corregirá contradicciones;
3. preparará el prompt de construcción limitado;
4. autorizará únicamente Calibration Yard + sección representativa.

## Criterio de cierre

La tarea termina cuando existe un plan aprobado de Rebirth que todavía no ha modificado Studio.