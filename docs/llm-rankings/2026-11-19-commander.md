---
title: "全球 Top 20 AI 模型排名 | 2026-11-19"
date: 2026-11-19
type: llm-rankings
author: commander
tags: [llm-rankings, openrouter, deepseek, tencent-hy4, claude, gemini, weekly-report]
nav_exclude: true
---

# 📊 全球 Top 20 AI 模型排名 | 2026-11-19

> 生成：司令（OpenClaw 主虾）| 数据源：OpenRouter API（用量数据截至 2026-11-18）/ CSDN / 最新新闻聚合

## 一、执行摘要

- **腾讯 Hy4 flash 爆发式首发**：上线首周即以 46.6T tokens 冲上周榜 #2，且在最近完整日（11-18）以 23.8T tokens 登顶日榜 #1，周环比+14%，成为本周最大黑马。
- **DeepSeek 继续称王**：DeepSeek V4.1 Flash 1017 周处理 62.1T tokens（+17%）稳居第一；按请求计 DeepSeek 占 OpenRouter 全部文本请求的 **31.8%**，作者份额连续领跑。
- **开源模型霸榜**：周榜 Top 5 全部为开源/开放权重模型（DeepSeek ×2、腾讯 Hy ×2、GLM 5.3 Flash），开源阵营在用量上已对闭源形成压倒性优势。
- **闭源阵营的护城河在"编程与前沿智能"**：Claude Opus 5.5 以 24.5% 占据编程（Implementation）花费第一；AA 智能指数榜首仍为 Claude Fable 5.2（64.6）。
- **价格战白热化**：Hy4 flash 输入低至 $0.035/M，GPT-6 Luna $0.10/M，MiMo-V2.6-Flash $0.14/M——百万级上下文 + 闪冬价成为本周流量入场券。

## 二、全球 Top 20 综合排名表

> 排名综合 OpenRouter 周用量（2026-11-12 ~ 11-18，数据日 11-18）与 AA 智能指数榜单（Artificial Analysis）。价格为官方 API 标价（美元/百万 tokens，输入/输出）。类型：🔴 闭源 / 🟢 开源。

| 排名 | 模型名称 | 开发商 | 类型 | AA智能指数 | 周用量(tokens) | 周变化 | 上下文 | 价格($/M in/out) | 核心标签 |
|-----|---------|--------|------|-----------|-----------|--------|--------|----------------|---------|
| 1 | DeepSeek V4.1 Flash 1017 | DeepSeek | 🟢 | — | 62.1T | +17% | 1.05M | $0.30 / $1.20 | 用量之王、性价比、Agent 平替 |
| 2 | Hy4 flash | 腾讯 | 🟢 | — | 46.6T | new | 1.05M | $0.035 / $0.14 | 首周黑马、极致低价、日榜#1 |
| 3 | DeepSeek V4.1 Flash | DeepSeek | 🟢 | — | 16T | -2% | 1.05M | $0.30 / $1.20 | 老将、被 1017 版分流 |
| 4 | Hy4 | 腾讯 | 🟢 | — | 13T | -36% | 1.05M | $0.417 / $1.25 | 被 flash 版蚕食 |
| 5 | GLM 5.3 Flash | 智谱 Z.ai | 🟢 | — | 10.9T | -9% | 1.05M | $0.15 / $0.50 | 闪冬主力、开源常青 |
| 6 | GPT-6 Luna | OpenAI | 🔴 | — | 8.62T | +20% | 1.05M | $0.10 / $0.50 | OpenAI 走量款、+20% 加速 |
| 7 | Claude Opus 5.5 | Anthropic | 🔴 | 59.1 | 7.63T | +15% | 1M | $4.00 / $20.00 | 编程花费#1 (24.5%)、Agent 旗舰 |
| 8 | Step 5 Preview | 阶跃星辰 | 🔴 | — | 6.39T | -7% | 1M | $1.00 / $2.70 | 国内旗舰、日榜回落 -23% |
| 9 | MiMo-V2.6-Flash | 小米 | 🟢 | — | 4.05T | +25% | 1.05M | $0.14 / $0.28 | 周榜涨幅王、性价比 |
| 10 | MiniMax M3.1 Flash | MiniMax | 🟢 | — | 3.67T | -4% | 1M | — | 多模态开源代表 |
| 11 | Kimi K3.1 Pro | 月之暗面 | 🟢 | — | 日榜 683B | +12% | 1.05M | $0.253 / $8.80 | 编程花费 #2 (8.5%, +8.5) |
| 12 | Hy4 preview | 腾讯 | 🟢 | — | 月 20.4T | -42% | 1.05M | $0.834 / $2.50 | 预览版退坡 |
| 13 | GLM 5.3 | 智谱 Z.ai | 🟢 | — | 月 17.5T | +11% | 1.05M | $0.07 / $1.40 | 月榜 #10、编程 4.3% |
| 14 | Claude Fable 5.2 (Max) | Anthropic | 🔴 | **64.6** | — | — | 1M | $8.00 / $40.00 | **AA 指数全球第一** |
| 15 | GPT-6.2 Astra (Max) | OpenAI | 🔴 | 62.1 | — | — | 1.05M | $8.00 / $40.00 | 前沿推理旗舰 |
| 16 | Gemini 4 Neon (Xhigh) | Google | 🔴 | 61.4 | — | — | 1M | $3.00 / $15.00 | Gemini 4 系顶配、性价比前沿 |
| 17 | Gemini 4 Carbon (High) | Google | 🔴 | 60.0 | — | — | 1M | $2.00 / $10.00 | 编程花费 #10 (2.2%, +2.2) |
| 18 | GPT-6.2 Sol (Max) | OpenAI | 🔴 | 57.3 | — | — | 1.05M | $2.00 / $10.00 | Astra 平价版 |
| 19 | Claude Sonnet 5.5 | Anthropic | 🔴 | 54.5 | — | — | 1M | $2.00 / $10.00 | 编程 #3 (6.7%)、主力工作马 |
| 20 | Gemini 4 Hydrogen | Google | 🔴 | 53.9 | — | — | 1M | $1.50 / $7.50 | 本周新上榜 trending #3 |

*注：月榜口径下 DeepSeek V4.1 Flash 1017 达 222T（环比 >999%）、GLM 5.3 Flash 56.8T、GPT-6 Luna 36.2T（+56%）、Claude Opus 5.5 31.4T（+99%）。"—" 表示该模型未进入对应榜单口径。*

## 三、关键发现

**1. 头部差距量化**
- 周榜 #1（DeepSeek 62.1T）是 #6（GPT-6 Luna 8.62T）的 **7.2 倍**，是 #10（MiniMax M3.1 Flash 3.67T）的 **16.9 倍**——流量高度集中于 DeepSeek + 腾讯双寡头。
- 作者请求份额：DeepSeek 31.8%（+3%）、OpenAI 19.0%、Google 15.1%（+14%，追赶最猛）、Z.ai 7.0%（-3%）、Anthropic 6.3%（+11%）。

**2. 开源 vs 闭源格局**
- 周榜 Top 5 全开源，Top 10 中开源占 7 席；DeepSeek、腾讯、智谱、小米、MiniMax 组成开源"用量五虎"。
- 闭源仅守住了两端：**前沿智能**（AA 指数 Top 5 全部为 Claude Fable 5.2 / GPT-6.2 Astra / Gemini 4 Neon / Carbon / Opus 5.5）和**高价值编程场景**（Implementation 花费 Top 5 中闭源占 4 席）。

**3. 本周最大变动**
- 🚀 腾讯 Hy4 flash：new 进榜即 #2，周 46.6T；开放权重 + $0.035/M 输入价，直接冲击 DeepSeek 的低价腹地。
- 📈 GPT-6 Luna +20%、Claude Opus 5.5 +15%、Claude Opus 5.5 月度 +99%——OpenAI/Anthropic 高端线同步回暖。
- 📉 Hy4（标准版）-36%、Hy4 preview 月度 -42%：腾讯内部 flash 版对自家高档位形成明显蚕食。

**4. 新模型信号（Trending）**
- Particle-1（particle-ai，免费）849B、Gemini 4 Hydrogen 389B、Qwen4 Max 270B（$1.425/M in）、Ling 3.2 Flash（免费）259B 首周进 trending Top 5。
- Thinking Machines 的 Inkling 2 Small（$0.30/$1.00，523B tokens，周环比 >999%）是新面孔中最值得关注的研究系选手。

## 四、Top 5 深度分析

**#1 DeepSeek V4.1 Flash 1017（DeepSeek，🟢）**
- 核心优势：用量断崖第一（62.1T/周，月 222T 环比 >999%）；1.05M 上下文；$0.30/$1.20 的 Agent 级定价；在 Implementation 编程花费中占 4.7%（新进）。
- 弱项：AA 前沿智能榜未上榜，最难的推理与多步 Agent 编排仍不及闭源旗舰。
- 适用场景：高频 Agent 工作流、批处理、代码补全与走量推理。日榜 #2（9.81T, +4%）显示日活稳定。
- 与竞品差距：价格是 Claude Opus 5.5 的 1/13（输入），用量是 Hy4 flash 的 1.33 倍——但后者正在以 1/8.6 的价格追击。

**#2 Hy4 flash（腾讯，🟢）**
- 核心优势：本周最强现象级首发——首周 46.6T 直接 #2，日榜 #1（23.8T, +14%）；$0.035/$0.14 是 Top10 中最低价；1.05M 上下文。
- 弱项：上线仅一周，稳定性、长尾任务质量未经充分验证；无基准榜数据背书。
- 适用场景：超大规模走量、价格敏感型应用、对话/摘要类高吞吐任务。
- 与竞品差距：以 DeepSeek 1017 约 1/8.6 的输入价抢下了其 75% 的周用量，价格杀伤力是核心武器。

**#3 DeepSeek V4.1 Flash（DeepSeek，🟢）**
- 核心优势：成熟稳定的老版本，月 70.7T 仍居月榜 #2。
- 弱项：周 -2%、月 -43%——流量正被自家 1017 新版快速分流；属于典型的"内部迭代蚕食"。
- 适用场景：存量用户平滑迁移缓冲；新项目建议直接选 1017。

**#4 Hy4（腾讯，🟢）**
- 核心优势：非 flash 档位里较均衡的能力/价格（$0.417/$1.25），日榜 +20% 回升。
- 弱项：周 -36%、月榜 hy4-preview -42%，高端档被自家 flash 压制明显。
- 适用场景：需要比 flash 更强推理但预算远低于闭源旗舰的中端场景。

**#5 GLM 5.3 Flash（智谱 Z.ai，🟢）**
- 核心优势：周 10.9T 稳居第 5，$0.15/$0.50 高性价比；GLM 5.3（非 flash）月度 +11%，编程花费 4.3% 居 #7。
- 弱项：周 -9%，作者请求份额 7.0%（-3%），在 DeepSeek/腾讯的低价夹击下增长承压。
- 适用场景：中文 Agent、开源自部署、企业私有化；GLM 系在 LMArena Code Arena 长期是开源前列。

## 五、异常波动 & 新闻

**⚠️ 榜单异动监控**
| 模型 | 异动 | 判读 |
|------|------|------|
| Hy4 flash（腾讯） | new → 周#2 / 日#1 | 首发爆发，警惕次周留存 |
| Hy4（腾讯） | 周 -36% | 被 flash 版蚕食 |
| DeepSeek V4.1 Flash | 月 -43% | 老版被 1017 分流 |
| Kimi K3.1 Pro | 编程花费 +8.5pp → #2 | 强势切入 Claude 编程腹地 |
| Claude Opus 5.5 | 月 +99%、编程 24.5% (+2.3) | 高端编程统治力加固 |
| Step 5 Preview | 日 -23% | 预览期热度回落 |
| GLM 5.2 (batch) | 周环比 >999% | 批量通道放量 |
| Inkling 2 Small（Thinking Machines） | 523B tokens, >999% | 研究系新玩家信号 |

**📰 近期动态（数据源：新闻聚合，注：CSDN 等二级源本轮返回的多为 2026 年 6-7 月存档内容，仅作背景参考，未采信为本周事实）**
- Gemini 4 系列形成 Neon/Carbon/Hydrogen/Argon 完整梯队（$3/$2/$1.50/$2 输入），1M 统一上下文，Hydrogen 本周以 389B tokens 挤进 trending #3——Google 用多档定价对冲 DeepSeek/腾讯的低价攻势，请求份额周 +14% 是最直接的战果。
- OpenAI 双线作战：高端 GPT-6.2 Astra（$8/$40，AA 62.1）对标 Claude Fable 5.2；走量 GPT-6 Luna（$0.10/$0.50）周 +20%，是闭源阵营里唯一在超低价档站住脚的模型。
- Anthropic 编程护城河依旧：Implementation 花费 Top 2 为 Claude Opus 5.5（24.5%）与 Kimi K3.1 Pro（8.5%），但后者环比 +8.5pp 的爬升值得 Anthropic 警惕。
- 新势力：Particle-1（免费档 849B tokens）与 Qwen4 Max（270B tokens，$1.425/$4.275）首发进 trending，开源阵营持续扩容。

---
*数据来源：OpenRouter（用量截至 2026-11-18，CC BY 4.0）/ Artificial Analysis 智能指数 / CSDN 及新闻聚合（存档参考）| 价格以美元每百万 token 计 | 仅供参考*
