# Proposal

## Why

Currently, the chord chart repository contains lead sheets for *Majestad* (Seth Condrey) and *Eres Santo* (Christine D'Clario), but lacks a professional, high-fidelity lead sheet for Jeremy Riddle's worship anthem *Furious*. Providing a standardized, 1-page Typst chart for *Furious* ensures worship leaders and instrumentalists have stage-ready, tablet-optimized notation matching the project's Serene Precision design system.

## What Changes

- Create the target folder `notations/jr_furious` (if not already prepared) with all required inputs and assets.
- Author `furious.typ` following the exact visual architecture of `archivo-modelo.pdf` and style rules of `DESIGN.md`.
- Extract and map the complete lyrics and harmonic progression of *Furious* (in D♭ Major / C# minor context, 4/4, 70 BPM) from `cifrado-original.pdf`, including slash chords, inversions, and section progression.
- Implement millimeter-accurate syllable-to-chord vertical stacking (`#ch("Acorde")[Sílaba]`) without horizontal drift or chord collisions.
- Compile and verify a crisp, 1-page PDF (`furious.pdf`) with protected section blocks (`breakable: false`).

## Capabilities

### New Capabilities
- `chord-charts`: Creation and compilation of high-fidelity, single-page Typst chord charts and lead sheets conforming to `DESIGN.md`.

### Modified Capabilities
<!-- None -->

## Impact

- New notation files in `notations/jr_furious/` (`furious.typ` and `furious.pdf`).
- No breaking changes or regressions to existing charts in `notations/sc_majestad` or `notations/cd_eres_santo`.
- Dependencies: Typst CLI (compilation) and fonts defined in `DESIGN.md` (Helvetica Neue / Arial).
