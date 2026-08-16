# REBIRTH_PROMPT_TEMPLATES

Última actualización: 2026-08-16

## Uso

Estas plantillas evitan volver a improvisar prompts gigantes o ambiguos.

No se copian sin adaptar. ChatGPT rellena los campos según `REBIRTH_PLAYBOOK.md` y los documentos de diseño correspondientes.

---

# Plantilla A — Planificar sin modificar

```text
You are connected to the Roblox Studio Place for ISLAS.

TASK TYPE: PLAN ONLY.
DO NOT create, modify, move, rename or delete any Instance or script.
DO NOT execute changes.

GOAL
[Describe one coherent deliverable.]

CURRENT RELEVANT STATE
[Describe only the relevant objects/systems and known problems.]

DESIGN RULES
[List the closed decisions that affect this task.]

REFERENCES
[State which uploaded images/mockups/top-down plans must guide the proposal.]

YOUR PLAN MUST INCLUDE
1. What you inspected in the current Place.
2. Exact hierarchy you propose.
3. Instances/scripts/assets you would create.
4. Existing objects you would modify or remove.
5. Asset strategy: Terrain / MeshParts / approved assets / UI objects.
6. Scale and layout assumptions and why.
7. Technical risks.
8. Performance considerations.
9. Test steps in Studio.
10. Objective success criteria.
11. Anything that must be decided before execution.

IMPORTANT
- Do not silently invent a different game design.
- Do not expand beyond this deliverable.
- Do not build anything yet.
- Stop after presenting the plan.
```

---

# Plantilla B — Ejecutar un plan aprobado

```text
You are connected to the Roblox Studio Place for ISLAS.

Execute ONLY the approved plan from the previous message, including the corrections below:

[Corrections/approved decisions.]

GOAL
[Exact deliverable.]

ALLOWED SCOPE
[Exact folders, models, scripts or services it may touch.]

FORBIDDEN SCOPE
[Everything it must not touch.]

REFERENCES
Use the attached references as the target for:
- composition;
- scale;
- visual language;
- density;
- readability.

QUALITY REQUIREMENTS
[Concrete quality requirements.]

TECHNICAL REQUIREMENTS
[Hierarchy, naming, server/client, configuration, remotes, etc.]

PROHIBITED SHORTCUTS
- no unknown Toolbox models containing scripts;
- no exact duplicate geometry;
- no visible debug markers during Play;
- no thousands of primitive Parts where an optimized asset is appropriate;
- no unrequested systems;
- no modification outside the allowed scope.

TEST PROCEDURE
Before reporting completion, perform/check:
1. [Step]
2. [Step]
3. [Step]

SUCCESS CRITERIA
The task is complete only when:
- [observable criterion];
- [observable criterion];
- [technical criterion];
- Output contains no new errors.

STOP CONDITION
When every success criterion is met, stop. Do not begin another feature.

FINAL REPORT
Return only:
- what changed;
- objects/scripts created/modified/deleted;
- tests performed and results;
- known limitations;
- anything that needs human visual approval.
```

---

# Plantilla C — Corrección de defectos concretos

```text
You are connected to the current ISLAS Place.

This is a REPAIR TASK, not a redesign and not a new feature.

OBSERVED DEFECTS
1. [Exact object/path + visible defect.]
2. [Exact object/path + visible defect.]
3. [Exact object/path + visible defect.]

FIRST
Inspect the current Place and confirm the root cause of each listed defect.
Do not assume the final report from a previous session is correct.

ALLOWED CHANGES
Only modify the minimum objects/scripts required to fix the listed defects.

DO NOT
- add new gameplay;
- redesign unrelated areas;
- duplicate assets;
- modify Rojo-managed content unless explicitly listed;
- hide a defect instead of fixing its cause.

REQUIRED VALIDATION
For every defect:
- explain the root cause briefly;
- fix it;
- verify it in edit mode and/or Play as appropriate;
- state the exact verification result.

GLOBAL CHECKS
- no new Output errors;
- no exact duplicates introduced;
- no debug objects visible during Play;
- spawn remains valid;
- unrelated objects remain unchanged.

Stop after repairing and verifying the listed defects.
```

---

# Plantilla D — Auditoría sin modificar

```text
You are connected to the ISLAS Place.

AUDIT ONLY. DO NOT MODIFY ANYTHING.

AUDIT TARGET
[Folder/system/feature.]

CHECK
- hierarchy and naming;
- duplicate or overlapping Instances;
- objects outside intended bounds;
- invisible/transparent development geometry visible in Play;
- broken or floating geometry;
- spawn and player flow;
- scripts and dependencies;
- RemoteEvents/RemoteFunctions;
- client/server authority;
- Output errors;
- performance risks;
- mobile/controller compatibility;
- compliance with the stated success criteria.

DELIVERABLE
Produce a table/list containing:
1. severity: blocker / high / medium / low;
2. exact object or script path;
3. observed problem;
4. likely root cause;
5. recommended fix;
6. how to verify the fix.

Do not repair anything during this audit.
```

---

# Plantilla E — Muestra visual antes de producción masiva

```text
Create a SMALL VISUAL CALIBRATION SET for ISLAS.

Do NOT build the full environment and do NOT repeat assets across the map yet.

CREATE ONLY
- [2–3 palm variants];
- [2–3 rock variants];
- [one vegetation cluster];
- [one architecture module];
- [one hero asset preview if applicable].

REFERENCE TARGET
Use the attached images for silhouette, material, polish and proportions.
Do not copy copyrighted designs literally.

QUALITY BAR
The samples must look suitable for a polished published Roblox experience.
Primitive geometry may be used internally, but the visible result must not look like cylinders and balls assembled as placeholders.

PRESENTATION
Place all samples in a clean comparison area with a Roblox avatar for scale.
Do not scatter or duplicate them around the real map.

CHECK
- no gaps or disconnected pieces;
- clean pivots;
- reasonable collision;
- reusable naming;
- reasonable instance count;
- no scripts unless required;
- no unknown scripts in imported assets.

Stop and request human approval before producing more variants or populating the map.
```

---

# Plantilla F — Sistema jugable acotado

```text
Build ONE modular gameplay system for ISLAS:

SYSTEM
[Example: wood resource node only.]

PLAYER FLOW
1. [Player action]
2. [Server validation]
3. [Feedback]
4. [Reward/state update]
5. [Reset/cooldown]

SERVER AUTHORITY
The server must decide and validate:
- eligibility;
- reward amount;
- cooldown;
- distance/interactions;
- inventory/state changes.

CLIENT RESPONSIBILITIES
The client may handle:
- input;
- UI;
- local animation/feedback;
- requests to the server.

The client must not directly grant rewards or declare success.

ARCHITECTURE
- configuration separate from logic;
- focused modules/scripts;
- validated RemoteEvents;
- rate limiting/debounce;
- no deprecated APIs;
- meaningful names;
- no unrelated refactors.

TEST CASES
- normal successful use;
- repeated spam;
- request from too far away;
- invalid node;
- two players interacting;
- respawn/rejoin if relevant;
- mobile input if relevant.

SUCCESS CRITERIA
[Exact observable and technical criteria.]

Stop after this one system works end-to-end. Do not generalize to other resource types until approved.
```

---

# Checklist antes de enviar cualquier prompt

- ¿Es una sola tarea coherente?
- ¿La sesión debe ser nueva?
- ¿Está guardado el Place?
- ¿Hay copia antes de cambios destructivos?
- ¿Tenemos referencias visuales cuando hacen falta?
- ¿Está claro qué puede tocar?
- ¿Está claro qué no puede tocar?
- ¿La prueba puede realizarse?
- ¿El éxito es observable?
- ¿Hay condición de parada?
- ¿Se ha decidido si luego hay que pasar `.rbxlx` a Codex/ChatGPT?
