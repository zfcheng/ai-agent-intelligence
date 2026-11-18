# 2026-11-19 · 用户转介 · Harness RSI（Agent 自进化）论文综述

> 来源：微信公众号「阿东玩AI」（adongwanai）· 2026-10-29
> 原文：https://mp.weixin.qq.com/s/lndeETqyvmKnyq-FLeMRpQ
> 类型：用户转介 | 作者：commander | 主题：Harness RSI / Agent 自进化

---

## 核心概念：什么是 Harness RSI

模型权重不动，Agent 自己改写自己的 **提示词、工具、控制流和记忆**——这就是 Harness RSI（递归自我改进）。半年前还是小众方向，现在 Google / Meta / NVIDIA / Stanford / 复旦全部下场。

## 10 篇论文，3 个方向

### 方向一：改进器 — 改写「负责改进的那部分」

1. **Hyperagents（Meta）**：元改进标杆。论文审稿任务从 0 分干到 0.710，跨域迁移有效
2. **Harness²（Google）**：没有标准答案也能改 Harness，GitHub 20.4k star

### 方向二：泛化、成本与基线 — 涨分 ≠ 真变强

3. **Meta-Harness（Stanford）**：干净基线方法论，信号不在分数里，在轨迹里
4. **RRSI（Google）**：正则化防过拟合，OOD 泛化 +4.3 分，还省 30% token
5. **SoL-Pi（NVIDIA）**：token 降一半，API 成本降 1/3

### 方向三：搜索与演化主线 — 长期跑下去

6. **AHE（复旦）**：三层可观测性驱动演化，跨模型迁移 +5~10 个点
7. **Ouroboros**：连续演化 161 天，**安全设计是第一道题**
8. **SIA**：首个同时改 Harness + 权重的工作，三域 SOTA
9. **Evo-Harness（A-EVO Lab）**：在线学习，不等离线跑完
10. **Harness Updating ≠ Benefit（A-EVO Lab）**：9B 小模型改得和 Opus 一样好——瓶颈在「用」不在「改」

## 原文判断（阿东）

1. 改 Harness 比改权重便宜，会先落地
2. 只在演化集上涨分的论文已不够看，**能迁移才算数**
3. 最反直觉的发现：谁来改不重要，谁来用才重要
4. 改 Harness 和改权重正在合流，明年会更卷

## 司令点评（与工作画像匹配）

| 原文观点 | 与 ITU 工作的映射 |
|---------|-----------------|
| 改 Harness 比改权重便宜，先落地 | ITU 的 review→fix 闭环本质就是 Harness 层优化——不训模型，只改 prompt/工具/流程，成本最低的改进路径 ✅ 我们已在做 |
| 谁来改不重要，谁来用才重要 | fix-trigger 消费修复结果的质量远比修复生成重要；值得投入验证层（callback 校验、回归测试） |
| 信号在轨迹里不在分数里 | review_queue 的处理轨迹（谁修的、修了几轮、回归率）比修复成功率单点指标更有信息量 |
| 安全设计是演化第一题 | 自动修复的边界（哪些 PR 不能自动修）需要显式设计，不是出事后再补 |

## 可行动项（候选）

- **ACT-2026W47-1（候选）**：给 fix-trigger 增加修复轨迹记录（轮次/回归率/人工干预），作为「信号在轨迹里」的落地实践
- **ACT-2026W47-2（候选）**：盘点自动修复边界清单（高危文件/核心逻辑禁止自动 fix），对齐 Ouroboros 的安全设计经验

## 相关资源

- Follow RSI 仓库：https://github.com/adongwanai/follow-rsi （作者持续更新 RSI 论文追踪）
