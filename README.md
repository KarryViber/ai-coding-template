# ai-coding-template

个人 AI coding 项目模板，配合 [Claude Code](https://claude.ai/code) 使用。

在 GitHub 上点击 **"Use this template"** 创建新项目，然后运行：

```bash
bash setup.sh
```

## 包含内容

```
.claude/
├── commands/
│   └── commit.md              # /commit 命令（Conventional Commits + emoji）
└── settings.local.json        # 项目设置（语言=中文、模型=opus）

CLAUDE.md                      # Claude Code 项目指令
.gitignore                     # 通用 gitignore（Node/Python/Swift/Android）
setup.sh                       # 交互式初始化脚本
templates/                     # CLAUDE.md 模板集（setup 后自动删除）
```

## 可用模板

| 模板 | 适用场景 |
|------|----------|
| **web-app** | React, Vue, Next.js, Nuxt, Svelte |
| **mobile-app** | iOS (Swift), Android (Kotlin), React Native |
| **backend-api** | Node.js, Python, Go API |
| **fullstack** | 前端 + 后端 monorepo |
| **quick-prototype** | Hackathon、快速原型 |

## Setup 之后

1. 编辑 `CLAUDE.md` 填入项目细节（构建命令、架构、关键文件）
2. `templates/` 和 `setup.sh` 会自动删除
3. 开始用 Claude Code 写代码！

## 自定义

### 添加项目特定规则

直接编辑 `CLAUDE.md`，常见补充：
- Git 工作流（分支命名、PR 流程）
- API 文档
- 设计系统 token
- 部署说明

### 添加更多 /commands

创建 `.claude/commands/your-command.md`，带 YAML frontmatter：
```yaml
---
description: 这个命令做什么
---
```

## 与全局配置的关系

这个模板提供**项目级**配置，和全局 `~/.claude/CLAUDE.md` 配合使用。

- 项目级 CLAUDE.md = 这个项目特有的东西
- 全局 CLAUDE.md = 你的通用编码习惯
