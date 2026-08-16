# Islas

Proyecto de juego multijugador para Roblox.

## Visión

`Islas` es un juego competitivo por equipos. Los jugadores comienzan en un lobby, eligen el formato de partida y después son enviados a una arena de dos islas enfrentadas. Cada equipo recolecta recursos, obtiene moneda, construye y refuerza su base y, al terminar la fase de preparación, combate contra la isla rival usando cañones y cocos como munición.

El objetivo es crear primero una experiencia sencilla de entender y con ganas de repetir partida, y después escalarla con progresión, contenido y monetización con Robux sin convertirla en pay-to-win.

## Flujo principal

1. Entrar al lobby.
2. Elegir/entrar en la zona de cola 1v1, 2v2 o 3v3.
3. Formar los dos equipos y comenzar la partida.
4. Aparecer en la isla del equipo.
5. Recolectar recursos y moneda.
6. Construir y reforzar la base.
7. Comprar elementos tácticos en la tienda de la isla.
8. Preparar cañón y munición.
9. Comenzar la fase de combate.
10. Apuntar, disparar, reparar y defender.
11. Destruir el núcleo enemigo antes de perder el propio.
12. Mostrar resultado y recompensas y regresar al ciclo de lobby/partida.

## Alcance inicial

La primera versión jugable debe poder demostrar:

- lobby mínimo funcional;
- zonas/colas diferenciadas para 1v1, 2v2 y 3v3;
- 2 islas enfrentadas por partida;
- equipos de 1 a 3 jugadores;
- recursos básicos: madera, piedra y cocos;
- moneda de partida;
- NPC/tienda por isla;
- construcción modular mediante piezas con snap;
- núcleo/tótem destruible;
- cañón con orientación, ángulo y potencia;
- reparación durante el combate;
- victoria por destrucción del núcleo enemigo.

El lobby forma parte del producto desde el principio, pero su versión inicial será sencilla. Decoración avanzada, espacios sociales, matchmaking por rango, múltiples modos, progresión compleja y monetización vendrán después de validar el núcleo jugable.

## Herramientas

- Roblox Studio: edición, prueba y publicación.
- Rojo: sincronización entre archivos locales y Roblox Studio.
- GitHub: historial y memoria operativa.
- Codex: código, arquitectura, refactorización y tareas sobre los archivos del proyecto cuando sea la herramienta más adecuada.
- Rebirth: prototipado y construcción directa dentro de Roblox Studio cuando su acceso al mundo 3D y al árbol de Studio ahorre trabajo real.
- VS Code: opcional; no es necesario para el flujo del proyecto.

ChatGPT decide tarea por tarea qué herramienta conviene. No se fuerza la regla "visual = Rebirth / código = Codex" si otra distribución produce un resultado mejor y mantenible.

## Directorio local

En Windows: `C:\Dev\Islas`.

Esta carpeta es la copia local del repositorio y contiene la configuración de Rojo y los archivos que gestionemos fuera de Studio. GitHub es el remoto y el historial.

## Regla de trabajo

Antes de encargar una tarea relevante a Codex o Rebirth se debe revisar, como mínimo:

- `README.md`
- `GAME_DESIGN.md`
- `PROJECT_STATE.md`
- `DECISIONS.md`
- `NEXT_TASK.md`
- `LAST_CODEX_REPORT.md`
- `AGENTS.md`
- `WORKFLOW.md`

Consultar también `IDEAS_BACKLOG.md` cuando la tarea afecte al diseño y `PROMPTS_LOG.md` antes de reutilizar una orden de pago.

`PROJECT_STATE.md` y `NEXT_TASK.md` deben mantenerse actualizados para que el proyecto pueda retomarse sin depender de una conversación concreta.

## Estado

Preproducción/prototipado técnico. Git y Rojo ya funcionan localmente y Roblox Studio se ha conectado al proyecto Islas. El siguiente paso es instalar y conectar Rebirth sin gastar créditos todavía.
