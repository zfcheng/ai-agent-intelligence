---
layout: default
title: "AI Loop 日报"
nav_order: 10
parent: "Home"
---

# AI Loop 日报

> Coding Agent / Agentic 框架 / 自修复 / HITL 人在回路 / 论文与开源

{% for post in site.pages %}
  {% if post.type == 'ai-loop' %}
  - [{{ post.date | date: "%Y-%m-%d" }}]({{ post.url }}) — {{ post.title }}
  {% endif %}
{% endfor %}
