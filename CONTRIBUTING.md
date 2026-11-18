# 仓库维护规范（CONTRIBUTING）

> 本仓库是多 agent 协作的知识库：司令（OpenClaw）+ Codex（云沙箱）共同维护，
> GitHub Pages 发布：https://zfcheng.github.io/ai-agent-intelligence/

## 协作模式：同目录协作 + 作者后缀

不做目录级隔离。四大内容方向由两个 agent **共同维护、互相校准**，
沿用仓库原有的多版本惯例（如 `2026-10-14-grok.md` / `2026-10-14-codex.md`）：

- 同一目录、同一天，不同作者的文件用后缀区分：`YYYY-MM-DD-commander.md`、`YYYY-MM-DD-codex.md`
- 各 agent 有自己的**主责板块**（对质量和更新频率负责），但任何一方都可以在别人主责的板块补充版本

| 目录 | 主责 | 内容 |
|------|------|------|
| `docs/daily/` | Codex | AI Agent 情报日报（全球视野；司令可加 `-commander` 版本） |
| `docs/ai-loop/` | 司令 | AI Loop 日报（Codex 可加 `-codex` 补充版/校准版） |
| `docs/blog-monitor/` | Codex | 厂商官方博客监控（司令发现线索也可补 `-commander` 条目） |
| `docs/trending/` | 司令 | GitHub Trending（数据驱动；Codex 每周校准解读） |
| `docs/llm-rankings/` | 司令 | LLM Top20 排名（司令主责，Codex 校准榜单口径） |
| `docs/pricing/` | 司令 | LLM 价格异动（阈值触发，司令主责） |
| `docs/weekly/` `docs/monthly/` | Codex | 周报/月报（汇聚全仓库，含对四大方向的校准结论） |

## 校准机制（防止各写各的）

1. **统一主题标尺**：所有 agent 的选题范围以 `skill/references/topic-scope.md` 为唯一标准，
   新增/删除主题时人工改这一份，双方自动对齐
2. **frontmatter 规范**：所有文件必填 `type`（板块名）和 `tags`（统一标签表见 topic-scope.md），
   保证同类内容可被聚合检索
3. **每周校准**：Codex 周报（`weekly/`）必须包含「校准结论」段：
   - 四大方向（daily / ai-loop / blog-monitor / trending）本周覆盖是否偏航
   - 司令视角 vs Codex 视角的判断差异及各自依据
   - 下周主题权重建议
4. **同日对照**：同一板块出现 `-commander` 和 `-codex` 两个版本时，
   互不删改对方内容，分歧留给周报仲裁；重大事实错误可在对方文末追加「更正」段

## 写入流程（所有 agent 遵守）

```bash
git pull --rebase origin main   # 1. 先拉最新
# 2. 写入目标板块：YYYY-MM-DD-<author>.md，frontmatter 齐全（title/date/type/author/tags）
# 3. 更新 docs/index.md 对应板块的「最近更新」列表（保留最近 5 条）
git add docs/ && git commit -m "chore(<板块>): add <YYYY-MM-DD> <报告名>"
git push origin main            # 4. push；若 rebase 冲突，只保留双方内容重试
```

## 文件规范

- 命名：`YYYY-MM-DD-<author>.md`（author = `commander` / `codex` / 其他）
- frontmatter 必填：`title`、`date`（YYYY-MM-DD）、`type`、`author`、`tags`
- 模板：各目录下 `TEMPLATE.md`
- 内容语言：中文为主，专有名词保留英文；每条信息附来源链接
- 质量线：无新内容时宁可不写，不写灌水条目；「暂无重大更新」需给出判断依据

## 知识沉淀规则

1. **每日报告是原料，洞察是产品**：每篇报告的「洞察/判断」部分必须有自己的观点，不是新闻罗列
2. **校准闭环**：Codex 周报校准司令产出 → 司令吸收纠偏 → 反映在下周报告中；反之司令的数据
   （排名/价格/趋势）也是 Codex 日报的事实校验源
3. **重要结论上浮**：周报/月报汇聚本仓库周期内所有报告，提炼趋势
4. **失效内容标注**：发现旧报告判断错误时，不删除，在文末追加「更正」段
5. **skill 同步**：`skill/` 目录是 Grok skill 源码，topic-scope 变更时由人工评估是否同步

## 凭证与安全

- 司令侧使用 deploy key（只读拉取 + 写推送），专用密钥 `id_ed25519_aai_github`
- 任何一方不得将凭证写入仓库、日志或聊天
- 破坏性操作（删目录、改历史）需用户人工确认
