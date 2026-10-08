// ==============================================================================
// SERENE PRECISION — HOJA DE CIFRADO PROFESIONAL (LEAD SHEET)
// ==============================================================================
// Sistema de Diseño: Serene Precision (DESIGN.md)
// Inspiración y Maquetación: Formato Chart / Lead Sheet de 1 Página (2 Columnas)
// Obra: Eres Santo (Pista)
// Artista / Intérprete: Christine D'Clario
// Tonalidad: Re Mayor (D Major) | Tempo: 70 BPM | Compás: 4/4
// ==============================================================================

#set document(
  title: "Eres Santo - Christine D'Clario (Cifrado Armónico)",
  author: "Christine D'Clario",
  keywords: ("cifrado", "lead sheet", "acordes", "typst", "eres santo", "christine d'clario", "ompix musical")
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
#let color-coro        = rgb("#c2410c") // Warm Accent (DESIGN.md Tertiary)
#let color-interludio  = rgb("#0284c7") // Sky/Teal
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
          © 2026 Ompix Musical · Todos los derechos reservados · *Eres Santo* — Christine D'Clario · Cifrado Armónico
        ]
      ]
    ]
  ]
)

#set text(font: font-family, size: 9.3pt, fill: color-text-main, lang: "es")
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
    #text(size: 22pt, weight: "bold", fill: color-secondary, tracking: -0.02em)[Eres Santo] \
    #v(2pt)
    #text(size: 9.5pt, fill: color-meta)[Christine D'Clario]
  ],
  [
    #text(size: 7.8pt, fill: color-meta)[Página: 1/1] \
    #v(3pt)
    #text(size: 8.5pt, fill: color-secondary)[
      #text(fill: color-meta)[Tono:] D
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
    columns: (auto,) * 9,
    gutter: 6.5pt,
    align: horizon,
    circle-badge("I", color-intro),
    circle-badge("V1", color-verso),
    circle-badge("C", color-coro),
    circle-badge("It", color-interludio),
    circle-badge("V2", color-verso),
    circle-badge("C", color-coro, exponent: "2"),
    circle-badge("P", color-puente),
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
        | D - - - | Bm - - - | G - - - | D - - - | \
        #v(3pt)
        | Bm - - - | G - - - | D - A - | Bm - G - | \
        #v(3pt)
        | D - A - | G - A - | D - - - |
      ]
    ]
  ]

  #section-box("V1", "VERSO 1", color-verso)[
    #ch("A")[Eres] digno de adoración \ #v(line-space)
    #ch("Bm")[Te doy la gloria] #h(4pt) #ch("G")[y te rindo honor] \ #v(line-space)
    #ch("D")[En tu presencia] #h(4pt) #ch("A")[es donde quiero estar] \ #v(line-space)
    #ch("G")[Por siempre] #ch("A")[contigo] #ch("D")[mi Rey]
  ]

  #section-box("C", "CORO", color-coro)[
    #ch("A")[Eres santo en este] #ch("Bm")[lugar] #ch("G")[y tu fuego con-]#ch("A")[sume el corazón] \ #v(line-space)
    #ch("D")[Eres santo] #ch("A")[en este lugar,] #ch("Bm")[aleluya,] #ch("G")[santo] #ch("A")[es el Se-]#ch("D")[ñor]
  ]

  #section-box("It", "INTERLUDIO", color-interludio)[
    #v(1.5pt)
    #align(center)[
      #text(size: 9.3pt, weight: "bold", fill: color-primary)[| Bm - - - | G - - - |]
    ]
  ]

  #section-box("V2", "VERSO 2", color-verso)[
    #ch("A")[Eres] digno de adoración \ #v(line-space)
    #ch("Bm")[Te doy la gloria] #h(4pt) #ch("G")[y te rindo honor] \ #v(line-space)
    #ch("D")[En tu presencia] #h(4pt) #ch("A")[es donde quiero estar] \ #v(line-space)
    #ch("G")[Por siempre] #ch("A")[contigo] #ch("D")[mi Rey]
  ]

  #colbreak()

  // --- COLUMNA 2 ---

  #section-box("C", "CORO 2", color-coro)[
    #ch("A")[Eres santo en este lugar] \ #v(line-space)
    #ch("Bm")[Y tu fuego] #ch("G")[consume el corazón] #h(6pt) #chord("Asus4") #chord("A") \ #v(line-space)
    #ch("D")[Eres santo] #ch("A")[en este lugar,] #ch("Bm")[aleluya,] #ch("G")[santo] #ch("A")[es el Se-]#ch("D")[ñor]
  ]

  #section-box("P", "PUENTE", color-puente)[
    #ch("Bb")[Santo,] #h(8pt) #ch("C")[santo,] #h(8pt) #ch("D")[santo] \ #v(line-space)
    #ch("Bb")[Santo,] #h(8pt) #ch("Am")[santo,] #h(8pt) #ch("D")[santo] \ #v(line-space)
    #ch("Bb")[Santo,] #h(8pt) #ch("C")[santo,] #h(8pt) #ch("Dsus4")[san-]#h(4pt)#ch("D")[to] \ #v(line-space)
    #ch("Bb")[Santo,] #h(8pt) #ch("Am")[santo,] #h(8pt) #ch("Dsus4")[santo] \ #v(line-space)
    #chord("D") #ch("Bb")[Santo,] #h(8pt) #ch("C")[santo,] #h(8pt) #ch("D")[santo] \ #v(line-space)
    #ch("Bb")[Santo,] #h(6pt) #ch("Am")[santo,] #h(6pt) #ch("Asus4")[san-]#h(4pt)#ch("A")[to,] #h(5pt) #ch("D")[eres santo]
  ]

  #section-box("C", "CORO FINAL", color-coro)[
    #ch("A")[En este lugar] #ch("Bm")[y tu fuego con-]#ch("G")[suma el co-]#ch("A")[razón, eres] #ch("D")[santo] \ #v(line-space)
    #ch("A")[En este lugar,] #ch("Bm")[aleluya,] #ch("G")[santo] #ch("A")[es el Se-]#ch("D")[ñor] \ #v(line-space + 2pt)
    #ch("G")[Aleluya,] #h(10pt) #ch("A")[sé exaltado,] #ch("Bm")[Señor] \ #v(line-space)
    #ch("F#m")[Ale-] #ch("G")[lu-]#ch("A")[ya]
  ]

  #section-box("O", "OUTRO", color-outro)[
    #v(1.5pt)
    #align(center)[
      #text(size: 8.8pt, weight: "bold", fill: color-primary)[
        | Asus4 - A - | D - - - | Bm - - - | G - - - | \
        #v(3pt)
        | D - - - | Bm - - - | G - - - |
      ]
    ] \ #v(line-space)
    #text(size: 8pt, fill: color-meta)[Acorde final sostenido:] #h(4pt) #text(size: 9.6pt, weight: "bold", fill: color-primary)[| D |]
  ]
]
