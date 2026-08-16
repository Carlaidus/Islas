# REBIRTH_REVIEW_WORKFLOW

Última actualización: 2026-08-16

## Objetivo

Garantizar que cualquier codigo o cambio tecnico creado por Rebirth dentro de Roblox Studio pueda revisarse, conservarse y migrarse a la fuente de verdad del proyecto antes de considerarlo aceptado.

## Regla principal

Nada de codigo generado por Rebirth se considera definitivo mientras exista unicamente dentro de Roblox Studio.

El codigo mantenible del proyecto debe terminar en archivos locales gestionados por Rojo y versionados en GitHub.

## Captura automatica de codigo: Script Sync

El flujo preferido ya no es exportar un `.rbxlx` despues de cada prompt.

Roblox Studio Script Sync se utilizara para sincronizar automaticamente codigo creado dentro de carpetas dedicadas `RebirthInbox` hacia:

`C:\Dev\Islas\rebirth_inbox`

Carpetas acordadas:

- `ServerScriptService/RebirthInbox`
- `ReplicatedStorage/RebirthInbox`
- `StarterPlayer/StarterPlayerScripts/RebirthInbox`

No aplicar Script Sync sobre carpetas controladas por Rojo.

Mientras el codigo no haya sido revisado, Rebirth debe crear sus scripts nuevos dentro de estos Inbox siempre que la tarea lo permita.

Ver `SETUP_REBIRTH_SCRIPT_SYNC.md`.

## Subida a GitHub

Despues de una intervencion de Rebirth que cree/modifique codigo:

1. comprobar que Script Sync ha escrito los `.luau` dentro de `rebirth_inbox`;
2. ejecutar `PUSH_REBIRTH_CODE.bat`;
3. el BAT actualiza el repositorio, prepara exclusivamente `rebirth_inbox`, crea un commit fechado y lo sube a `main`;
4. informar a ChatGPT para que revise la ultima captura.

El BAT no debe utilizarse para publicar codigo de produccion sin revision; su finalidad es poner el codigo bruto de Rebirth a disposicion de revision.

## Revision obligatoria

Revisar especialmente:

- Script, LocalScript y ModuleScript creados/modificados;
- RemoteEvents/RemoteFunctions;
- autoridad cliente/servidor;
- economia;
- moneda;
- recursos;
- inventario;
- compras;
- daño;
- Core/victoria;
- DataStore;
- TeleportService;
- matchmaking;
- validacion de entradas remotas;
- cualquier uso de Robux/MarketplaceService.

## Migracion a produccion

Si el codigo se aprueba:

1. ChatGPT/Codex lo revisa/refactoriza cuando sea necesario.
2. Se migra desde `rebirth_inbox` al arbol definitivo gestionado por Rojo.
3. Se elimina o sustituye la version temporal de Studio para no conservar dos fuentes de verdad.
4. GitHub/Rojo pasan a ser la fuente de verdad del codigo aprobado.
5. Se actualizan `PROJECT_STATE.md`, informes y decisiones si procede.

## Instantaneas `.rbxlx`

Las instantaneas completas siguen siendo utiles, pero ya no son obligatorias tras cada prompt.

Usarlas:

- antes/despues de cambios grandes de mundo;
- cuando haga falta inspeccionar jerarquia completa, propiedades o scripts fuera del Inbox;
- como punto de recuperacion antes de una operacion arriesgada;
- cuando Rebirth haya modificado contenido que Script Sync no puede representar.

Nombre recomendado:

`snapshots/Rebirth_YYYY-MM-DD_descripcion.rbxlx`

Preferir `.rbxlx` sobre `.rbxl` cuando el objetivo sea inspeccion tecnica, porque `.rbxlx` es XML.

## Mundo visual

Script Sync sincroniza codigo/folders, no el mundo visual completo.

Terrain, MeshParts, modelos y otros elementos visuales pueden permanecer gestionados desde Studio cuando sea la opcion adecuada.

Los modelos visuales importantes se pueden versionar como `.rbxmx`/`.rbxm` cuando resulte practico.

## Primer intento de Rebirth

El primer prototipo visual rechazado informo:

- 0 Scripts;
- 0 LocalScripts/ModuleScripts;
- 0 RemoteEvents/RemoteFunctions.

Por tanto no contiene programacion propia de Rebirth que haya que migrar.

## Regla de aceptacion

Nunca aceptar una respuesta de Rebirth del tipo `todo funciona` sin revisar el codigo real cuando haya generado programacion.

El reporte de Rebirth es informacion auxiliar; la fuente de verdad para revision es el codigo sincronizado/capturado y, una vez aprobado, el repositorio definitivo gestionado por Rojo.
