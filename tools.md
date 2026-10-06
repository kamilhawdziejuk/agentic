# tools.md — Skills & Tooling Management

This document details the tools, skills, and installation scripts available in this repository.

---

## 🛠️ Installed Workspace Skills

All workspace skills live in [`.agents/skills/`](file:///c:/Sources/agentic/.agents/skills):

| Skill Name | Location | Description |
| :--- | :--- | :--- |
| **`closure`** | [`.agents/skills/closure/SKILL.md`](file:///c:/Sources/agentic/.agents/skills/closure/SKILL.md) | Reproducible plan creation & Jira ticket closure workflow |
| **`code-review`** | [`.agents/skills/code-review/SKILL.md`](file:///c:/Sources/agentic/.agents/skills/code-review/SKILL.md) | Staff Engineer production-grade code review framework |
| **`design-principles`** | [`.agents/skills/design-principles/SKILL.md`](file:///c:/Sources/agentic/.agents/skills/design-principles/SKILL.md) | Core software design principles (SOLID, DRY, KISS, YAGNI) |
| **`unit-tests`** | [`.agents/skills/unit-tests/SKILL.md`](file:///c:/Sources/agentic/.agents/skills/unit-tests/SKILL.md) | Unit testing culture and language-specific guidelines |
| **`warmup`** | [`.agents/skills/warmup/SKILL.md`](file:///c:/Sources/agentic/.agents/skills/warmup/SKILL.md) | Preloads configuration, skills, and rules into session |

---

## ⚡ Skill Installation Script (`skills.sh`)

You can install or update external skills into `.agents/skills/` using `npx` or the helper script `skills.sh`:

### Running `skills.sh`

```bash
chmod +x skills.sh
./skills.sh <skill-package-or-url>
```

### Direct `npx` Skill Command

```bash
npx skills install <skill-name> --dir .agents/skills
```
