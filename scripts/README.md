# AI Agent Intelligence Generation Scripts

Automated daily, weekly, and monthly summary generation using the `ai-agent-intelligence` skill.

## Scripts

- `generate-daily.sh` — Runs daily at 09:30 (via launchd)
- `generate-weekly.sh` — Runs every Monday at 09:30
- `generate-monthly.sh` — Runs on the 1st of each month at 09:30

Each script invokes Grok CLI with a detailed prompt that:
1. Activates the `ai-agent-intelligence` skill.
2. Performs research using search tools (X, semantic, etc.).
3. Generates properly formatted Markdown with frontmatter.
4. Writes to the correct `docs/<type>/` path.
5. Updates `docs/index.md`.
6. Commits and pushes to GitHub.

After Grok exits, each script runs `run-report.sh` to emit a telemetry/quality
report for that run.

## Run Reports (telemetry)

`run-report.sh <type> [label]` inspects the most recent Grok session for this
workspace and prints a Markdown report covering:

- **Scope** — actual search-tool call counts (X keyword/semantic/user vs web vs
  anysearch), with a check that X stayed the primary source.
- **Cost & performance** — session duration, model turns, final context tokens
  (% of window), time-to-first-token, avg response time.
- **Reliability** — error count and tool-failure count.

Reports are written to `scripts/run-logs/<type>-<label>.md` (git-ignored, local
telemetry) and echoed to stdout, so they also land in the launchd logs.

Counts come from the structured `"name":"<tool>"` entries in the session
transcript (`chat_history.jsonl`); built-in tool calls and reliability metrics
come from `signals.json`. Token figures are the final context size — Grok
session logs do not expose cumulative billed tokens.

## Manual Execution

```bash
cd /Users/zfcs/kworkspace/AIDoing/info-search
./scripts/generate-daily.sh
./scripts/generate-weekly.sh
./scripts/generate-monthly.sh
```

## Logs

- Daily: `~/Library/Logs/ai-agent-daily.log` and `.err`
- Weekly: `~/Library/Logs/ai-agent-weekly.log` and `.err`
- Monthly: `~/Library/Logs/ai-agent-monthly.log` and `.err`

## Launchd Agents

Managed via:

- `~/Library/LaunchAgents/com.zfcs.ai-agent-intelligence-daily.plist`
- `~/Library/LaunchAgents/com.zfcs.ai-agent-intelligence-weekly.plist`
- `~/Library/LaunchAgents/com.zfcs.ai-agent-intelligence-monthly.plist`

To reload after changes:

```bash
launchctl unload ~/Library/LaunchAgents/com.zfcs.ai-agent-intelligence-*.plist
launchctl load ~/Library/LaunchAgents/com.zfcs.ai-agent-intelligence-*.plist
```

## Prompt Files

- `daily-generate.prompt`
- `weekly-generate.prompt`
- `monthly-generate.prompt`

These contain the full instructions for the Grok agent.