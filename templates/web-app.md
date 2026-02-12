# CLAUDE.md

## {{PROJECT_NAME}}

> TODO: One-line description

**Type**: Web Application
**Tech Stack**: {{TECH_STACK}}

## Quick Start

```bash
npm run dev          # Development
npm run build        # Production build
npm run preview      # Preview production build
npm run lint         # ESLint
```

## Architecture

```
src/
├── app/                    # App entry / routing
├── components/             # Reusable UI components
│   ├── ui/                 # Base components (Button, Input, Modal...)
│   └── features/           # Feature-specific components
├── hooks/                  # Custom hooks / composables
├── services/               # API clients, external service wrappers
├── stores/                 # State management
├── utils/                  # Utility functions
├── types/                  # TypeScript type definitions
└── styles/                 # Global styles, design tokens
```

## Design System

| Token | Value | Usage |
|-------|-------|-------|
| Primary | `#______` | Buttons, links, accents |
| Background | `#______` | Page background |
| Text | `#______` | Body text |

## Key Files

| Path | Purpose |
|------|---------|
| `src/app/` | App entry and routing |
| `src/services/api.ts` | API client |
| `.env.local` | Environment variables (not committed) |

## Environment Variables

```bash
# .env.local
VITE_API_URL=http://localhost:3000
VITE_PUBLIC_KEY=xxx
```

---

## AI Collaboration Rules

### Workflow

- Non-trivial tasks: explain approach first, get confirmation, then code
- Simple tasks: just do it
- After writing code: self-review for bugs, security issues, and edge cases
- After modifying code: verify it actually runs before reporting done
- Proactively flag potential issues you notice, even if not asked

### Code Style

- Minimal comments — only where logic isn't self-evident
- Don't add JSDoc/docstrings unless asked
- Don't over-engineer — moderate structure, no premature abstractions
- Don't touch code I didn't ask you to change

### Git

- Personal project: commit directly to main
- Don't auto-commit — ask me before committing
- Use conventional commits with emoji (✨ feat, 🐛 fix, etc.)

### Debugging

- Before fixing: explain 1) root cause 2) how fix addresses it 3) how to verify
- Verify through complete user flows, not just the specific code change
- If a bug "reappears", investigate the original diagnosis first

### Project Init (when building from scratch)

- Generate project structure and base files
- Set up dev tooling (linter, formatter, TypeScript config if applicable)
- Initialize git with .gitignore and first commit

### Verification

After every fix or config change:
1. Verify the change actually took effect
2. Test the previously failing scenario
3. Confirm expected behavior
