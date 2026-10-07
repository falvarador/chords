// ==============================================================================
// SERENE PRECISION — HOJA DE CIFRADO PROFESIONAL (LEAD SHEET)
// ==============================================================================
// Sistema de Diseño: Serene Precision (DESIGN.md)
// Inspiración y Maquetación: Formato Chart / Lead Sheet de 1 Página (2 Columnas)
// Obra: Majestad (Majesty)
// Autor / Intérprete: Seth Condrey
// Tonalidad: Sol♭ Mayor (Gb Major) | Tempo: 72 BPM | Compás: 4/4
// ==============================================================================

#set document(
  title: "Majestad - Seth Condrey (Cifrado Armónico)",
  author: "Seth Condrey",
  keywords: ("cifrado", "lead sheet", "acordes", "typst", "majestad", "seth condrey", "ompix musical")
)

// --- DESIGN TOKENS (DESIGN.md) ---
#let color-primary          = rgb("#4f46e5") // Electric Indigo (Armonía / Enfoque)
#let color-secondary       = rgb("#0f172a") // Deep Slate (Títulos / Contraste)
#let color-text-main       = rgb("#191c1e") // Letra / Texto de lectura
#let color-meta            = rgb("#64748b") // Metadatos
#let color-border          = rgb("#d8dadc") // Delimitador sutil de tarjeta
#let color-card-bg         = rgb("#ffffff") // Superficie Nivel 1 (Canvas)
#let color-surface-muted   = rgb("#f8fafc") // Superficie Nivel 0 (Workspace base)

// Colores de insignias de sección (acordes con la paleta de Serene Precision)
#let color-intro   = rgb("#0284c7") // Sky/Teal
#let color-verso   = rgb("#4f46e5") // Electric Indigo
#let color-precoro = rgb("#7c3aed") // Violet
#let color-coro    = rgb("#c2410c") // Amber / Warm Accent (DESIGN.md Tertiary)
#let color-puente  = rgb("#0d9488") // Emerald / Teal
#let color-outro   = rgb("#475569") // Slate

#let font-family = ("Helvetica Neue", "Arial")

// --- CONFIGURACIÓN DE PÁGINA ---
#set page(
  paper: "us-letter",
  margin: (top: 1.0cm, bottom: 0.8cm, left: 1.25cm, right: 1.25cm),
  fill: rgb("#ffffff"),
  footer: [
    #box(width: 100%, stroke: (top: 0.5pt + color-border), inset: (top: 4.5pt))[
      #align(center)[
        #text(size: 7.2pt, fill: color-meta, font: font-family)[
          © 2026 Ompix Musical · Todos los derechos reservados · *Majestad* — Seth Condrey · Cifrado Armónico
        ]
      ]
    ]
  ]
)

#set text(font: font-family, size: 9.3pt, fill: color-text-main, lang: "es")
#set par(leading: 0.85em)

// Espacio vertical explícito entre líneas sucesivas de una estrofa
#let line-space = 6.2pt

// ==============================================================================
// COMPONENTES Y FUNCIONES AUXILIARES
// ==============================================================================

// Insignia circular de flujo de sección (Arrangement roadmap)
#let circle-badge(label, col, exponent: none) = box[
  #box(
    circle(
      radius: 6.8pt,
      stroke: 1.2pt + col,
      fill: white,
      align(center + horizon)[
        #text(size: 6.2pt, weight: "bold", fill: col)[#label]
      ]
    )
  )
  #if exponent != none {
    place(
      top + right,
      dx: 4.8pt,
      dy: -3.8pt,
      text(size: 6pt, weight: "bold", fill: col)[#exponent]
    )
  }
]

// Tarjeta de sección estilo fieldset / legend
#let section-box(badge-text, title, col, body) = {
  v(8pt)
  block(
    width: 100%,
    stroke: 0.65pt + color-border,
    radius: 5.5pt,
    inset: (x: 11pt, top: 14pt, bottom: 9pt),
    fill: color-card-bg,
    breakable: false,
    [
      #place(
        top + left,
        dx: 4pt,
        dy: -20.5pt,
        rect(
          fill: white,
          outset: (x: 4pt, y: 0pt),
          stroke: none,
          [
            #grid(
              columns: (auto, auto),
              gutter: 5pt,
              align: horizon,
              circle-badge(badge-text, col),
              text(size: 8.6pt, weight: "bold", fill: color-secondary)[#title]
            )
          ]
        )
      )
      #body
    ]
  )
}

// Función acorde tipográficamente alineado sobre letra / sílaba
#let ch(acorde, letra) = box(
  baseline: 0%,
  stack(
    dir: ttb,
    spacing: 2.8pt,
    text(size: 8.5pt, weight: "bold", fill: color-primary, font: font-family)[#acorde],
    text(size: 9.3pt, fill: color-secondary, font: font-family)[#letra]
  )
)

// Acorde independiente en compás o síncopa
#let chord(acorde) = box(
  baseline: 0%,
  stack(
    dir: ttb,
    spacing: 2.8pt,
    text(size: 8.5pt, weight: "bold", fill: color-primary, font: font-family)[#acorde],
    v(0.95em)
  )
)

// ==============================================================================
// ENCABEZADO Y MAPA DE SECCIONES (ROADMAP)
// ==============================================================================

#grid(
  columns: (1fr, auto),
  align: (left + bottom, right + bottom),
  [
    #text(size: 22pt, weight: "bold", fill: color-secondary, tracking: -0.02em)[Majestad] \
    #v(2pt)
    #text(size: 9.5pt, fill: color-meta)[Seth Condrey]
  ],
  [
    #text(size: 7.8pt, fill: color-meta)[Página: 1/1] \
    #v(3pt)
    #text(size: 8.5pt, fill: color-secondary)[
      #text(fill: color-meta)[Tono:] Gb
      #h(9pt)
      #text(fill: color-meta)[Tempo:] 72
      #h(9pt)
      #text(fill: color-meta)[Time:] 4/4
    ]
  ]
)

#v(7pt)

// Barra de secuencia de la canción (Arrangement Roadmap)
#box(width: 100%)[
  #grid(
    columns: (auto,) * 10,
    gutter: 6.5pt,
    align: horizon,
    circle-badge("I", color-intro),
    circle-badge("V1", color-verso),
    circle-badge("PC", color-precoro),
    circle-badge("C", color-coro),
    circle-badge("V2", color-verso),
    circle-badge("PC", color-precoro),
    circle-badge("C", color-coro),
    circle-badge("P", color-puente),
    circle-badge("C", color-coro, exponent: "2"),
    circle-badge("O", color-outro)
  )
]

#v(2pt)

// ==============================================================================
// CUERPO MUSICAL EN 2 COLUMNAS BALANCEADAS (PÁGINA 1/1)
// ==============================================================================

#columns(2, gutter: 13pt)[

  // --- COLUMNA 1 ---

  #section-box("I", "INTRO", color-intro)[
    #v(2pt)
    #align(center)[
      #text(size: 9.5pt, weight: "bold", fill: color-primary)[| Gb - - - | Db/Gb - - - | Gb - - - | Db/Gb - - - |]
    ]
  ]

  #section-box("V1", "VERSO 1", color-verso)[
    #ch("Ebm")[Aquí] #ch("Db")[estoy] #ch("B")[rendido] #ch("Gb/Bb")[ante] tu #ch("B")[majestad] \ #v(line-space)
    #ch("Gb")[Por tu] #ch("Gb/Bb")[gracia] #ch("Gb")[hoy me] #ch("Ab")[das] #ch("Bb")[libertad] \ #v(line-space)
    #ch("Ebm")[Aquí] #ch("Db")[es-]#ch("B")[toy,] #h(5pt) #ch("Gb/Bb")[sabiendo] que soy #ch("B")[pecador] \ #v(line-space)
    #ch("Gb/Bb")[Cubierto] por tu #ch("Gb")[sangre,] #ch("Ab/C")[Señor]
  ]

  #section-box("PC", "PRE-CORO", color-precoro)[
    #chord("Bb") #ch("Ebm")[Y en-]#ch("Db")[con-]#ch("Gb")[tré el más grande a-]#ch("Ebm")[mor] #ch("Db")[por mí] \ #v(line-space)
    #ch("Gb")[Tú fuiste] a la #ch("Ab/C")[cruz,] tu vida #ch("B")[diste allí]
  ]

  #section-box("C", "CORO", color-coro)[
    #ch("Gb")[Ma-jes-]#ch("Db")[tad,] #h(20pt) #ch("Ebm")[Ma-jes-]#ch("B")[tad] \ #v(line-space)
    #ch("Gb")[Tu gracia me en-]#ch("Db")[contró como soy] \ #v(line-space)
    #ch("Ebm")[Vacío, más tu a-]#ch("B")[mor me llenó]
  ]

  #section-box("V2", "VERSO 2", color-verso)[
    #ch("Ebm")[Aquí] #ch("Db")[es-]#ch("B")[toy,] #h(5pt) #ch("Gb/Bb")[me humillo] ante el amor #ch("B")[que me das] \ #v(line-space)
    #ch("Gb/Bb")[Perdonado] para #ch("Ab/C")[yo perdonar]
  ]

  #colbreak()

  // --- COLUMNA 2 ---

  #section-box("PC", "PRE-CORO 2", color-precoro)[
    #chord("Bb/D") #ch("Ebm")[Y en-]#ch("Db")[con-]#ch("Gb")[tré el más grande a-]#ch("Ebm")[mor] #ch("Db")[por mí] #chord("Gb") \ #v(line-space)
    #ch("Ab/C")[Tú fuiste] a la cruz, tu vida #ch("B")[diste allí]
  ]

  #section-box("P", "PUENTE", color-puente)[
    #ch("Ebm")[Y en-]#ch("Db")[con-]#ch("Gb")[tré el más grande a-]#ch("Ebm")[mor] #ch("Db")[por Ti] #chord("Gb") \ #v(line-space)
    #ch("Ab/C")[Tú fuiste] a la cruz, tu vida #ch("B")[diste allí]
  ]

  #section-box("C", "CORO FINAL", color-coro)[
    #ch("Gb")[Ma-jes-]#ch("Db")[tad,] #h(20pt) #ch("Ebm")[Ma-jes-]#ch("B")[tad] \ #v(line-space)
    #ch("Gb")[Tu gracia me en-]#ch("Db")[contró como soy] \ #v(line-space)
    #ch("Ebm")[Vacío, más tu a-]#ch("B")[mor me llenó] \ #v(line-space)
    #ch("Gb")[Ma-jes-]#ch("Db")[tad,] #h(20pt) #ch("Ebm")[Ma-jes-]#ch("B")[tad] \ #v(line-space)
    #ch("Gb")[Por siempre tu bon-]#ch("Db")[dad me cambió] \ #v(line-space)
    #ch("Ebm")[Y en la presencia] de tu #ch("B")[majestad]
  ]

  #section-box("O", "OUTRO", color-outro)[
    #ch("Gb")[Ma-jes-]#ch("Db")[tad,] #h(20pt) #ch("Abm")[Ma-jes-]#ch("B")[tad] \ #v(line-space)
    #text(size: 8pt, fill: color-meta)[Acorde final sostenido:] #h(4pt) #text(size: 9.6pt, weight: "bold", fill: color-primary)[| Gb |]
  ]
]
