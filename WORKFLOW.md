# WORKFLOW

Última actualización: 2026-08-16

## Objetivo

Mantener un flujo sencillo para Carlos y Marc y, al mismo tiempo, aplicar dirección, QA y control técnico suficientes para construir un juego comercial real.

## Modelo simple

1. Carlos/Marc explican qué quieren.
2. ChatGPT decide diseño, alcance y herramienta.
3. Rebirth o Codex ejecutan la tarea.
4. Carlos/Marc prueban en Roblox Studio.
5. ChatGPT evalúa el resultado.
6. Codex consolida técnica/GitHub cuando corresponde.
7. El aprendizaje queda escrito en los `.md`.

El usuario no debe hacer Git ni exportaciones repetitivas salvo indicación puntual.

## Responsabilidades

### ChatGPT — dirección

- diseño de juego/producto;
- investigación;
- balance inicial;
- orden de producción;
- referencias y prompts;
- evaluación de calidad;
- decisión Rebirth/Codex/Studio;
- actualización de conocimiento operativo.

### Rebirth — construcción contextual en Studio

- Terrain;
- escena y assets;
- UI;
- objetos;
- feedback;
- scripts/mecánicas acotadas;
- debugging contextual;
- cambios repetitivos sobre el árbol real.

Seguir siempre `REBIRTH_PLAYBOOK.md`.

### Codex — operador técnico

- `C:\Dev\Islas`;
- Git/GitHub;
- Rojo;
- arquitectura Luau;
- seguridad;
- inspección del `.rbxlx`;
- extracción/revisión de scripts;
- pruebas;
- documentación;
- commits y push.

### Carlos/Marc — playtest y dirección humana

- describir intención;
- probar desde el punto de vista del jugador;
- señalar lo que no se entiende;
- enviar capturas/reporte;
- guardar el Place;
- no intentar arreglar errores técnicos a ciegas.

## Archivo del Place

Ruta fija:

`C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

Flujo normal:

- abrir ese archivo;
- guardar con `Ctrl+S`;
- crear snapshot sólo ante hitos/riesgo.

## Flujo Rebirth profesional

### Etapa 0 — Preparación

- leer documentos relevantes;
- definir una tarea coherente;
- reunir referencias;
- guardar/backup;
- confirmar Place y conexión;
- decidir sesión nueva;
- decidir si Rojo debe estar desconectado.

### Etapa 1 — Plan-only

Para tareas complejas, Rebirth inspecciona y propone sin modificar.

El plan debe incluir:

- jerarquía;
- objetos/scripts/assets;
- alcance y borrados;
- riesgos;
- rendimiento;
- pruebas;
- criterios de éxito.

### Etapa 2 — Aprobación

ChatGPT revisa el plan contra:

- diseño;
- escala;
- seguridad;
- referencias;
- mantenibilidad;
- alcance.

No se ejecuta si el plan no demuestra comprensión.

### Etapa 3 — Muestra/calibración

Antes de producción masiva de arte:

- 2–3 palmeras;
- 2–3 rocas;
- un módulo de arquitectura;
- un hero asset;
- una pequeña zona.

Aprobar antes de duplicar/poblar.

### Etapa 4 — Construcción

Prompt exacto con:

- permitido/prohibido;
- referencias;
- jerarquía;
- calidad;
- prueba;
- condición de parada.

### Etapa 5 — QA

- edit mode;
- Play;
- spawn;
- Output;
- duplicados;
- debug;
- límites;
- recorrido;
- móvil/mando cuando aplique;
- capturas.

### Etapa 6 — Auditoría/consolidación

Según riesgo:

- visual pequeño: capturas y guardar;
- entregable grande: capturas + playtest + posible `.rbxlx`;
- código: Codex sincroniza/revisa;
- sistema sensible: auditoría obligatoria y migración a Rojo.

### Etapa 7 — Aprendizaje

Actualizar:

- `PROMPTS_LOG.md`;
- `REBIRTH_POSTMORTEMS.md` si hubo fallo significativo;
- `REBIRTH_PLAYBOOK.md` si nace una regla reutilizable;
- `PROJECT_STATE.md`/`NEXT_TASK.md`.

## Cuándo abrir sesión nueva en Rebirth

Abrir nueva cuando:

- cambia subsistema;
- se pasa de lobby a isla;
- se pasa de arte a lógica;
- se cambia de plan descartado a reconstrucción;
- referencia objetos eliminados;
- repite errores;
- hay contexto contradictorio.

Mantener la sesión cuando:

- se ejecuta el plan recién aprobado;
- se corrige el mismo entregable;
- la siguiente instrucción depende de lo anterior.

## Flujo Codex

ChatGPT entrega:

- modelo;
- razonamiento;
- prompt copiable;
- objetivo/pruebas.

Codex:

1. lee `AGENTS.md` y documentos;
2. inspecciona estado;
3. trabaja sólo alcance;
4. prueba;
5. documenta;
6. commit/push;
7. deja informe.

## Sincronización después de Rebirth

Cuando proceda, el usuario guarda y escribe en Codex:

`Sincroniza la sesión de Rebirth.`

Codex sigue `AGENTS.md` y `REBIRTH_REVIEW_WORKFLOW.md`.

No se hace tras cada ajuste visual. Sí:

- tras hito;
- tras código importante;
- ante jerarquía dudosa;
- antes de consolidar;
- antes/después de cambios destructivos.

## Orden de prioridades de producto

1. claridad y primera diversión;
2. bucle 1v1 completo;
3. calidad visual/espacial coherente;
4. preparación divertida;
5. batalla divertida;
6. estabilidad/móvil;
7. 2v2/3v3;
8. progresión/retención;
9. monetización;
10. Triad/contenido adicional.

## Regla de producción

No abrir simultáneamente varias fases grandes.

Cada entregable debe ser:

- conservable;
- verificable;
- limitado;
- probado;
- documentado.

## Regla de diseño

`idea -> investigación/discusión -> referencia/plan -> prototipo -> playtest -> decisión -> documentación`

Una idea no es requisito hasta decidirla.

## Regla de analítica

Desde el primer vertical slice funcional, instrumentar el funnel:

- lobby;
- cola;
- match;
- primer recurso;
- primera construcción;
- primer disparo;
- completar partida;
- segunda cola.

Medir antes de ampliar contenido/monetización.

## Recuperación de contexto

GitHub es memoria persistente.

Un agente nuevo debe reconstruir el proyecto leyendo:

- `README.md`;
- `PROJECT_STATE.md`;
- `NEXT_TASK.md`;
- `DECISIONS.md`;
- documentos específicos;
- `REBIRTH_PLAYBOOK.md` si usa Rebirth;
- `LAST_CODEX_REPORT.md`.
