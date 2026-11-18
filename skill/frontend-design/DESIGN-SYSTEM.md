# Design System - AI Agent Intelligence Blog

## Color Palette

### Light Mode (default)
| Token | CSS Variable | Value | Usage |
|-------|-------------|-------|-------|
| Background | `--bg` | `#fff` | Page background |
| Surface | `--surface` | `#f8f9fa` | Nav bar, tables header |
| Text primary | `--text` | `#222` | Headings, body |
| Text secondary | `--text-secondary` | `#666` | Author line, footer |
| Accent | `--accent` | `#0969da` | Links, primary actions |
| Border | `--border` | `#e9ecef` | Dividers, table borders |
| Code bg | `--code-bg` | `#f1f3f4` | Inline code |
| Pre bg | `--pre-bg` | `#f8f9fa` | Code blocks |
| Blockquote border | `--bq-border` | `#0969da` | Quote left border |
| Blockquote bg | `--bq-bg` | `#f0f7ff` | Quote background |
| Footer text | `--footer-text` | `#999` | Footer links |

### Dark Mode (prefers-color-scheme)
| Token | CSS Variable | Value |
|-------|-------------|-------|
| Background | `--bg` | `#1a1a2e` |
| Surface | `--surface` | `#16213e` |
| Text primary | `--text` | `#e0e0e0` |
| Text secondary | `--text-secondary` | `#888` |
| Accent | `--accent` | `#58a6ff` |
| Border | `--border` | `#30363d` |
| Code bg | `--code-bg` | `#21262d` |
| Pre bg | `--pre-bg` | `#0d1117` |
| Blockquote border | `--bq-border` | `#58a6ff` |
| Blockquote bg | `--bq-bg` | `#16213e` |
| Footer text | `--footer-text` | `#666` |

## Typography
- **Font stack**: `-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif`
- **Body size**: `16px`, line-height `1.8`
- **H1**: `1.8em`, bold
- **H2**: `1.4em`, bold, bottom border
- **H3**: `1.2em`, bold
- **Code**: `0.9em`, monospace, `2px 6px` padding
- **Tables**: `14px`

## Spacing
- **Container max-width**: `900px`, centered
- **Page padding**: `20px` (mobile: `12px`)
- **Header margin**: `30px 0 20px`
- **H2 margin**: `28px 0 12px`
- **H3 margin**: `24px 0 10px`
- **Footer margin-top**: `40px`

## Navigation
- **Layout**: Horizontal flex, `gap: 16px`, wrapped
- **Active state**: Bold weight (no underline)
- **Mobile**: Column layout, `gap: 8px`

## Components

### Card Grid (for homepage sections)
Used in `docs/index.html` for section cards:
- Grid: `display: grid`, 2-column on desktop, 1-column on mobile
- Card: white background, border, rounded corners, hover shadow
- Card header: icon + title
- Card body: description + "最近更新" list

### Report Table
- Full width, `border-collapse: collapse`
- Zebra striping (even rows: `#f9f9f9`)
- Header: bold, `background: var(--surface)`

### Tag Badges
- `display: inline-block`, `padding: 2px 8px`, `border-radius: 12px`, `font-size: 0.8em`
- Use accent color background with white text

## Changelog

### v1.0 (2026-11-18) — Initial
- Basic light theme, horizontal nav, card-based homepage
- No dark mode support
- All styles inline in md-to-html.py
