---
name: warmup
description: >-
  Performs session warm-up by discovering and inventorying all rules, skills, and configurations across the workspace and user profile.
---

# Warmup

Load all rules, commands, and skills from the user profile (`~/.gemini/config/`) and the current workspace (`.agents/skills/`, `.agents/rules/`, `GEMINI.md`, `AGENTS.md`) into context before starting work.

## Overview

Preload user-level and workspace configuration so this session follows conventions, workflows, and skills without waiting for them to be discovered ad hoc.

**User profile root:** `~/.gemini/config` (Windows: `%USERPROFILE%\.gemini\config`)

---

## Steps

### 1. Discover files

Use glob or directory listing to find all resources under:

| Type | Path | Pattern |
|------|------|---------|
| Global rules | `~/.gemini/config/rules/` | `**/*.md` |
| Global skills | `~/.gemini/config/skills/` | `**/SKILL.md` |
| Workspace rules | `<repo>/.agents/rules/` or `<repo>/GEMINI.md` | `**/*.md` |
| Workspace skills | `<repo>/.agents/skills/` | `**/SKILL.md` |

Skip `warmup/SKILL.md` when listing skills (you are already running it).

### 2. Read everything

Read **every** file found in step 1.

For each rule (`.md`), from user profile or workspace, note:
- Scope and guidelines
- Whether it applies globally or for specific directory scopes

For each skill (`SKILL.md`), note:
- `name` and `description` from frontmatter
- When to invoke it

### 3. Internalize and confirm

After reading, treat the loaded content as active guidance for the rest of this session:

- **Rules** — follow all rules in active directory scopes.
- **Skills** — read and follow a skill's full instructions whenever the task matches its description.

### 4. Report inventory

Reply with a concise warmup summary:

```
## Warmup complete

### Global rules (N)
- `<filename>` — <description>

### Workspace rules (N)
- `<filename>` — <description>

### Skills (N)
- `<name>` — <description>

Ready. Loaded N global rules, N workspace rules, and N skills.
```

If a directory is missing or empty, say so explicitly. If any file fails to read, list it and continue with the rest.

---

## Guidelines

- Run discovery and reads yourself — do not ask the user to paste file contents.
- Do not modify any rule, command, or skill files during warmup.
- Keep the summary scannable; do not dump full file contents into the reply.
- After warmup, proceed with the user's next request using the loaded context.
