# CLAUDE.md

## {{PROJECT_NAME}}

> TODO: 一句话描述

**类型**: 全栈应用
**技术栈**: {{TECH_STACK}}

## 快速开始

```bash
npm run dev              # 启动全部服务
npm run dev:client       # 仅前端
npm run dev:server       # 仅后端
npm run build            # 构建全部
npm test                 # 全部测试
```

## 项目结构

```
{{PROJECT_NAME}}/
├── client/                     # 前端
│   ├── src/
│   │   ├── app/                # 入口、路由
│   │   ├── components/         # UI 组件
│   │   ├── hooks/              # 自定义 hooks
│   │   ├── services/           # API 客户端
│   │   ├── stores/             # 状态管理
│   │   └── types/              # 类型定义
│   └── package.json
│
├── server/                     # 后端
│   ├── src/
│   │   ├── routes/             # API 路由
│   │   ├── controllers/        # 请求处理器
│   │   ├── services/           # 业务逻辑
│   │   ├── models/             # 数据模型
│   │   ├── middleware/         # 认证、校验
│   │   └── index.ts            # 入口
│   └── package.json
│
├── shared/                     # 共享代码
│   └── types/                  # 共享 TypeScript 类型
│
└── package.json                # 根（monorepo 脚本）
```

## API 契约

```
Base URL: http://localhost:{{PORT}}/api
认证: Authorization header 中的 Bearer token
```

## 数据库

- **类型**: {{DB_TYPE}}
- **ORM**: {{ORM}}

## 环境变量

```bash
# server/.env
PORT=3000
DATABASE_URL=postgresql://user:pass@localhost:5432/dbname
JWT_SECRET=your-secret

# client/.env
VITE_API_URL=http://localhost:3000/api
```

## 关键文件

| 路径 | 用途 |
|------|------|
| `client/src/services/api.ts` | API 客户端 |
| `server/src/routes/` | API 路由 |
| `server/src/middleware/auth.ts` | 认证中间件 |
| `shared/types/` | 共享类型 |

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
