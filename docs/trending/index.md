---
layout: default
title: "GitHub Trending"
nav_order: 4
---

> 热门项目 + AI 项目追踪

{% assign posts = site.pages | where: "type", "trending" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
{% for post in posts %}
- [{{ post.date | date: "%Y-%m-%d" }}]({{ post.url | relative_url }}) — {{ post.title }}
{% endfor %}
