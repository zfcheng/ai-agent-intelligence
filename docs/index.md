---
title: AI Agent Intelligence
layout: home
---

<!-- Tags -->
<div class="tags">
  <span class="tag">Agent 框架与循环</span>
  <span class="tag">Coding Agent</span>
  <span class="tag">可观测性与评测</span>
  <span class="tag">自改进闭环</span>
  <span class="tag">LLM 格局与定价</span>
  <span class="tag">生产落地实践</span>
</div>

<!-- Section Cards -->
<div class="cards">
  <div class="card">
    <div class="card-icon">📰</div>
    <h3 class="card-title">Daily Summaries</h3>
    <p class="card-desc">AI Agent 情报日报，全球视野覆盖</p>
    <div class="card-meta">主责：Codex（司令可补位）</div>
    <a href="{{ '/daily.html' | relative_url }}" class="card-link">查看 →</a>
  </div>
  <div class="card">
    <div class="card-icon">🔄</div>
    <h3 class="card-title">AI Loop 日报</h3>
    <p class="card-desc">Coding Agent / 框架 / 自修复 / HITL</p>
    <div class="card-meta">主责：司令（Codex 可校准）</div>
    <a href="{{ '/ai-loop/' | relative_url }}" class="card-link">查看 →</a>
  </div>
  <div class="card">
    <div class="card-icon">🏆</div>
    <h3 class="card-title">LLM Rankings</h3>
    <p class="card-desc">全球 Top 20 模型排名，日更</p>
    <div class="card-meta">主责：司令</div>
    <a href="{{ '/llm-rankings/' | relative_url }}" class="card-link">查看 →</a>
  </div>
  <div class="card">
    <div class="card-icon">🔥</div>
    <h3 class="card-title">GitHub Trending</h3>
    <p class="card-desc">热门项目 + AI 项目追踪</p>
    <div class="card-meta">主责：司令（Codex 校准解读）</div>
    <a href="{{ '/trending/' | relative_url }}" class="card-link">查看 →</a>
  </div>
  <div class="card">
    <div class="card-icon">💰</div>
    <h3 class="card-title">Pricing Alerts</h3>
    <p class="card-desc">LLM 价格异动，阈值触发</p>
    <div class="card-meta">主责：司令</div>
    <a href="{{ '/pricing/' | relative_url }}" class="card-link">查看 →</a>
  </div>
  <div class="card">
    <div class="card-icon">📡</div>
    <h3 class="card-title">Blog Monitor</h3>
    <p class="card-desc">厂商官方博客监控</p>
    <div class="card-meta">主责：Codex</div>
    <a href="{{ '/blog-monitor/' | relative_url }}" class="card-link">查看 →</a>
  </div>
  <div class="card">
    <div class="card-icon">🧠</div>
    <h3 class="card-title">Insights</h3>
    <p class="card-desc">信息→行动闭环，工作匹配推荐</p>
    <div class="card-meta">主责：司令（周五）</div>
    <a href="{{ '/insights/' | relative_url }}" class="card-link">查看 →</a>
  </div>
</div>

<!-- Liquid: Dynamic Recent Updates -->
<section class="recent">
  <h2 class="section-title">最近更新</h2>
  <div class="recent-grid">
    <div class="recent-col">
      <h3 class="recent-col-title">📰 Daily（Codex）</h3>
      <ul class="recent-list">
        {% assign daily_posts = site.pages | where: "type", "daily" | sort: "date" | reverse | slice: 0, 5 %}
        {% for post in daily_posts %}
          <li><a href="{{ post.url | relative_url }}">{{ post.date | date: "%Y-%m-%d" }} — {{ post.title }}</a></li>
        {% endfor %}
        {% if daily_posts.size == 0 %}
          <li class="recent-empty">（待首篇入库）</li>
        {% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <h3 class="recent-col-title">🔄 AI Loop（司令）</h3>
      <ul class="recent-list">
        {% assign loop_posts = site.pages | where: "type", "ai-loop" | sort: "date" | reverse | slice: 0, 5 %}
        {% for post in loop_posts %}
          <li><a href="{{ post.url | relative_url }}">{{ post.date | date: "%Y-%m-%d" }} — {{ post.title }}</a></li>
        {% endfor %}
        {% if loop_posts.size == 0 %}
          <li class="recent-empty">（待首篇入库）</li>
        {% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <h3 class="recent-col-title">🏆 LLM Rankings（司令）</h3>
      <ul class="recent-list">
        {% assign rank_posts = site.pages | where: "type", "llm-rankings" | sort: "date" | reverse | slice: 0, 5 %}
        {% for post in rank_posts %}
          <li><a href="{{ post.url | relative_url }}">{{ post.date | date: "%Y-%m-%d" }} — {{ post.title }}</a></li>
        {% endfor %}
        {% if rank_posts.size == 0 %}
          <li class="recent-empty">（待首篇入库）</li>
        {% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <h3 class="recent-col-title">🔥 Trending（司令）</h3>
      <ul class="recent-list">
        {% assign trend_posts = site.pages | where: "type", "trending" | sort: "date" | reverse | slice: 0, 5 %}
        {% for post in trend_posts %}
          <li><a href="{{ post.url | relative_url }}">{{ post.date | date: "%Y-%m-%d" }} — {{ post.title }}</a></li>
        {% endfor %}
        {% if trend_posts.size == 0 %}
          <li class="recent-empty">（待首篇入库）</li>
        {% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <h3 class="recent-col-title">💰 Pricing（司令）</h3>
      <ul class="recent-list">
        {% assign price_posts = site.pages | where: "type", "pricing" | sort: "date" | reverse | slice: 0, 5 %}
        {% for post in price_posts %}
          <li><a href="{{ post.url | relative_url }}">{{ post.date | date: "%Y-%m-%d" }} — {{ post.title }}</a></li>
        {% endfor %}
        {% if price_posts.size == 0 %}
          <li class="recent-empty">（暂无异动报告）</li>
        {% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <h3 class="recent-col-title">📡 Blog Monitor（Codex）</h3>
      <ul class="recent-list">
        {% assign blog_posts = site.pages | where: "type", "blog-monitor" | sort: "date" | reverse | slice: 0, 5 %}
        {% for post in blog_posts %}
          <li><a href="{{ post.url | relative_url }}">{{ post.date | date: "%Y-%m-%d" }} — {{ post.title }}</a></li>
        {% endfor %}
        {% if blog_posts.size == 0 %}
          <li class="recent-empty">（架子搭建中）</li>
        {% endif %}
      </ul>
    </div>
  </div>
</section>

<!-- Footer -->
<footer class="page-footer">
  <div class="footer-links">
    <a href="{{ '/backlog.html' | relative_url }}">ACT backlog</a>
    <a href="{{ '/work-profile.html' | relative_url }}">Work Profile</a>
    <a href="https://github.com/zfcheng/ai-agent-intelligence">GitHub 仓库</a>
  </div>
  <p>🤖 由司令（OpenClaw）与 Codex（云沙箱）协作维护</p>
</footer>
