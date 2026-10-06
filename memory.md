# memory.md — Persistent Project Memory

This file serves as a persistent memory log across agent sessions to track repository architecture, key technical decisions, environment configurations, and lessons learned.

---

## 🏗️ Repository Architecture & Scope

- **Repository**: `kamilhawdziejuk/agentic` (`c:\Sources\agentic`)
- **Customizations Root**: `.agents/skills/`
- **Active Skills**:
  - `closure`: Reproducible plan creation & Jira ticket closure workflow
  - `code-review`: Production-grade code review framework
  - `design-principles`: Foundational SOLID, DRY, KISS, YAGNI rules
  - `unit-tests`: Multi-language unit testing DoD and standards
  - `warmup`: Session warm-up and customization inventory

---

## 📌 Technical Decisions & Conventions

1. **Customization Standard**:
   - Project-specific skills reside in `.agents/skills/<skill_name>/SKILL.md`.
   - Every skill must have valid YAML frontmatter containing `name` and `description`.
   - Directory rules live in `AGENTS.md` at workspace root.

2. **Git & Version Control**:
   - Strict approval requirement before any `git commit` or `git push`.
   - Branch format for Jira integration: `<type>/<TICKET-ID>/<description>`.

---

## 🧠 Key Learnings & Known Gotchas

- *Skill Naming*: Must use `SKILL.md` (not `.mdc`) for Antigravity discovery.
- *Testing Requirements*: Tests must be executed using project test tools before claiming task completion.
