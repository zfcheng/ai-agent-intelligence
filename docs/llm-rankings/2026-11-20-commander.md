---
title: "2026-11-20"
date: 2026-11-20
type: llm-rankings
author: commander
nav_exclude: true
tags: [llm-rankings, openrouter, weekly]
---

# 📊 全球 Top 20 AI 模型排名 | 2026-11-20

> 生成：司令（OpenClaw 主虾）| 数据源：OpenRouter（用量数据截至 2026-11-19）、CSDN、公开报道
> 价格单位：美元 / 百万 tokens；上下文单位：token

## 一、执行摘要

本周（截至 11-19）OpenRouter 用量榜最大事件：**腾讯 Hy4 flash 首周 69.3T tokens 直登周榜 #1**，且日榜以 22.6T（-5%）守住头名，把 DeepSeek 挤下王座——这是本周榜单最大权力交接。DeepSeek V4.1 Flash 1017 以 62.2T（+12%）居次，但**月榜仍以 227T（环比 >999%）称霸**。闭源侧 GPT-6 Luna（8.86T，+19%）与 Claude Opus 5.5（7.53T，+11%）稳步攀升；编程（Implementation）花费中 Claude Opus 5.5 占 23.7%（+1.3pp）继续统治，Kimi K3.1 Pro 以 8.6%（+8.6pp）首次杀入编程花费 #2。厂商请求份额：DeepSeek 31.8% 领跑，Google +14% 增速最猛。新面孔：Qwen4 Max、GPT-6.2 Sol、Gemini 4 Neon、Particle-1、Inkling 2 Small（Thinking Machines）集中上榜。

## 二、全球 Top 20 综合排名表

> 排序依据 OpenRouter 周度 tokens processed（11-13 ~ 11-19），结合价格与 AA 智能指数补充信息。AA 智能指数来自 OpenRouter Benchmarks 页（Artificial Analysis 供数，仅收录部分模型，其余标 —）。

| 排名 | 模型名称 | 开发商 | 类型 | AA智能指数 | 上下文 | 价格 In/Out ($/M) | 周用量 | 周变化 |
|-----|---------|--------|------|-----------|--------|------------------|--------|--------|
| 1 | Hy4 flash | 腾讯 | 闭源 | — | 1,048,576 | $0.04 / $0.14 | 69.3T | new |
| 2 | DeepSeek V4.1 Flash 1017 | 深度求索 | 开源 | — | 1,048,576 | $0.04 / $0.50 | 62.2T | +12% |
| 3 | DeepSeek V4.1 Flash | 深度求索 | 开源 | — | 1,048,576 | $0.05 / $0.57 | 16T | 0% |
| 4 | Hy4 | 腾讯 | 闭源 | — | 1,048,576 | $0.42 / $1.25 | 11.7T | -42% |
| 5 | GLM 5.3 Flash | 智谱 Z.ai | 开源 | — | 1,048,576 | $0.15 / $0.50 | 10.7T | -11% |
| 6 | GPT-6 Luna | OpenAI | 闭源 | — | 1,050,000 | $0.10 / $0.50 | 8.86T | +19% |
| 7 | Claude Opus 5.5 | Anthropic | 闭源 | 59.1 | 1,000,000 | $4.00 / $20.00 | 7.53T | +11% |
| 8 | Step 5 Preview | 阶跃星辰 | 闭源 | — | 1,000,000 | $1.00 / $2.70 | 5.75T | -15% |
| 9 | MiMo-V2.6-Flash | 小米 | 闭源 | — | 1,050,000 | $0.14 / $0.28 | 4.01T | +11% |
| 10 | MiniMax M3.1 Flash | MiniMax | 闭源 | — | 1,048,576 | $0.15 / $0.60 | 3.92T | +9% |
| 11 | Gemini 4 Hydrogen | Google | 闭源 | 53.9 | 1,048,576 | $1.50 / $7.50 | — | — |
| 12 | Claude Sonnet 5.5 | Anthropic | 闭源 | 54.5 | 1,000,000 | $2.00 / $10.00 | — | — |
| 13 | GPT-6.1 Sol | OpenAI | 闭源 | 54.6 | 1,050,000 | $2.00 / $10.00 | — | — |
| 14 | GPT-6 Astra | OpenAI | 闭源 | 56.9 | 1,050,000 | $10.00 / $50.00 | — | — |
| 15 | GLM 5.3 | 智谱 Z.ai | 开源 | — | 1,048,576 | $0.07 / $1.40 | — | — |
| 16 | Kimi K3.1 Pro | 月之暗面 | 闭源 | — | 1,048,576 | $0.25 / $8.80 | — | — |
| 17 | Gemini 4 Carbon | Google | 闭源 | 60.0 | 1,048,576 | $2.00 / $10.00 | — | — |
| 18 | Kimi K3 | 月之暗面 | 闭源 | — | 1,048,576 | $0.19 / $16.00 | — | — |
| 19 | Gemini 4 Neon | Google | 闭源 | 61.4 | 1,048,576 | $3.00 / $15.00 | 138B | new |
| 20 | GPT-6.2 Sol | OpenAI | 闭源 | 57.3 | 1,050,000 | $2.00 / $10.00 | 286B | new |

**能力榜（AA Intelligence Index Top 5，Artificial Analysis）**：Claude Fable 5.2 (Max) 64.6 › GPT-6.2 Astra (Max) 62.1 › Gemini 4 Neon (Xhigh) 61.4 › Gemini 4 Carbon (High) 60.0 › Claude Opus 5.5 (Max) 59.1。

**厂商请求份额（11-09 当周）**：DeepSeek 31.8%（+3%）› OpenAI 19.0%（+1%）› Google 15.1%（+14%）› Z.ai 7.0%（-3%）› Anthropic 6.3%（+11%）› Qwen 6.2%（+13%）。

## 三、关键发现

- **单价 4 美分拿下王座**：Hy4 flash 输入 $0.04/M、输出 $0.14/M，是 Top 10 中最便宜，凭极致性价比 + 1M 上下文首周即登顶；性价比战争已打到"厘级"。
- **开源/低价阵营压倒性优势**：周榜 Top 6 中 5 席为国产低价/开源模型（DeepSeek×2、腾讯×2、GLM），闭源大厂只能靠高价旗舰在编程/Agent 场景守住花费份额。
- **用量 ≠ 花费**：tokens 榜 DeepSeek 系横扫，但编程花费榜（Implementation，占全部花费 15.9%）上 Claude Opus 5.5 独占 23.7%——写代码的钱仍然流向 Anthropic。
- **Kimi K3.1 Pro 编程花费 8.6%（+8.6pp）空降 #2**，输入仅 $0.25/M，正以价格战切入 Claude 的编程腹地。
- **Google 请求份额 +14%、Anthropic +11%**：闭源阵营在 Agent 场景回暖；Gemini 4 Neon 上线即进 trending #5 与能力榜 #3。
- **月度口径 DeepSeek 统治**：V4.1 Flash 1017 月用量 227T（环比 >999%），一款模型吃下全平台近 1/3 请求。

## 四、Top 5 深度分析

### 1. Hy4 flash（腾讯）— 首周 69.3T 登顶
- **核心优势**：$0.04/$0.14 的地板价 + 1M 上下文 + 22.6T 日吞吐（-5% 微降，基本盘稳），对高并发、长上下文批量任务近乎免费。
- **弱项**：闭源、能力榜未见踪影，复杂推理/Agent 场景无明显证据；Hy4 标准版周跌 42%，说明流量高度集中 flash 档。
- **适用场景**：海量对话、摘要、RAG 检索、批处理。
- **与竞品差距**：比 DeepSeek V4.1 Flash 1017 便宜一档（out $0.14 vs $0.50），用量已反超；但编程/Agent 生态仍不及 DeepSeek。

### 2. DeepSeek V4.1 Flash 1017（深度求索）— 月榜之王
- **核心优势**：月用量 227T（>999%）、周 62.2T（+12%）；486 tok/s（BaseTen）进入最快榜 #3；开源生态成熟，DeepSeek 全系占平台请求 31.8%。
- **弱项**：输出 $0.50/M 比 Hy4 flash 贵 3.5 倍，正面遭遇价格战；老版本 V4.1 Flash 已 0 增长，靠新版续命。
- **适用场景**：全能型生产主力，编程、Agent、对话通吃。
- **与竞品差距**：编程花费 #5（4.8%，+4.6pp）快速上攻，但与 Claude Opus 5.5 的 23.7% 仍差一个身位。

### 3. DeepSeek V4.1 Flash（深度求索）— 老将守门
- 16T/周（0%）稳但停滞，2.19T/日（-12%）持续失血，流量正向 1017 新版迁移。角色：存量用户的稳定兜底，$0.05/$0.57。
- **判断**：一个月内大概率被完全替代出 Top 3。

### 4. Hy4（腾讯）— 高配档失血
- 11.7T/周（-42%），日榜 1.44T（+7%）尚有底仓；$0.42/$1.25 定价夹在自家 flash 与闭源旗舰之间，定位尴尬。
- **判断**：腾讯策略是 flash 走量、标准版接住溢出需求，若 flash 继续涨，标准版将继续萎缩。

### 5. GLM 5.3 Flash（智谱 Z.ai）— 承压下滑
- 10.7T/周（-11%）、日榜 1.47T（-24%），受 Hy4 flash 与 DeepSeek 双线挤压最狠；$0.15/$0.50 与 DeepSeek 同价但用量差 6 倍。
- **看点**：旗舰 GLM 5.3（$0.07 输入）走"极致输入低价"路线，编程花费榜 #7（4.2%，-1.3pp）；Z.ai 总份额 7%（-3%）需要新爆款止血。

## 五、异常波动 & 新闻

### 异动监控（>50% 阈值）
| 模型 | 异动 | 说明 |
|------|------|------|
| Hy4 flash | new，周 69.3T | 首周直接登顶，本周期最大变量 |
| Hy4 | -42% | 流量被自家 flash 抽干 |
| DeepSeek V4.1 Flash 1017（月） | >999% | 月度环比爆发式增长 |
| GPT-6 Luna（月） | +52% | OpenAI 低价档放量 |
| Claude Opus 5.5（月） | +83% | 高价旗舰逆势大涨，Agent 需求强劲 |
| MiniMax M3.1 Flash（月） | >999% | 低价档起量 |
| Hy4 preview（月） | -45% | 被 Hy4 flash 替代 |
| GLM 5.3 Flash（日） | -24% | 单日大跌，竞争恶化信号 |
| GPT-6.2 Sol / Gemini 4 Neon / Qwen4 Max | new（trending） | 一周内三款重磅新模型上线 |
| Particle-1（particle-ai） | >999%，947B | 免费档引爆，$0.06/$0.50 付费档跟进 |
| Inkling 2 Small（Thinking Machines） | >999%，690B | 新玩家入局，$0.30/$1.00 |
| Ling 3.2 Flash (free)（inclusionAI） | new，284B | 蚂蚁系免费模型进场 |

### 近期重要模型动态
- **GPT-6.2 系列上线**：Sol（$2/$10）与 Astra（$8/$40）双线，Astra Max 版以 62.1 居能力榜 #2，OpenAI 高端线重新对齐 Gemini 4。
- **Gemini 4 Neon**：能力榜 #3（61.4，Xhigh），1M 上下文 $3/$15，trending #5，Google 本周请求份额 +14% 的主要推手。
- **Qwen4 Max**：1M 上下文、$1.42/$4.27，trending #2，阿里继续押注大上下文中端价位。
- **Thinking Machines（Mira Murati）Inkling 系列**：512K 上下文，Small 版 $0.45/$1.20，一周 >999%，新势力首次在 OpenRouter 跑出量。
- **Nemotron 3 Ultra（550B-A55B，免费档）**：日榜 #10（542B，+2%），NVIDIA 以免费换生态。
- 注：CSDN/新闻源本轮返回内容多为 6 月旧闻（GLM-5.2 发布等），未纳入本期排名依据；本期以 OpenRouter 实时用量数据为准。

---
*数据来源：OpenRouter（用量数据截至 2026-11-19，CC BY 4.0）、or-models.json 定价库、CSDN / 公开报道；价格以美元每百万 token 计 | 仅供参考*
