# CLAUDE.md

## {{PROJECT_NAME}}

> TODO: One-line description

**Type**: Full-Stack Application
**Tech Stack**: {{TECH_STACK}}

## Quick Start

```bash
npm run dev              # All services
npm run dev:client       # Frontend only
npm run dev:server       # Backend only
npm run build            # Build all
npm test                 # All tests
```

## Architecture

```
{{PROJECT_NAME}}/
├── client/                     # Frontend
│   ├── src/
│   │   ├── app/                # Entry, routing
│   │   ├── components/         # UI components
│   │   ├── hooks/              # Custom hooks
│   │   ├── services/           # API client
│   │   ├── stores/             # State management
│   │   └── types/              # Types
│   └── package.json
│
├── server/                     # Backend
│   ├── src/
│   │   ├── routes/             # API routes
│   │   ├── controllers/        # Request handlers
│   │   ├── services/           # Business logic
│   │   ├── models/             # Database models
│   │   ├── middleware/         # Auth, validation
│   │   └── index.ts            # Entry
│   └── package.json
│
├── shared/                     # Shared code
│   └── types/                  # Shared TypeScript types
│
└── package.json                # Root
```

## API Contract

```
Base URL: http://localhost:{{PORT}}/api
Auth: Bearer token in Authorization header
```

## Database

- **Type**: {{DB_TYPE}}
- **ORM**: {{ORM}}

## Environment Variables

```bash
# server/.env
PORT=3000
DATABASE_URL=postgresql://user:pass@localhost:5432/dbname
JWT_SECRET=your-secret

# client/.env
VITE_API_URL=http://localhost:3000/api
```

## Key Files

| Path | Purpose |
|------|---------|
| `client/src/services/api.ts` | API client |
| `server/src/routes/` | API routes |
| `server/src/middleware/auth.ts` | Auth middleware |
| `shared/types/` | Shared types |

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
