# ai-coding-template

个人 AI coding 项目模板，配合 [Claude Code](https://claude.ai/code) 使用。

在 GitHub 上点击 **"Use this template"** 创建新项目，然后运行：

```bash
bash setup.sh
```

## 工作模式

不按技术栈分，按**工作意图**分：

| 模式 | 一句话 | Agent Team |
|------|--------|-----------|
| **build** | 从零构建新东西 | main + researcher + developer + reviewer |
| **extend** | 在现有代码上改/加 | main + explorer + developer |
| **fix** | 定位问题并修复 | 单 agent，深度专注 |
| **explore** | 调研验证，还没到写代码 | main + researcher-a + researcher-b |

### Build

全生命周期：目标确认 → 开源调研 → 技术选型 → 架构设计 → 分步实现。
适合：新产品、新工具、客户 demo。

### Extend

先理解再动手：架构分析 → 风格识别 → 最小改动 → 完整验证。
适合：给现有项目加功能、接手别人代码。

### Fix

修根因不打补丁：复现 → 定位 → 说明方案 → 修复 → 完整验证。
适合：调试、bug fix、性能问题。

### Explore

输出方案不是代码：定义问题 → 多方调研 → 方案对比 → 给出推荐。
适合：技术选型、开源方案调研、POC 可行性。

## 包含内容

```
.claude/
├── commands/
│   └── commit.md              # /commit 命令（Conventional Commits + emoji）
└── settings.local.json        # 项目设置（语言=中文、模型=opus）

modes/
├── build/
│   ├── CLAUDE.md              # Build 模式规则
│   └── agents/                # researcher / developer / reviewer
├── extend/
│   ├── CLAUDE.md              # Extend 模式规则
│   └── agents/                # explorer / developer
├── fix/
│   └── CLAUDE.md              # Fix 模式规则（单 agent）
└── explore/
    ├── CLAUDE.md              # Explore 模式规则
    └── agents/                # researcher-a / researcher-b

CLAUDE.md                      # 占位（setup 后替换为模式配置）
setup.sh                       # 交互式初始化脚本
.gitignore                     # 通用 gitignore
```

## Setup 之后

1. 编辑 `CLAUDE.md` 填入 TODO 部分（项目描述、命令、结构等）
2. 按需安装推荐的 skills（每个模式的 CLAUDE.md 里有推荐列表）
3. `modes/` 和 `setup.sh` 会自动删除
4. 开始用 Claude Code 写代码！

## 自定义

### 添加项目规则

直接编辑 `CLAUDE.md`，常见补充：
- API 文档
- 设计系统 token
- 部署说明
- 环境变量

### 添加 Agent

在 `.claude/agents/` 下创建新的 `.md` 文件。

### 添加 /commands

在 `.claude/commands/` 下创建 `.md` 文件，带 YAML frontmatter。

## 与全局配置的关系

这个模板提供**项目级**配置，和全局 `~/.claude/CLAUDE.md` 配合使用。

- 项目级 CLAUDE.md = 这个项目特有的规则
- 全局 CLAUDE.md = 你的通用编码习惯
