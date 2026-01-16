---
name: decision-documentation
description: Capture important decisions made during Claude Code sessions and store them in searchable, structured format for future reference. Automatically triggers on decision keywords or manual request.
allowed-tools: "Write, Read, Grep, Bash"
when_to_use: |
  - User makes explicit choices: "Let's go with...", "I think we should...", "Decision: ..."
  - User chooses between options: "Option B is better"
  - User sets direction: "We're not going to support X"
  - User makes trade-offs: "Let's prioritize Y over Z"
  - Manual request: "Document this decision" or "Add to decisions log"
  - At end of planning/strategy sessions
version: 1.0.0
---

# Decision Documentation Skill

## Purpose
Capture important decisions made during Claude Code sessions and store them in a searchable, structured format for future reference.

## When to Activate

### Automatic Triggers
- User says: "Let's go with...", "I think we should...", "Decision: ..."
- User chooses between options: "Option B is better"
- User sets direction: "We're not going to support X"
- User makes trade-offs: "Let's prioritize Y over Z"

### Manual Triggers
- User asks: "Document this decision"
- User says: "Add this to decisions log"
- At end of planning/strategy sessions

---

## Core Workflow

### Step 1: Detect Decision Point
When user makes a choice, Claude prompts:

```markdown
I noticed you've made a decision. Would you like me to document it?

**Decision detected:**
"Let's implement PostToolUse hooks instead of PreToolUse"

**Quick capture:** I can save this to company brain/decisions/
**Full capture:** Or we can fill out the complete decision template

Which would you prefer?
```

### Step 2: Gather Context
Ask clarifying questions:

```markdown
📋 **Decision Documentation**

To properly capture this, I need a few details:

1. **What alternatives did you consider?**
   (I see: PreToolUse, PostToolUse, SessionStart hooks)

2. **Why did you choose PostToolUse?**
   (Your reason: ...)

3. **What are you trading off?**
   (What are we NOT doing as a result?)

4. **When should we revisit this?**
   (After how long or what milestone?)
```

### Step 3: Determine Storage Location

**Business decisions → company brain/decisions/**
- Product strategy
- Market positioning
- Partnership choices
- Pricing decisions

**Technical decisions → company brain/operations/decisions/**
- Architecture choices
- Tool selections
- Process changes

**Quick decisions → .agents-context/decisions/YYYY-MM/**
- Session-specific choices
- Tactical decisions
- Can be promoted to company brain later

### Step 4: Create Decision Document

**File naming convention:**
```
YYYY-MM-DD-[slug-from-title].md
```

**Examples:**
- `2025-11-20-use-posttooluse-hooks.md`
- `2025-11-20-target-b2b-over-b2c.md`
- `2025-11-20-postpone-mobile-app.md`

**Template selection:**
- **Full template**: Strategic/high-impact decisions → See `references/decision-templates.md`
- **Quick capture**: Tactical/reversible decisions → See `references/decision-templates.md`
- **Technical template**: Architecture/implementation decisions → See `references/decision-templates.md`

### Step 5: Link Decision to Context

**Add to relevant INDEX.md:**
```markdown
## Recent Decisions
- [2025-11-20: Use PostToolUse hooks](decisions/2025-11-20-use-posttooluse-hooks.md)
```

**Tag in memory/knowledge graph:**
```javascript
create_entities({
  entities: [{
    name: "Decision: PostToolUse Hooks",
    entityType: "Decision",
    observations: [
      "Chosen over PreToolUse for automatic skill activation",
      "Decision made on 2025-11-20",
      "Trade-off: Can't block tool execution, only add context after"
    ]
  }]
})
```

---

## Decision Types

### Strategic Decisions
- Market focus (B2B vs B2C)
- Product direction
- Partnership opportunities
- Resource allocation

### Tactical Decisions
- Feature prioritization
- Implementation approach
- Tool selection
- Process changes

### Technical Decisions
- Architecture patterns
- Technology choices
- Integration strategies
- Performance trade-offs

---

## Activation Examples

### Example 1: During Planning
```
User: "I think we should implement hooks instead of manual commands"

Claude: "📋 That's an important decision! Let me document this.

**Decision detected:** "Use hooks for automatic activation"

I'll capture:
- What alternatives you considered
- Why hooks are better for your use case
- What trade-offs you're accepting
- When we should revisit this

Would you like the quick version (2 min) or full decision template (5 min)?"
```

### Example 2: After Discussion
```
User: "Okay, we've talked through the options. Let's go with B2B focus."

Claude: "📋 Important strategic decision made!

I'll document:
**Decision:** Focus B2B (consultants) over B2C (individuals) for Q1

**Quick capture now:**
- Why: Higher LTV, multiplier effect, clearer positioning
- Trade-off: Not marketing to consumers directly
- Review: April 2025 (after Q1 results)

Saving to: company brain/decisions/2025/11-november/2025-11-20-b2b-focus.md

Should I also:
1. Update company brain/corporate/strategy.md?
2. Add to product roadmap as context?
3. Create follow-up tasks in /add-task?"
```

---

## Integration Points

### With /overview Command
Shows recent decisions in daily overview:
```markdown
## 📋 Recent Decisions
- [NEW] 2025-11-20: Focus B2B in Q1 (review in 4 months)
- 2025-11-18: Implement hook system (testing phase)
```

### With /recall Command
Search decision history:
```
/recall decisions about "hook implementation"
```
Returns all decisions related to hooks with summaries.

### With /learn Command
During pattern extraction, suggest documenting decision rationale:
```markdown
💡 This pattern represents a decision point.
   Consider documenting why you chose this approach.
```

### With Memory Graph
Every decision becomes:
- Searchable entity in knowledge graph
- Linked to affected areas
- Tagged with metadata
- Retrievable via /recall

---

## Reference Files

**Templates**: See `references/decision-templates.md` for:
- Full template (strategic decisions)
- Quick capture template (tactical decisions)
- Strategic template (high-impact decisions)
- Technical template (architecture decisions)

**Examples**: See `examples/` for:
- `01-product-decision-b2b-focus.md` - Strategic product decision
- `02-technical-decision-hooks.md` - Technical implementation decision

**Search Guide**: See `references/search-and-recall.md` for:
- Search methods and bash commands
- Decision history views
- Advanced search patterns
- Integration with /recall command

---

## Success Metrics

**Goal:** Never lose context on "why we did X"

**Benefits:**
- **For current you:** Document reasoning while fresh
- **For future you:** Understand past decisions without re-investigation
- **For team:** Clear decision rationale, no repeated debates
- **For onboarding:** New team members see decision history

**Time saved:**
- Avoid re-debating settled decisions: 30 min/week
- Faster onboarding for new context: 1 hour/person
- Better decision quality (forced articulation): Priceless

---

**Version**: 1.0.0
**Last Updated**: 2025-11-20
**Progressive Disclosure**: Templates in `references/decision-templates.md`, examples in `examples/`, search guide in `references/search-and-recall.md`
