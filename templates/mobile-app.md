# CLAUDE.md

## Project Overview

**Project**: {{PROJECT_NAME}}
**Type**: Mobile Application
**Platform**: {{PLATFORM}}
**Tech Stack**: {{TECH_STACK}}

## Build Commands

### iOS (Swift / SwiftUI)

```bash
# Generate Xcode project (if using XcodeGen)
xcodegen generate

# Build (simulator)
xcodebuild -project {{PROJECT_NAME}}.xcodeproj \
  -scheme {{PROJECT_NAME}} \
  -destination 'platform=iOS Simulator,name=iPhone 16' \
  build

# Open in Xcode
open {{PROJECT_NAME}}.xcodeproj
```

### Android (Kotlin / Jetpack Compose)

```bash
# Build debug APK
./gradlew assembleDebug

# Install on connected device
./gradlew installDebug

# Run tests
./gradlew test
```

### React Native / Expo

```bash
# Development
npx expo start

# iOS
npx expo run:ios

# Android
npx expo run:android
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
app/src/main/
├── java/.../
│   ├── ui/                 # Compose screens
│   ├── viewmodel/          # ViewModels
│   ├── data/               # Repository, data sources
│   ├── model/              # Data classes
│   └── di/                 # Dependency injection
└── res/                    # Resources
```

## Key Files

| Path | Purpose |
|------|---------|
| `Sources/App/` | App entry point |
| `Sources/Services/` | API clients, auth service |
| `project.yml` | XcodeGen project definition (iOS) |
| `build.gradle` | Build config (Android) |

## Localization

Supported languages:
- `zh-Hans` - Simplified Chinese (primary)
- `en` - English
- `ja` - Japanese

Use `String(localized:)` (iOS) or `stringResource()` (Android) for all user-facing strings.

## Firebase / Backend

- Project ID: `{{FIREBASE_PROJECT_ID}}`
- Region: `us-central1`

## Debugging Rules

- Before fixing a bug, explain: 1) Root cause 2) How the fix addresses it 3) How to verify
- Verify fixes through **complete user flows**, not just the specific code change
- If a bug "reappears" after fixing, investigate whether the original diagnosis was correct

## Verification Checkpoints

After every fix or config change:
1. Verify the change actually took effect (not just that the file was saved)
2. Test the specific user scenario that was previously failing
3. Confirm the expected behavior can be reproduced
