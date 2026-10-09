# Design

## Context

The repository contains chord sheet implementations (`notations/sc_majestad/cancion.typ` and `notations/cd_eres_santo/eres-santo.typ`) that establish the Serene Precision design language in Typst. For *Furious* by Jeremy Riddle, the song must be authored in `notations/jr_furious/furious.typ` based on the chord transcription in `cifrado-original.pdf` (Key of D♭ Major, 70 BPM, 4/4) and compiled directly to `notations/jr_furious/furious.pdf`.

## Goals / Non-Goals

**Goals:**
- Deliver a clean, professional, 1-page Typst lead sheet in 2 balanced columns.
- Faithfully preserve all chords, inversions, and rhythmic cues from `cifrado-original.pdf` (`Gb`, `Db`, `Bbm`, `Ab`, `Ebm`, `Db/F`, `Gb/Bb`, `Ab/C`).
- Ensure all sections are encapsulated in unbroken cards (`section-box`) styled to match `archivo-modelo.pdf`.
- Include full metadata header and circular arrangement roadmap.
- Display official footer branding: `© 2026 Ompix Musical · Todos los derechos reservados · Furious — Jeremy Riddle · Cifrado Armónico`.

**Non-Goals:**
- Multi-page arrangement or staff notation.
- Transposition to other keys (retaining original D♭ Major as transcribed).

## Decisions

### Decision 1: Two-Column Section Distribution
- **Choice**:
  - Column 1: `INTRO`, `VERSE 1`, `CHORUS 1`, `VERSE 2`.
  - Column 2: `CHORUS 2`, `BRIDGE`, `CHORUS 3`, `OUTRO`.
- **Rationale**: Keeps vertical heights of both columns balanced at ~13-15 lines each, preventing page spillover on standard Letter size.
- **Alternatives considered**: Single column (would require 2-3 pages, violating tablet reading ergonomics).

### Decision 2: Stacked Syllable Function (`#ch`) with Spacing Guard
- **Choice**: Define `#let ch(acorde, letra) = box(...)` with `stack(dir: ttb)` and manual `#h(...)` spacing guards when two short chords sit on adjacent syllables (e.g. `Db/F` and `Gb`).
- **Rationale**: Prevents chords from colliding horizontally while anchoring each chord to its lyric onset.

### Decision 3: Rhythmic Delimiters in Measures
- **Choice**: Format instrumentals and intro bars with clean rhythmic dashes `| Gb - - - | Db - - - |`.
- **Rationale**: Conforms to standard chord chart conventions agreed upon in earlier charts.

## Risks / Trade-offs

- [Risk: Dense lyrics causing column overflow] → Mitigation: Standardize font size at `9.3pt`, interline spacing at `6.0pt`, and ensure consistent section paddings.
- [Risk: Typst font warnings on macOS] → Mitigation: Use system-native font family `("Helvetica Neue", "Arial")`.
