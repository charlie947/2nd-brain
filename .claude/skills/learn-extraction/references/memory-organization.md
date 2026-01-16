# Memory Organization Guide

This file defines how to organize, structure, and link memory entries for optimal retrieval and pattern application.

---

## Directory Structure

```
memory/
├── semantic/              # What Iwo Knows (patterns, frameworks)
│   ├── INDEX.md          # Navigation and summary
│   ├── growth/
│   │   ├── outreach-patterns.md
│   │   ├── content-performance.md
│   │   ├── interview-insights.md
│   │   └── conversion-optimization.md
│   ├── product/
│   │   ├── ux-patterns.md
│   │   ├── feature-decisions.md
│   │   ├── technical-decisions.md
│   │   └── roadmap-priorities.md
│   ├── analytics/
│   │   ├── query-library.md
│   │   ├── insight-patterns.md
│   │   ├── user-behavior.md
│   │   └── reporting-frameworks.md
│   ├── operations/
│   │   ├── workflow-optimizations.md
│   │   ├── tool-integration-learnings.md
│   │   └── delegation-patterns.md
│   └── business/
│       ├── customer-archetypes.md
│       ├── pricing-insights.md
│       ├── partnership-patterns.md
│       └── decision-frameworks.md
├── episodic/             # What Iwo Has Done (experiences, events)
│   ├── sales/
│   │   └── YYYY-MM-DD-event-slug.md
│   ├── content/
│   │   └── YYYY-MM-DD-content-slug.md
│   ├── product/
│   │   └── YYYY-MM-DD-feature-slug.md
│   ├── research/
│   │   └── YYYY-MM-DD-research-slug.md
│   ├── analytics/
│   │   └── YYYY-MM-DD-analysis-slug.md
│   └── decisions/
│       └── YYYY-MM-DD-decision-slug.md
└── procedural/           # How Iwo Does Things (workflows, checklists)
    ├── growth-workflows/
    │   ├── prospect-research-workflow.md
    │   ├── cold-outreach-sequence.md
    │   └── interview-outreach-process.md
    ├── product-workflows/
    │   ├── feature-specification-process.md
    │   └── user-testing-protocol.md
    ├── analytics-workflows/
    │   ├── cohort-analysis-steps.md
    │   └── dashboard-creation-process.md
    └── operations-workflows/
        ├── daily-planning-process.md
        └── weekly-review-protocol.md
```

---

## Semantic Memory Organization

### File Naming
- Use descriptive, multi-word names: `outreach-patterns.md`, not `outreach.md`
- Group related patterns in same file (e.g., all email outreach patterns together)
- Maximum 4-5 files per domain (don't over-fragment)

### Pattern Structure Within Files
```markdown
# Domain: Category Name

Brief description of what patterns this file contains.

---

## Pattern Name 1

**Confidence**: LOW | MEDIUM | HIGH (N examples)

**Context**: When to apply this pattern

**The Pattern**: Clear, actionable description

**Time Savings**: Quantified benefit

**Success Rate**: Metrics

**Examples**: Links to episodic memory
- [YYYY-MM-DD Description](../episodic/domain/YYYY-MM-DD-slug.md)

**Last Applied**: Date
**Times Applied**: Count

**Notes**: Caveats, variations, future improvements

---

## Pattern Name 2

[Same structure]

---

*Last Updated: YYYY-MM-DD*
*Pattern Count: N*
*High Confidence: N | Medium Confidence: N | Low Confidence: N*
```

### Choosing Which File
**Question**: "Where should I save this pattern?"

**Decision Tree**:
1. What domain? (Growth, Product, Analytics, Operations, Business)
2. What category within domain?
   - Growth: Outreach, Content, Interviews, Conversion
   - Product: UX, Features, Technical
   - Analytics: Queries, Insights, User Behavior
   - Operations: Workflows, Tools
   - Business: Strategy, Customers, Pricing
3. Open appropriate file, add pattern

**Example**:
- Learning: "Personalized LinkedIn messages get 2x response"
- Domain: Growth
- Category: Outreach
- File: `memory/semantic/growth/outreach-patterns.md`
- Add as new pattern or reinforce existing pattern

---

## Episodic Memory Organization

### File Naming Convention
Format: `YYYY-MM-DD-event-slug.md`

**Examples**:
- `2025-11-10-consultant-outreach-campaign.md`
- `2025-10-20-ai-coach-user-testing.md`
- `2025-09-15-churn-analysis-q3.md`
- `2025-08-22-pricing-strategy-decision.md`

**Slug Rules**:
- Lowercase, hyphens (not underscores)
- 2-5 words, descriptive
- Unique enough to identify event
- Don't include generic words like "session" or "work"

### Choosing Subdirectory
Map to type of work:
- `sales/`: Outreach campaigns, sales calls, demos, customer conversations
- `content/`: LinkedIn posts, newsletters, blogs, videos
- `product/`: Feature launches, UX changes, technical decisions
- `research/`: User interviews, market research, competitive analysis
- `analytics/`: Data analysis, dashboards, insights, reports
- `decisions/`: Strategic choices, pricing changes, roadmap priorities

**If work spans multiple**: Choose primary domain (where most time spent)

### Episodic Entry Structure
```markdown
# [Event Name] - YYYY-MM-DD

**Domain**: Growth | Product | Analytics | Operations | Business

**Related Goal**:
- Quarterly: [Q4 2025 goal from goals/2025-goals.md]
- Monthly: [November priority]
- Weekly: [Week of Nov 10-16 objective]

**What Happened**:
[Clear description of what you did]

**Approach Used**:
[Method, framework, or pattern applied]

**Outcome**:
[Quantified results]
- Metrics: [Numbers]
- Impact: [What changed]

**Patterns Applied**:
[Existing patterns used from semantic memory]
- [Pattern name] - [Link to semantic/domain/file.md#pattern-name]

**Patterns Discovered**:
[New patterns identified]
- [Pattern name] - [Link to semantic/domain/file.md#pattern-name]

**Time Spent**: [Hours]
**Time Saved**: [Hours, if pattern applied]

**What Worked**:
- [Win 1]
- [Win 2]

**What Didn't Work**:
- [Challenge 1]
- [Lesson 2]

**Next Time**:
- [Improvement 1]
- [Idea 2]

**Linked Session**: [../../../daily-sessions/YYYY-MM-DD.md]

**Confidence Update**:
[If pattern reinforced, note change]
```

---

## Procedural Memory Organization

### Purpose
Capture step-by-step workflows that are reusable across similar tasks.

### File Naming
- Descriptive workflow name: `prospect-research-workflow.md`
- Focus on the process, not specific instance
- Group by domain: growth-workflows/, product-workflows/, etc.

### Workflow Structure
```markdown
# Workflow Name

**Purpose**: What this workflow accomplishes

**When to Use**: Context and trigger conditions

**Time Required**: Estimated duration

**Tools Needed**:
- Tool 1 (MCP server, app, etc.)
- Tool 2

**Prerequisites**:
- What needs to be ready before starting

---

## Steps

### Step 1: [Action Verb - Outcome]
**What**: [What you do in this step]
**How**: [Specific instructions]
**Output**: [What you produce]
**Time**: [Minutes]

### Step 2: [Action Verb - Outcome]
[Same structure]

[Continue for all steps]

---

## Checklist

Quick reference for when you're executing:
- [ ] Step 1 brief description
- [ ] Step 2 brief description
- [ ] Step 3 brief description

---

## Tips & Variations

- Tip 1
- Variation for context X
- Common mistake to avoid

---

**Related Patterns**: [Links to semantic memory patterns this workflow applies]
**Example Uses**: [Links to episodic memory where this was used]

*Last Updated: YYYY-MM-DD*
*Times Used: N*
```

### When to Create Procedural vs Semantic
**Procedural**: Step-by-step process (how to do X)
**Semantic**: Insight or principle (X works better than Y)

**Example**:
- Procedural: "Prospect Research Workflow" (steps for researching leads)
- Semantic: "LinkedIn + HubSpot Enrichment" (pattern that research works best when you combine these sources)

Often they reference each other!

---

## Linking Strategy

### Bidirectional Links
Always link in both directions for navigability:

**Semantic → Episodic**:
```markdown
## Pattern Name
**Examples**:
- [2025-11-10 Consultant Outreach](../episodic/sales/2025-11-10-consultant-outreach.md)
```

**Episodic → Semantic**:
```markdown
**Patterns Applied**:
- [Decision-Maker Personalization](../../semantic/growth/outreach-patterns.md#decision-maker-personalization)
```

**Procedural → Semantic**:
```markdown
**Related Patterns**:
This workflow applies these patterns:
- [Pattern A](../semantic/growth/outreach-patterns.md#pattern-a)
```

**Episodic → Procedural**:
```markdown
**Approach Used**:
Followed [Prospect Research Workflow](../../procedural/growth-workflows/prospect-research-workflow.md)
```

### Link Format
Use relative paths from the source file:
- From semantic to episodic: `../episodic/domain/file.md`
- From episodic to semantic: `../../semantic/domain/file.md`
- From episodic to daily session: `../../../daily-sessions/YYYY-MM-DD.md`

### Anchor Links to Sections
Link to specific patterns within files:
```markdown
[Pattern Name](path/to/file.md#pattern-name)
```

Anchor = Pattern heading, lowercase, spaces→hyphens:
- "Decision-Maker Personalization" → `#decision-maker-personalization`
- "Weekly Cohort Query" → `#weekly-cohort-query`

---

## Search and Retrieval

### When to Search Each Type

**Search Semantic**: "How should I approach [type of work]?"
- Looking for proven patterns before starting work
- Want to apply best practices
- Need template or framework

**Search Episodic**: "When did I last work on [topic]?"
- Looking for past examples
- Want to see what worked before
- Checking metrics or outcomes from previous work

**Search Procedural**: "What's the step-by-step for [task]?"
- Need workflow checklist
- Want to ensure nothing is missed
- Executing repeatable process

### Search Methods

**Grep across memory**:
```bash
# Find patterns related to "outreach"
grep -r "outreach" memory/semantic/

# Find past sales conversations
grep -r "consultant" memory/episodic/sales/

# Find workflows using HubSpot
grep -r "HubSpot" memory/procedural/
```

**Use memory-recall skill** (to be built in Phase 2):
```
/recall "pricing objections"
/recall "user churn analysis"
/recall "LinkedIn engagement"
```

**Browse by domain**:
- Start at `memory/semantic/INDEX.md`
- Navigate to domain of interest
- Read relevant pattern files

---

## Maintenance Guidelines

### Daily (During Evening Check-Out)
- Update semantic memory when patterns reinforced
- Create episodic entries for significant work
- Link episodic → semantic → session

### Weekly (During Weekly Review)
- Review pattern confidence levels
- Promote patterns that hit thresholds
- Check for duplicate patterns (merge if found)
- Update INDEX.md with new patterns

### Monthly (During Monthly Review)
- Archive patterns not used in 3 months
- Review LOW confidence patterns (keep or discard?)
- Consolidate similar patterns
- Update procedural workflows based on process changes

---

## Anti-Patterns (What NOT to Do)

❌ **Don't create one file per pattern**
- Leads to fragmentation, hard to navigate
- Group related patterns in thematic files

❌ **Don't duplicate patterns across files**
- If outreach pattern, put in outreach-patterns.md
- Don't also add to content-performance.md
- Use links to reference across domains if needed

❌ **Don't create episodic entries for trivial events**
- Only create for work worth learning from
- Not every task needs episodic entry
- Focus on: new approaches, significant outcomes, pattern discoveries

❌ **Don't skip linking**
- Links make memory navigable
- Unlinked entries become orphaned and forgotten
- Always link: episodic ↔ semantic, episodic ↔ session

❌ **Don't let LOW confidence patterns accumulate**
- Review monthly
- Archive if not applied again within 2 months
- Better to have 30 proven patterns than 100 untested ones

❌ **Don't write vague patterns**
- Bad: "Email timing matters"
- Good: "Tuesday 10-11am emails get 45-52% open rate vs 30% baseline"

---

## Success Metrics

**Healthy Memory System**:
- Semantic files: 3-6 files per domain (not over-fragmented)
- Patterns per file: 3-8 patterns (not too dense, not too sparse)
- Episodic entries: 2-5 per week (significant work captured)
- Link density: 100% of episodic entries link to semantic patterns
- Confidence distribution: 40% HIGH, 40% MEDIUM, 20% LOW (by Month 6)
- Search success: Find relevant pattern in < 2 minutes
- Pattern application: Use existing pattern 3+ times per week

**Unhealthy Signs**:
- Can't find patterns when needed (poor organization)
- Duplicate patterns in multiple places (fragmentation)
- Most patterns still LOW confidence after 2 months (not reinforcing)
- Episodic entries without outcomes (just logging activity)
- No links between memory types (silos)

---

*Version: 1.0*
*Last Updated: 2025-11-10*
