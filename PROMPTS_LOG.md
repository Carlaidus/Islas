# PROMPTS_LOG

Registro de prompts relevantes enviados a herramientas externas, especialmente aquellas con coste por solicitud.

Objetivos:

- evitar repetir prompts que ya fallaron;
- reutilizar estructuras que funcionaron bien;
- saber qué herramienta realizó cada cambio;
- controlar el gasto en Rebirth u otras herramientas de pago;
- conservar contexto técnico de decisiones importantes.

## Formato de entrada

### AAAA-MM-DD — Herramienta — Título

**Objetivo:**

**Prompt enviado:**

**Coste/créditos:**

**Resultado:**

**Qué funcionó:**

**Qué falló:**

**Cambios necesarios después:**

**¿Reutilizable?:** sí/no y condiciones.

---

## Entradas

### 2026-08-16 — Rebirth — Visual Prototype v0.1

**Objetivo:** crear en una sola intervención un prototipo visual/espacial grande con lobby tropical, zonas 1v1/2v2/3v3 y una arena separada con dos islas, recursos visuales, BuildArea, Shop/NPC, Core, CannonArea y spawns.

**Coste/créditos:** 1 crédito.

**Resultado:** Rebirth informó de 763 instancias bajo `Workspace > RebirthPrototype`, jerarquía limpia, dimensiones aproximadas correctas, simetría entre islas, 0 scripts y 0 sistemas jugables. Sin embargo, la inspección visual del usuario mostró un resultado de calidad claramente insuficiente: base gris visible, composición pobre, geometría extremadamente primitiva, elementos dispersos/floating-looking y una estética que no transmite un lobby/islas tropicales ni un prototipo comercial aceptable.

**Qué funcionó:** organización del árbol, nombres, separación de responsabilidades, cumplimiento de dimensiones y restricciones, ausencia de scripts/sistemas no solicitados.

**Qué falló:** dirección artística, composición espacial, lectura visual, acabado, cohesión de assets y calidad percibida. El prompt fue demasiado grande para validar visualmente por partes y además impuso restricciones que empujaron a Rebirth hacia geometría primitiva (sin Terrain, sin assets externos y sin referencias visuales).

**Cambios necesarios después:** no continuar refinando todo el prototipo actual. Hacer una segunda prueba pequeña y exigente centrada en una sola zona (preferiblemente lobby o una isla), usando una referencia visual explícita y permitiendo las herramientas/activos adecuados. Evaluar Rebirth por ese resultado antes de comprometerlo como herramienta principal de arte/worldbuilding.

**¿Reutilizable?:** no como prompt visual completo. Sí son reutilizables las reglas de jerarquía, seguridad y separación de sistemas.
