---
layout: default
title: "AI Loop 日报"
nav_order: 2
---

> Coding Agent / Agentic 框架 / 自修复 / HITL 人在回路 / 论文与开源

{% assign posts = site.pages | where: "type", "ai-loop" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
{% for post in posts %}
- [{{ post.date | date: "%Y-%m-%d" }}]({{ post.url | relative_url }}) — {{ post.title }}
{% endfor %}
