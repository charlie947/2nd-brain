---
name: plan
description: Create a systematic execution plan with research for any task
---

# Plan Command

Create a comprehensive, step-by-step plan for your task with integrated research.

## Your Task

$ARGUMENTS

---

## Planning Process

### Step 1: Understand the Task (30 sec)

**Analyzing your request...**

```
Parse task into:
- Primary objective
- Deliverable type
- Target audience (if applicable)
- Success criteria
```

### Step 2: Load Brain Context (30 sec)

**Searching memory for relevant context...**

```
Read memory/company/products.md
Read memory/company/differentiators.md
Read memory/customers/ideal-customer-profile.md
```

**Finding relevant patterns...**

```
Grep "$ARGUMENTS" memory/patterns/ -i
```

**Checking past similar work...**

```
Grep "$ARGUMENTS" experiences/ -i
```

### Step 3: Research (if needed) (2-3 min)

**Determine if external research is needed:**

- Does this task involve a specific prospect/company? → Research them
- Does this require current market data? → Gather it
- Can we rely entirely on memory? → Skip external research

**If research needed, use available MCP tools:**
- LinkedIn for professional context
- HubSpot for CRM data
- Web search for company information

### Step 4: Generate Plan

**Create systematic execution plan with:**

1. Clear objective statement
2. Step-by-step actions
3. Time estimates per step
4. Quality checkpoints
5. Brain context to reference

---

## Plan Output Format

When generating the plan, use this structure:

```markdown
# Plan: [Task Title]

> Generated: [date]
> Estimated time: [total time]
> Brain context used: [files referenced]

## Objective

[Clear statement of what success looks like]

## Context from Brain

### Relevant Memory
- [Key info from memory/company/]
- [Key info from memory/customers/]

### Similar Past Work
- [Reference to experiences/ if found]

### Applicable Patterns
- [Pattern 1 from memory/patterns/]
- [Pattern 2 from memory/patterns/]

## Research Findings (if applicable)

### About [Target]
- [Key insight 1]
- [Key insight 2]
- [Key insight 3]

### Opportunities Identified
- [Opportunity 1]
- [Opportunity 2]

## Execution Steps

### Step 1: [Action] (X min)
- [ ] Sub-task 1
- [ ] Sub-task 2
- Quality checkpoint: [what to verify]

### Step 2: [Action] (X min)
- [ ] Sub-task 1
- [ ] Sub-task 2
- Quality checkpoint: [what to verify]

### Step 3: [Action] (X min)
- [ ] Sub-task 1
- [ ] Sub-task 2
- Quality checkpoint: [what to verify]

## Success Criteria

- [ ] [Criterion 1]
- [ ] [Criterion 2]
- [ ] [Criterion 3]

## Next Command

When ready to execute:
```bash
/work [path-to-this-plan]
```
```

---

## After Planning

### Save the Plan

The plan will be saved to:
```
experiences/[task-type]/[name]/plan.md
```

### Ready to Execute?

```bash
/work experiences/[task-type]/[name]/plan.md
```

### Want to Modify?

Just ask me to adjust specific sections before executing.

---

## Planning Tips

**Good task descriptions:**
- "Create a one-pager for Acme Corp focusing on their digital transformation needs"
- "Draft a follow-up email to Jane at TechStart after our demo call"
- "Prepare talking points for the quarterly review meeting"

**Too vague (will ask for clarification):**
- "Make something for Acme"
- "Help with email"
- "Prepare for meeting"

---

## Plan Quality Levels

Based on available context:

| Context Available | Plan Quality | Time |
|------------------|--------------|------|
| Full memory + past experience | ⭐⭐⭐⭐⭐ Excellent | 2 min |
| Memory only | ⭐⭐⭐⭐ Good | 2 min |
| Some memory + research | ⭐⭐⭐⭐ Good | 3-4 min |
| Research only (no memory) | ⭐⭐⭐ Fair | 3-4 min |
| No context | ⭐⭐ Basic | 1 min |

**Tip:** The more you feed your brain with `/learn`, the better your plans become.

---

**Time to plan:** 2-4 minutes
**Next step:** `/work [plan.md]`
