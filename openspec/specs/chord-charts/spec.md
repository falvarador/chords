# Chord Charts

## Purpose

Enables creation and compilation of standardized, single-page Typst lead sheets and chord charts optimized for tablet and stand reading, conforming to the Serene Precision design guidelines.

## Requirements

### Requirement: Single-Page Tablet Layout
The system SHALL compile the chord sheet into exactly one page (`us-letter`) without content overflow, wrapping long lines into two balanced columns and protecting musical sections with unbreakable block structures.

#### Scenario: Compiling Furious chord chart
- **WHEN** `typst compile furious.typ furious.pdf` is executed
- **THEN** the compiler produces a valid PDF file with a total page count of 1 and no text clipped or overflowing into a second page

### Requirement: Harmonic Alignment Over Syllables
The chord notation system SHALL visually place chords directly above the target syllables without relying on whitespace strings, preventing horizontal shift across devices and font sizes.

#### Scenario: Rendering chord on lyric syllable
- **WHEN** a lyric token is formatted using `#ch("Chord")[Syllable]`
- **THEN** the chord text is vertically stacked and centered or aligned directly above the syllable in the designated primary color (`#4f46e5`) and bold weight

### Requirement: Arrangement Sequence and Metadata Header
The document header SHALL display the song title, artist name, key signature, tempo, metric time signature, page number (`Página: 1/1`), and an arrangement roadmap showing circular section badges in chronological order.

#### Scenario: Displaying Furious metadata
- **WHEN** the document header renders
- **THEN** it displays "Furious", "Jeremy Riddle", Key "Db", Tempo "70", Time "4/4", and an arrangement roadmap with badges corresponding to Intro, Verses, Choruses, Bridge, and Outro

### Requirement: Section Card Styling
Every song section SHALL be encased in a fieldset/legend styled card with a subtle border (`#d8dadc`), rounded corners (`5.5pt`), and an overlapping section title badge cutout.

#### Scenario: Rendering section blocks
- **WHEN** sections such as Verse, Chorus, Bridge, and Outro are rendered
- **THEN** each section appears in a distinct card container with its circular badge and section name anchored on the top border
