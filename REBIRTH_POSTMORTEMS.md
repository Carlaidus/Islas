# REBIRTH_POSTMORTEMS

Última actualización: 2026-08-16

## Objetivo

Convertir los errores de cada intervención de Rebirth en reglas operativas. Este documento no busca culpar a una herramienta o persona; separa:

- fallo de diseño;
- fallo de prompt/dirección;
- fallo de ejecución de Rebirth;
- fallo de revisión/QA;
- cambio preventivo.

---

# R-001 — Visual Prototype v0.1

## Objetivo

Generar de una vez:

- lobby;
- zonas 1v1/2v2/3v3;
- dos islas;
- recursos visuales;
- Core;
- cañón;
- tienda;
- spawns;
- jerarquía limpia.

## Resultado

Rebirth informó de 763 instancias, jerarquía y dimensiones acordes al prompt, sin scripts. Visualmente el resultado era un blockout pobre: base gris, discos pequeños, piezas primitivas y composición sin calidad de juego.

## Fallos de dirección/prompt

- se fijaron islas de aproximadamente 150 studs sin diseñar primero los tiempos de recorrido;
- se pidió demasiado mundo en un único paso;
- no se proporcionaron referencias visuales;
- se prohibieron Terrain/assets externos y se empujó la solución hacia Parts primitivas;
- “prototipo” no tenía una calidad visual mínima suficientemente operativa;
- no se pidió primero una muestra de vegetación/arquitectura;
- se confió demasiado en una lista de requisitos y poco en el recorrido del jugador.

## Fallos de Rebirth

- interpretación visual extremadamente básica;
- calidad no comparable con una experiencia publicada;
- informe final correcto en términos de checklist, pero desconectado de la calidad percibida;
- no cuestionó una escala de isla que no permitía exploración.

## Fallos de QA

- no se exigió plan previo;
- no se evaluó una muestra antes de generar centenares de objetos;
- no se inspeccionó desde avatar antes de considerar terminado el prompt.

## Reglas derivadas

- dimensiones desde tiempos de recorrido;
- referencias visuales obligatorias;
- aprobar muestras antes de poblar;
- permitir Terrain/MeshParts/assets seguros;
- no aceptar informe como sustituto de inspección;
- no pedir lobby + arena + arte completo en una sola generación.

## Estado

RECHAZADO. No reutilizar escala, arte ni layout.

---

# R-002 — World Foundation V2

## Objetivo

Rehacer mundo con:

- islas de mayor tamaño;
- lobby más completo;
- arena radial Duel/Triad;
- CoreSockets;
- recursos;
- tienda/taller;
- cañón;
- vegetación y rutas;
- calidad superior.

## Resultado observado

El Place real mostró:

- spawn en el agua y ausencia de SpawnLocation válido;
- posibilidad de nadar entre islas;
- palmeras con troncos segmentados, girados, con huecos o piezas faltantes;
- árboles en el agua;
- vegetación muy desigual entre islas;
- bloques/piezas sin lectura clara;
- bolas luminosas y marcadores de desarrollo visibles;
- Parts transparentes visibles en Play;
- objetos duplicados y triplicados en la misma posición;
- CoreVisual duplicado;
- entradas de lobby duplicadas;
- tienda/taller con piezas triplicadas;
- CoreSockets superpuestos;
- cero MeshParts y miles de Parts primitivas;
- mapa que no comunicaba la experiencia solicitada.

La inspección del archivo indicó aproximadamente 4.953 Parts, 464 Models y 0 MeshParts. Había numerosos objetos semitransparentes de desarrollo y duplicados exactos.

## Fallos de dirección/prompt

- aunque el diseño era mejor, volvió a pedirse una World Foundation demasiado amplia en una sola ejecución;
- se mezclaron lobby, dos islas, seis anchors, arte, recursos, hero assets y validación de líneas de tiro;
- no se proporcionaron imágenes de referencia reales;
- no se obligó a aprobar primero las palmeras/rocas/Core/cañón;
- no se definió un gate obligatorio de spawn y Play antes de seguir construyendo;
- la instrucción de “calidad de producto” seguía siendo textual, no visual;
- no se usó un prompt independiente de planificación.

## Fallos de Rebirth

- no creó un spawn funcional aunque era un requisito básico del flujo;
- no verificó la experiencia desde Play;
- no detectó piezas duplicadas/triplicadas;
- generó geometría rota;
- dejó debug visible;
- usó exclusivamente Parts primitivas pese a permitirse opciones mejores;
- completó islas de forma inconsistente;
- declaró validaciones sin detectar defectos bloqueantes;
- produjo un informe final mucho mejor que la experiencia real.

## Fallos de QA

- no se detuvo la generación tras comprobar las primeras palmeras;
- no hubo revisión intermedia por entregable;
- no se pidió auditoría separada antes del informe de finalización;
- se entró al juego después de una generación enorme en vez de validar por capas.

## Reglas derivadas

- la próxima tarea empieza con plan-only;
- sesión nueva al cambiar de estrategia;
- entregar referencias visuales;
- construir y aprobar un calibration set de assets;
- lobby e isla son sesiones/entregables distintos;
- primero una isla, después duplicar;
- spawn y límites de agua son criterios bloqueantes;
- auditoría de duplicados/debug/objetos fuera de límites antes de aceptar;
- nunca poblar toda la escena antes de aprobar vegetación;
- usar `.rbxlx` en hitos o cuando el resultado no sea comprensible;
- Codex revisa scripts/sistemas sensibles;
- el usuario debe recorrer en Play antes de pasar a la siguiente fase.

## Estado

RECHAZADO. No se reparará parche a parche como base de producción.

---

# Clasificación general de los dos fallos

## Fallo de la herramienta

Rebirth ha demostrado que puede:

- crear grandes jerarquías;
- aplicar muchos cambios en Studio;
- seguir nombres y parte de las restricciones;
- producir rápidamente una escena amplia.

También ha demostrado limitaciones importantes cuando se le da worldbuilding amplio y sin calibración visual:

- control artístico inconsistente;
- QA insuficiente;
- tendencia a geometría primitiva;
- dificultad para mantener coherencia en miles de instancias;
- informes que no reflejan defectos visibles.

## Fallo de dirección

El proyecto utilizó Rebirth como generador de mundo completo antes de:

- crear referencias;
- planificar por entregables;
- aprobar una biblioteca visual;
- definir un protocolo de QA;
- separar lobby e isla;
- validar la primera zona en Play.

## Decisión

Rebirth se conserva como herramienta importante. Cambia el método:

`referencia -> plan-only -> aprobación -> muestra/calibración -> construcción acotada -> Play/QA -> auditoría -> consolidación`

No volver a usar:

`megaprompt -> miles de instancias -> informe -> descubrir desastre al final`

---

# Formato para futuros postmortems

## Identificador / título

## Objetivo

## Prompt/sesión

## Resultado real

## Qué funcionó

## Fallos de diseño

## Fallos de prompt

## Fallos de Rebirth

## Fallos de QA

## Reglas derivadas

## Reutilizable

## Estado final
