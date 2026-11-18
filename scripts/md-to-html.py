#!/usr/bin/env python3
"""Convert markdown reports to HTML for GitHub Pages static serving.
Usage: python3 scripts/md-to-html.py docs/ai-loop/2026-11-18-commander.md
Output: docs/ai-loop/2026-11-18-commander.html (same path, .md -> .html)
"""
import sys, os, subprocess, re

def md_to_html(md_path):
    with open(md_path) as f:
        content = f.read()

    title = re.search(r'^title:\s*"?([^"]*)"?', content, re.MULTILINE)
    title = title.group(1) if title else os.path.basename(md_path).replace('.md', '')
    date_val = re.search(r'^date:\s*(.+)', content, re.MULTILINE)
    date_val = date_val.group(1).strip() if date_val else ''
    author = re.search(r'^author:\s*(.+)', content, re.MULTILINE)
    author = author.group(1).strip() if author else 'unknown'
    type_ = re.search(r'^type:\s*(.+)', content, re.MULTILINE)
    type_ = type_.group(1).strip() if type_ else 'unknown'

    # Skip frontmatter
    body_lines = []
    in_fm = False
    for line in content.split('\n'):
        if line.strip() == '---':
            if not in_fm:
                in_fm = True
                continue
            else:
                in_fm = False
                continue
        if not in_fm:
            body_lines.append(line)

    import tempfile
    with tempfile.NamedTemporaryFile(mode='w', suffix='.md', delete=False) as tmp:
        tmp.write('\n'.join(body_lines))
        tmp_path = tmp.name

    result = subprocess.run(['pandoc', tmp_path, '-f', 'markdown', '-t', 'html', '--wrap=none'],
                            capture_output=True, text=True)
    body = result.stdout
    os.unlink(tmp_path)

    html_path = md_path.replace('.md', '.html')

    nav_links = [
        ('AI Agent Intelligence', ''),
        ('Daily', 'daily.html'),
        ('AI Loop', 'ai-loop/'),
        ('LLM Rankings', 'llm-rankings/'),
        ('Trending', 'trending/'),
        ('Pricing', 'pricing/'),
        ('Blog Monitor', 'blog-monitor/'),
        ('Insights', 'insights/'),
    ]

    nav_html = ''.join(
        f'<a href="/ai-agent-intelligence/{url}" class="{"site-title" if label == "AI Agent Intelligence" else ""}">{label}</a>'
        for label, url in nav_links
    )

    html = f'''<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{title} | AI Agent Intelligence</title>
</head>
<body>
<div class="page-container">
<nav class="site-nav">{nav_html}</nav>
<main class="main-content">
<header class="page-header"><h1 class="page-title">{title}</h1>
<p class="page-author">作者：{author} | 日期：{date_val} | 板块：{type_}</p></header>
<div class="page-content">
{body}
</div>
<footer class="page-footer"><p>📖 <a href="/ai-agent-intelligence/">返回首页</a> | 🔗 <a href="https://github.com/zfcheng/ai-agent-intelligence">GitHub 仓库</a></p></footer>
</main>
</div>
<style>
body {{ font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif; color: #222; background: #fff; margin: 0; }}
.page-container {{ max-width: 900px; margin: 0 auto; padding: 20px; }}
.site-nav {{ display: flex; gap: 16px; padding: 12px 20px; background: #f8f9fa; border-bottom: 1px solid #e9ecef; flex-wrap: wrap; }}
.site-nav a {{ text-decoration: none; color: #0969da; font-weight: 500; }}
.site-title {{ font-weight: 700; color: #222; }}
.page-header {{ margin: 30px 0 20px; padding-bottom: 16px; border-bottom: 1px solid #e9ecef; }}
.page-title {{ font-size: 1.8em; margin: 0; }}
.page-author {{ color: #666; font-size: 0.9em; margin: 6px 0 0; }}
.page-content {{ line-height: 1.8; font-size: 16px; }}
.page-content h2 {{ font-size: 1.4em; margin: 28px 0 12px; border-bottom: 1px solid #eee; padding-bottom: 8px; }}
.page-content h3 {{ font-size: 1.2em; margin: 24px 0 10px; }}
.page-content table {{ border-collapse: collapse; width: 100%; margin: 16px 0; font-size: 14px; }}
.page-content th, .page-content td {{ border: 1px solid #ddd; padding: 8px 12px; }}
.page-content th {{ background: #f8f9fa; font-weight: 600; }}
.page-content tr:nth-child(even) {{ background: #f9f9f9; }}
.page-content a {{ color: #0969da; text-decoration: none; }}
.page-content a:hover {{ text-decoration: underline; }}
.page-content code {{ background: #f1f3f4; padding: 2px 6px; border-radius: 4px; font-size: 0.9em; }}
.page-content pre {{ background: #f8f9fa; padding: 12px; border-radius: 6px; overflow-x: auto; }}
.page-footer {{ margin-top: 40px; padding-top: 16px; border-top: 1px solid #e9ecef; color: #999; font-size: 0.9em; }}
.page-footer a {{ color: #0969da; }}
blockquote {{ border-left: 3px solid #0969da; margin: 16px 0; padding: 8px 16px; color: #555; background: #f0f7ff; }}
@media (max-width: 600px) {{ .site-nav {{ flex-direction: column; gap: 8px; }} .page-container {{ padding: 12px; }} }}
</style>
</body>
</html>'''

    with open(html_path, 'w') as f:
        f.write(html)
    print(f'Generated: {html_path}')

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print('Usage: python3 scripts/md-to-html.py <md_file>')
        sys.exit(1)
    md_to_html(sys.argv[1])
