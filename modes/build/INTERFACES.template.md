# INTERFACES.md — 接口契约

> 由 Builder 在架构设计阶段定义，developer agent 必须严格遵守。
> 需要修改接口时，向 Builder 报告，不要自行改动。

## API Endpoints

| Method | Path | Request Body | Response | 说明 |
|--------|------|-------------|----------|------|
| GET | /api/example | - | `{ data: T[] }` | TODO |
| POST | /api/example | `{ name: string }` | `{ id: string }` | TODO |

## 组件 Props

| Component | Props | 说明 |
|-----------|-------|------|
| `ExampleCard` | `{ title: string; onClick: () => void }` | TODO |

## 共享类型

```ts
// types/shared.ts

// TODO: 定义模块间共享的类型

interface Example {
  id: string
  name: string
  createdAt: Date
}
```

## 模块边界

| 模块 | 负责 Agent | 文件/目录范围 | 依赖的接口 |
|------|-----------|-------------|-----------|
| 前端页面 | developer-1 | `src/app/`, `src/components/` | 组件 Props, API Endpoints |
| 后端 API | developer-2 | `src/api/`, `src/lib/` | API Endpoints, 共享类型 |
| 数据层 | developer-2 | `src/db/`, `prisma/` | 共享类型 |

## 状态管理

```
// TODO: 定义全局状态结构（如使用 zustand/redux）
```

## 事件/消息约定

```
// TODO: 如有 WebSocket/SSE/事件总线，在此定义消息格式
```
