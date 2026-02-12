# CLAUDE.md

## {{PROJECT_NAME}}

> TODO: 一句话描述

**类型**: Web 应用
**技术栈**: {{TECH_STACK}}

## 快速开始

```bash
npm run dev          # 开发
npm run build        # 构建
npm run preview      # 预览生产构建
npm run lint         # 代码检查
```

## 项目结构

```
src/
├── app/                    # 入口 / 路由
├── components/             # 可复用组件
│   ├── ui/                 # 基础组件（Button, Input, Modal...）
│   └── features/           # 业务组件
├── hooks/                  # 自定义 hooks / composables
├── services/               # API 客户端、外部服务
├── stores/                 # 状态管理
├── utils/                  # 工具函数
├── types/                  # TypeScript 类型
└── styles/                 # 全局样式、设计 token
```

## 设计系统

| Token | 值 | 用途 |
|-------|------|------|
| Primary | `#______` | 按钮、链接、强调 |
| Background | `#______` | 页面背景 |
| Text | `#______` | 正文 |

## 关键文件

| 路径 | 用途 |
|------|------|
| `src/app/` | 应用入口和路由 |
| `src/services/api.ts` | API 客户端 |
| `.env.local` | 环境变量（不提交） |

## 环境变量

```bash
# .env.local
VITE_API_URL=http://localhost:3000
VITE_PUBLIC_KEY=xxx
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

### 项目初始化（从零开始时）

- 生成项目结构和基础文件
- 配置开发工具（linter、formatter、TypeScript 等）
- 初始化 git（.gitignore + 首次 commit）

### 验证检查点

每次修复或配置变更后：
1. 确认变更确实生效了
2. 测试之前失败的场景
3. 确认预期行为正常
