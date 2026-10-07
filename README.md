# Chords 🎵📄

Plantilla editorial en **Typst** para diseñar hojas de acordes y cifrados (*lead sheets / chord charts*) profesionales, con tipografía refinada, alineación precisa de acordes sobre sílabas y branding personal personalizable. Diseñado para lectura cómoda en atril/tablet (forScore, iPad) e impresión en PDF de alta fidelidad.

---

## ✨ Características

- **Alineación Sílaba-Acorde Milimétrica:** Implementación de funciones nativas en Typst (`#ch("Acorde")[Sílaba]`) para evitar desfases tipográficos.
- **Identidad Visual Desacoplada (`DESIGN.md`):** Configura colores primarios, acentos, tipografía y márgenes desde un único archivo de especificación.
- **Optimizado para Atril y Tablet:** Distribución vertical y soporte de 2 columnas para maximizar el espacio y evitar saltos de página indeseados a mitad de estrofa (`breakable: false`).
- **Metadatos Musicales:** Header estructurado con Tono (Key), Tempo (BPM), Métrica (Time Signature), Capo y afinación.
- **Compilación Instantánea:** Generación de PDFs vectoriales limpios en milisegundos.

---

## 📁 Estructura del Proyecto

```text
├── DESIGN.md           # Guía de estilo visual y especificaciones de marca
├── template.typ        # Función principal / plantilla reutilizable de Typst
├── songs/              # Canciones en formato .typ
│   └── mi-cancion.typ
├── dist/               # Salida de los archivos PDF generados
└── README.md