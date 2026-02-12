# CLAUDE.md

## Project Overview

**Project**: {{PROJECT_NAME}}
**Type**: Backend API
**Tech Stack**: {{TECH_STACK}}

## Build Commands

```bash
# Development (with hot reload)
npm run dev          # or: bun run --watch src/index.ts

# Build
npm run build

# Start production
npm start

# Run tests
npm test

# Database
npm run db:migrate   # Run migrations
npm run db:seed      # Seed data
```

## Architecture

```
src/
├── routes/                 # Route definitions
│   ├── auth.ts
│   └── api/
│       ├── users.ts
│       └── ...
├── controllers/            # Request handlers
├── services/               # Business logic
├── models/                 # Database models / schemas
├── middleware/              # Auth, validation, error handling
├── utils/                  # Helpers, constants
├── config/                 # App config, env validation
└── index.ts                # Server entry point
```

## API Structure

```
Base URL: http://localhost:{{PORT}}

Auth:
  POST   /api/auth/login
  POST   /api/auth/register
  POST   /api/auth/refresh

Resources:
  GET    /api/{{resource}}
  POST   /api/{{resource}}
  GET    /api/{{resource}}/:id
  PUT    /api/{{resource}}/:id
  DELETE /api/{{resource}}/:id
```

## Database

- **Type**: {{DB_TYPE}}
- **Connection**: See `.env`

## Environment Variables

```bash
# .env
PORT=3000
DATABASE_URL=postgresql://user:pass@localhost:5432/dbname
JWT_SECRET=your-secret-here
NODE_ENV=development
```

## Key Files

| Path | Purpose |
|------|---------|
| `src/index.ts` | Server entry, middleware setup |
| `src/routes/` | API route definitions |
| `src/middleware/auth.ts` | Authentication middleware |
| `src/config/` | Environment config, validation |

## Debugging Rules

- Before fixing a bug, explain: 1) Root cause 2) How the fix addresses it 3) How to verify
- Verify fixes through **complete user flows**, not just the specific code change
- If a bug "reappears" after fixing, investigate whether the original diagnosis was correct

## Verification Checkpoints

After every fix or config change:
1. Verify the change actually took effect (not just that the file was saved)
2. Test the specific user scenario that was previously failing
3. Confirm the expected behavior can be reproduced
