# DECISIONS

Última actualización: 2026-08-16

Registro de decisiones vigentes. Cuando una decisión cambie, debe registrarse el cambio y su motivo.

---

## 2026-08-16 — Repositorio y entorno

- Repositorio operativo: `Carlaidus/Islas`.
- Rama principal: `main`.
- Directorio local: `C:\Dev\Islas`.
- Place de trabajo: `C:\Dev\Islas\studio\Islas_CURRENT.rbxlx`.
- Rojo de Islas usa el puerto `34873`.
- De momento el repositorio permanece en la cuenta `Carlaidus`.

## 2026-08-16 — Modelo de trabajo

- ChatGPT dirige producto, diseño, balance, investigación, alcance y prompts.
- Rebirth puede crear mundo, Terrain, assets, UI, scripts y mecánicas dentro de Studio.
- Codex es operador técnico: arquitectura, seguridad, Rojo, Git/GitHub, inspección del `.rbxlx`, pruebas y consolidación.
- Carlos y Marc aportan intención y playtest.
- VS Code no es obligatorio.
- No usar Cursor Pro por ahora.
- No existe una división rígida “visual = Rebirth / código = Codex”.
- La herramienta se elige según `AI_TOOLING_MATRIX.md`.

## 2026-08-16 — Rebirth se mantiene

Rebirth no se abandona tras los dos resultados fallidos.

Se considera valioso por:

- acceso al Studio real;
- creación/modificación de instancias;
- scripts/UI;
- assets/3D;
- debugging contextual;
- cambios repetitivos rápidos.

Pero deja de utilizarse como generador autónomo de “todo el mundo” mediante megaprompt.

Método obligatorio:

`referencia -> plan-only -> aprobación -> calibration set -> construcción acotada -> Play/QA -> auditoría/consolidación`

Ver:

- `REBIRTH_PLAYBOOK.md`
- `REBIRTH_PROMPT_TEMPLATES.md`
- `REBIRTH_POSTMORTEMS.md`
- `REBIRTH_REVIEW_WORKFLOW.md`

## 2026-08-16 — Cuenta y privacidad de Rebirth

- El servicio declara estar dirigido a usuarios de 13 años o más.
- La cuenta/suscripción la opera Carlos/adulto responsable.
- Marc participa bajo supervisión.
- Se prefiere el plugin local de Roblox Studio.
- `Direct-to-ROBLOX` permanece apagado salvo decisión posterior justificada.
- No se envían secretos, credenciales, claves ni datos personales.
- No se habilita creación automática de productos/Robux hasta auditar el flujo.

## 2026-08-16 — Flujo de revisión de Rebirth

- No se exporta/sube `.rbxlx` después de cada pequeño cambio visual.
- Se guarda normalmente con `Ctrl+S`.
- Se usa `.rbxlx` en hitos, código, jerarquía dudosa, cambios grandes o auditorías.
- Ante la orden `Sincroniza la sesión de Rebirth`, Codex inspecciona el Place, revisa scripts y actualiza GitHub.
- El informe de Rebirth nunca sustituye Studio, Play, Output, capturas o código real.
- No usar Script Sync/RebirthInbox/BAT como flujo obligatorio actual.

## 2026-08-16 — Lobby

- Los jugadores no empiezan en una isla de combate.
- El Start Place será un lobby/hub compacto.
- Aspecto: pequeño puerto/isla-base tropical habitada.
- Debe incluir `Quick Play` además de accesos físicos.
- Accesos claros a 1v1, 2v2 y 3v3.
- Spawn correcto y lectura inmediata.
- Práctica de cañón como tutorial contextual.
- Estadísticas/leaderboards seleccionados.
- Espacios para tienda cosmética, misiones, rango y party.
- La tienda no debe bloquear la primera diversión.
- No usar pads/carteles de desarrollo como arquitectura principal.

## 2026-08-16 — Places

Dirección de arquitectura:

- Place 1: Lobby/Hub.
- Place 2: Match.
- TeleportService decidido por servidor.
- Servidores reservados para partidas cuando se implemente el flujo real.
- MemoryStore para colas cross-server cuando sea necesario.
- TeleportService se prueba en experiencia publicada/cliente, no sólo Play Solo.
- Separar Places también ayuda a organización y rendimiento.

## 2026-08-16 — Modos

### Jugadores por equipo

- 1v1
- 2v2
- 3v3

### Equipos/islas

- `Duel`: 2 equipos/islas. Prioridad inicial.
- `Triad`: 3 equipos/islas. Previsto arquitectónicamente, posterior a Duel.

1v1/2v2/3v3 no describen el número de islas.

## 2026-08-16 — Prioridad de lanzamiento

Primero construir un vertical slice 1v1 de extremo a extremo.

Orden:

1. primera diversión/onboarding;
2. lobby mínimo real;
3. Match 1v1 completo;
4. calidad/rendimiento móvil;
5. analítica/retención;
6. 2v2/3v3;
7. progresión;
8. monetización cosmética;
9. Triad/contenido adicional.

No ampliar adquisición/monetización si primera sesión y D1 son débiles.

## 2026-08-16 — Bucle de partida

1. Lobby.
2. Quick Play/cola.
3. formación de partida.
4. presentación/Core reveal.
5. preparación.
6. countdown.
7. batalla.
8. overtime si hace falta.
9. resultado.
10. retorno.

## 2026-08-16 — Tiempos iniciales

Hipótesis configurables:

- preparación 1v1: ~6:00;
- preparación 2v2: ~5:30;
- preparación 3v3: ~5:00;
- batalla: ~4:00;
- overtime: hasta ~1:00;
- partida objetivo: ~10–12 min.

Se ajustan mediante playtest.

## 2026-08-16 — Recursos

Recursos base:

- madera;
- piedra;
- cocos como munición.

No añadir muchos recursos antes de validar decisiones interesantes.

## 2026-08-16 — Recolección

- No mantener pulsado sin decisión como única interacción.
- Tala, minería y cocos tendrán minijuegos cortos.
- La habilidad mejora rendimiento sin bloquear a principiantes.
- Recursos aparecen en sockets diseñados, no coordenadas totalmente aleatorias.
- Valor/tiempos equivalentes entre equipos.

## 2026-08-16 — Economía de partida

- `MatchCoins` es nombre técnico provisional.
- Se reinicia cada partida.
- No se compra por Robux.
- Se obtiene mediante contratos, exploración, eficiencia y venta de excedentes seleccionados.
- Comerciante vende ventajas tácticas temporales no decisivas.
- Fabricación compacta, pocas recetas.
- Servidor autoritativo.

## 2026-08-16 — Construcción

- Construcción modular con snap.
- DefenseZone limitada e integrada en terreno.
- Madera barata/menos resistente.
- Piedra cara/resistente.
- Primera versión: daño por pieza.
- Construcción normal se bloquea en batalla.
- Reparación de estructuras existentes consume recursos reservados.
- Derrumbes estructurales complejos quedan después.

## 2026-08-16 — Core

- Victoria principal: destruir Core rival.
- No aparece libremente por la isla.
- Cada mapa define varios `CoreSockets` validados en CombatFront.
- El servidor selecciona uno al inicio.
- Todo socket debe ser atacable desde rivales válidos.
- En Triad, atacable desde las otras dos islas.
- Geografía permanente nunca lo oculta.
- Beacon visible a distancia.
- Defensas construidas sí pueden bloquearlo.
- No se mueve durante batalla.

## 2026-08-16 — Cañón

- Un cañón principal por equipo inicialmente.
- Todos pueden cargar/apuntar/disparar.
- Orientación horizontal, elevación y potencia.
- Coco balístico visible.
- Giro suficiente para futuro Triad.
- Distancia entre islas se congela al prototipar balística, no antes.
- Eliminación de jugadores no es objetivo principal; knockback/respawn rápido son candidatos.

## 2026-08-16 — Mundo

La isla tiene:

- `CombatFront` hacia centro/rivales;
- `ExplorationBackland` hacia exterior/laterales;
- DefenseZone;
- CoreSockets;
- CannonPlatform;
- Shop/Workshop;
- rutas y recursos;
- límites temáticos de agua.

No se puede nadar hasta otra isla. Usar mar profundo/corriente/retorno temático.

## 2026-08-16 — Escala inicial de isla

Objetivos de diseño, pendientes de medición:

- 420–520 studs de largo;
- 350–460 studs de ancho;
- costa orgánica;
- relieve 35–65 studs;
- DefenseZone 130–170 studs;
- cruce 30–45 s;
- recurso lejano 22–32 s;
- recorrido amplio 60–90 s.

Las cifras dependen de Play, no de que “quepan” objetos.

## 2026-08-16 — Dirección artística

- aventura tropical estilizada/colorida;
- calidad de experiencia publicada;
- no hiperrealista;
- más rica que low-poly primitivo;
- vegetación variada;
- Terrain/MeshParts/assets seguros permitidos;
- colores de equipo como acento;
- referencias visuales obligatorias para arte importante;
- aprobar muestras antes de poblar.

## 2026-08-16 — Rendimiento

- Match grande debe probar Instance Streaming.
- Evitar miles de Parts pequeñas.
- colisiones simplificadas en decoración;
- LOD/meshes/Terrain con criterio;
- probar móvil modesto;
- medir FPS, memoria, errores y crashes.

## 2026-08-16 — Analítica

Instrumentar desde vertical slice:

- `joined_lobby`;
- `selected_queue`;
- `entered_match`;
- `collected_first_resource`;
- `placed_first_build_piece`;
- `fired_first_cannon_shot`;
- `completed_first_match`;
- `queued_second_match`.

Prioridad: primera sesión, completar partida, segunda cola, D1 y sesión media.

## 2026-08-16 — Monetización

- después de validar diversión/retención;
- principalmente cosméticos;
- skins de cañón/Core, banderas, efectos, emotes, celebraciones;
- no vender MatchCoins;
- no vender daño, vida, puntería automática o materiales competitivos;
- no urgencia falsa;
- paid random items sólo si cumplen políticas, preferiblemente evitarlos al inicio.

## 2026-08-16 — Rebirth V1 rechazado

Razones:

- islas pequeñas/circulares;
- sin exploración;
- blockout primitivo;
- lobby de pads;
- prompt amplio sin referencias;
- escala mal dirigida.

No reutilizar arte/layout/medidas.

## 2026-08-16 — Rebirth V2 rechazado

Problemas reales:

- spawn en agua;
- nado entre islas;
- palmeras rotas;
- árboles en mar;
- vegetación inconsistente;
- debug/transparentes visibles;
- duplicados/triplicados;
- CoreSockets superpuestos;
- miles de Parts primitivas y 0 MeshParts;
- informe no reflejaba blockers.

No reparar parche a parche como base de producción.

Ver `REBIRTH_POSTMORTEMS.md`.

## 2026-08-16 — Próxima estrategia de Rebirth

No otro worldbuilding completo.

1. Place limpio.
2. referencias/moodboard/top-down.
3. sesión nueva.
4. plan-only.
5. calibration yard.
6. muestras aprobadas.
7. sección pequeña del lobby.
8. QA.
9. completar por fases.

Ver `NEXT_TASK.md` y `PRODUCTION_PLAN.md`.
