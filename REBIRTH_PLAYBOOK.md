# REBIRTH_PLAYBOOK

Última actualización: 2026-08-16

## Propósito

Este documento define cómo utilizar **Rebirth** de forma profesional dentro de `Islas`.

No es una descripción comercial del producto. Es el protocolo operativo del proyecto, construido a partir de:

- documentación oficial de Rebirth;
- términos y política de privacidad vigentes;
- material oficial de uso y publicación;
- experiencias públicas y reseñas externas, tomadas con cautela;
- documentación oficial de Roblox;
- los dos intentos fallidos realizados en este proyecto;
- inspección real del Place generado por Rebirth.

La regla principal es:

> Rebirth es un agente potente dentro de Roblox Studio, pero no sustituye la dirección de producto, la dirección artística, el diseño de niveles, la revisión de seguridad ni las pruebas humanas.

## Capacidades verificadas

Rebirth puede trabajar directamente sobre el Roblox Studio conectado mediante su plugin y puede:

- leer el árbol y el estado del juego abierto;
- crear, modificar, mover y borrar instancias;
- crear scripts Luau;
- modificar scripts existentes;
- crear UI;
- importar assets;
- crear objetos y entornos 3D;
- ejecutar cambios dentro de Studio;
- inspeccionar errores y corregir sistemas existentes;
- mantener conversación contextual sobre el proyecto abierto.

La ventaja real de Rebirth no es solamente generar código: es poder actuar dentro del Place real y relacionar una orden con la jerarquía existente.

## Limitaciones que debemos asumir

Rebirth no garantiza resultados de producción. Sus propios términos indican que los modelos pueden cambiar, que la calidad puede variar entre sesiones y que código/assets pueden contener errores.

En este proyecto ya se han observado fallos reales:

- interpretación visual pobre de conceptos amplios;
- uso excesivo de Parts primitivas;
- palmeras construidas con segmentos rotados y huecos;
- geometría duplicada o triplicada;
- marcadores de desarrollo visibles;
- SpawnLocation ausente o incorrecto;
- objetos colocados en el mar;
- zonas incompletas o inconsistentes entre islas;
- miles de instancias sin suficiente calidad visible;
- informes de finalización que sonaban correctos aunque el resultado visual fuera inaceptable.

Por tanto:

- nunca se acepta una tarea por su informe textual;
- nunca se acepta una escena porque “contiene” todos los nombres pedidos;
- nunca se asume que “completo” significa “jugable” o “bonito”;
- nunca se publica código sensible sin revisión.

## Regla de cuenta y supervisión

La política de privacidad de Rebirth indica que el servicio está destinado a usuarios de 13 años o más.

Por tanto:

- la cuenta, suscripción y sesión de Rebirth deben ser de Carlos/adulto responsable;
- Marc puede participar en el diseño y aprendizaje bajo supervisión;
- Marc no debe gestionar una cuenta propia de Rebirth ni aportar datos personales;
- no se incluirán secretos, credenciales, claves, información privada o datos reales de usuarios en los prompts.

Usaremos el plugin de Studio. No activaremos `Direct-to-ROBLOX` salvo una decisión técnica posterior muy justificada. El propio proveedor considera el plugin la opción más segura porque no requiere que Rebirth almacene credenciales de Roblox.

## Modelo mental correcto

No tratar a Rebirth como:

- un botón de “hazme el juego entero”;
- un director creativo;
- un diseñador de niveles autónomo;
- un sustituto de QA;
- una fuente de verdad técnica.

Tratarlo como:

- un desarrollador rápido que ve Studio;
- un ejecutor de planes concretos;
- un prototipador de sistemas delimitados;
- un editor contextual;
- un asistente de debugging;
- una herramienta que necesita referencias, criterios y revisión.

## Matriz de uso

### Muy adecuado

- modificar una zona concreta ya diseñada;
- construir una UI a partir de un mockup;
- crear un sistema acotado con criterios funcionales claros;
- conectar botones, objetos y scripts existentes;
- importar/colocar assets aprobados;
- crear variantes de una pieza aprobada;
- limpiar una jerarquía concreta;
- corregir un bug reproducible;
- añadir feedback visual/sonoro a una mecánica existente;
- ejecutar cambios repetitivos en Studio.

### Adecuado con protocolo estricto

- lobby;
- una isla;
- Terrain;
- vegetación;
- Core;
- cañón;
- tienda/taller;
- sistemas de recolección;
- construcción modular;
- economía de partida;
- flujo de partida;
- matchmaking y teletransporte.

Para estas tareas se requiere plan, referencias, alcance limitado, pruebas y revisión.

### No delegar sin revisión fuerte

- DataStore;
- MatchCoins;
- inventario persistente;
- recompensas;
- daño y victoria;
- RemoteEvents/RemoteFunctions;
- MarketplaceService;
- Robux;
- propiedad de objetos;
- seguridad cliente/servidor;
- TeleportService/MemoryStore;
- cualquier dato real de jugadores.

Estos sistemas pueden ser iniciados por Rebirth, pero Codex/ChatGPT deben auditarlos y el servidor debe ser autoritativo.

## Protocolo de una tarea Rebirth

### 0. Preflight

Antes de gastar un crédito:

1. Confirmar cuál es el Place abierto.
2. Salir de Play y trabajar en modo edición salvo que la prueba requiera Play.
3. Guardar el Place.
4. Crear copia de seguridad si el cambio es grande o destructivo.
5. Confirmar que Rebirth está `Connected`.
6. Decidir si Rojo debe permanecer desconectado para evitar competir por los mismos objetos.
7. Leer el estado relevante del proyecto.
8. Confirmar que la tarea no mezcla varios subsistemas independientes.

### 1. Contexto mínimo suficiente

No pegar siempre todo el GDD.

Dar solamente:

- objetivo del juego necesario para entender la tarea;
- estado actual relevante;
- archivos/sistemas relacionados;
- decisiones cerradas que afectan a esa tarea;
- referencias visuales o de UX;
- restricciones técnicas relevantes.

Demasiado contexto no estructurado también degrada el resultado.

### 2. Plan primero

Para tareas complejas se usa un prompt de planificación sin modificar Studio.

Debe pedir:

- inspeccionar el estado actual;
- describir qué creará/modificará/borrará;
- proponer jerarquía;
- identificar assets necesarios;
- indicar riesgos;
- describir cómo validará el resultado;
- detenerse antes de ejecutar.

No se aprueba el plan si:

- inventa otra arquitectura;
- mezcla alcance;
- usa primitivas para arte visible sin motivo;
- no incluye prueba;
- no contempla móvil/mando cuando aplica;
- no contempla seguridad cuando aplica;
- no entiende el estado actual.

### 3. Construcción

El prompt de ejecución debe incluir:

1. **Objetivo exacto.**
2. **Alcance permitido.**
3. **Fuera de alcance.**
4. **Objetos/servicios que puede tocar.**
5. **Objetos/servicios que no puede tocar.**
6. **Referencias visuales adjuntas.**
7. **Calidad mínima.**
8. **Jerarquía y nombres.**
9. **Métodos permitidos:** Terrain, MeshParts, assets seguros, etc.
10. **Métodos prohibidos:** modelos con scripts desconocidos, miles de primitivas, duplicados, debug visible, etc.
11. **Pruebas exactas.**
12. **Criterios de éxito.**
13. **Condición de parada.**
14. **Informe final breve.**

### 4. Verificación obligatoria

Antes de aceptar:

- recorrer en modo edición;
- probar en Play;
- comprobar spawn;
- revisar Explorer;
- revisar Output;
- buscar duplicados evidentes;
- comprobar objetos bajo el agua o flotando;
- comprobar marcadores de desarrollo invisibles;
- probar con avatar a escala real;
- comprobar móvil/mando cuando corresponda;
- inspeccionar el `.rbxlx` si hay dudas, código o cambios complejos.

### 5. Corrección

Una corrección debe describir defectos observables, no decir “mejóralo”.

Ejemplo correcto:

- `SpawnLocation` sitúa al jugador en el agua;
- `Palm_07` tiene huecos entre segmentos;
- existen dos `Queue_1v1` superpuestos;
- los marcadores `CoreSocket_*` son visibles durante Play;
- Island_D no tiene vegetación equivalente a Island_A.

Pedir:

- inspeccionar primero;
- corregir únicamente esos defectos;
- no ampliar alcance;
- verificar cada punto;
- reportar qué se cambió.

Si la sesión empieza a repetir errores o referencias antiguas, abrir una conversación nueva. La documentación oficial de Rebirth advierte que las sesiones largas acumulan ruido.

## Protocolo visual

Las referencias son obligatorias para tareas de arte relevantes.

Antes de pedir un lobby, isla, Core, cañón o UI deben existir, según la tarea:

- concept art o moodboard;
- vista top-down;
- escala con avatar;
- paleta/materiales;
- referencias de vegetación/arquitectura;
- captura anotada del estado actual;
- ejemplos de lo que NO se acepta.

Para mundo/arte:

1. Construir primero una **muestra pequeña aprobable**.
2. No repetirla 50 veces hasta aprobarla.
3. Aprobar 2–3 palmeras antes de poblar la isla.
4. Aprobar rocas antes de crear cantera.
5. Aprobar un módulo de tienda antes de duplicarlo.
6. Aprobar composición de una zona antes de construir el mapa entero.

Rebirth no debe fabricar vegetación visible con troncos hechos de cilindros fragmentados salvo blockout temporal expresamente oculto.

## Protocolo de sistemas

Para mecánicas:

- un sistema por sesión o por bloque coherente;
- scripts pequeños y modulares;
- configuración separada de lógica;
- servidor autoritativo;
- RemoteEvents validados;
- no confiar en valores enviados por el cliente;
- casos de error definidos;
- prueba end-to-end indicada en el prompt;
- explicar por qué se usa cada RemoteEvent/RemoteFunction;
- Output sin errores antes de terminar.

Ejemplo de secuencia adecuada para recolección:

1. plan del sistema común de nodos;
2. nodo de madera funcional;
3. prueba servidor/cliente;
4. minijuego de timing;
5. feedback visual;
6. generalización a piedra/cocos;
7. balance/configuración.

No crear madera, piedra, cocos, inventario, tienda y fabricación en una sola orden.

## Sesiones y contexto

Abrir conversación nueva cuando:

- cambia el subsistema;
- se pasa de lobby a isla;
- se pasa de arte a economía;
- se pasa de prototipo a refactor;
- Rebirth referencia objetos borrados;
- se acumulan correcciones contradictorias;
- la respuesta empieza a ser repetitiva o incoherente.

Mantener la misma conversación cuando:

- se está corrigiendo el mismo entregable;
- Rebirth necesita recordar su plan inmediato;
- la siguiente orden depende directamente de la anterior.

## Control de calidad para mundo

No aceptar una escena hasta comprobar:

- spawn correcto;
- no se puede empezar en agua;
- no hay acceso no previsto entre islas;
- no hay árboles bajo el agua;
- no hay Parts flotantes o transparentes visibles;
- no hay duplicados exactos superpuestos;
- no hay geometría rota;
- no hay debug visible;
- las dos islas tienen densidad y valor funcional equivalentes;
- vegetación y rocas son coherentes;
- rutas se leen sin carteles de desarrollo;
- el Core se ve desde posiciones enemigas válidas;
- el rendimiento es razonable;
- la escena parece un juego, no un generador procedural sin revisar.

## Control de calidad para lobby

- el jugador aparece allí siempre;
- ve en segundos cómo jugar;
- existe `Quick Play` además de accesos físicos si mejora onboarding;
- 1v1/2v2/3v3 son inequívocos;
- rankings/estadísticas no bloquean recorrido;
- tienda cosmética no se interpone antes de la diversión;
- práctica de cañón enseña la mecánica central;
- no hay pads de desarrollo como diseño principal;
- el lobby es compacto y cargable rápidamente.

## Control de calidad para código

- sin errores en Output;
- sin APIs obsoletas;
- lógica sensible en servidor;
- remotes validados y con rate limiting cuando sea necesario;
- DataStore con manejo de errores y límites;
- compras procesadas con recibos correctos;
- no otorgar moneda desde LocalScript;
- no aceptar daño/victoria declarados por cliente;
- módulos y configuración separados;
- código revisado por Codex antes de consolidarse.

## Flujo con Codex y GitHub

Rebirth puede crear tanto mundo como código.

Después de un hito significativo:

1. Guardar `C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`.
2. Pedir a Codex `Sincroniza la sesión de Rebirth` cuando sea necesario.
3. Codex inspecciona el Place, extrae/revisa scripts y actualiza GitHub.
4. El código aprobado se traslada al árbol gestionado por Rojo.
5. Terrain/assets visuales pueden seguir gestionados en Studio.
6. ChatGPT revisa capturas, informes y, cuando haga falta, el `.rbxlx`.

No es necesario pasar un `.rbxlx` después de cada cambio visual pequeño. Sí se pide:

- tras un hito;
- antes de borrar/reconstruir una zona grande;
- cuando Rebirth haya creado código importante;
- cuando el resultado visual/jerárquico no se entienda;
- cuando se necesite una auditoría completa.

## Antipatrones prohibidos

- “Hazme todo el juego”.
- “Hazme una isla bonita” sin referencia.
- megaprompt con lobby + mundo + economía + combate + matchmaking;
- dimensiones elegidas sin tiempos de recorrido;
- pedir “prototipo” sin definir calidad mínima;
- prohibir Terrain/MeshParts por comodidad;
- dejar que genere cientos de assets antes de aprobar uno;
- confiar en el informe final sin mirar Studio;
- corregir un resultado estructuralmente malo con parches infinitos;
- continuar en una sesión contaminada;
- dejar marcadores de desarrollo visibles;
- permitir que Rebirth borre fuera del alcance;
- publicar código sensible sin auditoría.

## Regla de aprendizaje continuo

Después de cada tarea relevante:

- registrar el prompt;
- registrar el resultado real;
- separar fallo de herramienta, fallo de prompt y fallo de diseño;
- añadir una regla nueva si el fallo puede repetirse;
- no volver a enviar el mismo patrón esperando un resultado distinto;
- actualizar este playbook cuando cambien las capacidades de Rebirth.

## Fuentes de investigación

### Rebirth

- https://userebirth.com/docs
- https://userebirth.com/
- https://userebirth.com/blog/how-to-make-a-roblox-game-with-ai
- https://userebirth.com/blog/best-ai-tools-for-roblox-studio
- https://userebirth.com/terms
- https://userebirth.com/privacy
- https://discord.com/servers/rebirth-1446245662013522025

### Roblox

- https://create.roblox.com/docs/workspace/streaming
- https://create.roblox.com/docs/performance-optimization/design
- https://create.roblox.com/docs/cloud-services/memory-stores/queue
- https://create.roblox.com/docs/matchmaking
- https://create.roblox.com/docs/production/analytics
- https://create.roblox.com/docs/production/analytics/funnel-events
- https://create.roblox.com/docs/production/analytics/custom-events
- https://create.roblox.com/docs/production/monetization

### Evidencia externa consultada con cautela

- reseñas públicas de Trustpilot, con muestra muy pequeña;
- revisión independiente localizada sobre código/3D, no tratada como autoridad;
- material social/promocional público;
- foros de Roblox sobre asistentes similares para contrastar límites habituales.
