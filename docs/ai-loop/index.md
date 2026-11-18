---
layout: default
title: "AI Loop 日报"
---

> Coding Agent / Agentic 框架 / 自修复 / HITL 人在回路 / 论文与开源

{% assign posts = site.pages | where: "type", "ai-loop" | sort: "date" | reverse %}
{% for post in posts %}
- [{{ post.date | date: "%Y-%m-%d" }}]({{ post.url | relative_url }}) — {{ post.title }}
{% endfor %}
