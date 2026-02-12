# CLAUDE.md

## Project Overview

**Project**: {{PROJECT_NAME}}
**Type**: Web Application
**Tech Stack**: {{TECH_STACK}}

## Build Commands

```bash
# Development
npm run dev          # or: bun dev / pnpm dev

# Build
npm run build        # Production build

# Preview
npm run preview      # Preview production build locally

# Lint / Format
npm run lint         # ESLint
npm run format       # Prettier
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
| `src/app/` | Application entry and routing |
| `src/services/api.ts` | API client configuration |
| `.env.local` | Environment variables (not committed) |

## Environment Variables

```bash
# .env.local
VITE_API_URL=http://localhost:3000
VITE_PUBLIC_KEY=xxx
```

## Debugging Rules

- Before fixing a bug, explain: 1) Root cause 2) How the fix addresses it 3) How to verify
- Verify fixes through **complete user flows**, not just the specific code change
- If a bug "reappears" after fixing, investigate whether the original diagnosis was correct

## Verification Checkpoints

After every fix or config change:
1. Verify the change actually took effect (not just that the file was saved)
2. Test the specific user scenario that was previously failing
3. Confirm the expected behavior can be reproduced
