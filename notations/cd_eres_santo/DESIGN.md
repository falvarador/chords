---
name: Serene Precision
colors:
  surface: '#f7f9fb'
  surface-dim: '#d8dadc'
  surface-bright: '#f7f9fb'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f4f6'
  surface-container: '#eceef0'
  surface-container-high: '#e6e8ea'
  surface-container-highest: '#e0e3e5'
  on-surface: '#191c1e'
  on-surface-variant: '#464555'
  inverse-surface: '#2d3133'
  inverse-on-surface: '#eff1f3'
  outline: '#777587'
  outline-variant: '#c7c4d8'
  surface-tint: '#4d44e3'
  primary: '#3525cd'
  on-primary: '#ffffff'
  primary-container: '#4f46e5'
  on-primary-container: '#dad7ff'
  inverse-primary: '#c3c0ff'
  secondary: '#565e74'
  on-secondary: '#ffffff'
  secondary-container: '#dae2fd'
  on-secondary-container: '#5c647a'
  tertiary: '#7e3000'
  on-tertiary: '#ffffff'
  tertiary-container: '#a44100'
  on-tertiary-container: '#ffd2be'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e2dfff'
  primary-fixed-dim: '#c3c0ff'
  on-primary-fixed: '#0f0069'
  on-primary-fixed-variant: '#3323cc'
  secondary-fixed: '#dae2fd'
  secondary-fixed-dim: '#bec6e0'
  on-secondary-fixed: '#131b2e'
  on-secondary-fixed-variant: '#3f465c'
  tertiary-fixed: '#ffdbcc'
  tertiary-fixed-dim: '#ffb695'
  on-tertiary-fixed: '#351000'
  on-tertiary-fixed-variant: '#7b2f00'
  background: '#f7f9fb'
  on-background: '#191c1e'
  surface-variant: '#e0e3e5'
typography:
  headline-xl:
    fontFamily: Geist
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
  headline-xl-mobile:
    fontFamily: Geist
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  headline-lg:
    fontFamily: Geist
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  headline-md:
    fontFamily: Geist
    fontSize: 20px
    fontWeight: '500'
    lineHeight: 28px
  headline-sm:
    fontFamily: Geist
    fontSize: 16px
    fontWeight: '600'
    lineHeight: 24px
  body-lg:
    fontFamily: Geist
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-md:
    fontFamily: Geist
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  body-sm:
    fontFamily: Geist
    fontSize: 12px
    fontWeight: '400'
    lineHeight: 16px
  label-lg:
    fontFamily: Geist
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 20px
  label-md:
    fontFamily: Geist
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
  label-sm:
    fontFamily: Geist
    fontSize: 11px
    fontWeight: '600'
    lineHeight: 14px
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  gutter: 1rem
  gutter-desktop: 1.5rem
  margin: 1rem
  margin-tablet: 1.5rem
  margin-desktop: 2.5rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2.5rem
---

## Brand & Style

This design system delivers an ultra-minimalist, high-utility workspace tailored for songwriters, producers, and instrumentalists navigating chord theory and harmonic progression. The aesthetic prioritizes absolute cognitive clarity: friction and decorative noise are eliminated in favor of pristine surfaces, exact micro-interactions, and instant legibility under varied lighting conditions (from stage prep to studio sessions).

### Visual Ethos
- **Essentialism:** Every element on screen directly serves harmonic input, progression analysis, or musical playback.
- **Micro-Delicacy:** Borders remain paper-thin and soft (`#e2e8f0`), letting spatial grouping, typographic cadence, and structural negative space define hierarchy.
- **Focus & Calm:** The UI recedes completely, elevating musical notation, chord boxes, and fret/key diagrams through quiet slate and crisp indigo accents.

## Colors

The palette revolves around pure luminosity, crisp graphite readability, and an intentional electric indigo focal color.

- **Primary (`#4f46e5`):** Reserved for active harmonic states, selected chord intervals, playhead triggers, and primary actions. It represents the musical voice within the interface.
- **Secondary (`#0f172a`):** Deep graphite/slate. Supplies stark contrast for chord titles, key signatures, active states, and structural icons without the jarring severity of pure `#000000`.
- **Neutral Palette:**
  - `Canvas / Base`: `#ffffff` for focused surfaces, modal sheets, and chord cards.
  - `Subtle Field`: `#f8fafc` for outer workspace backgrounds, inactive canvas tracks, and side drawers.
  - `Surface Muted`: `#f1f5f9` for active hover tracks, pressed states, and chord timeline slots.
  - `Hairline Delimiters`: `#e2e8f0` for crisp, 1px borders delineating structural zones and chord blocks.
- **Subdued Text / Meta:** `#64748b` for scale degree badges, fret numbers, roman numerals, and disabled states.

## Typography

The typographic system relies on **Geist** across all roles, capitalizing on its metric precision, neutral geometric construction, and tabular numeric performance—vital when rendering complex chord signatures, intervals, and time measures.

- **Scale Degree & Chord Nomenclature:** Musical root names and extensions use `headline-lg` or `headline-md` with `font-weight: 600` to ensure readability from an arm’s length.
- **Roman Numerals & Inversions:** Set using `label-md` or `label-sm` with tight letter tracking (`-0.01em`) and muted tone (`#64748b`).
- **Interactive UI & Notation:** Strict alignment to baseline grids prevents jitter when cycling chord extensions or altering tempos.

## Layout & Spacing

A disciplined, fluid 12-column grid provides the backbone on desktop and tablet, converting to an unobstructed single-column vertical flow on mobile screens.

- **Canvas Organization:**
  - Desktop workspaces feature a pinned utility header (BPM, key selector, export actions), a horizontally scrollable chord sequencer belt (`gap: space-md`), and a lower analytical panel (fretboard, keyboard view, voice-leading inspector).
  - Mobile screens stack the timeline above the playable fret/piano interface, prioritizing touch target sizes of at least 44px for chords and note triggers.
- **Spacing Ethos:**
  - Abundant negative space (`space-xl` between logical regions) keeps musical arrangements from feeling cramped.
  - Component padding (`space-xs` to `space-md`) ensures dense theoretical information remains effortlessly parsable.

## Elevation & Depth

To maintain an authentic ultra-minimalist philosophy, depth is established strictly through **tonal surfaces** and **whisper-light hairlines** rather than multi-layered drop shadows.

- **Level 0 (Workspace Base):** `#f8fafc`. Uniform foundation for canvas views.
- **Level 1 (Card & Chord Tiles):** `#ffffff` surfaced with a crisp 1px border (`#e2e8f0`). No drop shadows in static state.
- **Level 2 (Active/Hover States):** A slight border shift to `#4f46e5` paired with an ultra-subtle ambient lift: `box-shadow: 0 1px 3px 0 rgba(15, 23, 42, 0.05)`.
- **Level 3 (Overlays, Modals, Popovers):** Pure `#ffffff` surface with a delicate 1px border (`#e2e8f0`) and an ambient, low-opacity drop: `box-shadow: 0 10px 25px -5px rgba(15, 23, 42, 0.06), 0 8px 10px -6px rgba(15, 23, 42, 0.04)`.

## Shapes

The design uses gentle, controlled corner rounding (`roundedness: 1`, mapping to `4px` standard, `8px` for larger containers) to produce an engineered, clean look without childish or overly pill-shaped forms.

- **Inputs, Buttons, Chord Tiles:** `rounded` (0.25rem / 4px) offers sharp architectural precision.
- **Analytical Cards, Sheets, Panels:** `rounded-lg` (0.5rem / 8px) softens macro-boundaries while holding geometric rigor.
- **Audio & Notation Nodes:** Dots on fretboards or circle-of-fifths nodes employ fully circular borders (`rounded-full`) to contrast against rectilinear card blocks.

## Components

### Buttons
- **Primary:** Solid `#4f46e5`, text `#ffffff`, `border: none`, `rounded` (4px). On hover: `#4338ca`. Active: micro-scale to 0.98.
- **Secondary / Ghost:** Transparent background with 1px border (`#e2e8f0`), text `#0f172a`. Hover: background `#f1f5f9`.
- **Play/Transport Toggle:** Minimalist squared button with subtle glyphs, transitioning to `#0f172a` when playing.

### Chord Progression Cards (Domain-Specific)
- Clean white tile (`#ffffff`), 1px border (`#e2e8f0`), `rounded` (4px), padding `space-md`.
- Displays the primary chord name (e.g., `Cmaj7`) in `headline-md` (`#0f172a`), harmonic function badge (e.g., `IM7`) in `label-sm` (`#64748b`), and rhythmic duration bar at the bottom edge.
- Selected state swaps the border to `2px solid #4f46e5` without altering layout sizing.

### Chips & Tonic Selectors
- Compact interactive pills for Key, Scale, and Mode selection.
- Default: `#ffffff` background, 1px border (`#e2e8f0`), text `label-md` (`#64748b`).
- Active / Selected: Background `#eef2ff`, border `1px solid #4f46e5`, text `#4f46e5` with `font-weight: 600`.

### Input Fields
- Flat `#ffffff` field, border `1px solid #e2e8f0`, text `#0f172a`, placeholder `#94a3b8`.
- Focus state: Border transitions to `#4f46e5` with a subtle ring: `0 0 0 1px #4f46e5`. No heavy glowing halos.

### Checkboxes & Segmented Toggles
- Square checkbox (`rounded: 3px`), unchecked border `#cbd5e1`, checked fill `#4f46e5` with white checkmark.
- Segmented switches (e.g., Roman Numeral vs. Absolute Notation toggle) use an enclosing `#f1f5f9` track with a floating `#ffffff` selector card.

### Piano Roll / Fretboard Visualizer
- Minimalist line-drawn frets/strings or crisp rectangular piano keys using `#e2e8f0` dividers.
- Active intervals marked by small `#4f46e5` pills with white scale-degree numbers inside.