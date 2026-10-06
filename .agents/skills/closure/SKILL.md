---
name: closure
description: >-
  Creates or updates a reproducible plan and documentation based on lessons learned during implementation, extracting Jira ticket info from the branch and recording the verified as-built solution.
---

# Closure: Reproducible Plan Creation

Generate a reproducible plan based on lessons learned during implementation.

## Prerequisites

- Working git branch with ticket ID in name (format: `<type>/<TICKET-ID>/<description>`)
- Atlassian MCP plugin configured and authenticated
- Implementation complete and ready for documentation

## Usage

```
I'm closing development and want to create/update a reproducible plan based on all lessons learned during implementation.

**Goal:** Capture what was delivered against the ticket’s acceptance criteria and the **simplest verified approach** that worked—so another engineer can reproduce the outcome without rediscovering pitfalls. Apply **KISS** and **YAGNI** from `design-principles`: document decisions and verification, not every exploratory dead end or incidental complexity.

**Instructions:**

### 1. Extract Ticket Information
First, get the current branch name and extract the Jira ticket ID:
- Check current branch: `git branch --show-current`
- Extract ticket ID from branch name (format: `<type>/<TICKET-ID>/<description>`)
- If no valid ticket ID found in branch name, stop and ask: "Please provide the Jira ticket ID (e.g., PROJ-123)"

### 2. Fetch Jira Ticket Details
Use Atlassian MCP to get ticket information:
- First get accessible resources: use `getAccessibleAtlassianResources` MCP tool
- Then fetch ticket details: use `getJiraIssue` MCP tool with the extracted ticket ID
- If MCP fails or ticket not found, stop and ask: "Please provide the Jira ticket URL so I can access the details"

### 3. Analyze Implementation
After getting ticket details automatically:
- Read the current plan if it exists: @.agents/plans/[existing_plan_name].plan.md
- Examine key files that were created/modified during implementation
- Analyze the git diff and commit history for this ticket to understand the implementation path
- Identify any temporary plans or notes from this session that contain relevant insights

### 4. Create/Update the plan with:

#### Plan Metadata (YAML frontmatter):
- name: Follow format `{issue-key}-{short-slug}` using the extracted ticket ID (e.g., `proj-123-add-auth`)
- overview: One-sentence summary of what was actually implemented 
- todos: Current status reflecting completion
- isProject: false (for individual tickets)

#### Implementation-Tested Content:
1. **Issue verification**: Use the fetched Jira ticket details to confirm the title, description, and acceptance criteria match what was actually delivered
2. **Lessons learned decisions**: Document key technical decisions that emerged during implementation (not just initial assumptions)
3. **Working approach**: The specific step-by-step approach that was actually successful, including:
   - Dependencies that were actually needed (not guessed)
   - Integration points that worked 
   - Configuration values that were tested
   - Error handling patterns that were validated
4. **Context references**: Point to exact files, line numbers, and existing code that the implementation built upon
5. **Verification steps**: The actual commands/tests that prove the implementation works
6. **Implementation gotchas**: Problems encountered and how they were solved

### Structure Requirements:
- Follow the existing plan format (see other .plan.md files for reference)
- Include Mermaid diagrams for complex flows if applicable
- Reference specific file paths and functions where implementation lives
- Document any deviations from original requirements and why
- Include environment setup or dependencies that are critical for reproduction

**Key principle:** Document the **as-built** solution—acceptance criteria met, decisions with brief rationale, and verification commands. A reader should meet the same acceptance criteria with minimal trial-and-error, using the simplest approach that was validated (per `design-principles`), not a byte-for-byte replay of every detour during implementation.

Please update/create: `.agents/plans/[ticket-id-based-filename].plan.md`
```

## Automated Workflow

This command automatically:
1. **Extracts ticket ID** from the current git branch name (expects format: `<type>/<TICKET-ID>/<description>`)
2. **Fetches Jira details** using Atlassian MCP tools:
   - `getAccessibleAtlassianResources` - Get cloud ID for API access
   - `getJiraIssue` - Retrieve full ticket details including title, description, and acceptance criteria
3. **Uses real ticket data** instead of manual placeholders for accurate plan generation
