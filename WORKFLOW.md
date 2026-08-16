# WORKFLOW

## Modelo simple

El usuario no debe hacer trabajo técnico repetitivo de GitHub.

Flujo normal:

1. Marc/Carlos explican qué quieren a ChatGPT.
2. ChatGPT dirige diseño/producto y decide si la tarea conviene a Rebirth o Codex.
3. Rebirth modifica Roblox Studio cuando aporta ventaja directa dentro de Studio.
4. Codex actúa como operador técnico del proyecto local `C:\Dev\Islas`: revisa archivos, absorbe/extrae cambios técnicos, mantiene Rojo, documentación, pruebas, commits y pushes.
5. El usuario prueba el resultado en Roblox Studio.

## Responsabilidades

### ChatGPT — dirección

- diseño del juego;
- prioridades y orden de producción;
- alcance de cada fase;
- prompts para Rebirth/Codex;
- evaluación visual y de producto;
- decisiones de balance y experiencia;
- revisión de informes/código cuando sea necesario.

ChatGPT no debe dedicar el flujo cotidiano a hacer de operador Git si Codex puede hacerlo desde el PC.

### Rebirth — Studio

Puede utilizarse para:

- Terrain y worldbuilding;
- modelos/objetos;
- UI;
- composición y edición de escena;
- scripts y mecánicas cuando resulte eficiente;
- cambios que aprovechen su acceso directo al árbol de Roblox Studio.

El código de Rebirth no se considera automáticamente código de producción. Codex lo inspecciona antes de consolidarlo en Rojo cuando corresponda.

### Codex — operador técnico

Codex debe ser el responsable habitual de:

- `C:\Dev\Islas`;
- Git y GitHub;
- estructura Rojo;
- lectura/edición de código;
- inspección del Place `.rbxlx` guardado;
- extracción de scripts de Studio para revisión;
- pruebas y comprobaciones;
- actualización de `PROJECT_STATE.md`, `NEXT_TASK.md` y `LAST_CODEX_REPORT.md`;
- commit y push.

Los documentos del repositorio proporcionan a Codex el contexto de diseño necesario, pero Codex no sustituye la dirección de producto salvo instrucción explícita.

## Archivo de Studio

Usar una ruta fija para el Place de trabajo:

`C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

Una vez establecido ese archivo, abrirlo como Place de desarrollo habitual y guardar con `Ctrl+S`.

Tras una intervención significativa de Rebirth, el usuario no necesita exportar archivos diferentes ni gestionar Git. Guarda el Place y puede indicar a Codex:

`Sincroniza la sesión de Rebirth.`

Codex seguirá las reglas de `AGENTS.md`.

## Qué hace Codex al sincronizar

- revisa el repo y el `.rbxlx` actual;
- identifica scripts presentes en Studio;
- genera una representación/reporte revisable cuando haga falta;
- no convierte código bruto de Rebirth en producción sin autorización;
- actualiza documentación;
- ejecuta verificaciones pertinentes;
- commit/push del estado coherente;
- deja informe en `LAST_CODEX_REPORT.md`.

## Revisión visual

Terrain, MeshParts, decoración y composición se evalúan principalmente mediante Roblox Studio y capturas.

El `.rbxlx` permite a Codex inspeccionar jerarquía, propiedades y scripts. ChatGPT puede pedir el archivo directamente sólo cuando una revisión concreta no pueda resolverse con GitHub, informes o capturas.

## Antes de una tarea importante

Leer según corresponda:

- `README.md`
- `GAME_DESIGN.md`
- `PROJECT_STATE.md`
- `DECISIONS.md`
- `NEXT_TASK.md`
- `AGENTS.md`
- `WORLD_DESIGN.md`
- `ART_DIRECTION.md`
- `ECONOMY_DESIGN.md`
- `COMBAT_DESIGN.md`

## Política de diseño

Prioridades:

1. diversión del bucle principal;
2. claridad para un jugador nuevo;
3. calidad visual y espacial coherente;
4. buen funcionamiento 1v1;
5. cooperación 2v2/3v3;
6. estabilidad y seguridad;
7. progresión y retención;
8. monetización.

## Política de prompts de Rebirth

- usar Rebirth cuando aporte velocidad/calidad real;
- darle contexto suficiente del juego;
- dividir por fases verificables, no pedir sistemas gigantes ambiguos;
- revisar resultados antes de continuar;
- registrar resultados relevantes en `PROMPTS_LOG.md`.

## Recuperación de contexto

GitHub es la memoria persistente principal del proyecto. ChatGPT y Codex deben poder reconstruir el estado leyendo los documentos del repositorio.