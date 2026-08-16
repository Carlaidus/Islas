# WORKFLOW

## Principio general

El proyecto se desarrolla en iteraciones pequeñas. Cada iteración debe producir algo comprobable y dejar la documentación sincronizada con la realidad.

## Flujo de trabajo recomendado

### 1. Revisar memoria operativa

Antes de una tarea importante, ChatGPT debe revisar:

- `README.md`
- `GAME_DESIGN.md`
- `PROJECT_STATE.md`
- `DECISIONS.md`
- `NEXT_TASK.md`
- `LAST_CODEX_REPORT.md`
- `AGENTS.md`

### 2. Definir una sola tarea

La tarea debe tener:

- objetivo;
- alcance;
- fuera de alcance;
- archivos/sistemas que puede tocar;
- criterios de aceptación;
- forma de probarla.

### 3. Elegir herramienta

#### ChatGPT

Dirección de diseño y técnica, división de tareas, revisión y preparación de prompts.

#### Codex

Preferido para:

- creación/modificación de código local;
- arquitectura y refactors controlados;
- configuración Rojo;
- pruebas y revisión del repositorio;
- tareas que puedan resolverse de forma reproducible desde archivos.

#### Rebirth

Reservar para tareas donde actuar directamente sobre Roblox Studio aporte ventaja real, por ejemplo manipulación contextual de objetos/escena o trabajo que sea innecesariamente costoso reproducir sólo desde archivos.

No usar Rebirth como chat de brainstorming. Preparar primero el prompt fuera de Rebirth.

### 4. Trabajar en rama cuando corresponda

Para cambios relevantes de código:

- partir de `main` actualizado;
- usar una rama descriptiva;
- evitar mezclar tareas no relacionadas;
- probar antes de integrar.

Durante la fase inicial, cambios documentales pequeños pueden hacerse directamente en `main` si no generan riesgo.

### 5. Validar

Cada tarea debe pasar sus criterios de aceptación.

Cuando haya cambios visibles o mecánicos en Roblox, la validación debe incluir prueba en Studio.

### 6. Registrar resultado

Después de una intervención de Codex:

- reemplazar/actualizar `LAST_CODEX_REPORT.md`;
- actualizar `PROJECT_STATE.md`;
- cambiar `NEXT_TASK.md` cuando la tarea esté cerrada;
- añadir a `DECISIONS.md` sólo decisiones realmente cerradas;
- registrar prompts de pago importantes en `PROMPTS_LOG.md`.

## Política de prompts de pago

Antes de enviar un prompt a Rebirth:

1. Confirmar que no es más eficiente hacerlo con Codex/Rojo.
2. Leer el estado actual del proyecto.
3. Escribir una orden autosuficiente.
4. Definir qué puede tocar y qué no.
5. Incluir resultado esperado.
6. Incluir comprobación.
7. Evitar pedir varias funciones ambiguas en una misma orden.
8. Registrar el prompt y resultado en `PROMPTS_LOG.md`.

## Política de diseño

Orden de prioridades:

1. Diversión del bucle principal.
2. Claridad para un jugador nuevo.
3. Buen funcionamiento 1v1.
4. Cooperación 2v2/3v3.
5. Estabilidad y seguridad.
6. Progresión y retención.
7. Monetización.

No invertir este orden para intentar monetizar demasiado pronto.

## Política de cambios de diseño

Las ideas nuevas son bienvenidas. No se consideran automáticamente decisiones cerradas.

Proceso:

idea -> discusión -> prototipo si hace falta -> decisión -> `DECISIONS.md`.

## Recuperación de contexto

Si se abre un chat nuevo o se pierde contexto, el repositorio debe permitir reconstruir el estado leyendo la documentación operativa. GitHub es la memoria persistente principal del proyecto.
