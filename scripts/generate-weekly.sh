#!/bin/zsh
set -euo pipefail

WORKSPACE="/Users/zfcs/kworkspace/AIDoing/info-search"
cd "$WORKSPACE"

echo "Running weekly AI Agent Intelligence generation at $(date)"

# Run Grok single-turn (--prompt-file) with the detailed prompt file. --always-approve
# auto-approves tool calls for non-interactive scheduled runs.
# The prompt instructs the agent to do research via the skill for the week, write files, update index, git commit+push.
/opt/homebrew/bin/grok --prompt-file "$WORKSPACE/scripts/weekly-generate.prompt" --always-approve

# Emit a telemetry/quality report for this run (scope, tokens, timing, reliability).
"$WORKSPACE/scripts/run-report.sh" weekly "$(date +%G-%V)" || echo "run-report failed (non-fatal)"

echo "Weekly generation task completed."