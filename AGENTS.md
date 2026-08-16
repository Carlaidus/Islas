# AGENTS

Última actualización: 2026-08-16

Instrucciones para cualquier agente de IA que trabaje en este repositorio, especialmente Codex.

## Modelo operativo

- **ChatGPT**: dirección de juego/producto. Investiga, decide prioridades, diseño, alcance, criterios de calidad y prepara órdenes para Rebirth/Codex.
- **Rebirth**: agente dentro de Roblox Studio. Puede crear mundo, UI, assets, scripts y mecánicas siguiendo `REBIRTH_PLAYBOOK.md`.
- **Codex**: operador técnico e ingeniero. Mantiene `C:\Dev\Islas`, inspecciona el Place, revisa código, trabaja con Rojo/Git/GitHub, prueba y documenta.
- **Carlos/Marc**: explican objetivos, prueban el juego y validan la experiencia. Marc participa bajo supervisión adulta.

Codex no debe reinventar decisiones de game design cerradas. Si detecta una contradicción importante, se detiene y la reporta.

## Lectura obligatoria general

Antes de modificar nada:

1. `README.md`
2. `GAME_DESIGN.md`
3. `PROJECT_STATE.md`
4. `DECISIONS.md`
5. `NEXT_TASK.md`
6. `LAST_CODEX_REPORT.md`
7. `WORKFLOW.md`
8. `AI_TOOLING_MATRIX.md`

## Lecturas según tarea

### Rebirth o trabajo dentro de Studio

- `REBIRTH_PLAYBOOK.md`
- `REBIRTH_PROMPT_TEMPLATES.md`
- `REBIRTH_POSTMORTEMS.md`
- `REBIRTH_REVIEW_WORKFLOW.md`
- `PROMPTS_LOG.md`

### Mundo, mapa, lobby, islas o arte

- `WORLD_DESIGN.md`
- `ART_DIRECTION.md`

### Preparación, recursos, tienda, contratos, fabricación o construcción

- `ECONOMY_DESIGN.md`

### Core, cañón, balística, daño, reparación, victoria o Duel/Triad

- `COMBAT_DESIGN.md`

### Flujo de partida, onboarding, lanzamiento, analítica o monetización

- `MATCH_FLOW.md`
- `ROBLOX_PRODUCT_STRATEGY.md`
- `PRODUCTION_PLAN.md`

### Investigación/capacidades actuales

- `RESEARCH_SOURCES.md`

Las instrucciones nuevas y explícitas del usuario prevalecen, pero los documentos deben actualizarse para reflejar el cambio.

## Reglas específicas de Rebirth

Nunca preparar ni aprobar una intervención de Rebirth que incumpla el playbook.

Para tareas complejas:

1. sesión nueva cuando cambia el subsistema o el contexto está contaminado;
2. backup si hay riesgo;
3. referencias visuales cuando la calidad depende de arte/composición;
4. prompt de plan sin cambios;
5. revisión del plan;
6. construcción acotada;
7. prueba en Studio/Play;
8. auditoría o `.rbxlx` cuando corresponda;
9. postmortem/regla nueva si falla.

Prohibido:

- pedir “todo el juego”;
- mezclar lobby, isla, economía y combate en una ejecución;
- poblar el mapa entero antes de aprobar assets de muestra;
- aceptar el informe textual como prueba;
- continuar corrigiendo indefinidamente un entregable estructuralmente fallido;
- dejar debug visible;
- consolidar código sensible sin auditoría.

## Cuenta y privacidad de Rebirth

La cuenta y suscripción de Rebirth se operan mediante Carlos/adulto responsable. El servicio declara estar dirigido a mayores de 13 años.

- Marc participa bajo supervisión;
- no incluir datos personales, secretos, credenciales ni claves en prompts;
- plugin de Studio preferido;
- `Direct-to-ROBLOX` permanece apagado salvo decisión posterior documentada;
- no habilitar automatización de productos/Robux sin auditoría.

## Sincronización después de Rebirth

Place de trabajo preferido:

`C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`

Ante la orden:

`Sincroniza la sesión de Rebirth`

Codex debe:

1. revisar documentación relevante;
2. leer `git status`;
3. inspeccionar el `.rbxlx` si existe;
4. identificar scripts y cambios técnicos;
5. generar una representación/manifiesto revisable cuando haga falta;
6. detectar riesgos, duplicados, APIs obsoletas y problemas cliente/servidor;
7. no promover código bruto automáticamente;
8. migrar/refactorizar a Rojo sólo si la tarea lo autoriza;
9. ejecutar comprobaciones razonables;
10. actualizar `LAST_CODEX_REPORT.md` y estado operativo;
11. commit/push cuando el repo sea coherente.

Ver `REBIRTH_REVIEW_WORKFLOW.md`.

## Regla de alcance

Trabajar sólo en `NEXT_TASK.md` o en la tarea explícita.

No aprovechar una tarea para:

- refactorizar sistemas no relacionados;
- cambiar arquitectura sin necesidad;
- añadir funciones no solicitadas;
- introducir monetización;
- alterar diseño cerrado;
- rehacer arte/UI ajenos;
- borrar contenido fuera del alcance.

## Dirección de producto

- dimensiones desde tiempos de recorrido y función;
- primero Duel/1v1 completo, luego ampliar;
- Triad previsto arquitectónicamente, no construido antes de validar Duel;
- el Core usa CoreSockets validados;
- CombatFront hacia rivales; exploración hacia atrás/laterales;
- primera diversión en menos de cinco minutos;
- Quick Play además de accesos físicos en lobby;
- retención y finalización de partida antes que monetización amplia;
- no vender MatchCoins ni poder competitivo;
- calidad visual evaluada por lo que ve el jugador, no por el número de instancias.

## Arquitectura

Prioridades:

- sistemas desacoplados;
- configuración centralizada;
- servidor autoritativo;
- remotes validados;
- código legible y modular;
- soporte 1–3 jugadores por equipo sin duplicar lógica;
- soporte futuro 2–3 equipos por configuración cuando sea razonable;
- código aprobado en Rojo/GitHub;
- Terrain/assets visuales pueden permanecer en Studio.

## Economía y seguridad

El servidor decide/valida:

- recursos;
- MatchCoins;
- contratos;
- compras;
- crafting/building costs;
- inventario relevante;
- daño y reparación;
- Core activo;
- victoria;
- recompensas persistentes;
- teletransporte/matchmaking;
- recibos de compras.

Nunca permitir que el cliente declare directamente esos resultados.

## Pruebas

No declarar una tarea completada sólo porque compila o porque Rebirth dice que terminó.

### Level design

- spawn;
- recorrido;
- rutas;
- límites de agua;
- líneas a CoreSockets;
- giro del cañón;
- escala con avatar;
- rendimiento;
- móvil cuando aplique.

### Mecánicas

- flujo normal;
- errores/inputs inválidos;
- spam;
- dos jugadores simultáneos;
- respawn/reconexión;
- servidor/cliente;
- Output sin errores.

### Producto

- primera partida;
- primer recurso;
- primera construcción;
- primer disparo;
- finalización;
- segunda cola;
- eventos analíticos relevantes.

## Al finalizar una tarea de Codex

Actualizar `LAST_CODEX_REPORT.md` con:

- tarea;
- rama/commit;
- archivos;
- estado Studio/repo;
- decisiones técnicas;
- pruebas;
- resultado;
- riesgos;
- siguiente recomendación.

Actualizar también `PROJECT_STATE.md`, `NEXT_TASK.md`, `DECISIONS.md`, `PROMPTS_LOG.md` o el playbook cuando corresponda.
