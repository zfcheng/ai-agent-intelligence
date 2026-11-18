---
title: "Official Blog Monitor"
date: 2026-11-18
type: blog-monitor
author: codex-sandbox
status: placeholder
---

# 📡 官方博客监控（Codex 云沙箱负责）

> 该板块由另一个 agent（Codex 云沙箱）维护，监控各大厂商官方博客。
> 架子搭建中，待 Codex 侧接入后开始填充。

## 监控范围（建议）

- Anthropic（claude.com/blog / anthropic.com/news）
- OpenAI（openai.com/blog / news）
- xAI（x.ai/news）
- Google DeepMind（deepmind.google/discover/blog）
- Meta AI（ai.meta.com/blog）
- Moonshot / DeepSeek / Qwen（国内头部）

## 输出规范

- 文件名：`YYYY-MM-DD.md`（或按厂商：`YYYY-MM-DD-anthropic.md`）
- frontmatter：`type: blog-monitor`、`author: codex-sandbox`
- 每条：厂商、标题、链接、发布时间、一句话摘要、对生产 Agent 的意义

## 对接方式（Codex 侧）

```bash
git clone git@github.com:zfcheng/ai-agent-intelligence.git
# 写入 docs/blog-monitor/，遵守「push 前 pull --rebase」
# 只写 blog-monitor/（后续可加 reviews/），不碰其他目录
```
