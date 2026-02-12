# CLAUDE.md

## {{PROJECT_NAME}}

> TODO: One-line description

**Type**: Mobile Application
**Platform**: {{PLATFORM}}
**Tech Stack**: {{TECH_STACK}}

## Quick Start

### iOS (Swift / SwiftUI)

```bash
xcodegen generate                    # Generate Xcode project (if using XcodeGen)
open {{PROJECT_NAME}}.xcodeproj      # Open in Xcode

# Build for simulator
xcodebuild -project {{PROJECT_NAME}}.xcodeproj \
  -scheme {{PROJECT_NAME}} \
  -destination 'platform=iOS Simulator,name=iPhone 16' build
```

### Android (Kotlin / Jetpack Compose)

```bash
./gradlew assembleDebug     # Build debug APK
./gradlew installDebug      # Install on device
./gradlew test              # Run tests
```

### React Native / Expo

```bash
npx expo start              # Development
npx expo run:ios            # iOS
npx expo run:android        # Android
```

## Architecture

```
# iOS
Sources/
├── App/                    # App entry point
├── Views/                  # SwiftUI views
├── ViewModels/             # View models (MVVM)
├── Models/                 # Data models
├── Services/               # Network, storage, auth
└── Utils/                  # Extensions, helpers

# Android
app/src/main/java/.../
├── ui/                     # Compose screens
├── viewmodel/              # ViewModels
├── data/                   # Repository, data sources
├── model/                  # Data classes
└── di/                     # Dependency injection
```

## Key Files

| Path | Purpose |
|------|---------|
| `Sources/App/` | App entry point |
| `Sources/Services/` | API clients, auth |
| `project.yml` | XcodeGen config (iOS) |
| `build.gradle` | Build config (Android) |

## Localization

- `zh-Hans` — Simplified Chinese (primary)
- `en` — English
- `ja` — Japanese

## Firebase / Backend

- Project ID: `{{FIREBASE_PROJECT_ID}}`
- Region: `us-central1`

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
