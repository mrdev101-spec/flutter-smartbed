<!--
This file is intended to guide automated AI coding agents (Copilot-style) when working in
this repository. It focuses on immediate, actionable knowledge the agent can use to be
productive.

NOTE: At the time this file was generated the repository appears empty. The instructions
below therefore emphasize discovery steps, likely project patterns for a "flutter-smartbed"
project, and what to do when expected files are missing. Update this file after the code
is added so instructions can include concrete, repository-specific examples.
-->

# Agent instructions (concise)

- Repo status: currently empty. First tasks are discovery and mapping (look for project files).
- Primary assumption: this is a Flutter-based project named "flutter-smartbed" (mobile app + possibly firmware/backend). If that assumption is wrong, detect actual stack from files.

## What to do first (discovery)

1. Look for these files/dirs (in order) and stop when you find a match:
   - `pubspec.yaml`, `lib/`, `android/`, `ios/` → treat as Flutter app (Dart).
   - `package.json`, `src/` → Node backend or frontend.
   - `requirements.txt`, `pyproject.toml` → Python services.
   - `firmware/`, `esp32/`, `arduino/`, `Makefile` → embedded firmware components.
   - `.github/workflows/` → CI workflows and useful commands.

2. If no files found, open an issue or prompt the repo owner for:
   - sample `pubspec.yaml` and `lib/main.dart` (if this is a Flutter app)
   - README describing architecture and build commands

## How to identify the "big picture" when code exists

- Map major components by top-level folders. Example mappings to expect:
  - `app/` or `mobile/` (`lib/`) → Flutter UI and state management (Bloc/Provider/GetX).
  - `backend/` or `server/` → REST/gRPC services (Node/Python/Go).
  - `firmware/` or `embedded/` → microcontroller code and build scripts.
  - `tools/` → scripts for provisioning, OTA, or CI helpers.

- Look for cross-component contracts: protobuf `.proto` files, OpenAPI/Swagger, or JSON schema files in `api/` or `contracts/`.

## Common build/test/debug commands (try in this order for a Flutter project)

- Install deps: `flutter pub get`
- Run app: `flutter run` (connect a device or emulator)
- Build release: `flutter build apk` / `flutter build ios`
- Run unit tests: `flutter test`
- Static analysis: `dart analyze` or `flutter analyze`

If you find a `backend/` with Node:
- `npm install` or `pnpm install` then `npm run dev` / `npm test`

If you find firmware with a Makefile:
- `make` or `make all`; inspect the Makefile to find target names.

## Project-specific conventions to look for

- Dart/Flutter style: prefer `dart format` and `dart analyze`; check for `analysis_options.yaml` for linter rules.
- State management: search `Bloc`, `Provider`, `GetX`, or `Riverpod` tokens in `lib/` to learn the chosen pattern.
- Platform channels: search for `MethodChannel` or `EventChannel` to find native-bridge integration with firmware/backend.

## Integration points and external dependencies

- Check `pubspec.yaml` for packages that indicate external services (e.g., `mqtt_client`, `http`, `grpc`, `firebase_core`).
- CI/CD: inspect `.github/workflows` for build/test/deploy steps and secrets usage.

## Example checklist for an agent making edits

1. Run discovery steps above and summarize findings in the top of the PR.
2. When changing behavior, update/verify unit tests (`flutter test`) and run `dart analyze`.
3. Keep changes small and focused. Reference files you inspected (e.g., `lib/main.dart`, `pubspec.yaml`) in the PR description.

## When you can't find concrete artifacts

- Document the missing piece explicitly in your PR and in the repo (README or issue). Example: "No `pubspec.yaml` found — unable to run flutter commands."
- Suggest minimal scaffolding to unblock verification (a minimal `pubspec.yaml` and `lib/main.dart` stub for Flutter).

## Follow-ups for maintainers (human-facing)

- Add a short README listing: project components, build/test commands, and where credentials live.
- Add `pubspec.yaml` (if Flutter) or other dependency manifest so automated agents can run builds/tests.

---
If you want, I can: (A) tailor this file once you add the repository files, or (B) create a minimal Flutter skeleton (pubspec + lib/main.dart) to make CI/tests runnable—tell me which.
