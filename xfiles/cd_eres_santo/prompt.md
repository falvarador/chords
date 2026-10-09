Actúa como un diseñador editorial y desarrollador senior experto en Typst, especializado en transcripción y maquetación musical de alta fidelidad para atril y tablet.

### Objetivo:
Crear el archivo Typst (`eres-santo.typ`) y compilar su PDF correspondiente para la canción **"Eres Santo" de Christine D'Clario**, replicando con exactitud la estructura visual, estética y composición del archivo modelo, aplicando las reglas de marca de `DESIGN.md` y extrayendo fielmente la armonía y lírica del cifrado fuente.

---

### Insumos disponibles en el workspace (3 archivos de referencia):
1. `archivo-modelo.pdf` (o imagen de referencia): **El estándar visual a clonar**. Define la arquitectura visual real: layout exacto, cómo se ven los encabezados, cómo se encuadran las secciones, disposición de columnas, insignias de tono/tempo y estilo del pie de página.
2. `DESIGN.md`: Especificación técnica de marca (valores hexadecimales de color, familias tipográficas, tamaños de fuente, espaciados y metadatos de autoría).
3. `cifrado-original.pdf`: La fuente de contenido musical de **"Eres Santo"** (letra completa, acordes originales, slash chords/inversiones, tempo, compás y tonalidad).

---

### Tareas e Instrucciones de Ejecución:

#### 1. Ingeniería Inversa del `archivo-modelo`:
- Analiza la anatomía visual de `archivo-modelo`:
  - **Cabecera:** Posición del título, artista, caja de metadatos (Key, BPM, Time Signature, Capo) y elementos de marca/logo.
  - **Grid/Layout:** Número de columnas (1 columna vs. 2 columnas), márgenes de página y separación vertical entre bloques.
  - **Badges/Secciones:** Cómo están rotuladas las secciones (`Intro`, `Verso 1`, `Coro`, `Puente`, `Instrumental`, etc.) — ¿son píldoras con fondo tenue, texto en mayúsculas negrita con línea divisoria o cajas delineadas?
  - **Tratamiento de Acordes:** Ubicación exacta respecto a la lírica (arriba de la sílaba o en línea), tamaño relativo, peso y color de acento.
  - **Pie de página:** Alineación del año de creación, ompix musical, derechos reservados, el nombre de la canción, el autor y que el tipo es cifrado armónico.

#### 2. Implementación Técnica en Typst (`eres-santo.typ`):
- **Alineación Sílaba-Acorde Milimétrica:** 
  - Prohibido alinear acordes usando barras espaciadoras.
  - Implementa una función nativa en Typst (ej. `#ch("Acorde")[Sílaba]` usando `box` y `stack`) para fijar verticalmente cada acorde sobre su sílaba exacta sin desfasarse ante cambios de justificación o tamaño.
- **Protección de Salto de Página:** 
  - Envuelve cada sección o estrofa en bloques indivisibles (`block(breakable: false, ...)`) para asegurar que coros o versos nunca queden partidos a la mitad entre páginas.
- **Parametrización con `DESIGN.md`:** 
  - Asigna los tokens exactos de fuente y color definidos en `DESIGN.md` a los componentes replicados del modelo.

#### 3. Carga y Mapeo de Contenido:
- Extrae la letra completa y el cifrado armónico exacto de **"Eres Santo" de Christine D'Clario** desde `cifrado-original.pdf`.
- Mantén las tensiones, extensiones armónicas y bajos alterados (ej. `C/E`, `Gsus4`, `Am7`, `Dsus4/F#`).

#### 4. Compilación y Control de Calidad:
- Ejecuta en la terminal:
  ```bash
  typst compile eres-santo.typ eres-santo.pdf