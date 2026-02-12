# CLAUDE.md

## Project Overview

**Project**: {{PROJECT_NAME}}
**Type**: Full-Stack Application
**Tech Stack**: {{TECH_STACK}}

## Build Commands

```bash
# Development (all services)
npm run dev

# Frontend only
npm run dev:client       # or: cd client && npm run dev

# Backend only
npm run dev:server       # or: cd server && npm run dev

# Build all
npm run build

# Run tests
npm test
npm run test:client      # Frontend tests
npm run test:server      # Backend tests
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
│   │   └── types/              # Shared types
│   └── package.json
│
├── server/                     # Backend
│   ├── src/
│   │   ├── routes/             # API routes
│   │   ├── controllers/        # Request handlers
│   │   ├── services/           # Business logic
│   │   ├── models/             # Database models
│   │   ├── middleware/         # Auth, validation
│   │   └── index.ts            # Server entry
│   └── package.json
│
├── shared/                     # Shared code
│   └── types/                  # Shared TypeScript types
│
└── package.json                # Root (monorepo scripts)
```

## API Contract

```
Base URL: http://localhost:{{PORT}}/api

Frontend → Backend communication:
- REST API with JSON
- Auth: Bearer token in Authorization header
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
| `server/src/routes/` | API route definitions |
| `server/src/middleware/auth.ts` | Auth middleware |
| `shared/types/` | Shared TypeScript types |

## Debugging Rules

- Before fixing a bug, explain: 1) Root cause 2) How the fix addresses it 3) How to verify
- Verify fixes through **complete user flows**, not just the specific code change
- If a bug "reappears" after fixing, investigate whether the original diagnosis was correct

## Verification Checkpoints

After every fix or config change:
1. Verify the change actually took effect (not just that the file was saved)
2. Test the specific user scenario that was previously failing
3. Confirm the expected behavior can be reproduced
