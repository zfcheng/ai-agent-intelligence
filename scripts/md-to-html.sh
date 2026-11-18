#!/usr/bin/env bash
set -euo pipefail

SECTION="${1:?Usage: bash md-to-html.sh <section> <md_file>}"
MD_FILE="${2:?Usage: bash md-to-html.sh <section> <md_file>}"

M_SPANID='0.26.1' if [ ! -f "$MD_FILE" ]; M_SPANID='0.26.2' then
  echo "Error: $MD_FILE not found"; exit 1
M_SPANID='0.26.3' fi

HTML_FILE="${MD_FILE%.md}.html"
TITLE="$(sed -n '/^title: /p' "$MD_FILE" | sed 's/^title: *"*//;M_SPANID='0.26.4' s/"*$//' | head -1)"
DATE_VAL="$(sed -n '/^date: /p' "M_SPANID='0.26.5' $MD_FILE" | sed 's/^date: *//' | head -1)"
AUTHOR="$(sed -n '/^author: /p' "M_SPANID='0.26.6' $MD_FILE" | sed 's/^author: *//' | head -1)"
TYPE="$(sed -n '/^type: /p' "M_SPANID='0.26.7' $MD_FILE" | sed 's/^type: *//' | head -1)"
[ -z "$TITLE" ] && TITLE="$(basename "M_SPANID='0.26.8' $MD_FILE" .md)"
BODY=$(pandoc M_SPANID='0.26.9' "$MD_FILE" -f markdown -t html --wrap=none)

cat > "$HTML_FILE" << EOF
M_SPANID='0.26.10' <!DOCTYPE html>
M_SPANID='0.26.11' <html lang="zh-CN">
M_SPANID='0.26.12' <head>
M_SPANID='0.26.13' <meta charset="UTF-8">
M_SPANID='0.26.14' <meta name="viewport" content="width=device-width, initial-scale=1.0">
M_SPANID='0.26.15' <title>${TITLE} | M_SPANID='0.26.16' AI Agent Intelligence</title>
M_SPANID='0.26.17' <link rel="stylesheet" href="/ai-agent-intelligence/assets/css/just-the-docs-default.css">
M_SPANID='0.26.18' </head>
M_SPANID='0.26.19' <body>
M_SPANID='0.26.20' <div class="page-container">
M_SPANID='0.26.21' <nav class="site-nav"><a href="/ai-agent-intelligence/" class="site-title">AI Agent Intelligence</a>
M_SPANID='0.26.22' <a href="/ai-agent-intelligence/daily.html">Daily</a>
M_SPANID='0.26.23' <a href="/ai-agent-intelligence/ai-loop/">AI Loop</a>
M_SPANID='0.26.24' <a href="/ai-agent-intelligence/llm-rankings/">LLM Rankings</a>
M_SPANID='0.26.25' <a href="/ai-agent-intelligence/trending/">Trending</a>
M_SPANID='0.26.26' <a href="/ai-agent-intelligence/pricing/">Pricing</a>
M_SPANID='0.26.27' <a href="/ai-agent-intelligence/blog-monitor/">Blog Monitor</a>
M_SPANID='0.26.28' <a href="/ai-agent-intelligence/insights/">Insights</a></nav>
M_SPANID='0.26.29' <main class="main-content">
M_SPANID='0.26.30' <header class="page-header"><h1 class="page-title">${TITLE}</h1>
M_SPANID='0.26.31' <p class="page-author">作者：${AUTHOR:-unknown} | M_SPANID='0.26.32' 日期：${DATE_VAL:-unknown} | M_SPANID='0.26.33' 板块：${TYPE:-unknown}</p></header>
M_SPANID='0.26.34' <div class="page-content">
M_SPANID='0.26.35' ${BODY}
M_SPANID='0.26.36' </div>
M_SPANID='0.26.37' <footer class="page-footer"><p>📖 <a href="/ai-agent-intelligence/">返回首页</a> | M_SPANID='0.26.38' 🔗 <a href="https://github.com/zfcheng/ai-agent-intelligence">GitHub 仓库</a></p></footer>
M_SPANID='0.26.39' </main>
M_SPANID='0.26.40' </div>
M_SPANID='0.26.41' <style>
M_SPANID='0.26.42' body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; color: #222; background: #fff; margin: 0; }
M_SPANID='0.26.43' .page-container { max-width: 900px; margin: 0 auto; padding: 20px; }
M_SPANID='0.26.44' .site-nav { display: flex; gap: 16px; padding: 12px 20px; background: #f8f9fa; border-bottom: 1px solid #e9ecef; flex-wrap: wrap; }
M_SPANID='0.26.45' .site-nav a { text-decoration: none; color: #0969da; font-weight: 500; }
M_SPANID='0.26.46' .site-title { font-weight: 700; color: #222; }
M_SPANID='0.26.47' .page-header { margin: 30px 0 20px; padding-bottom: 16px; border-bottom: 1px solid #e9ecef; }
M_SPANID='0.26.48' .page-title { font-size: 1.8em; margin: 0; }
M_SPANID='0.26.49' .page-author { color: #666; font-size: 0.9em; margin: 6px 0 0; }
M_SPANID='0.26.50' .page-content { line-height: 1.8; font-size: 16px; }
M_SPANID='0.26.51' .page-content h2 { font-size: 1.4em; margin: 28px 0 12px; border-bottom: 1px solid #eee; padding-bottom: 8px; }
M_SPANID='0.26.52' .page-content h3 { font-size: 1.2em; margin: 24px 0 10px; }
M_SPANID='0.26.53' .page-content table { border-collapse: collapse; width: 100%; margin: 16px 0; font-size: 14px; }
M_SPANID='0.26.54' .page-content th, .page-content td { border: 1px solid #ddd; padding: 8px 12px; }
M_SPANID='0.26.55' .page-content th { background: #f8f9fa; font-weight: 600; }
M_SPANID='0.26.56' .page-content tr:nth-child(even) { background: #f9f9f9; }
M_SPANID='0.26.57' .page-content a { color: #0969da; text-decoration: none; }
M_SPANID='0.26.58' .page-content a:hover { text-decoration: underline; }
M_SPANID='0.26.59' .page-content code { background: #f1f3f4; padding: 2px 6px; border-radius: 4px; font-size: 0.9em; }
M_SPANID='0.26.60' .page-content pre { background: #f8f9fa; padding: 12px; border-radius: 6px; overflow-x: auto; }
M_SPANID='0.26.61' .page-footer { margin-top: 40px; padding-top: 16px; border-top: 1px solid #e9ecef; color: #999; font-size: 0.9em; }
M_SPANID='0.26.62' .page-footer a { color: #0969da; }
M_SPANID='0.26.63' blockquote { border-left: 3px solid #0969da; margin: 16px 0; padding: 8px 16px; color: #555; background: #f0f7ff; }
M_SPANID='0.26.64' @media (max-width: 600px) { .site-nav { flex-direction: column; gap: 8px; } .page-container { padding: 12px; } }
M_SPANID='0.26.65' </style>
M_SPANID='0.26.66' </body>
M_SPANID='0.26.67' </html>
M_SPANID='0.26.68' EOF

echo "Generated: $HTML_FILE"
M_SPANID='0.26.69' SCRIPT_EOF
chmod +x /root/.openclaw/workspace/ai-agent-intelligence/scripts/md-to-html.sh
