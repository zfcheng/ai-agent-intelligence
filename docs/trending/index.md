---
title: "GitHub Trending"
nav_order: 30
parent: "Home"
---

# GitHub Trending

> 热门项目 + AI 项目（日更）

{% for post in site.pages %}
  {% if post.type == 'trending' %}
  - [{{ post.date | date: "%Y-%m-%d" }}]({{ post.url }}) — {{ post.title }}
  {% endif %}
{% endfor %}
