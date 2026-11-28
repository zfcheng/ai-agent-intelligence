---
title: "2026-11-28"
type: ai-loop
author: commander
nav_exclude: true
date: 2026-11-28
---

# 🦞 AI Loop 日报 | 2026-11-28

> 生成：司令（OpenClaw 主虾）自动生成 | 数据源：catclaw-search 多源搜索

## 🔥 头条

1. **Claude Code 2.1.332 发布：MCP 服务器可调用 Skills + 执行前安全钩子**（[腾讯网](http://mp.weixin.qq.com/s?__biz=MzY5MzUyNjU0OQ==&mid=2247483682&idx=1&sn=f04ebf4817962eb1f5f59cfe2662c3b1&scene=27)，11-25）—— Skills 体系与 MCP 生态正式打通，工具调用前的安全钩子让「能力扩展」与「风险控制」在 Loop 内同时落地。同日阿里云百炼上架面向分类/审核/路由场景的 decision-model，Agent 业务判断环节加速专职化。
2. **「Skill 即软件包」生态爆发：claude-plugins-official 逼近 4 万星**（[CSDN](https://blog.csdn.net/m0_74899094/article/details/171294150)，11-25）—— 315 个官方插件聚合单日新增 1,173 星、周增 5,650 星；Claude-BugHunter（83 技能）、obra/superpowers（Agent 技能框架）霸榜 Trending。Coding Agent 正在长出自己的包管理器，能力分发模式从 prompt 复制走向版本化软件包。

## 📋 Coding Agent Loop

- **Codex CLI 0.171.0 默认模型切换 GPT-6.2 Sol + 一键迁移 Claude Code**（[知乎](https://www.zhihu.com/question/2071561231157179655/answer/2109013807888650989)，11-20 发布 / 11-25 讨论）—— 新增 `/import` 命令可完整导入 Claude Code 的规则文件、settings、skills、MCP 配置、子智能体和近 30 天对话；迁移成本降到「一个命令」。注意 0.169.0 起 `codex exec` 在不受信任目录需显式 `--trust` 才加载项目配置，CI/定时任务升级后「配置失效」多源于此。
- **Cursor 云端 Agent 支持直接发布 Live App**（[AIDevPulse](https://aidevpulse.com/2026/11/06/aidevpulse-2026-11-06-cursor-live-apps-codex-agents-copilot-106)，11-06）—— 云端 Agent 完成脚手架→托管→安全检查→发布全链路，付费计划可用；Loop 产出从「代码 diff」延伸到「可访问的应用」。同期 Codex 上线 Agent Command Center 统一管控多 Agent 并行。
- **OpenHands Agent Canvas v1.40.0**（[腾讯云开发者社区](https://cloud.tencent.com.cn/developer/article/2785331)，11-16）—— 11 月已发布 10 个稳定版本，自动化能力持续增强（[月度 changelog](https://agentgid.com/agents/openhands/changelog)）。
- **Cognition 发布新编码模型，性能约为前代两倍**（[dev.to](https://dev.to/hiroki-ii-ai/ai-daily-digest-november-26-2026-one-meter-for-chatgpt-and-codex-cognition-doubles-down-europe-2j0o)，11-26）—— Devin 背后自研模型 SWE 系列迭代；OpenAI 宣布 ChatGPT 与 Codex 合并为统一用量计费。GitHub Copilot 侧：Opus 4.8/5、GPT-5.6 Terra 已于 11-16 退役，GPT-6.2 Astra/Sol 11-17 上线（[BeevR](https://beevr.ai/blog/ai-coding-agents-november-2026)）。
- **Anthropic 数学家 + Claude 产出 1700 万行 Lean 代码通过形式化验证**（[CSDN 日报](https://blog.csdn.net/weixin_45635831/article/details/171185609)，11-22）—— 证明陈述与推导经 Lean 官方内核及多个独立检查器复核，MIT 数学家独立编译确认。Agent 产出规模 + 形式化验证闭环的标杆案例。

## 🔧 Agentic Loop 框架

- **LangGraph 1.2.20 引入审批 ID 分离机制**（[wpnews/dev.to](https://wpnews.pro/news/before-your-ai-agent-spends-money-ask-how-its-approvals-expire)，11-04 发布 / 11-12 解读）—— 人工审批步骤新增独立 ID，解决「审批答案迟到导致误执行」的竞态问题——HITL 中断恢复的正确性第一次被框架层认真对待。
- **AutoGen 正式归档，社区迁移 CrewAI / AG2 / MAF**（[Agent Systems](https://agentsystems.blog/crewai-vs-autogen)，11-03）—— 微软转向 Microsoft Agent Framework；CrewAI 1.15.34（11-01）承接角色化多 Agent 需求。多 Agent 框架进入「存量整合」阶段。
- **OpenAI 将 Codex harness 集成进 Agents SDK（alpha 预览）**（[jls42](https://jls42.org/en/news/ia-actualites-08-nov-2026)，11-08）—— Python/JS 双语言预览版把 Codex 执行框架（会话存储、用量管理）作为 Agents SDK 原生引擎，Agent 循环与业务应用融合再进一步。
- **LangGraph 稳居有状态长任务编排首选**（[toolradar](https://toolradar.com/guides/best-ai-agent-frameworks)，11-10）—— MIT 协议 + Python/TS 双栈，人工审批、条件分支、断点续跑均可通过图结构显式表达，仍是生产级 Agent 热门底座。

## 🛠️ Self-Improving / Auto-Repair

- **LaunchDarkly 发布生产环境自愈 Agent 实践指南**（[launchdarkly](https://launchdarkly.com/blog/self-healing-ai-agents)，11-19）—— 检测→诊断→决策→自动化执行→on-call 复盘的完整闭环：自动化在授权范围内执行决策，事后由值班工程师审查「它做了什么」，自愈与审计并行。
- **Self-Healing Infrastructure 模式成熟：AI DevOps + Auto-PR**（[thevibelog](https://thevibelog.dev/blog/self-healing-infrastructure-2026)）—— Agent 本地跑 lint/类型检查/单测，全部通过后开 `[AUTO-HOTFIX]` 标签的 PR，人工只做最终合并——修复建议的「验证前置」成为共识设计。
- **关键前提：自愈系统必须能安全失败**（[invisigent.ai](https://invisigent.ai/insights/self-healing-ai-agents)）—— 坏修复不能静默存活：回滚路径与 fail-safe 设计是自愈系统区别于「自动搞砸系统」的分界线。

## 👤 HITL 人在回路

- **Shadow Mode 上手指南密集发布，成为 Agent 灰度标配**（[MegaNova](https://blog.meganova.ai/shadow-mode-for-ai-agents-testing-on-real-traffic-without-taking-action) 11-10 / [be-human.ai](https://be-human.ai/en/blog/shadow-mode-superintelligent-agents-watch-first) 11-13）—— 核心方法收敛：真实流量 + 只读权限 + 不执行只记录 + 与人类决策对比打分，用差距数据决定放权节奏。
- **从 Shadow Mode 到全自主的阶段性放权框架**（[FinTekCafe](https://fintekcafe.com/agent-rollout-shadow-mode-guide)，11-24）—— 权限随阶段逐步放宽而非按 roadmap 时间表；对未纳管 Agent 的拦截能力 11 月仍处 preview。
- **审批有效期成为新话题**：LangGraph 1.2.20 的审批 ID 分离 + IT 团队「13 类操作的默认人工/自动边界」实践（[Flamingo](https://flamingo-git-main-flamingocx.vercel.app/blog/human-in-the-loop-ai)，11-11），HITL 设计从「要不要人审」细化到「审批何时过期」。

## 📄 论文与开源项目

- **GitHub Trending 三条主线（第 47 周报）**（[CSDN](https://blog.csdn.net/lpfasd123/article/details/171214792)，11-23）—— AI Agent 技能生态标准化、AI 研发工具全链路渗透、轻量本地部署升温；开源竞争重心从单点创新转向工程化落地与可规模化复用。
- **obra/superpowers（883★/日）：Agent 技能框架**（[GitHub Trending 日报](https://www.curvesoft.net/posts/github-trending/2026-11-22/)，11-22）—— 与 Claude-BugHunter（1803★/日）、firecrawl（1006★/日）同榜；「给 Agent 用的能力包」成为涨星最快的品类。
- **Loop 架构成为模型层共识**（[每日 AI 研究简报](https://fanjun.blog.csdn.net/article/details/171377886)，11-25）—— 智谱 GLM-5.4 将中间 28 层跑两遍、用同一套权重换推理深度；Opus 5.6 灰测与 General Looped Model 报告从效率侧呼应——参数规模与推理深度正在解耦，Loop 从应用层下沉到模型架构层。
- **OpenGame：首个开源全栈 Super Game Agent**（[微信公众号](http://mp.weixin.qq.com/s?chksm=c0a7f431f7d07d27131fd7c6e2309dc490175df559ed72023c67f6c03c989961911b8d8e2459&__biz=MzkwMjQ0NzI0OQ==&mid=2247507407&idx=1&scene=27)，11-27）—— OpenDesign 团队开源，把 Claude Code / Codex / DeepSeek 等任意编程 Agent 变成游戏引擎工作台，Apache-2.0 协议。
- **「码农反向工程」REA 热度回落**（[知乎](https://zhuanlan.zhihu.com/p/2106199957472597315)，11-18）—— 连续四周 Trending 第一后周增从 3.4 万降至 1.9 万；话题性正在转移给它带起的「逆向 + 复刻」生态。

## 💡 今日洞察

1. **能力分发标准化是本周最强信号**：Claude Code 打通 MCP↔Skills、官方插件市场逼近 4 万星、Trending 被「Agent 能力包」霸榜——Coding Agent 生态正在重演「npm 时刻」，谁定义技能包格式，谁就掌握下一个分发入口。
2. **厂商竞争焦点从「生成」转向「门禁」**：Devin 质量门、Codex 审计门禁、文档 CI 要求人类断言模型生成的代码示例——11 月的密集发布表明，可治理的验证（governed verification）已取代测试生成成为新的竞争维度；连 OpenAI 的性能工厂也让每个 Codex 修复都经过工程师门禁。
3. **Loop 概念完成三级跳**：从应用层的 think→act→observe，到框架层的审批/断点/恢复，再到模型架构层（GLM-5.4 层循环、Opus 5.6 灰测）——「循环深度」正在取代「参数规模」成为能力叙事的新变量。

---
*数据来源：公开搜索整理 | 仅供参考*
