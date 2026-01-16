---
name: learn
description: Extract patterns and learnings from recent work to grow your brain
---

# Learn Command

Extract patterns from your recent work and add them to your brain's memory.

## What to Learn From

$ARGUMENTS

---

## Learning Process

### Step 1: Identify Learning Source

**If file path provided:**
```
Read $ARGUMENTS
```

**If no path provided, find recent work:**
```
Glob experiences/**/*.md
# Find most recently modified output and review files
```

### Step 2: Load Context

**Gathering related context...**

```
Read [associated plan.md]
Read [associated review-findings.md]
Read memory/patterns/INDEX.md
```

### Step 3: Extract Patterns

**Analyzing for extractable knowledge...**

Look for:
1. **What worked well** (from review scores 8+)
2. **What to avoid** (from review issues)
3. **Reusable approaches** (from execution)
4. **New information** (about customers, market, etc.)

### Step 4: Classify & Store

**Determine where knowledge belongs:**

| Pattern Type | Destination |
|-------------|-------------|
| Messaging that worked | `memory/patterns/messaging-patterns.md` |
| Positioning insight | `memory/patterns/positioning-patterns.md` |
| Objection handled | `memory/customers/objections.md` |
| Pain point discovered | `memory/customers/pain-points.md` |
| New customer insight | `memory/customers/` |
| Successful example | `memory/examples/` |

### Step 5: Mark Source Ideas as Used

**If the work was based on an idea from knowledge-repo:**

```
# Check the plan.md or output.md for references to knowledge-repo/ideas/
# If an idea was used, update its frontmatter:

# Before:
status: raw
captured: 2025-11-30

# After:
status: used
captured: 2025-11-30
used_in:
  - type: [substack|linkedin|instagram|speech|book|client]
    date: [today's date]
    output: [path to the output file]
```

**This ensures:**
- Ideas aren't suggested again for the same content type
- Ideas remain available for OTHER content types (repurposing)
- Full traceability from idea → output

---

## Pattern Extraction Format

For each pattern identified:

```markdown
### [Pattern Name]

**Confidence**: LOW | MEDIUM | HIGH
**Source**: [experiences/path/to/source]
**Date**: [when discovered]

**Context**: When to use this pattern
[Situation where this applies]

**Pattern**: The reusable approach
[The actual pattern or template]

**Evidence**: Why we know it works
- [Evidence 1]
- [Evidence 2]

**Example**:
[Concrete example of pattern in use]
```

---

## Confidence Levels

Patterns have confidence levels that grow with evidence:

| Level | Criteria | Stored As |
|-------|----------|-----------|
| LOW | First occurrence, single data point | New pattern |
| MEDIUM | 2-3 successful uses | Updated pattern |
| HIGH | 4+ uses with consistent success | Proven pattern |

### Confidence Progression

```
First use → LOW confidence
   ↓
Second successful use → MEDIUM confidence
   ↓
Third+ successful uses → HIGH confidence
```

---

## Learning Output

### Summary Report

```markdown
# Learning Report

> Source: [file or recent work]
> Date: [date]
> Patterns extracted: [count]

## Patterns Identified

### New Patterns (Added to memory)
1. **[Pattern name]**: [Brief description]
   - Location: `memory/patterns/[file].md`
   - Confidence: LOW

### Updated Patterns (Confidence increased)
1. **[Pattern name]**: LOW → MEDIUM
   - New evidence: [what confirmed it]

### Potential Patterns (Need more data)
1. **[Observation]**: Might be a pattern
   - Will track in future work

## Memory Updates Made

| File | Update |
|------|--------|
| `memory/patterns/messaging-patterns.md` | Added [pattern] |
| `memory/customers/objections.md` | Added [objection] |

## Ideas Marked as Used

| Idea | Content Type | Output |
|------|--------------|--------|
| `[idea-file.md]` | substack | `experiences/.../output.md` |

## Brain Health Impact

- Patterns before: [X]
- Patterns after: [X+N]
- HIGH confidence patterns: [Y]

## Next Actions

- Complete another cycle to build confidence
- Run `/grow` to see cumulative impact
```

---

## What Gets Extracted

### From Successful Work (Review 8+)

- **Messaging patterns**: Phrases and structures that resonated
- **Positioning angles**: Differentiation that landed
- **Hook structures**: Opening lines that grabbed attention
- **CTA formats**: Calls to action that got responses

### From Review Feedback

- **Quality patterns**: What consistently scores high
- **Common fixes**: Issues to avoid upfront
- **Brand voice traits**: What sounds right

### From Research

- **Customer insights**: New pain points or needs discovered
- **Market observations**: Competitive or market patterns
- **Prospect patterns**: What certain types of prospects care about

### From Execution

- **Process improvements**: Better ways to approach tasks
- **Time savers**: Shortcuts that worked
- **Quality checkpoints**: What catches issues early

---

## Memory Organization

After learning, your brain grows:

```
memory/
├── patterns/
│   ├── INDEX.md                    # Updated pattern registry
│   ├── messaging-patterns.md       # Updated
│   ├── positioning-patterns.md     # Updated
│   └── objection-handling.md       # Updated
├── customers/
│   ├── pain-points.md              # Updated
│   └── objections.md               # Updated
└── examples/
    └── [category]/
        └── [new-example.md]        # Added if exceptional
```

---

## Creating Learnings File

For the experience folder:

```markdown
# Learnings: [Project Name]

> Extracted: [date]
> Source: [output.md]
> Review score: [X/10]

## What Worked

### [Success 1]
- Pattern: [description]
- Evidence: [why it worked]
- Extracted to: `memory/patterns/[file].md`

### [Success 2]
- Pattern: [description]
- Evidence: [why it worked]
- Extracted to: `memory/patterns/[file].md`

## What to Improve

### [Improvement 1]
- Issue: [what happened]
- Fix: [how to avoid next time]
- Note added to: [relevant memory file]

## New Insights

### [Insight 1]
- Discovery: [what we learned]
- Application: [how to use it]
- Added to: [memory location]

## Confidence Updates

| Pattern | Change | Evidence |
|---------|--------|----------|
| [Pattern 1] | LOW → MEDIUM | This project |
| [Pattern 2] | New (LOW) | First observation |
```

---

## Brain Growth Tracking

Each `/learn` cycle:

1. **Updates growth-log.md**
```markdown
### [Date] - Learning from [project]
- Patterns added: [count]
- Patterns upgraded: [count]
- Memory files updated: [list]
- Brain health: [snapshot]
```

2. **Updates pattern-confidence.md**
```markdown
| Pattern | Confidence | Last Updated |
|---------|------------|--------------|
| [name] | HIGH | [date] |
| [name] | MEDIUM | [date] |
| [name] | LOW | [date] |
```

---

## Learning Tips

1. **Learn after every project** - Don't let insights slip away
2. **Review scores matter** - They indicate what's worth learning
3. **Quality over quantity** - Extract meaningful patterns, not noise
4. **Watch confidence grow** - It compounds over time
5. **Check /grow weekly** - See your learning impact

---

## After Learning

### See Your Growth
```bash
/grow
```

### Start Next Project
```bash
/plan [next task]
```

Your new patterns will automatically inform the next plan.

---

**Learning time:** 2-3 minutes
**Brain impact:** Compounds with every cycle
