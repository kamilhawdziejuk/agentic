---
name: unit-tests
description: >-
  Unit Testing Rules and guidelines to enforce a strong unit testing culture across TypeScript, Python, .NET, Java, and C/C++.
---

# Unit Testing Guidelines

## General Principles

- **Definition of Done (DoD)** for any code change:
  1) Unit tests added/updated that exercise the changed logic (positive + negative cases).
  2) Add or update tests for the code you change, even if nobody asked.
  3) All tests should pass before committing changes.
  4) Coverage does not regress; aim to improve incrementally.

---

## Language / Framework Rules

### TypeScript / Node (Jest/Vitest)
- **Folders**: `src/` and `tests/` (mirror paths); test filenames end with `.test.ts` or `.spec.ts`.
- **Commands**:
  - Run tests: `npm test` (Jest/Vitest auto)
  - Coverage: `npm run test:coverage` → produce `coverage/lcov.info`
- **Configuration**:
  - Use `ts-jest` or `vitest` with `happy-dom/jsdom` for components.
  - Mock fs/network/time via `jest.mock()` / `vi.mock()`.
- **Examples**:
  - Add tests for pure functions and edge cases.
  - For async code, prefer `await` + fake timers; avoid real waits.

### Python (PyTest)
- **Folders**: source under `src/` or package; tests under `tests/` with files `test_*.py`.
- **Commands**:
  - Run: `pytest -q`
  - Coverage: `pytest --cov=src --cov-report=term-missing:skip-covered`
- **Mocking**: use `unittest.mock.patch`, `freezegun` for time.
- **Structure**: one assertion per behavior; parametrize for input tables.

### .NET (xUnit/NUnit/MSTest)
- **Folders**: `src/ProjectName/` and `tests/ProjectName.Tests/`.
- **Commands**:
  - Run: `dotnet test --collect:"XPlat Code Coverage"`
  - Coverage: use `coverlet` or `ReportGenerator` to enforce gates.
- **Mocking**: `Moq`/`NSubstitute`; fake `DateTimeProvider`.

### Java (JUnit/Mockito)
- **Folders**: Maven/Gradle standard: `src/main/java` and `src/test/java`.
- **Commands**:
  - Maven: `mvn -q -DskipITs test`
  - Coverage: `jacoco` (fail build if below gates).
- **Mocking**: `Mockito`, `WireMock` for HTTP.

### C/C++ (GoogleTest)
- **Folders**: `src/` and `tests/`.
- **Commands**:
  - CMake: `cmake -S . -B build && cmake --build build && ctest --test-dir build --output-on-failure`
- **Coverage**: `gcovr`/`llvm-cov` based; exclude generated code.
