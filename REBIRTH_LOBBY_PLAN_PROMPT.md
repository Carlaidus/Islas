# REBIRTH_LOBBY_PLAN_PROMPT

Última actualización: 2026-08-16

Uso: pegar en una **conversación nueva de Rebirth** después de adjuntar:

1. concept art del lobby;
2. plano top-down técnico.

Esta intervención es `PLAN ONLY`: no debe modificar Studio.

---

```text
ISLAS — LOBBY PRODUCTION CALIBRATION — PLAN ONLY

You are acting as a senior Roblox environment designer and technical builder inside the currently connected Roblox Studio place.

This is a new production attempt. Two previous broad world-generation attempts were rejected because they produced primitive geometry, broken palm trees, duplicate objects, visible debug parts, inconsistent vegetation and an invalid spawn in water.

Do not reuse, repair or imitate either rejected attempt.

I have attached TWO references:

1. a perspective concept image that defines visual quality, atmosphere, materials and density;
2. a top-down technical layout that defines the authoritative spatial arrangement.

The top-down layout controls placement.
The perspective concept controls visual quality and mood.
Do not invent a different macro layout.

IMPORTANT — THIS MESSAGE IS PLAN ONLY.

Do not create, delete, move, rename or modify any Roblox instance.
Do not change Terrain.
Do not import assets.
Do not create scripts.
Do not change Lighting.
Do not spend the response pretending work was completed.
Inspect the current place and return a professional implementation plan only.

PROJECT CONTEXT

ISLAS is a competitive Roblox game with a separate compact Lobby Place and a separate Match Place.

This task concerns ONLY the Lobby Place.

The lobby is a small tropical expedition port / inhabited island base. It is not an exploration map and not a collection of developer pads.

The player must:

- spawn correctly on solid ground;
- understand Quick Play, 1v1, 2v2 and 3v3 within seconds;
- reach any game entrance in no more than approximately 8–10 seconds;
- optionally discover statistics, leaderboards, cosmetics, missions/rank, party space and a cannon practice range;
- never begin in water, void or hidden geometry.

TARGET SCALE

Approximate main footprint:

- 280 studs wide;
- 220 studs deep;
- 15–25 studs of useful elevation variation.

Travel targets:

- Spawn to central plaza: 3–5 seconds;
- Spawn to Quick Play: 5–7 seconds;
- Spawn to any queue: maximum 8–10 seconds;
- Cross the lobby: approximately 15–20 seconds.

AUTHORITATIVE LAYOUT

South:
- Arrival / real SpawnLocation facing north.

Centre:
- Expedition Plaza;
- central compass / expedition relic landmark;
- Quick Play on the north edge of the plaza.

North / waterfront, arranged as a fan:
- Queue_1v1;
- Queue_2v2;
- Queue_3v3.

West:
- Stats pavilion;
- personal statistics;
- maximum two initial global leaderboard positions.

East:
- Cosmetics shop with physical display space.

South-west:
- Missions and rank area.

South-east:
- Party / social area.

North-west, separate from queues:
- Practice Cannon Range over water;
- one future practice cannon position;
- targets at three distances.

STYLE

- polished Roblox tropical adventure;
- stylized, colorful and readable;
- suitable for children and mobile;
- wood, stone, rope, cloth, sand, vegetation and turquoise water;
- expedition/island identity with only light pirate influence;
- richer than primitive low-poly;
- not hyperrealistic;
- no giant empty buildings;
- no neon overload;
- no floating developer pads as primary architecture.

MANDATORY CALIBRATION BEFORE FULL BUILD

Before any full lobby construction, the first build task must create only a Visual Calibration Yard containing:

- 3 production-quality palm variants: straight, curved and young;
- 3 organic rock variants: small, medium and large;
- 2 tropical vegetation clusters;
- 1 dock module;
- 1 wood-and-cloth stall module;
- 1 matchmaking entrance module;
- 1 short coastline / terrain sample;
- 1 Roblox avatar or rig for scale.

The calibration assets must not contain:

- segmented palm trunks with gaps;
- primitive cylinder-and-ball trees;
- sphere-like final rocks;
- exact duplicates occupying the same position;
- unknown scripts;
- visible debug objects;
- excessive instance counts when MeshParts, Terrain or reusable models are more appropriate.

AFTER CALIBRATION APPROVAL

The first representative lobby section will contain ONLY:

- valid Arrival / Spawn;
- part of Central Plaza;
- Quick Play;
- one matchmaking entrance;
- adjacent terrain, vegetation and coastline.

Do not plan to build the whole lobby before this section is approved in Edit and Play modes.

YOUR RESPONSE MUST INCLUDE

1. Current-place audit
   - Is the place clean enough to use?
   - What existing objects must be preserved, isolated or removed before construction?
   - Is Rojo or another system currently managing any relevant instances?

2. Proposed hierarchy
   - Exact Workspace hierarchy for Calibration Yard and future LobbyProduction.
   - Clear separation of Environment, Arrival, Plaza, Queues, Practice Range, Stats, Cosmetics, Missions/Rank, Party, Boundaries and Development markers.

3. Calibration asset strategy
   - How each required sample will be created.
   - Whether you propose Terrain, MeshParts, generated assets or safe Creator Store assets.
   - How you will verify imported assets contain no scripts.
   - Expected reuse strategy to avoid thousands of primitive Parts.

4. Spatial implementation plan
   - Approximate coordinates / relative placement.
   - Main path widths.
   - Elevation strategy.
   - Spawn orientation.
   - Water boundary and return strategy.
   - Mobile readability.

5. Visual implementation plan
   - Materials, palette and vegetation density.
   - How the attached concept image will be translated without copying another game.
   - How the top-down reference remains authoritative.

6. QA plan
   - Spawn test repeated at least five times.
   - Play-mode inspection.
   - duplicate-position audit;
   - visible-debug audit;
   - geometry-gap/floating-part audit;
   - Output error audit;
   - unknown-script audit;
   - mobile and desktop readability check;
   - approximate instance-count/performance check.

7. Construction sequence
   - exact order of operations;
   - where you will STOP for approval;
   - what you will explicitly not build in the first execution.

8. Risks and questions
   - list only genuine blockers;
   - do not ask the user to make technical decisions you can solve professionally;
   - call out any limitation that may prevent matching the references.

SUCCESS CONDITION FOR THIS RESPONSE

A clear plan that can be reviewed before any Studio modification.

STOP after the plan.
Do not begin construction.
```
