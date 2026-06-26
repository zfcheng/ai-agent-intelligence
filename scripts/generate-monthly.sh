#!/bin/zsh
set -euo pipefail

WORKSPACE="/Users/zfcs/kworkspace/AIDoing/info-search"
cd "$WORKSPACE"

echo "Running monthly AI Agent Intelligence generation at $(date)"

# Run Grok single-turn (--prompt-file) with the detailed prompt file. --always-approve
# auto-approves tool calls for non-interactive scheduled runs.
# The prompt instructs the agent to do research via the skill for the month, write files, update index, git commit+push.
/opt/homebrew/bin/grok --prompt-file "$WORKSPACE/scripts/monthly-generate.prompt" --always-approve

# Emit a telemetry/quality report for this run (scope, tokens, timing, reliability).
"$WORKSPACE/scripts/run-report.sh" monthly "$(date +%Y-%m)" || echo "run-report failed (non-fatal)"

echo "Monthly generation task completed."