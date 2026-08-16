# Rebirth Inbox

Esta carpeta contiene exclusivamente codigo generado dentro de Roblox Studio por Rebirth y sincronizado a disco mediante Script Sync.

No es codigo de produccion aprobado.

Flujo:

1. Rebirth crea/modifica scripts solo dentro de las carpetas Studio `RebirthInbox` acordadas.
2. Roblox Studio Script Sync los refleja automaticamente aqui.
3. `PUSH_REBIRTH_CODE.bat` sube solo esta carpeta a GitHub.
4. ChatGPT/Codex revisan seguridad, arquitectura y calidad.
5. El codigo aprobado se migra al arbol definitivo gestionado por Rojo.
6. Se elimina o sustituye la version temporal de Rebirth para no mantener dos fuentes de verdad.

No editar esta carpeta como si fuera produccion sin haber completado la revision.
