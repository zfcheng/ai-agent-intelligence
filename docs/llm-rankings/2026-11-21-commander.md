---
title: "2026-11-21"
date: 2026-11-21
type: llm-rankings
author: commander
nav_exclude: true
tags: [llm-rankings, openrouter, weekly]
---

# 📊 全球 Top 20 AI 模型排名 | 2026-11-21

> 生成：司令（OpenClaw 主虾）| 数据源：OpenRouter（用量数据截至 2026-11-20）、CSDN、公开报道
> 价格单位：美元 / 百万 tokens；上下文单位：token

## 一、执行摘要

本周（截至 11-20）OpenRouter 用量榜最大事件：**DeepSeek V4.1 Flash 1017 重夺周榜王座**（62.4T，+15%），且月榜以 218T（环比 >999%）统治级领先；上周爆冷的 Hy4 flash（69.3T 首周登顶）**本周完全跌出 Top 10，并被重新标记为 new**（仅 417B），疑为榜单条目重置——单周爆量数据的可持续性存疑。闭源双雄显著加速：GPT-6 Luna 周 +41%、Claude Opus 5.5 周 +54%。二线国产模型集体放量：Step 5 Preview（>999%）、MiniMax M3.1 Flash（+404%）、MiMo-V2.6-Flash（+363%）挤进周榜前十。编程花费（Implementation，占全部花费 16.1%）格局微调：Claude Opus 5.5 以 23.0%（+0.4pp）稳坐第一，Kimi K3.1 Pro 8.8%（+8.8pp）跃居 #2。厂商请求份额：DeepSeek 31.8%（+3%）领跑，Google 15.1%（+14%）增速最猛。新面孔：Qwen4 Max（trending #1，1.11T）、GPT-6.2 Sol / Astra、Gemini 4 Neon 集中上线。

## 二、全球 Top 20 综合排名表

> 排序依据 OpenRouter 周度 tokens processed（11-14 ~ 11-20），11 名以后结合月榜用量、trending、编程花费份额与 AA 智能指数综合排定。AA 智能指数来自 OpenRouter Benchmarks 页（Artificial Analysis 供数，仅收录部分模型，其余标 —）。

| 排名 | 模型名称 | 开发商 | 类型 | AA智能指数 | 上下文 | 价格 In/Out ($/M) | 用量（口径） | 变化 |
|-----|---------|--------|------|-----------|--------|------------------|-------------|------|
| 1 | DeepSeek V4.1 Flash 1017 | 深度求索 | 开源 | — | 1,048,576 | $0.15 / $0.60 | 62.4T（周） | +15% |
| 2 | DeepSeek V4.1 Flash | 深度求索 | 开源 | — | 1,048,576 | $0.05 / $0.20 | 15.6T（周） | -1% |
| 3 | GLM 5.3 Flash | 智谱 Z.ai | 开源 | — | 1,048,576 | $0.04 / $0.08 | 10.8T（周） | -9% |
| 4 | GPT-6 Luna | OpenAI | 闭源 | — | 1,050,000 | $0.10 / $0.50 | 8.74T（周） | +41% |
| 5 | Claude Opus 5.5 | Anthropic | 闭源 | 59.1 | 1,000,000 | $4.00 / $20.00 | 7.25T（周） | +54% |
| 6 | Step 5 Preview | 阶跃星辰 | 闭源 | — | 1,000,000 | $1.00 / $2.70 | 4.8T（周） | >999% |
| 7 | MiniMax M3.1 Flash | MiniMax | 闭源 | — | 1,048,576 | $0.15 / $0.60 | 4.11T（周） | +404% |
| 8 | MiMo-V2.6-Flash | 小米 | 闭源 | — | 1,048,576 | $0.14 / $0.28 | 3.91T（周） | +363% |
| 9 | Nemotron 3 Ultra (free) | NVIDIA | 开放权重 | — | 1,000,000 | 免费 | 3.56T（周） | +11% |
| 10 | Kimi K3.1 Pro | 月之暗面 | 闭源 | — | 1,048,576 | $0.25 / $8.80 | 3.54T（周） | -18% |
| 11 | GLM 5.3 | 智谱 Z.ai | 开源 | — | 1,048,576 | $0.07 / $1.40 | 17.2T（月） | +5% |
| 12 | GPT-6.1 Sol | OpenAI | 闭源 | 54.6 | 1,050,000 | $2.00 / $10.00 | 15.3T（月） | +164% |
| 13 | DeepSeek V4 Flash 0731 | 深度求索 | 开源 | — | 1,048,576 | $0.04 / $0.30 | 14.6T（月） | -39% |
| 14 | Qwen4 Max | 阿里 | 闭源 | — | 1,000,000 | $1.43 / $4.28 | 1.11T（trending #1） | new |
| 15 | Hy4 | 腾讯 | 闭源 | — | 1,048,576 | $0.42 / $1.25 | 821B（日） | >999% |
| 16 | Gemini 4 Neon | Google | 闭源 | 61.4 | 1,048,576 | $3.00 / $15.00 | 281B（trending） | new |
| 17 | GPT-6.2 Sol | OpenAI | 闭源 | 57.3 | 1,050,000 | $2.00 / $10.00 | 446B（trending） | new |
| 18 | Claude Sonnet 5.5 | Anthropic | 闭源 | 54.5 | 1,000,000 | $2.00 / $10.00 | 编程花费 6.2%（#3） | +1.4pp |
| 19 | Gemini 4 Carbon | Google | 闭源 | 60.0 | 1,048,576 | $2.00 / $10.00 | 编程花费 4.3%（#6） | +4.3pp |
| 20 | GPT-6.2 Astra | OpenAI | 闭源 | 62.1 | 1,050,000 | $8.00 / $40.00 | 112B（trending） | new |

**能力榜（AA Intelligence Index Top 5，Artificial Analysis）**：Claude Fable 5.2 (Max) 64.6 › GPT-6.2 Astra (Max) 62.1 › Gemini 4 Neon (Xhigh) 61.4 › Gemini 4 Carbon (High) 60.0 › Claude Opus 5.5 (Max) 59.1。

**厂商请求份额（11-09 当周）**：DeepSeek 31.8%（+3%）› OpenAI 19.0%（+1%）› Google 15.1%（+14%）› Z.ai 7.0%（-3%）› Anthropic 6.3%（+11%）› Qwen 6.2%（+13%）› Mistral 2.6%（+13%）› Tencent 2.3%（+3%）› Nvidia 1.6%。

**Top Apps（今日 tokens）**：Hermes Agent 1.9T › Claude Code 1.37T › Kilo Code 1.24T › pi 850B › Codex 512B › Strix 445B › DeepSeek Harness (new) 319B › omp (new) 313B › OpenClaw 251B › Portkey AI 186B。

## 三、关键发现

- **王座回归与 Hy4 flash 疑云**：DeepSeek V4.1 Flash 1017 周 62.4T（+15%）重登 #1；而上周首周 69.3T 登顶的 Hy4 flash 本期跌出 Top 10、重新标记 new（417B），同期 Hy4 标准版日榜 >999% 反弹——榜单条目疑似重置/变体切换，单周爆量数据的统计口径需警惕。
- **闭源双雄加速**：GPT-6 Luna 周 +41%（月 +71%）、Claude Opus 5.5 周 +54%（月 +41%），闭源阵营在 Agent 场景持续回暖；但 tokens 榜 Top 6 中仍有 5 席为国产低价模型，性价比主战场未动摇。
- **用量 ≠ 花费**：tokens 榜 DeepSeek 系横扫（请求份额 31.8%），但编程花费上 Claude Opus 5.5 独占 23.0%——写代码的钱仍然流向 Anthropic。
- **Kimi K3.1 Pro 双面性**：编程花费 8.8%（+8.8pp）跃居 #2，但周用量 3.54T（-18%）下滑，K3 → K3.1 迁移期出现内耗（K3 编程花费 -2.6pp）。
- **二线国产集体放量**：Step 5 Preview（>999%）、MiniMax M3.1 Flash（+404%）、MiMo-V2.6-Flash（+363%）同周挤进前十，低价档竞争白热化——GLM 5.3 Flash（-9%）首当其冲被挤压。
- **GPT-6.1 Sol 月榜 +164%**：$2/$10 的中端价位成为 OpenAI 增长引擎，与 Luna（$0.10/$0.50）形成低价双保险。
- **Google 份额 +14%**：Gemini 4 系（Neon/Carbon/Hydrogen）上线推动，Neon 能力榜 #3（61.4）且 1M 上下文 $3/$15，性价比与能力兼得。

## 四、Top 5 深度分析

### 1. DeepSeek V4.1 Flash 1017（深度求索）— 重登王座
- **核心优势**：周 62.4T（+15%）+ 月 218T（>999%）双料第一；485 tok/s（BaseTen）进最快榜 #4；开源生态成熟，DeepSeek 全系占平台请求 31.8%。
- **弱项**：or-models.json 今日显示输入 $0.15/M、输出 $0.60/M（昨日报告口径为 $0.04/$0.50），若为真实调价则价格优势收窄；GLM 5.3 Flash 输出仅 $0.08/M，便宜近 8 倍。
- **适用场景**：全能型生产主力，对话、RAG、Agent 通吃。
- **与竞品差距**：编程花费 #5（4.9%，+4.7pp）快速上攻，与 Claude Opus 5.5 的 23.0% 仍差一个身位。

### 2. DeepSeek V4.1 Flash（深度求索）— 老将失血
- 15.6T/周（-1%）停滞，月榜 69.3T（-42%）大幅萎缩，流量持续向 1017 新版迁移；$0.05/$0.20 仍是全系最低价。
- **判断**：角色是存量用户兜底，一个月内大概率被完全替代出 Top 3。

### 3. GLM 5.3 Flash（智谱 Z.ai）— 腹地承压
- 10.8T/周（-9%），但日榜 1.63T（+11%）显示基本盘仍在；$0.04/$0.08 的极限低价是 Top 10 最便宜输出价。
- **看点**：MiniMax M3.1 Flash（同价 $0.15/$0.60）一周 +404% 直接威胁其位置；Z.ai 总请求份额 7%（-3%）连续走弱，急需新爆款止血。

### 4. GPT-6 Luna（OpenAI）— 低价档放量
- 8.74T/周（+41%）、月 37T（+71%）；$0.10/$0.50 + 1,050,000 上下文，是闭源阵营唯一打性价比战的模型。
- **弱项**：日榜 1.14T（-29%）单日波动大，说明需求以脉冲式批处理为主；能力榜未见踪影。
- **适用场景**：高并发轻任务、分类、摘要、结构化抽取。

### 5. Claude Opus 5.5（Anthropic）— 利润之王
- 周 7.25T（+54%）为 Top 10 增速第二；编程花费 23.0%（+0.4pp）独占近 1/4；AA 智能指数 59.1 列 #5。
- **弱项**：$4/$20 的定价是 DeepSeek 1017 的 27 倍（输入）/33 倍（输出），tokens 份额注定被低价阵营压制，靠高价值场景守利润。
- **判断**：Kimi K3.1 Pro（8.8%，+8.8pp）与 Gemini 4 Carbon（4.3%，+4.3pp）正在从两侧蚕食其编程花费，但短期无可替代。

## 五、异常波动 & 新闻

### 异动监控（>50% 阈值）
| 模型 | 异动 | 说明 |
|------|------|------|
| Hy4 flash | 上周 69.3T/#1 → 本周出榜、重标 new（417B） | 疑似条目重置/变体切换，⚠️ 统计口径风险 |
| Hy4（标准版） | 日榜 821B，>999% | 与 flash 出榜同步反弹，流量在腾讯系内迁移 |
| Step 5 Preview | >999%（周 4.8T，#6） | 阶跃星辰爆发，周榜最高增速的大体量模型 |
| MiniMax M3.1 Flash | +404% | 低价档起量，直逼 GLM 5.3 Flash |
| MiMo-V2.6-Flash | +363% | 小米低价档放量 |
| GPT-6 Luna | 周 +41% / 月 +71% / 日 -29% | 整体大涨但单日波动剧烈 |
| Claude Opus 5.5 | 周 +54% | 高价旗舰逆势大涨 |
| GPT-6.1 Sol（月） | +164% | OpenAI 中端价位成增长引擎 |
| DeepSeek V4.1 Flash（月） | -42% | 老版本加速被 1017 替代 |
| DeepSeek V4 Flash 0731（月） | -39% | 旧款退坡 |
| Nemotron 3 Ultra (free)（月） | -41% | 免费档降温 |
| Kimi K3.1 Pro | 周 -18% | 用量下滑但编程花费创新高 |
| Qwen4 Max | trending #1，new，1.11T | 阿里新旗舰首周即爆发 |
| GPT-6.2 Sol / Astra、Gemini 4 Neon | new | 三款重磅新模型上线 |
| Solar Mini 4（upstage） | >999%，1.31T | 韩国玩家低价冲量 |
| Ling 3.2 Flash（inclusionAI） | >999% | 蚂蚁系放量 |
| Recraft V4.1 Flash V2 | >999% | 图像模型 tokens 榜异动 |

### 近期重要模型动态
- **GPT-6.2 系列上线**：Sol（$2/$10）与 Astra（$8/$40）双线，Astra Max 以 62.1 居能力榜 #2；Sol 支持 272K 以上分段涨价（超 272K 后 $4/$15）。
- **Gemini 4 Neon**：能力榜 #3（61.4，Xhigh），1M 上下文 $3/$15；与 Hydrogen（$1.50/$7.50）共享架构、价差 2 倍，Google 用双档卡位中高端。
- **Qwen4 Max**：1M 上下文、$1.43/$4.28，trending #1（1.11T），阿里押注大上下文中端价位，是本周最值得关注的新变量。
- **腾讯 Hy4 flash 条目重置**：上周 69.3T 的爆量数据不再计入本期榜单，需观察下周是否重新起量——若持续低迷，说明上周数据可能含一次性迁移流量。
- **Top Apps 变化**：Hermes Agent（1.9T）超越 Claude Code 登顶；DeepSeek Harness、omp 两个新工具上榜；OpenClaw 251B 稳定在榜。
- 注：CSDN/新闻源本轮返回内容多为 6 月旧闻（GLM-5.2 发布等），未纳入本期排名依据；本期以 OpenRouter 实时用量数据为准。

---
*数据来源：OpenRouter（用量数据截至 2026-11-20，CC BY 4.0）、or-models.json 定价库（2026-11-21 拉取）、CSDN / 公开报道；价格以美元每百万 token 计 | 仅供参考*
