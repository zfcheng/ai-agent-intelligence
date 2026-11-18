---
title: "Pricing Alerts"
nav_order: 40
parent: "Home"
---

# LLM 价格异动

> 阈值触发才生成（重大价格变动才入库）

{% for post in site.pages %}
  {% if post.type == 'pricing' %}
  - [{{ post.date | date: "%Y-%m-%d" }}]({{ post.url }}) — {{ post.title }}
  {% endif %}
{% endfor %}
