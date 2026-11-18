---
layout: default
title: "GitHub Trending"
---

> 热门项目 + AI 项目追踪

{% assign posts = site.pages | where: "type", "trending" | sort: "date" | reverse %}
{% for post in posts %}
- [{{ post.date | date: "%Y-%m-%d" }}]({{ post.url | relative_url }}) — {{ post.title }}
{% endfor %}
