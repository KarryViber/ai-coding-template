# CLAUDE.md

## {{PROJECT_NAME}}

> TODO: 一句话描述这个项目做什么

**模式**: Build（从零构建）
**技术栈**: {{TECH_STACK}}

## 快速开始

```bash
# TODO: 安装和启动命令
```

## 项目结构

```
# TODO: 项目结构（项目初始化后更新）
```

---

## Build 模式规则

### 阶段流程

动手写代码前，先完成以下步骤：

1. **明确目标** — 这个东西为什么要做？给谁用？解决什么问题？
2. **开源调研** — 有没有现成的项目可以直接用或改？不要重复造轮子
3. **技术选型** — 选什么栈？为什么？和备选方案的对比
4. **架构设计** — 项目结构、核心模块、数据流
5. **分步实现** — 拆成小任务，每完成一个模块验证一次

### 产品思维

- 功能服务于用户场景，不是为了技术而技术
- 做之前问：用户会怎么用这个东西？
- MVP 优先 — 先跑通核心流程，再迭代

### Agent Team 协作

本模式预配置了 agent team，可通过以下方式使用：

- `researcher` — 开源调研、技术对比、找参考项目
- `developer` — 代码实现
- `reviewer` — 代码 review、安全检查

### 推荐 Skills

```bash
# 产品设计
claude skill install product-manager-toolkit

# 前端设计（如需要）
claude skill install frontend-design

# 技术选型
claude skill install tech-stack-evaluator

# Skill 发现（根据项目自动推荐）
claude skill install find-skills
```

---

## AI 协作规则

### 工作流程

- 非简单任务：先说思路，确认后再写代码
- 简单任务：直接干
- 写完代码后：自动 review（bug、安全、边界情况）
- 改完代码后：确认能跑通了再说搞定
- 发现潜在问题主动提醒，即使我没问

### 代码风格

- 注释尽量少 — 只在逻辑不自明的地方加
- 不要加 JSDoc/docstring，除非我要求
- 不要过度工程化 — 适度结构，不搞过早抽象
- 不要碰我没让你改的代码

### Git

- 个人项目：直接提交到 main
- 不要自动 commit — 先问我要不要提交
- 使用 conventional commits + emoji（✨ feat, 🐛 fix 等）

### 调试

- 修复前先说明：1) 根本原因 2) 修复方案 3) 如何验证
- 通过完整用户流程验证，不要只验证改动的代码
- bug "重现"时先检查原始诊断是否正确

### 项目初始化

- 生成项目结构和基础文件
- 配置开发工具（linter、formatter、TypeScript 等）
- 初始化 git（.gitignore + 首次 commit）

### 验证检查点

每次修复或配置变更后：
1. 确认变更确实生效了
2. 测试之前失败的场景
3. 确认预期行为正常
