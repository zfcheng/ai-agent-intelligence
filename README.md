# AI Agent Intelligence

This repository is the canonical source for both:

- The **AI Agent Intelligence** knowledge base (published as GitHub Pages)
- The **`ai-agent-intelligence`** Grok skill

## Live Site

https://zfcheng.github.io/ai-agent-intelligence/

The site contains daily, weekly, and monthly summaries focused on production AI agents, frameworks (LangGraph, etc.), harnesses (LangSmith), observability, evaluation, self-improving loops, and real-world deployment practices.

## The Skill

The Grok skill source lives in the `skill/` directory.

### Installation

```bash
# Install / update the skill
mkdir -p ~/.grok/skills/ai-agent-intelligence
cp -r skill/* ~/.grok/skills/ai-agent-intelligence/
```

After installation, trigger it with phrases like:
- "AI Agent daily summary"
- "本周总结" (weekly summary)
- "6月总结" (monthly summary)

The skill strictly follows the scope defined in `skill/references/topic-scope.md` and prioritizes accounts in `skill/references/target-accounts.md`.

## Repository Structure

- `docs/` — GitHub Pages site content (the published summaries)
- `skill/` — The ai-agent-intelligence skill (SKILL.md + references)
- `scripts/` — Automation scripts for scheduled generation (daily at 9:30, weekly, monthly)

See `scripts/README.md` for automation details.

## Maintenance

- Summaries are generated using the skill.
- Both the skill definition and the published content are versioned here.
- The site is automatically updated via GitHub Pages.

## License

Content is maintained for personal/team use. Feel free to adapt the skill for your own AI agent intelligence tracking.