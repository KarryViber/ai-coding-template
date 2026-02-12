# ai-coding-template

Personal AI coding project template for use with [Claude Code](https://claude.ai/code).

Click **"Use this template"** on GitHub to create a new project, then run:

```bash
bash setup.sh
```

## What's Included

```
.claude/
├── commands/
│   └── commit.md              # /commit command (Conventional Commits + emoji)
└── settings.local.json        # Minimal project settings

CLAUDE.md                      # Project instructions for Claude Code
.gitignore                     # Universal gitignore (Node/Python/Swift/Android)
setup.sh                       # Interactive setup script
templates/                     # CLAUDE.md templates (removed after setup)
```

## Available Templates

| Template | Best For |
|----------|----------|
| **web-app** | React, Vue, Next.js, Nuxt, Svelte |
| **mobile-app** | iOS (Swift), Android (Kotlin), React Native |
| **backend-api** | Node.js, Python, Go APIs |
| **fullstack** | Frontend + Backend monorepo |
| **quick-prototype** | Hackathon, rapid prototyping |

## After Setup

1. Edit `CLAUDE.md` to fill in project-specific details (build commands, architecture, key files)
2. The `templates/` directory and `setup.sh` are automatically removed
3. Start coding with Claude Code!

## Customization

### Adding project-specific rules

Edit `CLAUDE.md` directly. Common additions:
- Git workflow rules (branch naming, PR process)
- API documentation
- Design system tokens
- Deployment instructions

### Adding more /commands

Create `.claude/commands/your-command.md` with YAML frontmatter:
```yaml
---
description: What this command does
---
```

## Relationship with Global Config

This template provides **project-level** configuration. It works alongside your global `~/.claude/CLAUDE.md` which handles cross-project preferences (debugging rules, verification habits, etc.).

Project-level CLAUDE.md = what's specific to THIS project.
Global CLAUDE.md = your universal coding style.
