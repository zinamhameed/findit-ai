---
name: Campus Compass
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
  on-surface-variant: '#444653'
  inverse-surface: '#2d3133'
  inverse-on-surface: '#eff1f3'
  outline: '#757684'
  outline-variant: '#c4c5d5'
  surface-tint: '#3755c3'
  primary: '#00288e'
  on-primary: '#ffffff'
  primary-container: '#1e40af'
  on-primary-container: '#a8b8ff'
  inverse-primary: '#b8c4ff'
  secondary: '#006a61'
  on-secondary: '#ffffff'
  secondary-container: '#86f2e4'
  on-secondary-container: '#006f66'
  tertiary: '#532a00'
  on-tertiary: '#ffffff'
  tertiary-container: '#743d00'
  on-tertiary-container: '#ffa85d'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#dde1ff'
  primary-fixed-dim: '#b8c4ff'
  on-primary-fixed: '#001453'
  on-primary-fixed-variant: '#173bab'
  secondary-fixed: '#89f5e7'
  secondary-fixed-dim: '#6bd8cb'
  on-secondary-fixed: '#00201d'
  on-secondary-fixed-variant: '#005049'
  tertiary-fixed: '#ffdcc3'
  tertiary-fixed-dim: '#ffb77d'
  on-tertiary-fixed: '#2f1500'
  on-tertiary-fixed-variant: '#6e3900'
  background: '#f7f9fb'
  on-background: '#191c1e'
  surface-variant: '#e0e3e5'
typography:
  headline-xl:
    fontFamily: Rubik
    fontSize: 40px
    fontWeight: '700'
    lineHeight: 52px
  headline-xl-mobile:
    fontFamily: Rubik
    fontSize: 30px
    fontWeight: '700'
    lineHeight: 40px
  headline-lg:
    fontFamily: Rubik
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 42px
  headline-lg-mobile:
    fontFamily: Rubik
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  headline-md:
    fontFamily: Rubik
    fontSize: 22px
    fontWeight: '600'
    lineHeight: 30px
  headline-sm:
    fontFamily: Rubik
    fontSize: 18px
    fontWeight: '600'
    lineHeight: 26px
  body-lg:
    fontFamily: Rubik
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 26px
  body-md:
    fontFamily: Rubik
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 22px
  body-sm:
    fontFamily: Rubik
    fontSize: 12px
    fontWeight: '400'
    lineHeight: 18px
  label-lg:
    fontFamily: Rubik
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
  label-md:
    fontFamily: Rubik
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
  label-sm:
    fontFamily: Rubik
    fontSize: 10px
    fontWeight: '500'
    lineHeight: 14px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  gutter: 1.25rem
  gutter-mobile: 0.75rem
  margin: 2rem
  margin-mobile: 1rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2.5rem
---

## Brand & Style

The design system embodies a modern, collegiate, and reliable aesthetic tailored to university students and staff navigating the stress of lost personal belongings. Losing an essential device, notebook, or set of keys in a bustling campus creates anxiety; this interface counters that friction with empathy, clarity, and reassuring technological precision.

The design movement combines **Modern High-Clarity Corporate** with **Soft Academic Warmth**:
- **Reliable & Authoritative:** Instills immediate trust that reports are verified and campus-backed.
- **Approachable & Optimistic:** Employs soft geometry, fluid micro-interactions, and supportive status messaging to keep interactions stress-free.
- **RTL-Native Ergonomics:** Built specifically for a right-to-left layout hierarchy, prioritizing rightward focal anchors, localized reading paths, and flipped directional affordances.

## Colors

The palette balances collegiate trust with vibrant, modern discovery accents. 

- **Primary (`#1E40AF` / `#2563EB`):** Deep Trust Blue acts as the visual bedrock. It is reserved for primary navigation, critical interactive buttons, and verified academic markers.
- **Secondary (`#0D9488` / `#14B8A6`):** Vibrant Teal acts as the "match" and AI discovery agent. It highlights successful automated matches, search filters, and energetic callouts.
- **Status Accents:**
  - *Rose (`#E11D48`):* Signals active lost reports requiring attention.
  - *Amber (`#D97706`):* Signals pending verification and AI review matches.
  - *Emerald (`#059669`):* Signals resolved, safely returned, and archived items.
- **Neutrals & Surfaces (`#F8FAFC` to `#FFFFFF`):** High-clarity off-white slate foundation paired with soft borders (`#E2E8F0`) keeps contrast gentle under classroom fluorescent lights and direct sunlight alike.

## Typography

The design system standardizes on **Rubik** for all Hebrew and alphanumeric typographic layers. Rubik’s subtle geometric curvature strikes the ideal tone between modern technical capability and friendly campus legibility.

- **RTL Baseline Alignment:** Hebrew requires generous line-height ratios (1.4–1.6×) compared to Latin text to prevent crowding on diacritics and vertical balance issues.
- **Hierarchy Tiers:** Headlines establish confident structure using bold weights (`700`), while body copy prioritizes open, scannable letterforms (`400`).
- **Data Densities:** Status labels and metadata chips make use of medium weights (`500` / `600`) at smaller sizes to guarantee legibility inside compact item cards.

## Layout & Spacing

Layouts conform to a structured fluid grid system engineered for cross-device responsiveness with an intrinsic `dir="rtl"` directional structure:

- **Desktop (1024px+):** 12-column grid, 2rem margins, 1.25rem gutters. Max content container is constrained to 1280px to maintain comfortable scan lines.
- **Tablet (768px - 1023px):** 8-column grid with 1.5rem margins.
- **Mobile (<768px):** 4-column grid, 1rem margins, 0.75rem gutters for maximum touch efficiency on student phones on the move.
- **Directional Spacing:** Margins and paddings follow logical spacing rules (`margin-inline-start`, `padding-inline-end`) ensuring seamless alignment across right-to-left layout switches.

## Elevation & Depth

Visual hierarchy leverages **Tonal Layering** paired with **Subtle Tinted Shadows** to deliver tactile depth without visual clutter:

- **Base Layer (Level 0):** Pure slate backdrop (`#F8FAFC`).
- **Surface Layer (Level 1):** Solid white card containers (`#FFFFFF`) framed with a subtle border (`1px solid #E2E8F0`).
- **Interactive Hover Layer (Level 2):** Subtle elevation using a diffuse blue-tinted shadow: `0 8px 24px -4px rgba(30, 64, 175, 0.08)`.
- **Floating Overlays & Modals (Level 3):** Dropdown sheets, match drawers, and search modals utilize `0 20px 32px -8px rgba(15, 23, 42, 0.12)` with light background blur (`backdrop-filter: blur(8px)`).

## Shapes

The design system uses a rounded shape language (`roundedness: 2`, base 0.5rem / 8px) with dedicated full-radius treatment for status pills.

- **Standard Containers & Cards:** `0.75rem` to `1rem` corner rounding, delivering an approachable, non-intimidating appearance.
- **Interactive Badges & Status Chips:** Full pill radius (`9999px`) to create clear separation between static rectangular content blocks and active state tags.
- **Input Fields & Action Controls:** Balanced `0.5rem` rounding to preserve input field distinction and thumb targets.

## Components

- **Buttons:**
  - *Primary:* `#1E40AF` solid fill, white text, 8px corner radius, 12px vertical / 20px horizontal padding.
  - *Secondary / AI Match:* `#0D9488` background or subtle teal wash (`#CCFBF1` surface with `#0F766E` text).
  - *Icons:* Placed at the inline-start position (on the right in Hebrew RTL layouts).
- **Status Chips & Badges:**
  - Pill-shaped (`rounded-full`) with high-contrast text and low-opacity backgrounds:
    - *Lost:* `#FFE4E6` background, `#BE123C` text, dot indicator.
    - *Pending Match:* `#FEF3C7` background, `#B45309` text, pulsing animation indicator.
    - *Returned:* `#D1FAE5` background, `#047857` text, checkmark indicator.
- **Cards (Item Listing):**
  - Crisp `#FFFFFF` surface with `#E2E8F0` hairline border and 12px radius. Image preview on the right, textual metadata, status badge, and location tag arranged sequentially from right to left.
- **Input Fields & Search:**
  - Background `#FFFFFF` with `#CBD5E1` border, transitioning to a focused 2px ring in primary blue (`#2563EB`). Magnifier and category icons sit at the right edge; clear buttons sit at the left edge.
- **Checkboxes & Radios:**
  - 20px accessible touch footprint, soft 4px radius for checkboxes, `#1E40AF` checked state with clear white confirmation checkmark.
- **AI Match Card (Campus Specific):**
  - Border accented with a teal gradient highlight (`#14B8A6`), including confidence score percentage badge, photo comparison slider, and rapid "Confirm / Deny" dual action footer.