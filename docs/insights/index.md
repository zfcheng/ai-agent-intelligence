---
layout: default
title: "Insights"
nav_order: 45
parent: "Home"
---

# 工作匹配与建议

> 司令主责：每周信号 × 工作画像匹配 → 可采纳的建议（ACT-ID）
> 配套：`backlog.md` 跟踪采纳与落地状态

{% for p in site.pages %}
  {% if p.type == 'insights' %}
  - [{{ p.week | default: p.date }}]({{ p.url }}) — {{ p.title }}
  {% endif %}
{% endfor %}
