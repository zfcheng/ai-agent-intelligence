#!/bin/zsh
# run-report.sh — Emit a telemetry/quality report for the most recent Grok
# generation session in this workspace.
#
# Usage: run-report.sh <type> [date]
#   type : daily | weekly | monthly  (used only for the report filename/title)
#   date : optional label (defaults to today YYYY-MM-DD)
#
# It locates the newest Grok session whose cwd == this workspace, parses the
# session telemetry (signals.json) and transcript (chat_history.jsonl), and
# writes a Markdown report to scripts/run-logs/<type>-<date>.md (also echoed
# to stdout so it lands in the launchd log).

set -euo pipefail

WORKSPACE="/Users/zfcs/kworkspace/AIDoing/info-search"
TYPE="${1:-daily}"
LABEL="${2:-$(date +%Y-%m-%d)}"
GROK_HOME="${GROK_HOME:-$HOME/.grok}"
OUT_DIR="$WORKSPACE/scripts/run-logs"
OUT_FILE="$OUT_DIR/${TYPE}-${LABEL}.md"

mkdir -p "$OUT_DIR"

REPORT="$(python3 - "$WORKSPACE" "$GROK_HOME" "$TYPE" "$LABEL" <<'PY'
import json, os, sys, glob, datetime

workspace, grok_home, rtype, label = sys.argv[1:5]
ws = workspace.rstrip('/')

# --- locate newest session for this workspace ---
candidates = []
for summ in glob.glob(os.path.join(grok_home, "sessions", "*", "*", "summary.json")):
    try:
        d = json.load(open(summ))
        cwd = (d.get("info", {}) or {}).get("cwd", "").rstrip('/')
        if cwd == ws:
            candidates.append((d.get("updated_at", ""), os.path.dirname(summ), d))
    except Exception:
        pass

if not candidates:
    print(f"_No Grok session found for workspace {ws}; cannot produce run report._")
    sys.exit(0)

candidates.sort(key=lambda x: x[0])
_, sdir, summary = candidates[-1]

def load_json(name):
    try:
        return json.load(open(os.path.join(sdir, name)))
    except Exception:
        return {}

sig = load_json("signals.json")

# --- accurate search-tool tally from transcript (structured "name":"<tool>") ---
search_tools = ["x_keyword_search", "x_semantic_search", "x_user_search",
                "web_search", "browse_page", "open_page",
                "search", "batch_search", "extract"]  # last 3 = anysearch MCP
counts = {t: 0 for t in search_tools}
chat_path = os.path.join(sdir, "chat_history.jsonl")
try:
    with open(chat_path) as f:
        blob = f.read()
    for t in search_tools:
        counts[t] = blob.count(f'"name":"{t}"')
except Exception:
    pass

x_total = counts["x_keyword_search"] + counts["x_semantic_search"] + counts["x_user_search"]
web_total = counts["web_search"] + counts["browse_page"] + counts["open_page"]
anysearch_total = counts["search"] + counts["batch_search"] + counts["extract"]
search_grand = x_total + web_total + anysearch_total

def pct(part, whole):
    return f"{(100*part/whole):.0f}%" if whole else "n/a"

dur = sig.get("sessionDurationSeconds", "?")
ctx_used = sig.get("contextTokensUsed", "?")
ctx_win = sig.get("contextWindowTokens", "?")
ctx_pct = sig.get("contextWindowUsage", "?")
turns = sig.get("turnCount", "?")
asst = sig.get("assistantMessageCount", "?")
errs = sig.get("errorCount", "?")
tool_fail = sig.get("toolFailureCount", "?")
builtin_calls = sig.get("toolCallCount", "?")
ttft = sig.get("avgTimeToFirstTokenMs", "?")
avg_resp = sig.get("avgResponseTimeMs", "?")
model = summary.get("current_model_id", sig.get("primaryModelId", "?"))

now = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

L = []
L.append(f"# Generation Run Report — {rtype} {label}")
L.append("")
L.append(f"_Generated {now} · model `{model}` · session `{summary.get('info',{}).get('id','?')}`_")
L.append("")
L.append("## Scope — search breadth (actual tool calls)")
L.append("")
L.append("| Source | Calls | Share |")
L.append("|---|---|---|")
L.append(f"| **X (twitter)** | **{x_total}** | {pct(x_total, search_grand)} |")
L.append(f"| &nbsp;&nbsp;· x_keyword_search | {counts['x_keyword_search']} | |")
L.append(f"| &nbsp;&nbsp;· x_semantic_search | {counts['x_semantic_search']} | |")
L.append(f"| &nbsp;&nbsp;· x_user_search (handle verify) | {counts['x_user_search']} | |")
L.append(f"| Web (web_search/browse) | {web_total} | {pct(web_total, search_grand)} |")
L.append(f"| anysearch MCP | {anysearch_total} | {pct(anysearch_total, search_grand)} |")
L.append(f"| **Total searches** | **{search_grand}** | |")
L.append("")
x_ok = "✅ X is primary source" if x_total >= web_total else "⚠️ X under-used vs web — check for X-tool failures"
L.append(f"**Scope check:** {x_ok}")
L.append("")
L.append("## Cost & performance")
L.append("")
L.append("| Metric | Value |")
L.append("|---|---|")
L.append(f"| Wall/session duration | {dur}s |")
L.append(f"| Model turns (assistant messages) | {asst} (in {turns} conversation turn) |")
L.append(f"| Final context tokens | {ctx_used} / {ctx_win} ({ctx_pct}% of window) |")
L.append(f"| Built-in tool calls (read/write/terminal) | {builtin_calls} |")
L.append(f"| Avg time-to-first-token | {ttft} ms |")
L.append(f"| Avg response time | {avg_resp} ms |")
L.append("")
L.append("## Reliability")
L.append("")
fail_note = "✅ no failures" if (errs == 0 and tool_fail == 0) else f"⚠️ errors={errs}, tool failures={tool_fail}"
L.append(f"- Errors: {errs} · Tool failures: {tool_fail} → {fail_note}")
L.append("")
L.append("> Token totals shown are the final context size (not cumulative billed tokens; "
         "Grok session logs do not expose cumulative billing). Cumulative input is higher "
         "but largely cache-hit on the stable prefix.")
print("\n".join(L))
PY
)"

print -r -- "$REPORT" | tee "$OUT_FILE"
echo
echo "Run report written to: $OUT_FILE"
