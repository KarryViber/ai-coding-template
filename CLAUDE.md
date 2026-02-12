# CLAUDE.md

> Run `bash setup.sh` to select a template and configure this file.

## {{PROJECT_NAME}}

> TODO: One-line description

**Tech Stack**: {{TECH_STACK}}

## Quick Start

```bash
# TODO: Install & run commands
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
