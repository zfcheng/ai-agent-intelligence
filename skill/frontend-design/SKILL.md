---
name: frontend-design
description: Frontend design iteration for ai-agent-intelligence blog. Converts markdown reports to styled HTML, manages navigation, layout, theming, and UX improvements. Trigger with "improve blog layout", "design blog", "frontend iteration", or similar.
---

# Frontend Design for AI Agent Intelligence Blog

You are the frontend design agent for the `ai-agent-intelligence` blog. Your job is to iteratively improve the blog's visual design, navigation, layout, and user experience while maintaining content integrity.

## Project Context
- **Repository**: `github.com/zfcheng/ai-agent-intelligence` (public)
- **Local clone**: `/root/.openclaw/workspace/ai-agent-intelligence/`
- **Publish directory**: `docs/` (served as static files by GitHub Pages, NO Jekyll build)
- **Entry point**: `docs/index.html` (and `index.md` for reference)
- **HTML generator**: `scripts/md-to-html.py` (pandoc-based, converts `.md` → `.html` with embedded CSS/nav)
- **Theme**: Clean, professional, dark-friendly, developer-oriented
- **Style approach**: Embedded CSS in HTML (no external assets needed, GitHub Pages static only)

## Design Principles
1. **Content-first**: Design serves content. No decoration without purpose.
2. **Consistency**: All pages share the same nav structure, typography, color palette, and spacing.
3. **Accessibility**: Sufficient contrast (WCAG AA), semantic HTML, keyboard navigable.
4. **Responsive**: Works on mobile (600px breakpoint), tablet, and desktop.
5. **Performance**: No external JS/CSS dependencies. Everything self-contained in HTML.
6. **Dark mode**: System preference-aware toggle or class-based dark theme.

## Key Files
| File | Purpose |
|------|---------|
| `scripts/md-to-html.py` | Main HTML generator (pandoc + embedded CSS/nav) |
| `docs/index.html` | Homepage (manual, not auto-generated) |
| `docs/_config.yml` | Jekyll config (for local dev only, not used by Pages) |
| `skill/frontend-design/SKILL.md` | This file (design rules + conventions) |
| `skill/frontend-design/DESIGN-SYSTEM.md` | Design tokens and components reference |
| `skill/frontend-design/CHANGELOG.md` | Design iteration history |

## Workflow
1. **Clarify the request** with the user: what to improve (layout, colors, nav, typography, etc.)
2. **Read current state**: inspect `scripts/md-to-html.py` (the template/CSS), `docs/index.html`, and a sample report HTML
3. **Design the change**: update the HTML template in `md-to-html.py` (CSS + structure)
4. **Regenerate affected pages**: run `python3 scripts/md-to-html.py` on all `.md` files
5. **Update `docs/index.html`** if the homepage changes
6. **Preview**: `git add -A && git commit -m "design: <change description>" && git push`
7. **Notify user** with before/after description and link to preview

## HTML Template Structure
The `md-to-html.py` script generates pages with this structure (do not change the class names without updating all references):
```html
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{title} | AI Agent Intelligence</title>
  <!-- inline CSS only -->
</head>
<body>
  <div class="page-container">
    <nav class="site-nav">{nav}</nav>
    <main class="main-content">
      <header class="page-header">
        <h1 class="page-title">{title}</h1>
        <p class="page-author">作者：{author} | 日期：{date} | 板块：{type}</p>
      </header>
      <div class="page-content">{pandoc-rendered-body}</div>
      <footer class="page-footer">{back-link}</footer>
    </main>
  </div>
  <style>{embedded-css}</style>
</body>
</html>
```

## CSS Architecture
All styles are embedded in `<style>` tags. No external CSS files. The CSS is defined in the Python f-string in `md-to-html.py`:
- Use CSS variables (`:root`) for theming
- Component classes: `.page-container`, `.site-nav`, `.main-content`, `.page-header`, `.page-title`, `.page-author`, `.page-content`, `.page-footer`
- Utility patterns: responsive media queries, table styles, code block styles

## Design System
Read `skill/frontend-design/DESIGN-SYSTEM.md` for the current design tokens (colors, typography, spacing, dark mode).

## Dependencies
- **pandoc** (`/usr/bin/pandoc`): markdown → HTML conversion
- **Python 3**: scripting and templating

## Git Rules
- Design changes go in commits prefixed with `design:`
- Always `git pull --rebase` before making changes
- Regenerate ALL affected HTML files (not just one) when the template changes
- Push after regenerating: `git add docs/ && git commit && git push origin main`

## Constraints
- **No external assets**: No CDN links, no npm packages, no external images (except for blog content itself)
- **No JavaScript**: Pure HTML + CSS only (stability, no runtime errors, fully static)
- **Backward compatible**: All existing URLs must keep working (`.html` filenames must not change)
- **Chinese language**: Primary language is Chinese, with English for code/technical terms
