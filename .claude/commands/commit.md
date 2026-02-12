---
argument-hint: [--style=simple|full]
description: 使用 Conventional Commits 格式创建规范的 git commit
---

# Commit 命令

使用 Conventional Commits 规范创建格式统一的提交。

## 用法

```
/commit              # 简洁模式（默认）
/commit --style=full # 详细模式（带 body 和 footer）
```

## 流程

1. `git status` 检查暂存文件
2. 没有暂存的话，`git add` 所有修改
3. `git diff` 分析变更内容
4. 生成 commit message
5. 执行 `git commit`

## 格式

### 简洁模式（默认）
```
<emoji> <type>[scope]: <描述>
```

### 详细模式
```
<emoji> <type>[scope]: <描述>

<body - 改了什么、为什么改>

<footer - breaking changes、issue 引用>
```

## 类型和 Emoji

| Type | Emoji | 使用场景 |
|------|-------|----------|
| `feat` | ✨ | 新功能 |
| `fix` | 🐛 | 修 bug |
| `docs` | 📝 | 文档 |
| `style` | 🎨 | 格式化 |
| `refactor` | ♻️ | 重构 |
| `perf` | ⚡️ | 性能优化 |
| `test` | ✅ | 测试 |
| `chore` | 🔧 | 维护 |
| `ci` | 👷 | CI/CD |
| `build` | 📦 | 构建系统 |
| `revert` | ⏪ | 回滚 |

## 规则

- 用现在时祈使语气（"add" 不是 "added"）
- 首行不超过 72 字符
- 末尾不加句号
- subject 和 body 之间空一行
- 一次 commit 不要混合不相关的变更
