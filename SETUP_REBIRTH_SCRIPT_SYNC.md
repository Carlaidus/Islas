# SETUP_REBIRTH_SCRIPT_SYNC

Configuracion de una sola vez para que el codigo que Rebirth cree dentro de Roblox Studio llegue automaticamente a disco y pueda subirse a GitHub con un doble clic.

## Objetivo

No depender de subir manualmente un `.rbxlx` cada vez que Rebirth genere codigo.

El flujo sera:

Rebirth -> Roblox Studio -> Script Sync -> `C:\Dev\Islas\rebirth_inbox` -> `PUSH_REBIRTH_CODE.bat` -> GitHub -> revision ChatGPT/Codex.

## Reglas

- No sincronizar mediante Script Sync carpetas que ya controla Rojo.
- Crear carpetas dedicadas llamadas `RebirthInbox`.
- Rebirth debe crear codigo nuevo solamente dentro de esos Inbox hasta que haya sido revisado.
- El contenido de `rebirth_inbox` es codigo pendiente de revision, no produccion.

## Carpetas Studio

Crear si no existen:

- `ServerScriptService/RebirthInbox`
- `ReplicatedStorage/RebirthInbox`
- `StarterPlayer/StarterPlayerScripts/RebirthInbox`

## Carpetas locales

Sincronizar respectivamente con:

- `C:\Dev\Islas\rebirth_inbox\ServerScriptService\RebirthInbox`
- `C:\Dev\Islas\rebirth_inbox\ReplicatedStorage\RebirthInbox`
- `C:\Dev\Islas\rebirth_inbox\StarterPlayerScripts\RebirthInbox`

## Configuracion Studio

1. Activar `File > Beta Features > Script Sync` si todavia aparece como beta en la version instalada de Studio.
2. Reiniciar Studio si lo pide.
3. En Explorer, boton derecho sobre cada `RebirthInbox`.
4. Elegir `Script Sync > Sync with Directory`.
5. Seleccionar su carpeta local correspondiente.
6. Repetir para los tres Inbox.

Studio recuerda estas asociaciones al volver a abrir el Place si esta habilitado el auto-resume de Script Sync.

## Despues de una tarea de Rebirth con codigo

1. Comprobar que los `.luau` aparecen dentro de `rebirth_inbox`.
2. Hacer doble clic en `PUSH_REBIRTH_CODE.bat`.
3. Cuando indique LISTO, decir a ChatGPT: `revisa la ultima captura de Rebirth`.
4. ChatGPT/Codex revisan el codigo real en GitHub.
5. Lo aprobado se migra a la estructura definitiva de Rojo.

## Mundo visual

Script Sync solo se usa para codigo/folders. Terrain, MeshParts, modelos, UI visual y otras instancias de Studio no se exportan mediante este flujo.

Para cambios visuales grandes se conserva una copia local `.rbxlx` en puntos importantes y se revisan capturas/estructura cuando sea necesario. No hace falta subir un `.rbxlx` al chat despues de cada prompt.
