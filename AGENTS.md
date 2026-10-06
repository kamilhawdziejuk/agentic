# AGENTS.md — Quality, Direction & Safety Rules

This document outlines the core operational directives, quality standards, and safety constraints for AI agents operating in this workspace.

---

## 🚨 Critical Safety Rule

> [!CAUTION]
> **DO NOT COMMIT OR PUSH ANYTHING WITHOUT EXPLICIT USER APPROVAL.**
>
> - Never execute `git commit` or `git push` automatically.
> - Always present changes to the user and request explicit confirmation before staging, committing, or pushing code to remote repositories.

---

## 🎯 Quality & Direction Guidelines

### 1. Code Quality & Architecture
- **Surgical Edits**: Make precise, minimal edits that solve the task without introducing collateral changes.
- **Design Principles**: Always apply **KISS** (Keep It Simple), **YAGNI** (You Aren't Gonna Need It), and **SOLID** principles (refer to `.agents/skills/design-principles/SKILL.md`).
- **No Swallowed Errors**: Never mask failure symptoms by adding empty `catch` blocks or returning dummy fallbacks without root-cause resolution.

### 2. Verification Before Completion
- **Empirical Proof**: Never mark a task as complete without building or running unit/integration tests to verify correctness.
- **Definition of Done (DoD)**:
  1. Code changes implemented.
  2. Unit tests added or updated.
  3. Build/test suite executed with 100% passing results.

### 3. Transparent Communication
- Keep responses concise, structured, and actionable.
- Link to relevant code files using clickable `file://` URLs.
- Provide clean summaries of background task outputs.
