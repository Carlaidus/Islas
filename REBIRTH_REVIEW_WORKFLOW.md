# REBIRTH_REVIEW_WORKFLOW

Última actualización: 2026-08-16

## Objetivo

Poder utilizar Rebirth con libertad dentro de Roblox Studio sin convertir a Carlos o Marc en administradores de un flujo técnico complicado.

La revisión se adapta al riesgo de la tarea. No se exporta ni se sube un archivo después de cada pequeño cambio visual.

## Regla principal

Rebirth puede crear:

- mundo;
- Terrain;
- modelos;
- UI;
- scripts;
- mecánicas.

Pero su informe final no es la fuente de verdad.

La fuente de verdad para aprobar un resultado es una combinación de:

- Roblox Studio;
- prueba en Play;
- capturas;
- Output;
- Place guardado `.rbxlx` cuando haga falta;
- revisión de Codex/ChatGPT para código o sistemas sensibles;
- GitHub para el código/documentación consolidada.

## Archivo de trabajo fijo

Guardar el Place principal en:

`C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

Una vez establecido, abrir siempre ese archivo y guardar normalmente con:

`Ctrl + S`

No hace falta crear una exportación diferente después de cada prompt.

## Copias de seguridad

Crear una copia fechada únicamente:

- antes de borrar/reconstruir una zona importante;
- antes de una intervención de Rebirth amplia;
- cuando se aprueba un milestone;
- antes de migrar código o arquitectura;
- cuando hay riesgo de perder trabajo valioso.

Nombre recomendado:

`studio/snapshots/Islas_YYYY-MM-DD_HHMM_descripcion.rbxlx`

## Nivel 1 — Cambio visual pequeño

Ejemplos:

- ajustar vegetación;
- cambiar colores/materiales;
- mover props;
- corregir una zona;
- variar decoración.

Revisión normal:

1. Captura del resultado.
2. Prueba breve en modo edición/Play.
3. Confirmar que no hay errores visibles.
4. Guardar con `Ctrl+S`.

No es obligatorio pasar el `.rbxlx` ni ejecutar Codex.

## Nivel 2 — Entregable visual/espacial grande

Ejemplos:

- lobby;
- isla;
- arena;
- Core;
- cañón;
- UI completa;
- reconstrucción de Terrain.

Revisión:

1. Guardar antes y después.
2. Capturas obligatorias:
   - vista general;
   - vista desde avatar;
   - vista top-down cuando aplique;
   - detalle de los elementos principales.
3. Recorrer en Play.
4. Comprobar spawn, límites, colisiones y rutas.
5. Revisar Explorer/Output de forma básica.
6. Pasar `.rbxlx` a ChatGPT o pedir revisión a Codex si:
   - la jerarquía no se entiende;
   - hay objetos duplicados/transparentes/rotos;
   - Rebirth afirma haber validado cosas que no se ven;
   - el resultado incluye scripts;
   - se va a aprobar como milestone.

## Nivel 3 — Código o mecánica normal

Ejemplos:

- nodo de recursos;
- UI interactiva;
- minijuego;
- tienda provisional;
- cañón prototipo;
- construcción.

Revisión:

1. Probar el flujo completo en Play.
2. Revisar Output.
3. Guardar `.rbxlx`.
4. Pedir a Codex:

`Sincroniza la sesión de Rebirth.`

5. Codex:
   - inspecciona scripts del Place;
   - crea un manifiesto/reporte;
   - identifica riesgos;
   - no consolida automáticamente código bruto;
   - migra/refactoriza a Rojo sólo cuando la tarea lo autoriza;
   - actualiza documentación, commit y push.
6. ChatGPT revisa el informe y decide siguiente paso.

El usuario puede subir directamente el `.rbxlx` a ChatGPT cuando sea más rápido o se pida una auditoría concreta.

## Nivel 4 — Sistema sensible

Auditoría obligatoria antes de aceptar:

- MatchCoins;
- inventario;
- contratos/recompensas;
- compras;
- Core/daño/victoria;
- RemoteEvents/RemoteFunctions;
- DataStore;
- TeleportService/MemoryStore;
- MarketplaceService/Robux;
- progresión persistente.

Flujo:

1. Backup.
2. Rebirth crea/prototipa si conviene.
3. Playtest funcional.
4. Guardar `.rbxlx`.
5. Codex inspecciona y audita.
6. Servidor autoritativo obligatorio.
7. Inputs remotos validados y limitados.
8. Refactor/migración a Rojo antes de considerar producción.
9. Pruebas de error, abuso y reconexión según sistema.
10. GitHub actualizado.

## Qué significa `Sincroniza la sesión de Rebirth`

Codex debe:

1. Leer `AGENTS.md` y documentación relevante.
2. Revisar `git status`.
3. Localizar `studio/Islas_CURRENT.rbxlx`.
4. Inspeccionar el Place y enumerar scripts/servicios/cambios técnicos relevantes.
5. Extraer o representar scripts para revisión cuando sea necesario.
6. Comparar con el estado previo disponible.
7. Señalar código inseguro, duplicado, obsoleto o fuera de arquitectura.
8. No promover código a producción sin autorización.
9. Actualizar `LAST_CODEX_REPORT.md`.
10. Actualizar `PROJECT_STATE.md`/`NEXT_TASK.md` cuando corresponda.
11. Commit/push sólo cuando el estado del repo sea coherente.

## Revisión visual obligatoria

Codex y el `.rbxlx` pueden detectar estructura y código, pero no sustituyen completamente el juicio visual.

Carlos/Marc/ChatGPT deben valorar:

- si el mundo se entiende;
- si invita a jugar;
- si la escala funciona;
- si el arte parece roto;
- si la UI se lee;
- si una mecánica es divertida.

## QA mínimo de cualquier intervención

- spawn correcto;
- no empezar en agua/vacío;
- no hay errores nuevos en Output;
- no hay duplicados exactos evidentes;
- no hay debug visible en Play;
- no hay objetos importantes bajo agua o fuera de límites;
- no se modificó contenido fuera de alcance;
- se probó el criterio principal de éxito;
- se guardó el Place.

## Regla de aceptación

Nunca aceptar:

- “todo funciona” sin probar;
- “creé X instancias” como prueba de calidad;
- jerarquía correcta con experiencia visual rota;
- código sensible sólo porque no da error inmediato;
- un resultado que el jugador no entiende.

## Flujo simple para el usuario

La mayoría de las veces:

1. pegar prompt;
2. probar;
3. enviar capturas/reporte;
4. `Ctrl+S`.

Sólo cuando ChatGPT lo indique:

- subir `.rbxlx`; o
- pedir a Codex `Sincroniza la sesión de Rebirth`.

No hay Script Sync, Inbox ni BAT obligatorio en el flujo actual.
