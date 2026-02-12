# CLAUDE.md

> **First time?** Run `bash setup.sh` to select a project template and configure this file.
>
> Or manually copy a template from `templates/` to replace this file.

## Project Overview

**Project**: {{PROJECT_NAME}}
**Type**: {{PROJECT_TYPE}}
**Tech Stack**: {{TECH_STACK}}

## Build Commands

```bash
# TODO: Add your build commands here
```

## Architecture

```
# TODO: Add your project structure here
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
