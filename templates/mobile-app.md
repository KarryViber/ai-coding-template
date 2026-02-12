# CLAUDE.md

## {{PROJECT_NAME}}

> TODO: 一句话描述

**类型**: 移动应用
**平台**: {{PLATFORM}}
**技术栈**: {{TECH_STACK}}

## 快速开始

### iOS (Swift / SwiftUI)

```bash
xcodegen generate                    # 生成 Xcode 项目（XcodeGen）
open {{PROJECT_NAME}}.xcodeproj      # 打开 Xcode

# 模拟器构建
xcodebuild -project {{PROJECT_NAME}}.xcodeproj \
  -scheme {{PROJECT_NAME}} \
  -destination 'platform=iOS Simulator,name=iPhone 16' build
```

### Android (Kotlin / Jetpack Compose)

```bash
./gradlew assembleDebug     # 构建 debug APK
./gradlew installDebug      # 安装到设备
./gradlew test              # 运行测试
```

### React Native / Expo

```bash
npx expo start              # 开发
npx expo run:ios            # iOS
npx expo run:android        # Android
```

## 项目结构

```
# iOS
Sources/
├── App/                    # 入口
├── Views/                  # SwiftUI 视图
├── ViewModels/             # 视图模型 (MVVM)
├── Models/                 # 数据模型
├── Services/               # 网络、存储、认证
└── Utils/                  # 扩展、工具

# Android
app/src/main/java/.../
├── ui/                     # Compose 页面
├── viewmodel/              # ViewModel
├── data/                   # Repository、数据源
├── model/                  # 数据类
└── di/                     # 依赖注入
```

## 关键文件

| 路径 | 用途 |
|------|------|
| `Sources/App/` | 应用入口 |
| `Sources/Services/` | API 客户端、认证 |
| `project.yml` | XcodeGen 配置 (iOS) |
| `build.gradle` | 构建配置 (Android) |

## 本地化

- `zh-Hans` — 简体中文（主要）
- `en` — 英文
- `ja` — 日文

## Firebase / 后端

- Project ID: `{{FIREBASE_PROJECT_ID}}`
- Region: `us-central1`

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
