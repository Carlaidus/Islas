# REBIRTH_REVIEW_WORKFLOW

Última actualización: 2026-08-16

## Objetivo

Garantizar que cualquier código o cambio técnico creado por Rebirth dentro de Roblox Studio pueda revisarse, conservarse y migrarse a la fuente de verdad del proyecto antes de considerarlo aceptado.

## Regla principal

Nada de código generado por Rebirth se considera definitivo mientras exista únicamente dentro de Roblox Studio.

El código mantenible del proyecto debe terminar en archivos locales gestionados por Rojo y versionados en GitHub.

## Primer intento de Rebirth

El primer prototipo visual rechazado informó explícitamente:

- 0 Scripts;
- 0 LocalScripts/ModuleScripts;
- 0 RemoteEvents/RemoteFunctions.

Por tanto ese intento no contiene programación propia de Rebirth que haya que migrar.

## Flujo obligatorio cuando Rebirth genere código

1. Rebirth realiza la tarea en Studio.
2. Antes de aceptar la tarea, guardar una instantánea completa del Place en formato XML `.rbxlx`.
3. Nombre recomendado:

   `snapshots/Rebirth_YYYY-MM-DD_descripcion.rbxlx`

4. La instantánea sirve para inspeccionar jerarquía, propiedades y fuentes de scripts mediante herramientas externas.
5. Revisar todos los Script, LocalScript y ModuleScript creados o modificados.
6. Revisar especialmente:
   - RemoteEvents/RemoteFunctions;
   - economía;
   - daño;
   - inventario;
   - compras;
   - DataStore;
   - teletransportes;
   - autoridad cliente/servidor.
7. Si el código se aprueba, migrarlo a archivos `.server.lua`, `.client.lua` y `.lua` dentro del árbol local gestionado por Rojo.
8. Una vez migrado, GitHub pasa a ser la fuente de verdad de ese código.
9. El script original creado directamente por Rebirth en Studio debe eliminarse o quedar reemplazado por la versión gestionada por Rojo para evitar dos fuentes de verdad.
10. Actualizar `LAST_CODEX_REPORT.md` o el informe correspondiente y `PROJECT_STATE.md`.

## Formato de instantánea

Preferir `.rbxlx` para revisión porque es XML y legible por herramientas externas.

`.rbxl` puede conservarse como copia binaria compacta, pero no es el formato preferido para revisar código.

## Mundo visual

El escenario, Terrain, MeshParts y otros elementos visuales pueden permanecer parcialmente gestionados desde Studio cuando Rojo no sea la herramienta adecuada.

El proyecto puede ser parcialmente gestionado por Rojo:

- Rojo/GitHub: código y configuración mantenible.
- Studio: Terrain y determinados assets visuales.

Los modelos visuales importantes que convenga versionar pueden exportarse como `.rbxmx`/`.rbxm` cuando sea práctico.

## Regla de aceptación

Nunca aceptar una respuesta de Rebirth del tipo «todo funciona» sin revisar el código real cuando haya generado programación.

El reporte de Rebirth es información auxiliar; la fuente de verdad es el contenido real de Studio y, una vez migrado, el repositorio local/GitHub.
