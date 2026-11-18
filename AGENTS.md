# AGENTS.md — Agent 协作契约

> 本仓库由两个 agent 共同维护。任何接入的 agent 必须先读完本文件再动手。

## 参与者

| Agent | 角色 | 主责板块 | 写入后缀 |
|-------|------|---------|---------|
| **司令**（OpenClaw，美团内网） | 数据驱动报告 | ai-loop / llm-rankings / trending / pricing | `-commander` |
| **Codex**（云沙箱） | 全球视野情报 + 校准 | daily / blog-monitor / weekly | `-codex` |

## 每日时间线（Asia/Shanghai）

```
10:00        司令：AI Loop 日报 + LLM 排名启动（±30min stagger）
10:15        司令：GitHub Trending 启动
~10:30       司令：三份报告全部 push 到 main
10:45        Codex：周一/三/五启动（review + 校准 + daily 情报 + push）
~11:00       Codex：完成，摘要留在 Codex 会话内（不推送 IM）
周五 15:00   司令：insights 周报（信息→分析→匹配→建议），推送用户
```

**依赖关系：Codex 的 review 以司令产出为输入，触发时间不得早于 10:35。**
Codex 运行日：周一（覆盖周末+周一）、周三（覆盖周一周二）、周五（覆盖周四周五）；周五额外生成周报。
若司令期间未产出（文件缺失），Codex 照常生成自己的 daily 情报，review 段注明「司令期间未产出」。
Codex 不接 IM 推送，产出以 git 仓库为准，用户到 Codex 会话或 GitHub Pages 查看。

## 信息→落地 Loop（每周闭环）

```
① 信息查询   日常各板块报告（司令 + Codex）
② 分析      各报告洞察段 + Codex 每周校准结论
③ 工作匹配   锚点 docs/work-profile.md（用户确认一次，季度提议更新）
④ 建议思考   周五 docs/insights/YYYY-Www-commander.md：ACT 建议列表（收益/成本/风险）
⑤ 落地      docs/backlog.md 状态机：proposed→adopted→doing→landed/dropped
⑥ 反哺      落地效果 → 调整 topic-scope 权重 / 更新 work-profile
```

- 每条建议必须有 ACT-ID（ACT-YYYYWww-N），可追溯到来源报告条目和 work-profile 方向
- 用户回复「采纳/放弃 ACT-xxx」驱动 backlog 状态变更；司令负责执行与记录落地结果
- 周五 insights 周报推送大象（single_1713920），含 backlog 当前状态摘要

## 写入规则（必须遵守）

1. **作者后缀制**：文件命名 `YYYY-MM-DD-<author>.md`。只写自己后缀的文件，**永不修改/删除对方文件**。发现对方有事实错误 → 在对方文末追加「> ⚠️ 更正（author）：…」段并附来源。
2. **目录主责**：见上表。主责者对板块的更新频率与质量负责；非主责者可补位，同样用自己后缀。
3. **frontmatter 必填**：`title` / `date`（YYYY-MM-DD）/ `type`（=目录名）/ `author` / `tags`。
4. **git 流程**：`git pull --rebase origin main` → 写入 → commit → push。push 失败则 rebase 重试一次，仍失败则放弃本次并记录，**禁止 force push**。
5. **index 更新**：写入后在 `docs/index.md` 对应板块「最近更新」下添加一行（最新在上，各板块最多保留 5 条），与报告同 commit 或紧随其后提交。
6. **选题标尺**：统一以 `skill/references/topic-scope.md` 为准；想调整范围 → 在 commit message 中注明 `[scope-change]`，由人工最终确认。
7. **质量线**：无新内容宁可不写；灌水条目、重复推旧闻视为事故。「暂无重大更新」需给出判断依据。
8. **安全**：凭证不入仓库；不在报告中输出内部敏感信息（内网系统、学城私文等）。

## 校准闭环（每周）

- Codex 在 `docs/weekly/YYYY-Www-codex.md` 中输出「校准结论」段（**每周五**随当日 review 一起生成）：
  1. 四大方向本周覆盖是否偏航
  2. 司令视角 vs Codex 视角的判断差异及依据
  3. 下周主题权重建议
- 司令吸收校准结论，反映在下周报告中（可读 weekly 目录，不需回复）。
- 分歧不修改对方文件，留给周报仲裁；连续两周无法收敛的分歧上报用户。

## 破坏性操作边界

- 删除目录、改写历史、修改 `_config.yml` / `CONTRIBUTING.md` / 本文件 → 需用户人工确认
- 双方各自保管自己的凭证（司令：deploy key；Codex：用户自行配置），互相不可见

## Codex Prompt 存档

Codex 的完整执行 prompt 见 `scripts/codex-review.prompt`，更新 prompt 时同步更新本文件的时间线。
