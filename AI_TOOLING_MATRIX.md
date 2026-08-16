# AI_TOOLING_MATRIX

Última actualización: 2026-08-16

## Objetivo

Elegir la herramienta adecuada para cada tarea sin añadir trabajo innecesario a Carlos o Marc.

La prioridad del flujo es:

- pocas acciones manuales;
- resultados visibles rápidamente;
- código y decisiones recuperables;
- revisión suficiente para no consolidar errores de IA;
- aprendizaje accesible para Marc.

## Roles

### ChatGPT — dirección de producto y diseño

Responsable de:

- visión del juego;
- diseño de mecánicas;
- balance inicial;
- orden de producción;
- criterios de calidad;
- prompts de Rebirth y Codex;
- evaluación de capturas y builds;
- investigación y actualización de documentación.

No debe convertir el trabajo diario en una clase de administración Git para el usuario.

### Rebirth — agente dentro de Roblox Studio

Responsable preferente cuando la tarea se beneficia de ver y modificar directamente el Place:

- Terrain;
- composición de escena;
- colocación de assets;
- modelos/props;
- UI;
- feedback visual;
- conexión entre objetos existentes;
- mecánicas acotadas;
- debugging contextual;
- cambios repetitivos en Explorer.

Puede crear scripts. El código sensible sigue requiriendo auditoría.

### Codex — operador técnico e ingeniero

Responsable preferente para:

- repositorio local y GitHub;
- arquitectura Luau;
- Rojo;
- refactors;
- seguridad cliente/servidor;
- DataStore/MemoryStore/TeleportService;
- pruebas automatizables;
- inspección/extracción de scripts del `.rbxlx`;
- documentación operativa;
- commits y push;
- revisión del código generado por Rebirth.

### Roblox Studio / Assistant / herramientas nativas

Usar cuando aporten mejor resultado o menor coste:

- Terrain Editor;
- Creator Store;
- generación de mallas/materiales;
- Playtest;
- Device Emulator;
- MicroProfiler/estadísticas;
- herramientas de colaboración y publicación.

No existe una obligación de usar IA para una tarea que Studio resuelve mejor.

## Matriz de decisión

| Tarea | Herramienta principal | Apoyo / revisión |
|---|---|---|
| Diseñar mecánica o balance | ChatGPT | playtests, documentación |
| Concept art / referencia | ChatGPT + generación visual | usuario aprueba |
| Plan top-down de mapa | ChatGPT | Rebirth inspecciona, usuario aprueba |
| Terrain de una zona concreta | Rebirth/Studio | capturas + playtest |
| Poblar vegetación con assets aprobados | Rebirth | inspección visual y rendimiento |
| Crear un hero asset (Core/cañón) | Rebirth/Roblox tools/asset externo | aprobar muestra antes de duplicar |
| UI a partir de mockup | Rebirth | móvil/PC/mando + Codex si hay lógica |
| Sistema de recolección | Rebirth o Codex según estado | Codex audita autoridad/arquitectura |
| Economía/MatchCoins | Codex preferente | Rebirth UI/feedback; ChatGPT balance |
| Construcción modular | Codex + Rebirth | Rebirth escena/feedback; Codex validación |
| Balística del cañón | Codex/Rebirth prototipo | medición y auditoría |
| Daño/Core/victoria | Codex preferente | Rebirth efectos; revisión obligatoria |
| Matchmaking/colas/teleport | Codex | pruebas publicadas y revisión |
| DataStore/progresión | Codex | auditoría y pruebas de fallo |
| Cosméticos/tienda visual | Rebirth | ChatGPT dirección, Codex compra segura |
| Git/documentación | Codex | ChatGPT revisa estado |
| Auditoría completa del Place | Codex + ChatGPT | `.rbxlx`, capturas, Studio |

## Regla para elegir Rebirth

Usar Rebirth cuando cumpla al menos una:

- necesita leer el árbol real de Studio;
- necesita modificar muchas instancias contextualizadas;
- la tarea es visual/interactiva y se valida mejor en escena;
- evita copiar/pegar código u objetos manualmente;
- puede producir un entregable verificable en 1–3 prompts;
- su velocidad compensa el coste de revisión.

No usarlo por inercia cuando:

- la tarea es un refactor puramente textual;
- hay lógica sensible compleja que Codex puede estructurar mejor;
- no existen referencias/criterios suficientes;
- la sesión está contaminada;
- el resultado anterior todavía no se ha probado.

## Regla para elegir Codex

Usar Codex cuando cumpla al menos una:

- requiere revisar varios archivos;
- requiere Git/Rojo;
- requiere ejecutar comandos o pruebas;
- afecta a seguridad/economía/persistencia;
- exige consistencia entre sistemas;
- necesita extraer o comparar scripts del Place;
- el resultado debe quedar mantenible en repositorio.

## Flujo simple para Carlos y Marc

### Trabajo visual o mecánico con Rebirth

1. Explican el objetivo a ChatGPT.
2. ChatGPT entrega prompt y referencias.
3. Pegan el prompt en Rebirth.
4. Prueban en Studio.
5. Envían capturas y respuesta de Rebirth.
6. Guardan el Place con `Ctrl+S`.
7. Sólo en hitos o cuando haya código importante, Codex sincroniza/revisa.

### Trabajo con Codex

1. ChatGPT indica modelo y razonamiento.
2. Entrega una orden copiable.
3. Codex trabaja en `C:\Dev\Islas`.
4. Codex prueba, documenta, commit/push e informa.
5. Carlos/Marc prueban en Studio.

## Archivo fijo del Place

Ruta acordada:

`C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

La acción habitual del usuario es simplemente guardar.

No es necesario crear un archivo diferente cada vez. Para hitos o antes de una operación peligrosa se crea además una copia fechada.

## Revisión de Rebirth

### Sólo visual

Normalmente bastan:

- capturas generales;
- capturas desde avatar;
- vista top-down;
- prueba en Play;
- informe de Rebirth.

### Código o jerarquía dudosa

Usar:

- `.rbxlx` actual;
- Codex `Sincroniza la sesión de Rebirth`;
- o subida directa del `.rbxlx` a ChatGPT si se solicita.

### Sistemas sensibles

Auditoría obligatoria antes de aceptar:

- moneda;
- compras;
- inventario;
- daño;
- Core/victoria;
- remotes;
- DataStore;
- TeleportService;
- Robux.

## Rebirth: configuración de seguridad

- usar la cuenta adulta de Carlos;
- Marc participa bajo supervisión;
- plugin de Studio preferido;
- `Direct-to-ROBLOX` apagado salvo decisión posterior;
- no enviar secretos, claves, credenciales ni datos privados;
- no habilitar creación automática de productos/Robux hasta tener flujo auditado.

## Regla de coste

Un crédito no se optimiza metiendo el máximo número de requisitos en un prompt.

Se optimiza obteniendo un resultado que:

- tenga alcance coherente;
- pueda comprobarse;
- reduzca trabajo real;
- pueda conservarse;
- evite correcciones ambiguas.

Un prompt de planificación puede ser una buena inversión si evita destruir o rehacer una fase grande.

## Regla de consolidación

- Rebirth puede ser autor del primer borrador.
- Codex puede refactorizarlo o absorberlo.
- GitHub conserva lo aprobado.
- Roblox Studio conserva Terrain/assets visuales cuando Rojo no sea adecuado.
- Ninguna herramienta es la única fuente de verdad de todo el proyecto.
