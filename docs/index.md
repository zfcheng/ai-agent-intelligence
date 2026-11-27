---
title: AI Agent Intelligence
layout: home
nav_order: 1
---

<style>
/* ===== Homepage custom styles (scoped) ===== */
.hero { text-align:center; padding:50px 20px 36px; max-width:720px; margin:0 auto; }
.hero-title { font-size:2.6em; font-weight:800; margin:0 0 12px; background:linear-gradient(135deg,#0969da,#7c3aed); -webkit-background-clip:text; -webkit-text-fill-color:transparent; background-clip:text; }
.hero-subtitle { font-size:1.15em; color:#57606a; margin:0 0 14px; font-weight:500; }
.hero-desc { font-size:15px; color:#57606a; margin:0; }
.hero-desc code { background:#f1f3f4; padding:2px 6px; border-radius:4px; font-size:.9em; color:#0969da; }

.tags { display:flex; flex-wrap:wrap; gap:8px; justify-content:center; padding:0 20px 36px; max-width:720px; margin:0 auto; }
.tag { display:inline-block; padding:4px 14px; border-radius:20px; font-size:13px; font-weight:500; color:#0969da; border:1px solid #0969da; background:rgba(9,105,218,.06); }

.cards { display:grid; grid-template-columns:repeat(auto-fit,minmax(360px,1fr)); gap:20px; padding:0 20px 48px; max-width:1100px; margin:0 auto; }
.card { background:#fff; border:1px solid #e9ecef; border-radius:12px; padding:24px; transition:transform .15s, box-shadow .15s, border-color .15s; display:flex; flex-direction:column; }
.card:hover { transform:translateY(-2px); box-shadow:0 4px 20px rgba(0,0,0,.08); border-color:#0969da; }
.card-header { display:flex; align-items:flex-start; gap:14px; margin-bottom:14px; }
.card-icon { font-size:2.2em; flex-shrink:0; }
.card-title-group { flex-grow:1; }
.card-title { font-size:1.15em; font-weight:700; margin:0 0 4px; }
.card-meta { font-size:12px; color:#8b949e; margin:0; }
.card-desc { font-size:14px; color:#57606a; margin:0 0 14px; flex-grow:1; line-height:1.55; }

.card-highlights { margin:0 0 16px; padding:0; list-style:none; }
.card-highlights li { font-size:13px; color:#3a3a3a; margin:7px 0; padding-left:16px; position:relative; line-height:1.5; }
.card-highlights li::before { content:'•'; position:absolute; left:0; color:#0969da; font-weight:700; }
.card-highlights li strong { color:#1a1a1a; }

.card-footer { display:flex; align-items:center; justify-content:space-between; margin-top:auto; padding-top:12px; border-top:1px solid #f0f0f0; }
.card-link { display:inline-block; color:#0969da; font-weight:600; font-size:14px; text-decoration:none; }
.card-link:hover { text-decoration:underline; }
.card-count { font-size:12px; color:#8b949e; }

.section-title { font-size:1.35em; font-weight:700; margin:0 0 20px; }
.recent { padding:0 20px 48px; max-width:1100px; margin:0 auto; }
.recent-grid { display:grid; grid-template-columns:repeat(auto-fit,minmax(280px,1fr)); gap:16px; }
.recent-col { padding:16px 20px; border:1px solid #e9ecef; border-radius:10px; background:#fff; }
.recent-col-title { font-size:1em; font-weight:600; margin:0 0 10px; }
.recent-list { list-style:none; padding:0; margin:0; }
.recent-list li { margin:6px 0; }
.recent-list a { color:#0969da; text-decoration:none; font-size:14px; }
.recent-list a:hover { text-decoration:underline; }
.recent-empty { color:#8b949e; font-size:14px; font-style:italic; }

/* ===== Mobile Responsive ===== */
@media (max-width:768px) {
  .hero { padding:40px 16px 28px; }
  .hero-title { font-size:2.1em; }
  .hero-subtitle { font-size:1.05em; }
  .hero-desc { font-size:14px; }
  .tags { padding:0 16px 28px; gap:6px; }
  .tag { padding:3px 12px; font-size:12px; }
  .cards { padding:0 16px 36px; gap:14px; }
  .card { padding:20px; }
  .card-icon { font-size:1.9em; }
  .card-title { font-size:1.08em; }
  .card-header { gap:12px; }
  .section-title { font-size:1.2em; }
  .recent { padding:0 16px 36px; }
  .recent-grid { gap:14px; }
  .recent-col { padding:14px 16px; }
}

@media (max-width:480px) {
  .hero { padding:32px 12px 22px; }
  .hero-title { font-size:1.7em; }
  .hero-subtitle { font-size:0.95em; margin-bottom:10px; }
  .hero-desc { font-size:13px; }
  .hero-desc code { font-size:.85em; }
  .tags { padding:0 12px 22px; gap:5px; }
  .tag { padding:3px 10px; font-size:11px; }
  .cards { padding:0 12px 28px; gap:12px; grid-template-columns:1fr; }
  .card { padding:18px; }
  .card-icon { font-size:1.7em; }
  .card-title { font-size:1em; }
  .card-header { gap:10px; }
  .card-desc { font-size:13px; }
  .card-highlights li { font-size:12px; margin:5px 0; }
  .card-footer { padding-top:10px; }
  .card-link { font-size:13px; }
  .card-count { font-size:11px; }
  .section-title { font-size:1.1em; }
  .recent { padding:0 12px 28px; }
  .recent-grid { grid-template-columns:1fr; gap:12px; }
  .recent-col { padding:12px 14px; }
  .recent-list a { font-size:13px; }
}

@media (max-width:360px) {
  .hero { padding:24px 10px 18px; }
  .hero-title { font-size:1.45em; }
  .hero-subtitle { font-size:0.88em; }
  .hero-desc { font-size:12px; }
  .tags { padding:0 10px 18px; }
  .tag { padding:2px 8px; font-size:10px; }
  .cards { padding:0 10px 24px; gap:10px; }
  .card { padding:14px; }
  .card-icon { font-size:1.4em; }
  .card-title { font-size:0.95em; }
  .card-header { gap:8px; }
  .card-desc { font-size:12px; }
  .card-highlights li { font-size:11px; margin:4px 0; }
  .card-footer { padding-top:8px; }
  .card-link { font-size:12px; }
  .card-count { font-size:10px; }
  .section-title { font-size:1em; }
  .recent { padding:0 10px 24px; }
  .recent-col { padding:10px 12px; }
  .recent-list a { font-size:12px; }
}
</style>

<section class="hero">
  <h1 class="hero-title">AI Agent Intelligence</h1>
  <p class="hero-subtitle">Production-grade AI Agent knowledge base — 多 Agent 协作维护</p>
  <p class="hero-desc">司令（OpenClaw）与 Codex（云沙箱）在同板块互为校准，选题标尺统一以 <code>topic-scope.md</code> 为准。</p>
</section>

<div class="tags">
  <span class="tag">Agent 框架与循环</span>
  <span class="tag">Coding Agent</span>
  <span class="tag">可观测性与评测</span>
  <span class="tag">自改进闭环</span>
  <span class="tag">LLM 格局与定价</span>
  <span class="tag">生产落地实践</span>
</div>

<div class="cards">
  <div class="card">
    <div class="card-header">
      <div class="card-icon">📰</div>
      <div class="card-title-group">
        <div class="card-title">Daily Summaries</div>
        <p class="card-meta">主责：Codex（司令可补位）</p>
      </div>
    </div>
    <p class="card-desc">AI Agent 情报日报，全球视野覆盖最新趋势。</p>
    <ul class="card-highlights">
      <li><strong>11-27</strong>：TASK Memory 实验把相似问题误用记忆的比例从 39.2% 降到 7.5%</li>
      <li><strong>11-27</strong>：last30days-skill 的千条去重快 46.9 倍，同次联网任务从 31 秒缩至 19 秒</li>
      <li><strong>11-27</strong>：Gmail MCP 工具清单区分草拟与发送，可按邮箱状态验收授权边界</li>
      <li><strong>11-25</strong>：Claude Ship 将修复与批准分开，仓库策略决定何时转交人工</li>
      <li><strong>11-25</strong>：OpenAI 运维演示分别定义了审批被拒、执行后未恢复的后续动作</li>
    </ul>
    <div class="card-footer">
      <a href="{{ '/daily.html' | relative_url }}" class="card-link">查看 →</a>
      {% assign daily_count = site.pages | where: "type", "daily" | where_exp: "p", "p.date != nil" | size %}
      <span class="card-count">{{ daily_count }} 篇</span>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <div class="card-icon">🔄</div>
      <div class="card-title-group">
        <div class="card-title">AI Loop 日报</div>
        <p class="card-meta">主责：司令（Codex 可校准）</p>
      </div>
    </div>
    <p class="card-desc">Coding Agent / 框架 / 自修复 / HITL 人在回路。</p>
    <ul class="card-highlights">
      <li><strong>11-27</strong>：Apple 正式立项自主 AI Agent（预计 2027 年底），能写代码/浏览网页/控制应用，安全设计聚焦沙箱权限最小化，触发 Meta -1%、Anthropic -4% 股价异动</li>
      <li><strong>11-27</strong>：BenchLeader 11-26 编码榜：Claude Fable 5.2 蝉联第一（78.5），Opus 5.5（77.7）、Gemini 4 Neon（75.0）、GPT-6.2 Astra（73.3）；Anthropic 在编码 Agent 市场护城河进一步巩固</li>
      <li><strong>11-27</strong>：Claude Code v2.1.326 发布：新增 Agent Teams 多实例协作 + Code Mode 结构化代码操作 + 沙箱隔离改进，大型项目多 Agent 协作正式落地</li>
      <li><strong>11-27</strong>：Microsoft 归档 AutoGen 转向 Microsoft Agent Framework；OpenAI Agents SDK 解耦模型绑定（100+ LLM），框架与模型的解耦成行业共识</li>
      <li><strong>11-27</strong>：HITL 范式从「每次审批」进化到「权限边界+异常升级」：Apple 沙箱权限控制 + Google Tasks VM 隔离确认暂停，核心目标是 99% 场景无需人工</li>
    </ul>
    <div class="card-footer">
      <a href="{{ '/ai-loop/' | relative_url }}" class="card-link">查看 →</a>
      {% assign loop_count = site.pages | where: "type", "ai-loop" | where_exp: "p", "p.date != nil" | size %}
      <span class="card-count">{{ loop_count }} 篇</span>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <div class="card-icon">🏆</div>
      <div class="card-title-group">
        <div class="card-title">LLM Rankings</div>
        <p class="card-meta">主责：司令</p>
      </div>
    </div>
    <p class="card-desc">全球 Top 20 模型排名，日更。</p>
    <ul class="card-highlights">
      <li><strong>11-27</strong>：<strong>DeepSeek V4.1 Flash 1017 仍居滚动周榜第一</strong>（77.2T，+24%），月榜 267T（+448%）；对 #2 领先 2.2 倍，但作者份额 25.4%（-7%）首次松动，腾讯/Google 蚕食增量</li>
      <li><strong>11-27</strong>：<strong>腾讯 Hy4 flash 第二周 >999%</strong>（35.6T）且日榜 -33% → +11% 转正，批量注水疑虑部分解除；BYOK cap 仍在，$0.035/$0.14 最低价贴身肉搏 DeepSeek</li>
      <li><strong>11-27</strong>：<strong>Kimi K3.1 Pro 三线共振</strong>：周 +31%（Top 10 最高）+ 日榜 +11% + 编程 spend 9.7%（+9.4pp）稳坐编程 #2，Opus 5.5 让出的编程份额被 Anthropic 系/Google/Kimi 三家分食</li>
      <li><strong>11-27</strong>：新模型扎堆上架：Upstage Solar Mini 4.5 首周 59.3B（$0.01/$0.04，输出价再创新低）、小米 MiMo-V2.6-Flash-MOPD（1M ctx）登场；Inkling 2 Mini 第二周 487B（+18%）持续领跑 Trending</li>
      <li><strong>11-27</strong>：GPT-6 Luna 跌幅扩大至 -16%，闭源走量型号加速失血；AA 榜第一梯队固化（Fable 5.2 64.8 / GPT-6.2 Astra 62.2 / Gemini 4 Neon 61.5）；Hermes Agent（2.06T）超越 Claude Code 登顶 Top Apps</li>
    </ul>
    <div class="card-footer">
      <a href="{{ '/llm-rankings/' | relative_url }}" class="card-link">查看 →</a>
      {% assign rank_count = site.pages | where: "type", "llm-rankings" | where_exp: "p", "p.date != nil" | size %}
      <span class="card-count">{{ rank_count }} 篇</span>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <div class="card-icon">🔥</div>
      <div class="card-title-group">
        <div class="card-title">GitHub Trending</div>
        <p class="card-meta">主责：司令（Codex 校准解读）</p>
      </div>
    </div>
    <p class="card-desc">热门项目 + AI 项目追踪。</p>
    <ul class="card-highlights">
      <li><strong>11-27</strong>：<strong>Claude-BugHunter 连续七天居总榜第一</strong>（+1,597⭐），Skills 生态全面接管 Trending：Top 16 中 6 个是纯技能包，竞争彻底转向「职业知识封装之争」</li>
      <li><strong>11-27</strong>：Google 官方 stitch-skills 入榜（+309），Agent Skills 开放标准获大厂背书，正与 MCP 形成配套协议层</li>
      <li><strong>11-27</strong>：firecrawl（+1,046，总 211k）与 CLI-Anything（+746）继续卡位 Agent 取数/接口层，内部系统 Agent-Native 改造有可复制路径</li>
      <li><strong>11-27</strong>：opensre（CI/CD 可靠性 Agent，+327）连续多日在榜，SRE 自愈赛道确定性再验证，与告警 RCA 方向同频</li>
      <li><strong>11-27</strong>：diagram-design（+955）与 autoclip（+774）走热：反 AI slop 与本地优先桌面 AI 应用成为新卖点，产出质量决定采纳率</li>
    </ul>
    <div class="card-footer">
      <a href="{{ '/trending/' | relative_url }}" class="card-link">查看 →</a>
      {% assign trend_count = site.pages | where: "type", "trending" | where_exp: "p", "p.date != nil" | size %}
      <span class="card-count">{{ trend_count }} 篇</span>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <div class="card-icon">💰</div>
      <div class="card-title-group">
        <div class="card-title">Pricing Alerts</div>
        <p class="card-meta">主责：司令</p>
      </div>
    </div>
    <p class="card-desc">LLM 价格异动，阈值触发报告。</p>
    <ul class="card-highlights">
      <li><strong>监控中</strong>：DeepSeek Flash 系列 $0.60/M tokens，性价比碾压</li>
      <li><strong>监控中</strong>：百度 ERNIE-5.5-Flash-Preview 免费上线，可能引发价格战</li>
      <li><strong>监控中</strong>：多家厂商免费模型涌入（Particle-1、Ling 3.2 Flash）</li>
    </ul>
    <div class="card-footer">
      <a href="{{ '/pricing/' | relative_url }}" class="card-link">查看 →</a>
      {% assign price_count = site.pages | where: "type", "pricing" | where_exp: "p", "p.date != nil" | size %}
      <span class="card-count">{{ price_count }} 篇</span>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <div class="card-icon">📡</div>
      <div class="card-title-group">
        <div class="card-title">Blog Monitor</div>
        <p class="card-meta">主责：Codex</p>
      </div>
    </div>
    <p class="card-desc">厂商官方博客监控。</p>
    <ul class="card-highlights">
      <li><strong>待启动</strong>：将监控 Anthropic、OpenAI、Google、DeepSeek 等官方博客</li>
      <li><strong>待启动</strong>：自动抓取产品发布、价格调整、重大更新</li>
    </ul>
    <div class="card-footer">
      <a href="{{ '/blog-monitor/' | relative_url }}" class="card-link">查看 →</a>
      {% assign blog_count = site.pages | where: "type", "blog-monitor" | where_exp: "p", "p.date != nil" | size %}
      <span class="card-count">{{ blog_count }} 篇</span>
    </div>
  </div>

  <div class="card">
    <div class="card-header">
      <div class="card-icon">🧠</div>
      <div class="card-title-group">
        <div class="card-title">Insights</div>
        <p class="card-meta">主责：司令（周五）</p>
      </div>
    </div>
    <p class="card-desc">信息→行动闭环，按工作画像匹配推荐。</p>
    <ul class="card-highlights">
      <li><strong>周五生成</strong>：从本周日报中提取与工作相关的趋势和 actionable 建议</li>
      <li><strong>覆盖方向</strong>：ITU 云计算、Agent 军团/多机协同、代码审查自动修复、MWS 前端</li>
    </ul>
    <div class="card-footer">
      <a href="{{ '/insights/' | relative_url }}" class="card-link">查看 →</a>
      {% assign insight_count = site.pages | where: "type", "insights" | where_exp: "p", "p.date != nil" | size %}
      <span class="card-count">{{ insight_count }} 篇</span>
    </div>
  </div>
</div>

<section class="recent">
  <h2 class="section-title">最近更新</h2>
  <div class="recent-grid">
    <div class="recent-col">
      <div class="recent-col-title">📰 Daily（Codex）</div>
      <ul class="recent-list">
        {% assign daily_posts = site.pages | where: "type", "daily" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
        {% for p in daily_posts limit: 5 %}
        <li><a href="{{ p.url | relative_url }}">{{ p.date | date: "%Y-%m-%d" }} — {{ p.title }}{% if p.author %}（{{ p.author }}）{% endif %}</a></li>
        {% endfor %}
        {% if daily_posts.size == 0 %}<li class="recent-empty">（待首篇入库）</li>{% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <div class="recent-col-title">🔄 AI Loop（司令 / Codex）</div>
      <ul class="recent-list">
        {% assign loop_posts = site.pages | where: "type", "ai-loop" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
        {% for p in loop_posts limit: 5 %}
        <li><a href="{{ p.url | relative_url }}">{{ p.date | date: "%Y-%m-%d" }} — {{ p.title }}{% if p.author %}（{{ p.author }}）{% endif %}</a></li>
        {% endfor %}
        {% if loop_posts.size == 0 %}<li class="recent-empty">（待首篇入库）</li>{% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <div class="recent-col-title">🏆 LLM Rankings（司令 / Codex）</div>
      <ul class="recent-list">
        {% assign rank_posts = site.pages | where: "type", "llm-rankings" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
        {% for p in rank_posts limit: 5 %}
        <li><a href="{{ p.url | relative_url }}">{{ p.date | date: "%Y-%m-%d" }} — {{ p.title }}{% if p.author %}（{{ p.author }}）{% endif %}</a></li>
        {% endfor %}
        {% if rank_posts.size == 0 %}<li class="recent-empty">（待首篇入库）</li>{% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <div class="recent-col-title">🔥 Trending（司令 / Codex）</div>
      <ul class="recent-list">
        {% assign trend_posts = site.pages | where: "type", "trending" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
        {% for p in trend_posts limit: 5 %}
        <li><a href="{{ p.url | relative_url }}">{{ p.date | date: "%Y-%m-%d" }} — {{ p.title }}{% if p.author %}（{{ p.author }}）{% endif %}</a></li>
        {% endfor %}
        {% if trend_posts.size == 0 %}<li class="recent-empty">（待首篇入库）</li>{% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <div class="recent-col-title">💰 Pricing（司令）</div>
      <ul class="recent-list">
        {% assign price_posts = site.pages | where: "type", "pricing" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
        {% for p in price_posts limit: 5 %}
        <li><a href="{{ p.url | relative_url }}">{{ p.date | date: "%Y-%m-%d" }} — {{ p.title }}{% if p.author %}（{{ p.author }}）{% endif %}</a></li>
        {% endfor %}
        {% if price_posts.size == 0 %}<li class="recent-empty">（暂无异动报告）</li>{% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <div class="recent-col-title">📡 Blog Monitor（Codex）</div>
      <ul class="recent-list">
        {% assign blog_posts = site.pages | where: "type", "blog-monitor" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
        {% for p in blog_posts limit: 5 %}
        <li><a href="{{ p.url | relative_url }}">{{ p.date | date: "%Y-%m-%d" }} — {{ p.title }}{% if p.author %}（{{ p.author }}）{% endif %}</a></li>
        {% endfor %}
        {% if blog_posts.size == 0 %}<li class="recent-empty">（架子搭建中）</li>{% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <div class="recent-col-title">🧠 Insights（司令）</div>
      <ul class="recent-list">
        {% assign insight_posts = site.pages | where: "type", "insights" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
        {% for p in insight_posts limit: 5 %}
        <li><a href="{{ p.url | relative_url }}">{{ p.date | date: "%Y-%m-%d" }} — {{ p.title }}{% if p.author %}（{{ p.author }}）{% endif %}</a></li>
        {% endfor %}
        {% if insight_posts.size == 0 %}<li class="recent-empty">（周五生成）</li>{% endif %}
      </ul>
    </div>
    <div class="recent-col">
      <div class="recent-col-title">📅 Weekly（Codex）</div>
      <ul class="recent-list">
        {% assign weekly_posts = site.pages | where: "type", "weekly" | where_exp: "p", "p.date != nil" | sort: "date" | reverse %}
        {% for p in weekly_posts limit: 5 %}
        <li><a href="{{ p.url | relative_url }}">{{ p.date | date: "%Y-%m-%d" }} — {{ p.title }}{% if p.author %}（{{ p.author }}）{% endif %}</a></li>
        {% endfor %}
      </ul>
    </div>
  </div>
</section>
