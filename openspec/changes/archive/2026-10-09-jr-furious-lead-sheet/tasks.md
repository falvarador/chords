# Tasks

## 1. Workspace & Source Preparation

- [x] 1.1 Verify assets in `notations/jr_furious/` (`DESIGN.md`, `cifrado-original.pdf`, `archivo-modelo.pdf`) and confirm harmonic mapping in D♭ Major
- [x] 1.2 Inspect exact chord progressions, slash chords (`Db/F`, `Gb/Bb`, `Ab/C`), and lyrics of Jeremy Riddle's *Furious*

## 2. Typst Template & Notation Development

- [x] 2.1 Author `notations/jr_furious/furious.typ` with Serene Precision tokens (`#4f46e5`, `#0f172a`, `#64748b`, `#d8dadc`), font configuration, and page geometry
- [x] 2.2 Implement core components: `#circle-badge`, fieldset-style `#section-box` with `breakable: false`, `#ch` vertical stack, and `#chord` standalone beat
- [x] 2.3 Construct the document header (`Furious`, `Jeremy Riddle`, Tono `Db`, Tempo `70`, Time `4/4`, `Página: 1/1`) and chronological arrangement roadmap
- [x] 2.4 Implement Column 1 sections: `INTRO` (`| Gb - - - | Db - - - |`), `VERSE 1` (*"Nothing can tear us apart..."*), `CHORUS 1` (*"His love is deep..."*), and `VERSE 2` (*"The Father loves and sends His Son..."*)
- [x] 2.5 Implement Column 2 sections: `CHORUS 2`, `BRIDGE` (*"His love is sweet... waking us to life..."*), `CHORUS 3` (*"Your love is deep..."* with slash progressions `Db/F`, `Gb/Bb`, `Ab/C`), and `OUTRO` (*"Wake your heart up tonight"* / sustained `Db`)
- [x] 2.6 Add standardized footer: `© 2026 Ompix Musical · Todos los derechos reservados · Furious — Jeremy Riddle · Cifrado Armónico`

## 3. Compilation & Validation

- [x] 3.1 Compile `furious.typ` to `furious.pdf` via `typst compile notations/jr_furious/furious.typ notations/jr_furious/furious.pdf` and verify zero errors
- [x] 3.2 Verify generated PDF is strictly 1 single page without text clipping or vertical overflow
