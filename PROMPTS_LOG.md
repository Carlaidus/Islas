# PROMPTS_LOG

Última actualización: 2026-08-16

Registro de prompts relevantes enviados a herramientas externas, especialmente aquellas con coste por solicitud.

Objetivos:

- evitar repetir prompts que ya fallaron;
- reutilizar estructuras que funcionaron;
- saber qué herramienta realizó cada cambio;
- controlar gasto;
- conservar contexto técnico;
- separar informe de herramienta y resultado real.

## Formato

### AAAA-MM-DD — Herramienta — Título

**Objetivo:**

**Sesión/contexto:**

**Prompt enviado:** referencia o resumen.

**Coste/créditos:**

**Resultado informado:**

**Resultado observado:**

**Qué funcionó:**

**Qué falló:**

**Causa clasificada:** diseño / prompt / herramienta / QA.

**Reglas derivadas:**

**¿Reutilizable?:**

---

## Entradas

### 2026-08-16 — Rebirth — Visual Prototype v0.1

**Objetivo:** crear en una intervención un prototipo visual/espacial con lobby tropical, 1v1/2v2/3v3 y arena con dos islas, recursos visuales, BuildArea, Shop/NPC, Core, CannonArea y spawns.

**Sesión/contexto:** primera generación grande de Rebirth en Islas.

**Coste/créditos:** 1.

**Resultado informado:** 763 instancias bajo `Workspace > RebirthPrototype`, jerarquía limpia, dimensiones solicitadas, simetría y 0 scripts/sistemas jugables.

**Resultado observado:** calidad visual claramente insuficiente: base gris, islas minúsculas/circulares, geometría primitiva, composición pobre, lobby sin identidad y ausencia real de exploración.

**Qué funcionó:** nombres, organización, aislamiento en contenedor, cumplimiento de checklist y ausencia de sistemas no solicitados.

**Qué falló:** escala, dirección artística, composición, calidad visible y lectura de producto.

**Causa clasificada:**

- diseño: escalas fijadas antes de tiempos de recorrido;
- prompt: demasiado amplio, sin referencias, restricciones que forzaron primitivas;
- herramienta: no elevó calidad ni cuestionó decisiones débiles;
- QA: sin muestra ni revisión intermedia.

**Reglas derivadas:** referencias, plan-only, assets de muestra, permitir Terrain/MeshParts y aprobar antes de poblar.

**¿Reutilizable?:** no como generación de mundo. Sí reglas de aislamiento/nombres.

---

### 2026-08-16 — Rebirth — World Foundation V2

**Objetivo:** reconstruir con islas grandes/explorables, lobby, Duel/Triad, CoreSockets, recursos, tienda/taller, cañón, rutas y mejor calidad visual.

**Sesión/contexto:** continuación/redirección después de V1; prompt muy largo con mundo completo.

**Coste/créditos:** 1.

**Resultado informado:** Rebirth presentó una World Foundation amplia con islas, lobby, anchors, recursos, zonas y validaciones.

**Resultado observado mediante Play, capturas y archivo real:**

- spawn en el agua y sin SpawnLocation válido;
- nado posible entre islas;
- palmeras rotas con segmentos girados/huecos;
- árboles dentro del mar;
- vegetación desigual y zonas vacías;
- Parts transparentes/debug visibles;
- bolas luminosas y bloques sin función comprensible;
- objetos duplicados/triplicados;
- entradas de cola y práctica duplicadas;
- CoreVisual duplicados;
- Shop/Workshop con piezas repetidas;
- CoreSockets superpuestos;
- aproximadamente 4.953 Parts, 464 Models y 0 MeshParts;
- escena no parecía el juego solicitado.

**Qué funcionó:** intentó reflejar jerarquías y una escala mayor; creó muchos de los nombres/zones previstos; el archivo permitió una auditoría real.

**Qué falló:** experiencia completa, QA, spawn, consistencia, geometría, asset strategy, rendimiento potencial, limpieza y fidelidad visual.

**Causa clasificada:**

- diseño: mejor planteado que V1;
- prompt: todavía un megaprompt sin imágenes ni calibración;
- herramienta: QA insuficiente, duplicados, primitivas y errores bloqueantes;
- QA: no hubo checkpoint tras primeros assets ni auditoría separada.

**Reglas derivadas:**

- sesión nueva;
- plan-only;
- calibration yard;
- aprobar palmeras/rocas/módulos antes de duplicar;
- lobby e isla por separado;
- una isla antes de arena;
- spawn/límites/Output como blockers;
- auditoría de duplicados/debug;
- `.rbxlx` y Codex en hitos/código.

**¿Reutilizable?:** no. Guardar snapshot únicamente como evidencia/postmortem.

---

## Próxima entrada prevista

`Rebirth Calibration — Lobby visual set + plan-only`

No se considerará éxito si genera volumen. Se evaluará calidad de muestra, comprensión, spawn, jerarquía y QA.
