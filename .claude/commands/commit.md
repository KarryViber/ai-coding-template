---
argument-hint: [--style=simple|full]
description: Create well-formatted commits with conventional commit messages
---

# Commit Command

Create well-formatted commits following Conventional Commits.

## Usage

```
/commit              # Simple style (default)
/commit --style=full # Detailed with body & footer
```

## Workflow

1. Check staged files with `git status`
2. If nothing staged, `git add` all modified files
3. Analyze changes with `git diff`
4. Generate commit message
5. Execute `git commit`

## Format

### Simple (default)
```
<emoji> <type>[scope]: <description>
```

### Full
```
<emoji> <type>[scope]: <description>

<body - what changed and why>

<footer - breaking changes, issue refs>
```

## Types & Emojis

| Type | Emoji | When to Use |
|------|-------|-------------|
| `feat` | ✨ | New feature |
| `fix` | 🐛 | Bug fix |
| `docs` | 📝 | Documentation |
| `style` | 🎨 | Formatting |
| `refactor` | ♻️ | Code refactoring |
| `perf` | ⚡️ | Performance |
| `test` | ✅ | Tests |
| `chore` | 🔧 | Maintenance |
| `ci` | 👷 | CI/CD |
| `build` | 📦 | Build system |
| `revert` | ⏪ | Revert |

## Rules

- Present tense, imperative mood ("add" not "added")
- First line under 72 characters
- No period at end of subject
- Separate subject from body with blank line
- Don't mix unrelated changes in one commit
