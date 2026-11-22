# CLAUDE.md — FindIt AI (Campus Lost & Found)

FindIt AI is a Hebrew, RTL lost-and-found service for university campuses with AI matching.
Design system: **Campus Compass** (`DESIGN.md`). Product name in UI: **FindIt AI**.

The project has four parts:
1. **App prototype**: four mobile screens as plain HTML + Tailwind CDN.
2. **Marketing sites** (אתרי תדמית): three alternative versions, each a Claude Design canvas with one responsive, interactive page.
3. **Prompts and screenshots**: for rebuilding the sites in other tools (Stitch, etc.).
4. **Claude Code setup**: subagents, a sound hook, and a Stitch MCP brief.

## Repository layout

```
CLAUDE.md, DESIGN.md, stitch-brief.md
app/            code.html, "code (1).html", "code (3).html", "code (5).html"
app/screens/    reference screenshots of the app screens (screen*.png)
sites/v1-clean/project/        canvas.json + Main.dc.html  (version 1)
sites/v2-bold/project/         canvas.json + Main.dc.html  (version 2)
sites/v3-noticeboard/project/  canvas.json + Main.dc.html  (version 3)
shots/  shots2/                prompts + screenshots for versions 1 and 2
.claude/agents/  .claude/hooks/  .claude/settings.json
```

The canvases live on claude.ai. The `sites/` folders are snapshots of their files, so re-export after editing a canvas in the browser.

## 1. App prototype (mobile)

| File | Screen | `shell-type` | Contents |
|---|---|---|---|
| `DESIGN.md` | Design system | — | Tokens in YAML front matter + prose rules. Source of truth |
| `code.html` | Home Feed (`home-feed`) | `mobile_tab` | Hero, lost/found CTAs, AI match banner, search, quick AI agent, categories, recent reports |
| `code (1).html` | My Reports (`my-reports`) | `mobile_tab` | AI alert, Reports/Notifications tabs, status filters, report cards, FAB |
| `code (3).html` | Report Item (`report-item`) | `mobile_stack` | Lost/found toggle, AI autofill + voice sim, report form, photo upload, match modal |
| `code (5).html` | AI Match Comparison | `mobile_stack` | Score breakdown, side-by-side reports, secure verification, return stepper |

Suggested renames: `home-feed.html`, `my-reports.html`, `report-item.html`, `match-comparison.html`.

**Navigation (`data-path`)**:
- Paths: `home-feed`, `search-browse`, `report-item`, `report-lost`, `report-found`, `matches-notifications`, `my-reports`, `profile-settings`.
- All links are `href="#"`.
- Not built yet: `search-browse`, `matches-notifications`, `profile-settings`.
- `report-lost` / `report-found` should map to `report-item` with the mode preselected.

Bottom tab bar (right → left): בית · חיפוש ומאגר · (+) דיווח חדש · התאמות · הדיווחים שלי.

## 2. Marketing sites (Claude Design canvases)

Each canvas has one artboard, `project/Main.dc.html`, and an index, `project/canvas.json`.
- The artboard is a PAGE: `expand: "fill"`, `is_interactive: true`, 1440 wide, fluid down to 390.
- Format: a Design Component `.dc.html`:
  - `<x-dc>` markup.
  - `<helmet>` for Rubik and base CSS.
  - A `class Component extends DCLogic` script.
- `{{holes}}` are lookups only. Compute everything in `renderVals()`.

| Version | Canvas title | Look | Hero headline |
|---|---|---|---|
| 1 · Clean | FindIt AI — אתר תדמית | Light, corporate: white cards, blue/teal, navy privacy band | "איבדתם משהו בקמפוס? אנחנו נחבר אתכם אליו." |
| 2 · Bold | FindIt AI — אתר תדמית חלופי | Editorial: navy `#0b1640` hero, giant type, numbered sections 01–04, teal `#86f2e4` single accent, pill buttons | "שום דבר לא באמת הולך לאיבוד." |
| 3 · Noticeboard | FindIt AI — אתר תדמית לוח מודעות | Campus corkboard: dotted board `#e8ecf4`, tilted paper notes with pins and tape, official "notice" for privacy | "מה שהיה פעם פתק על הלוח, עכשיו מוצא את הבעלים." |

**Shared report flow card.** Every version has it in the hero, with state inside the component:
- **Step 1:** asks "מצאת או איבדת?" with two buttons that set `mode` to `lost` or `found`.
- **Step 2:**
  - A description textarea, which is required. The submit button stays gray until there is text, and an inline error appears if the user submits empty.
  - An optional photo via `<input type="file">` and `URL.createObjectURL`, with a preview and a remove button. Revoke the object URLs on remove, reset and unmount.
- **Step 3:** a confirmation with a summary and a "report again" button.
- **Hero buttons:** "איבדתי / מצאתי" also set the mode and jump to `#start`.
- **Demo only:** nothing is sent to a server.

**Placeholders to fill** in every version: `[פרטי התמחור שלכם]`, `[רשימת המוסדות שלכם]`, `[האימייל שלכם]`. Don't invent stats or numbers.

## 3. Prompts and screenshots

| File | For |
|---|---|
| `shots/findit-site-prompts.md` | Version 1: shared base + per-section prompts + variations |
| `shots/findit-site-desktop.png`, `shots/findit-site-mobile.png` | Version 1 screenshots, 1440 and 390 |
| `shots2/findit-alt-site-prompts.md` | Version 2: same structure |
| `shots2/findit-alt-desktop.png`, `shots2/findit-alt-mobile.png` | Version 2 screenshots |
| `stitch-brief.md` | Brief for generating an alternative site in Google Stitch via the `stitch` MCP |

How screenshots are made:
1. Flatten the `.dc.html` to static HTML. Keep step 1 of the report card, drop the other `<sc-if>` states, and strip the `{{holes}}`.
2. Render it with headless Chrome at 1440 and 390 wide.
3. Trim the trailing background.

The prompts are written in English, and all site copy stays in Hebrew. When a site changes, update its prompts file.

## 4. Claude Code setup (`.claude/`)

- `agents/history-checker.md`: a read-only subagent that answers "what changed / when / which commit".
  - It uses `git log`, `-S`, `blame` and `diff`, and reports in Hebrew.
  - It reads the history of this repository.
- `agents/items-checker.md`: a read-only subagent that audits lost/found items in three ways:
  1. **Privacy:** names, contacts or secret marks that leaked into public content.
  2. **Report quality:** missing fields, vague descriptions, inconsistencies.
  3. **Possible matches:** a weighted score of category 30, color 25, location 20, time 15 and brand/marks 10. It shows only matches at 60% or above, each with a verification question.
- `hooks/win95-sound.sh` + `settings.json`: plays the Windows 95 "tada" sound on `Stop` and `SubagentStop`.
  - Windows/WSL use `C:\Windows\Media\tada.wav`.
  - macOS/Linux use `.claude/sounds/tada.wav` if present.
  - Override with `WIN95_SOUND`.
- **Stitch MCP:** connect it on the local machine with `claude mcp add --transport http --scope user stitch https://stitch.googleapis.com/mcp --header "X-Goog-Api-Key: <key>"`.
  - Never commit or paste the key.
  - The key that was pasted in chat should be rotated.

**Git:** this folder is a git repository (`main`).
- Commit after every meaningful change.
- No remote is set yet. To publish, add a GitHub remote and push.

## Conventions (all parts)

- `dir="rtl" lang="he"`. Icons sit at inline-start (right). The back arrow is `arrow_forward`. Use logical spacing.
- Font: Rubik. App icons are Material Symbols. Sites use inline stroke SVG. No emoji, no gradient washes.
- Use the token colors from `DESIGN.md`:

  | Token | Value |
  |---|---|
  | primary | `#00288e` / `#1e40af` |
  | secondary | `#006a61` |
  | teal light | `#86f2e4` / `#89f5e7` |
  | amber | `#ffdcc3` (text `#6e3900`) |
  | surface | `#f7f9fb` |
  | on-surface | `#191c1e` |
  | on-surface-variant | `#444653` |
  | hairline border | `#e2e8f0` |

- Status language:

  | Status | Color family | Indicator |
  |---|---|---|
  | אבד | rose/error | — |
  | התאמה אפשרית / בתהליך אימות | amber/tertiary | pulsing dot |
  | נמצא | teal/secondary | — |
  | הוחזר לבעליו | emerald | check |

- **Privacy:** public content never shows owner or finder names, contact details, or secret identifiers. Verification happens only in the secure flow.
- **AI is advisory:** always say "possible match" with a confidence %. A human makes the final decision.
- **Copy:** Hebrew, with neutral or plural address ("תארו", "בחרו"). Avoid mixed gender forms.
- **Accessibility:**
  - Use real `<button>`, `<a href>` and `<label>`.
  - Touch targets are at least 44px.
  - Text contrast is at least 4.5:1.
  - Put `aria-label` on icon-only buttons.
  - Don't block zoom.

## Known issues in the app prototype

These were confirmed by `items-checker`.

- **Privacy leaks:**
  - "כרטיס סטודנט - איתי כהן" in `code (1).html`.
  - "ע״י יואב מ." in `code (3).html`.
  - Secret marks shown in public cards: "מדבקת כוכב כסוף", and "צבע הדיסק-און-קי", which also doesn't fit the keys item.
- **Inconsistent demo data:**
  - The headphones match is shown as 92% / 88% / 96%. The 96% is on a wallet that has no lost report.
  - The location is given as library floor 2 vs "בניין 4".
  - The photo boost is given as 84% vs 74%.
  - The reports badge says 3, but there are 4 cards.
  - The TWS earbuds have no lost/found type.
- **Tailwind v3 classes that don't exist:** `w-22 h-22`, `w-15 h-15`, `h-13`, `shadow-xs`, `no-scrollbar`.
  - Home feed thumbnails render full-width as a result.
  - Fix with arbitrary values such as `w-[88px]`.
- **Radius drift:** `borderRadius` in the Tailwind config doesn't match `DESIGN.md`.
- **Color drift:** the prose colors in `DESIGN.md` differ from the tokens, and the spec's hairline borders are missing.
- **Duplication:** the Tailwind config is repeated in every file, and Material Symbols loads twice.
- **Header and logo:** some header titles are in English. The logo image is broken.
- **Gendered copy:** "לחצי", "ארנק עור לגבר" / "גברי".
- **Accessibility gaps:** `user-scalable=no`, `alert()` popups, a redundant FAB, and `data-alt` used instead of `alt`.
