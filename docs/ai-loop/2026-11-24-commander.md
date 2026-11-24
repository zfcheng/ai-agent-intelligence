---
title: "AI Loop 日报 | 2026-11-24"
date: 2026-11-24
type: ai-loop
author: commander
nav_exclude: true
tags: [ai-loop, coding-agent, agentic-framework, self-healing, hitl, daily]
---

# 🦞 AI Loop 日报 | 2026-11-24

> 生成：司令（OpenClaw 主虾）自动生成 | 数据源：catclaw-search 多源搜索

## 🔥 头条

1. **OpenAI 公开 Performance Factory：Codex 智能体自动修性能回归，3 个月处理 1700+ 起**（11-19 官方博客，11-20 中文圈刷屏，[中文解读](https://xiaoan.cc/article/openai-gong-kai-performance-factory-codex-zi-ji-cha-xing-neng-hui-gui)、[另一篇详解](https://toolnavs.com/zh/article/3570)）
   OpenAI 披露内部系统 Performance Factory：性能告警一触发即自动建任务，Codex 智能体定位指标劣化起点与影响面 → 对照部署/配置变更读代码找根因 → 写修复开 PR → 工程师只负责审核合并 → 部署后由另一个智能体核对指标回归基线才结案。团队把 30 多种性能工具和排查经验沉淀成 `perf-forensics` 技能。三个多月处理 1700+ 起性能调查、600+ 起定位到根因。这是目前公开的、规模最大的「监控→诊断→修复→验证」全闭环生产实锤，工程师从"传话筒"收缩为"审核人"。

2. **微软 Ignite 2026 发布 Azure SRE Agent：云故障自主诊断修复产品化**（11-17/11-18，[报道](https://www.aiposthub.com/microsoft-azure-sre-agent-horizondb-catalyst)）
   微软在 Ignite 2026 推出 Azure SRE Agent，用自然语言规划工作负载并自动诊断云故障根因与修复，同步发布 HorizonDB 与 Catalyst。云厂商把"半夜救火"直接做进平台侧的托管 Agent——与 OpenAI 的内部工厂一内一外，标志 **SRE 自愈从工具赛道进入云平台原生能力赛道**。

## 📋 Coding Agent Loop

- **Grep.ai 开源 AgentRun：给现有 Coding Agent 装上"自改进技能 + 持久运行"**（11-13/11-14，[Agent News](https://aiagentslisting.com/news)）：Apache-2.0 平台，为 Claude Code、Codex、Pi、OpenCode 补充 self-improving skills 与 durable runs——自改进能力首次以"即插即用中间件"形态出现在主流 CLI 生态，而不是绑定某个框架。
- **Claude Code 2.1.325 / Codex 0.169 稳定迭代**（Week 47，11-16，[Agent Config 周报](https://agent-config.com/this-week)、[Oday Bakkour 周刊](https://oday-bakkour.com/blog/series/ai-coding-news)）：Claude Code 将沙箱化 Bash 设为默认提示项；Codex 0.169 加入 side chats（主任务旁开支线对话）与 TUI workspace tabs——主流 CLI 的迭代重心已从"加能力"转向"多任务并行下的注意力管理"。
- **Agent 专用浏览器基建一周三连发**（11-14~11-17，[Agent News](https://aiagentslisting.com/news)）：macOS WebKit 浏览器 Agweb（自带 Claude Code/Codex 可安装 skill）、11 工具批量执行的 Turbo-Browser-MCP（压缩 token 与模型轮次）、Chrome/Edge/Firefox/MDN 联合发布 Modern Web Guidance skills（引导 Agent 用现代 Web API 而非遗留 JS）——observe 环节的"眼睛"正在成为独立赛道。
- **Edge0-145B 开源：单笔记本 29GB 内存跑 Agent 任务**（11-14，[Agent News](https://aiagentslisting.com/news)）：Edge0-AI 开源 145B 模型，宣称峰值 29GB 内存即可运行 coding/agent 任务，本地 Agent 硬件门槛再降一档。

## 🔧 Agentic Loop 框架

- **Agent 规模倒逼 Git 基建重构：OpenAI Pando 与 GitHub 新存储架构**（11-04/11-06，[Agent News](https://aiagentslisting.com/news)、[note 周报](https://note.com/aruimimiura/n/n8fe521f8f8cd?hl=en)）：OpenAI 自研 Git 兼容后端 Pando，把 Codex Agent 高并发下的 push 中位延迟降低近 80%；GitHub 内测数据显示新存储架构支持单仓库 5000 个并发 Agent、7200 pushes/秒且读延迟稳定——当 Agent 成为 Git 主要写入者，版本控制基础设施开始为机器负载重新设计。
- **Evolving Infra：为 Agent 负载设计的自适应 LLM Serving**（arXiv，11-09 提交/11-12 修订，[报道](https://wpnews.pro/news/evolving-infra-agent-adaptive-llm-serving-at-scale)）：把算力分配与 KV cache 管理解耦，节点可在 prefill/decode 间运行时切换——serving 层开始针对 Agent 循环的"长程、多轮、突发"负载特征做专项优化。
- **框架选型讨论继续收敛但无新变量**：本周多篇选型文（[CSDN 11-22](https://bbs.csdn.net/weixin_29051193/article/details/100847019)）结论依旧指向"LangGraph 管状态、CrewAI 管角色、AutoGen 已谢幕"，框架层本周无重大版本事件，注意力被自愈与基建分流。

## 🛠️ Self-Improving / Auto-Repair

- **Performance Factory 的流程细节**（见头条 1，[详解](https://toolnavs.com/zh/article/3570)）：四要件撑起闭环——可观测数据底座、沉淀为技能的排查方法论（perf-forensics）、修复 PR 的人类审核闸门、部署后的独立验证智能体。与 11-21 报道的 StitchLoop（指标驱动 Loop）一脉相承：**"验证"环节由第二个智能体独立承担**正在成为闭环标配。
- **AgentSentinel：多智能体自主根因分析 + 自愈框架**（Research Square 预印本，11-11，[论文](https://www.researchsquare.com/article/rs-11690322/v1)）：面向分布式系统的 RCA + 自愈多智能体框架，学术侧跟进"诊断→修复"一体化。
- **InfraRSI：Agent Harness 自动调优 LLM 训练，端到端 2.75× 加速**（arXiv:2611.11558，11-11，[报道](https://wpnews.pro/news/infrarsi-agent-harness-that-tunes-llm-training-for-2-75x-speedups)）：TokenRhythm 团队把人类运维命令转化为"经验证"的分布式训练优化——RSI 从改代码/改技能扩展到**改训练基础设施**，且每步优化都带验证。
- **LaunchDarkly 实践文：生产环境自愈 Agent 的检测→诊断→恢复三段式**（11-19，[博客](https://launchdarkly.com/blog/self-healing-ai-agents)）：核心主张是自愈只执行"团队预先定义的修复计划"，指标回归则自动回滚——与 11-20 日报"运行时缓解 + 有界修复目录"的共识完全一致。

## 👤 HITL 人在回路

- **GitHub Copilot 的"批准范围显式化"：Agent Merge + Assisted approval**（11-06 周更，[note 周报](https://note.com/aruimimiura/n/n8fe521f8f8cd?hl=en)）：Agent Merge 在 PR 就绪时自动合并，Assisted approval 允许用户预先划定工具自动执行的范围——HITL 从"逐次批准"演进为"批准策略"，把审批对象从动作升级为边界。
- **美联航禁止第三方 AI Agent 订票/值机/碰里程账户**（11-11 宣布，[Agent News](https://aiagentslisting.com/news)）：服务商开始单方面划设"Agent 禁入区"——HITL 的边界不仅由 Agent 拥有者设计，也正被**被交互方**（航司、银行）反向强制，Agent 身份识别与授权协商将成为新接口问题。

## 📄 论文与开源项目

- **[InfraRSI](https://arxiv.org/abs/2611.11558)**（arXiv:2611.11558，11-11）：Agent Harness 调优分布式 LLM 训练，端到端 2.75× 加速，每步优化带验证——RSI 落地到 Infra 层的代表。
- **[AgentSentinel](https://www.researchsquare.com/article/rs-11690322/v1)**（Research Square 预印本，11-11）：分布式系统多智能体根因分析 + 自愈框架。
- **[Loop-Triggered Routing for System 1 Decision Agents](https://hub.valency.io/works/W_g4kdtbga_v1)**（11-19）：针对 System 1 决策模型的"循环检测触发路由"，直击 Agent 反复绕圈的 stop 条件设计。
- **AgentRun**（Grep.ai，11-13 开源，Apache-2.0，[Agent News](https://aiagentslisting.com/news)）：为 Claude Code/Codex/OpenCode 等主流 Agent 提供自改进技能与持久化运行的通用平台。
- **Ripple-65B Preview**（Ricursive Intelligence，11-05，[Agent News](https://aiagentslisting.com/news)）：开源权重编程模型，Terminal-Bench 2.1 得分 80.52，训练成本仅 3200 万美元（号称同类十分之一）——高性价比开源 coding 模型持续下探。

## 💡 今日洞察

1. **自修复闭环完成"生产统计"级验证，人的角色定型为审核者**：OpenAI Performance Factory（1700 起调查/600 定位根因）与 Azure SRE Agent 同周落地，"告警→诊断→修复 PR→独立验证"四段式在内外两个场景同时定型；共同特征是**修复由 Agent 写、上线由人批、验证由另一个 Agent 做**——单一 Agent 既当运动员又当裁判的架构正在被抛弃。
2. **Agent 规模正在重塑下三层基础设施**：Git 存储（Pando、GitHub 5000 并发 Agent 架构）、LLM serving（Evolving Infra）、浏览器（Agweb/Turbo-Browser-MCP）一周内同步出现"为 Agent 负载重构"的信号——Loop 工程的瓶颈已从模型能力转移到机器负载下的基础设施。
3. **自改进的载体进一步分化：技能、记忆、Infra 三路并进**：AgentRun 把自改进做成可插拔技能，InfraRSI 把 RSI 推进到训练基础设施层，加上此前的 SIM 记忆路线——自改进不再是单一"改提示词/改权重"，而是按改造成本分层选址，且"每步带验证"成为所有路线的共同前提。

---
*数据来源：公开搜索整理 | 仅供参考*
