---
name: work
description: Execute a plan with systematic todo tracking
---

# Work Command

Execute a plan systematically with progress tracking and quality checkpoints.

## Plan to Execute

$ARGUMENTS

---

## Execution Protocol

### Step 1: Load the Plan

**Reading plan file...**

```
Read $ARGUMENTS
```

If no plan file provided:
```
"No plan specified. Would you like me to:
1. List available plans in experiences/
2. Create a new plan with /plan [task]
3. Continue with a quick task without a plan"
```

### Step 2: Load Supporting Context

**From the plan, identify and load:**

```
Read [memory files referenced in plan]
Read [pattern files referenced in plan]
Read [past experience files if relevant]
```

### Step 3: Initialize Todo Tracking

**Converting plan steps to trackable todos...**

Use TodoWrite to create task list from plan's execution steps:
- Each major step becomes a todo item
- Sub-tasks become checklist items within execution
- Quality checkpoints become verification steps

### Step 4: Execute Systematically

For each step in the plan:

1. **Mark step as in_progress**
2. **Execute the work**
   - Follow plan instructions
   - Apply relevant patterns from memory
   - Reference similar past work
3. **Quality checkpoint**
   - Verify step meets criteria
   - Note any issues or deviations
4. **Mark step as completed**
5. **Move to next step**

---

## Execution Tracking Format

During execution, maintain this structure:

```markdown
## Execution Log

### Step 1: [Step Name] ✅
- Started: [time]
- Completed: [time]
- Notes: [any observations]
- Output: [what was produced]

### Step 2: [Step Name] 🔄 IN PROGRESS
- Started: [time]
- Current: [what's being done]

### Step 3: [Step Name] ⏳ PENDING
```

---

## Output Organization

### During Execution

Work products are created in the experience folder:

```
experiences/[task-type]/[name]/
├── plan.md           # The plan being executed
├── research.md       # Research gathered during /plan
├── output.md         # The main deliverable (created during /work)
└── assets/           # Any supporting files
```

### Output File Structure

```markdown
# [Deliverable Title]

> Created: [date]
> Plan: [link to plan.md]
> Brain context: [files used]

## [Main Content]

[The actual deliverable content]

---

## Metadata

- **Time spent**: [total execution time]
- **Patterns applied**: [list patterns used]
- **Quality checkpoints passed**: [X/Y]
```

---

## Quality Checkpoints

At each checkpoint in the plan, verify:

1. **Alignment**: Does output match plan objective?
2. **Completeness**: Are all required elements present?
3. **Consistency**: Does it align with memory/company/ context?
4. **Quality**: Does it meet the defined success criteria?

### If Checkpoint Fails

```
"⚠️ Quality checkpoint failed at Step [X]:
- Issue: [what's wrong]
- Expected: [what was expected]
- Actual: [what was produced]

Options:
1. Fix and continue
2. Revise approach
3. Flag for review and continue"
```

---

## Handling Issues

### Missing Information

```
"Missing information needed for Step [X]:
- [What's missing]

Would you like me to:
1. Search memory for this information
2. Skip this step and note for later
3. Ask you to provide the information"
```

### Unexpected Complexity

```
"Step [X] is more complex than planned:
- Expected: [original estimate]
- Reality: [what we're finding]

Options:
1. Continue with adjusted timeline
2. Simplify approach
3. Break into sub-tasks and re-plan"
```

### Deviation from Plan

```
"Deviation detected at Step [X]:
- Plan said: [original instruction]
- Current approach: [what we're doing]
- Reason: [why the deviation]

Continue with deviation? (will be noted in learnings)"
```

---

## Execution Complete

When all steps are finished:

### Summary Report

```markdown
## Execution Summary

**Plan**: [plan name]
**Duration**: [total time]
**Status**: ✅ Complete

### Steps Completed
- [x] Step 1: [name]
- [x] Step 2: [name]
- [x] Step 3: [name]

### Output Created
- `output.md` - [description]
- [any other files]

### Notes for Review
- [Anything worth noting]
- [Deviations from plan]
- [Quality concerns if any]

### Next Command
```bash
/review experiences/[task-type]/[name]/output.md
```
```

---

## After Execution

### Always Review

```bash
/review [output.md]
```

The 6-agent review catches issues before delivery.

### Then Learn

```bash
/learn
```

Extract patterns from this execution for future improvement.

---

## Work Tips

1. **Trust the plan** - Execute steps as written unless blocked
2. **Note deviations** - Track any changes for learning
3. **Use checkpoints** - Don't skip quality verification
4. **Save artifacts** - Keep research and drafts for reference
5. **Complete the cycle** - Always /review and /learn after /work

---

**Time to execute:** Varies by plan complexity
**Next step:** `/review [output.md]`
