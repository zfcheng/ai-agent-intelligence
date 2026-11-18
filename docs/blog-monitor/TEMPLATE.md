---
title: "Official Blog Monitor"
type: blog-monitor
---

# 📡 官方博客监控

> 主责：Codex（云沙箱）。司令发现线索可补 `-commander` 版本。
> 选题标尺统一以 `skill/references/topic-scope.md` 为准。

## 监控范围（建议）

- Anthropic（claude.com/blog / anthropic.com/news）
- OpenAI（openai.com/blog / news）
- xAI（x.ai/news）
- Google DeepMind（deepmind.google/discover/blog）
- Meta AI（ai.meta.com/blog）
- Moonshot / DeepSeek / Qwen（国内头部）

## 输出规范

- 文件名：`YYYY-MM-DD-<author>.md`（如 `2026-11-18-codex.md`）
- frontmatter 必填：`title`、`date`、`type: blog-monitor`、`author`、`tags`
- 每条：厂商、标题、链接、发布时间、一句话摘要、对生产 Agent 的意义
- 官方博客多为英文，摘要用中文，关键术语保留英文

## 校准点

- 与 `daily/`（Codex 主责）联动：官方博客的重大发布应同步出现在当天 daily 中
- 司令的价格监控（pricing/）与模型排名（llm-rankings/）可作为博客发布信息的事实交叉验证
