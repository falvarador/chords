// ==============================================================================
// SERENE PRECISION — HOJA DE CIFRADO PROFESIONAL (LEAD SHEET)
// ==============================================================================
// Sistema de Diseño: Serene Precision (DESIGN.md)
// Inspiración y Maquetación: Formato Chart / Lead Sheet de 1 Página (2 Columnas)
// Obra: Furious
// Artista / Compositor: Jeremy Riddle
// Tonalidad: Re♭ Mayor (Db Major) | Tempo: 70 BPM | Compás: 4/4
// ==============================================================================

#set document(
  title: "Furious - Jeremy Riddle (Cifrado Armónico)",
  author: "Jeremy Riddle",
  keywords: ("cifrado", "lead sheet", "acordes", "typst", "furious", "jeremy riddle", "ompix musical")
)

// --- DESIGN TOKENS (DESIGN.md) ---
#let color-primary          = rgb("#4f46e5") // Electric Indigo (Armonía / Enfoque)
#let color-secondary        = rgb("#0f172a") // Deep Slate (Títulos / Contraste)
#let color-text-main        = rgb("#191c1e") // Letra / Texto de lectura
#let color-meta             = rgb("#64748b") // Metadatos
#let color-border           = rgb("#d8dadc") // Delimitador sutil de tarjeta
#let color-card-bg          = rgb("#ffffff") // Superficie Nivel 1 (Canvas)
#let color-surface-muted    = rgb("#f8fafc") // Superficie Nivel 0 (Workspace base)

// Colores de insignias de sección (acordes con la paleta de Serene Precision)
#let color-intro       = rgb("#0284c7") // Sky/Teal
#let color-verso       = rgb("#4f46e5") // Electric Indigo
#let color-precoro     = rgb("#7c3aed") // Violet
#let color-coro        = rgb("#c2410c") // Warm Accent (Amber / DESIGN.md Tertiary)
#let color-puente      = rgb("#0d9488") // Emerald / Teal
#let color-outro       = rgb("#475569") // Slate

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
          © 2026 Ompix Musical · Todos los derechos reservados · *Furious* — Jeremy Riddle · Cifrado Armónico
        ]
      ]
    ]
  ]
)

#set text(font: font-family, size: 9.3pt, fill: color-text-main, lang: "en")
#set par(leading: 0.85em)

// Espacio vertical explícito entre líneas sucesivas de una estrofa
#let line-space = 6.0pt

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
  v(7.5pt)
  block(
    width: 100%,
    stroke: 0.65pt + color-border,
    radius: 5.5pt,
    inset: (x: 10.5pt, top: 13.5pt, bottom: 8.5pt),
    fill: color-card-bg,
    breakable: false,
    [
      #place(
        top + left,
        dx: 4pt,
        dy: -20.0pt,
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
    #text(size: 22pt, weight: "bold", fill: color-secondary, tracking: -0.02em)[Furious] \
    #v(2pt)
    #text(size: 9.5pt, fill: color-meta)[Jeremy Riddle]
  ],
  [
    #text(size: 7.8pt, fill: color-meta)[Página: 1/1] \
    #v(3pt)
    #text(size: 8.5pt, fill: color-secondary)[
      #text(fill: color-meta)[Tono:] Db
      #h(9pt)
      #text(fill: color-meta)[Tempo:] 70
      #h(9pt)
      #text(fill: color-meta)[Time:] 4/4
    ]
  ]
)

#v(7pt)

// Barra de secuencia de la canción (Arrangement Roadmap)
#box(width: 100%)[
  #grid(
    columns: (auto,) * 8,
    gutter: 6.5pt,
    align: horizon,
    circle-badge("I", color-intro),
    circle-badge("V1", color-verso),
    circle-badge("C", color-coro),
    circle-badge("V2", color-verso),
    circle-badge("C", color-coro, exponent: "2"),
    circle-badge("B", color-puente),
    circle-badge("C", color-coro, exponent: "3"),
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
    #v(1.5pt)
    #align(center)[
      #text(size: 8.8pt, weight: "bold", fill: color-primary)[
        | Gb - - - | Db - - - | Gb - - - | Db - - - |
      ]
    ]
  ]

  #section-box("V1", "VERSE 1", color-verso)[
    #ch("Gb")[Nothing can tear] #ch("Bbm")[us apart] \ #v(line-space)
    #ch("Gb")[The grip of His] #ch("Bbm")[mighty love] \ #v(line-space)
    #ch("Gb")[We've only glimpsed His vast affection] \ #v(line-space)
    #ch("Bbm")[Heard whispers of His heart and passion]
  ]

  #section-box("C", "CHORUS", color-coro)[
    #ch("Ab")[It's pouring] #ch("Gb")[out] \ #v(line-space)
    #ch("Db")[His love is deep,] His love is wide and it #ch("Gb")[covers us] \ #v(line-space)
    #ch("Db")[His love is fierce,] His love is strong and it's #ch("Gb")[furious] \ #v(line-space)
    #ch("Db")[His love is sweet,] His love is wild and it's waking us to life
  ]

  #section-box("V2", "VERSE 2", color-verso)[
    #ch("Gb")[The Father loves] and sends #ch("Bbm")[His Son] \ #v(line-space)
    #ch("Gb")[The Son lays down] His life #ch("Bbm")[for all] \ #v(line-space)
    #ch("Gb")[He lavishes His love upon us] \ #v(line-space)
    #ch("Bbm")[He calls us now His sons and daughters] \ #v(line-space)
    #ch("Ab")[He's reaching out]
  ]

  #colbreak()

  // --- COLUMNA 2 ---

  #section-box("C", "CHORUS 2", color-coro)[
    #ch("Gb")[His love is deep,] His love is wide and it covers us \ #v(line-space)
    #ch("Db")[His love is fierce,] His love is strong and it's #ch("Gb")[furious] \ #v(line-space)
    #ch("Db")[His love is sweet,] His love is wild and it's #ch("Gb")[waking us to life] \ #v(line-space)
    #ch("Db")[His love is deep,] His love is wide and it covers us \ #v(line-space)
    #ch("Gb")[His love is fierce,] His love is strong, it is furious
  ]

  #section-box("B", "BRIDGE", color-puente)[
    #ch("Ebm")[His love is sweet,] His love is wild, it's #ch("Bbm")[waking us to life] \ #v(line-space)
    #ch("Ab")[Yeah, You're waking my heart to life] \ #v(line-space)
    #ch("Gb")[You're waking me to life] with #ch("Bbm")[Your love] \ #v(line-space)
    #ch("Ab")[With Your love,] #ch("Bbm/Db")[with Your] #ch("Ab")[love] #ch("Gb")[...] #chord("Db") #chord("Gb")
  ]

  #section-box("C", "CHORUS 3", color-coro)[
    #ch("Db")[Your love is deep,] Your love is wide and it #ch("Gb")[covers us] \ #v(line-space)
    #ch("Db")[Your love is fierce,] Your love is strong, it is #ch("Gb")[furious] \ #v(line-space)
    #ch("Db")[Your love is deep,] Your love is wild and it covers us \ #v(line-space)
    #ch("Db")[Your love is fierce,] Your love is strong and it's #ch("Db/F")[fu-] #h(3pt) #ch("Gb")[rious] \ #v(line-space)
    #ch("Ab")[Your love is sweet,] #ch("Gb/Bb")[Your love is wild,] #ch("Ab/C")[waking us] to #ch("Db")[love]
  ]

  #section-box("O", "OUTRO", color-outro)[
    #ch("Db")[Oh, Your sweet amazing love,] #ch("Gb")[waking us to life] \ #v(line-space)
    #ch("Db")[Wake your heart up tonight] \ #v(line-space)
    #text(size: 8pt, fill: color-meta)[Acorde final sostenido:] #h(4pt) #text(size: 9.6pt, weight: "bold", fill: color-primary)[| Db |]
  ]
]
