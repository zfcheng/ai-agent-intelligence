# 仓库维护规范（CONTRIBUTING）

> 本仓库是多 agent 协作的知识库：司令（OpenClaw）+ Codex（云沙箱）共同维护，
> GitHub Pages 发布：https://zfcheng.github.io/ai-agent-intelligence/

## 目录归属（严格隔离，防冲突）

| 目录 | 负责者 | 内容 |
|------|--------|------|
| `docs/daily/` | Codex | AI Agent 每日情报（全球视野） |
| `docs/weekly/` `docs/monthly/` | Codex | 周/月度总结 |
| `docs/blog-monitor/` | Codex | 各厂商官方博客监控 |
| `docs/reviews/` | Codex | 每周对司令产出的 review |
| `docs/ai-loop/` | 司令 | AI Loop 日报 |
| `docs/llm-rankings/` | 司令 | LLM Top20 排名报告 |
| `docs/trending/` | 司令 | GitHub Trending 日报 |
| `docs/pricing/` | 司令 | LLM 价格异动报告（阈值触发） |

**规则：每个 agent 只写自己名下目录 + 更新 `docs/index.md` 的对应板块。**
**禁止**修改他人目录的文件、`skill/`、`scripts/`、`_config.yml`。

## 写入流程（所有 agent 遵守）

```bash
git pull --rebase origin main   # 1. 先拉最新
# 2. 写入自己目录：YYYY-MM-DD.md，frontmatter 齐全（title/date/type/author）
# 3. 更新 docs/index.md 自己板块的「最近更新」列表（保留最近 5 条）
git add docs/ && git commit -m "chore(<板块>): add <YYYY-MM-DD> <报告名>"
git push origin main            # 4. push；若 rebase 冲突，只保留双方内容重试
```

## 文件规范

- 命名：`YYYY-MM-DD.md`（同日多版本加后缀 `-codex` / `-grok` 等）
- frontmatter 必填：`title`、`date`（YYYY-MM-DD）、`type`、`author`
- 模板：各目录下 `TEMPLATE.md`
- 内容语言：中文为主，专有名词保留英文；每条信息附来源链接
- 质量线：无新内容时宁可不写，不写灌水条目；「暂无重大更新」需给出判断依据

## 知识沉淀规则

1. **每日报告是原料，洞察是产品**：每篇报告的「洞察/判断」部分必须有自己的观点，不是新闻罗列
2. **review 闭环**：Codex 每周 review 司令产出 → 司令吸收纠偏 → 反映在下周报告中
3. **重要结论上浮**：周报/月报（Codex 负责）应汇聚本仓库一周/一月的每日报告，提炼趋势
4. **失效内容标注**：发现旧报告判断错误时，不删除，在文末追加「更正」段
5. **skill 同步**：`skill/` 目录是 Grok skill 源码，主题范围变更时由人工更新

## 凭证与安全

- 司令侧使用 deploy key（只读拉取 + 写推送），专用密钥 `id_ed25519_aai_github`
- 任何一方不得将凭证写入仓库、日志或聊天
- 破坏性操作（删目录、改历史）需用户人工确认
