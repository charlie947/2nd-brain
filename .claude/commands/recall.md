---
name: recall
description: Search memory for relevant context and past patterns
---

# Recall Command

Search your brain's memory for relevant context, patterns, and past experiences.

## Search Query

$ARGUMENTS

---

## Recall Process

### Step 1: Parse Search Intent

**Understanding what you're looking for...**

```
Classify query:
- Topic search: "messaging patterns for enterprise"
- Pattern search: "objection handling"
- Experience search: "similar to Acme project"
- Company context: "our pricing model"
- Customer insight: "what CFOs care about"
```

### Step 2: Search Memory Locations

**Searching across all memory types...**

#### Semantic Memory (Facts & Knowledge)
```
Grep "$ARGUMENTS" memory/company/ -i
Grep "$ARGUMENTS" memory/customers/ -i
Grep "$ARGUMENTS" memory/patterns/ -i
Grep "$ARGUMENTS" memory/examples/ -i
Grep "$ARGUMENTS" memory/personal/ -i
Grep "$ARGUMENTS" memory/values-beliefs/ -i
Grep "$ARGUMENTS" memory/style-voice/ -i
```

#### Ideas (Index-Based Search)
```
# IMPORTANT: Read index FIRST, not all idea files
Read memory/knowledge-repo/ideas/INDEX.md

# Only load specific idea files if they match the query in the index
# This prevents loading 500+ files on every search
```

#### Episodic Memory (Past Experiences)
```
Grep "$ARGUMENTS" experiences/ -i
```

#### Pattern Index
```
Read memory/patterns/INDEX.md
# Find matching patterns by topic
```

### Step 3: Rank Results

**Prioritizing most relevant findings...**

Results are ranked by:
1. **Direct match** - Exact topic match
2. **Pattern relevance** - High confidence patterns first
3. **Recency** - Recent experiences weighted higher
4. **Success indicator** - Review scores 8+ prioritized

---

## Recall Output Format

```markdown
# Recall Results: [query]

> Searched: [date]
> Matches found: [count]
> Memory types searched: [list]

## Top Matches

### 1. [Most Relevant Result]
**Location**: `memory/patterns/[file].md`
**Relevance**: HIGH
**Confidence**: [if pattern]

> [Key excerpt or summary]

**Use this for**: [when this would be helpful]

### 2. [Second Result]
**Location**: `experiences/[path]/[file].md`
**Relevance**: MEDIUM

> [Key excerpt or summary]

### 3. [Third Result]
**Location**: `memory/customers/[file].md`
**Relevance**: MEDIUM

> [Key excerpt or summary]

## Related Patterns

| Pattern | Confidence | Last Used |
|---------|------------|-----------|
| [Pattern 1] | HIGH | [date] |
| [Pattern 2] | MEDIUM | [date] |

## Similar Past Work

| Experience | Score | Date |
|------------|-------|------|
| [Project 1] | 9/10 | [date] |
| [Project 2] | 8/10 | [date] |

## Quick Actions

Apply a pattern:
```bash
/plan [task] using pattern "[pattern name]"
```

Review past work:
```bash
Read experiences/[path]/output.md
```
```

---

## Search Tips

### Effective Queries

**Good queries:**
- "enterprise objection handling" → Finds objection patterns for enterprise
- "one-pager structure" → Finds one-pager templates and patterns
- "pricing conversations" → Finds pricing-related patterns and experiences
- "Acme" → Finds all work related to Acme prospect

**Too broad:**
- "help" → Returns too many results
- "good" → Not specific enough

**Too narrow:**
- "Q3 2024 Acme Corp CFO follow-up" → May miss related content

### Search Operators

| Operator | Example | Effect |
|----------|---------|--------|
| Default | `enterprise sales` | Matches either word |
| Quoted | `"enterprise sales"` | Matches exact phrase |
| Type prefix | `pattern:objection` | Searches only patterns |
| Experience | `exp:Acme` | Searches only experiences |
| Ideas by app | `idea:content` | Searches ideas tagged for content |
| Ideas by app | `idea:book` | Searches ideas tagged for book |
| Ideas by app | `idea:speech` | Searches ideas tagged for speech |

---

## What Gets Searched

### Memory Structure

```
memory/
├── company/           # Your business context
│   ├── products.md
│   ├── differentiators.md
│   └── positioning.md
├── customers/         # Customer knowledge
│   ├── ideal-customer-profile.md
│   ├── pain-points.md
│   └── objections.md
├── patterns/          # Extracted wisdom
│   ├── INDEX.md
│   ├── messaging-patterns.md
│   └── positioning-patterns.md
├── examples/          # Winning artifacts
│   └── [category]/
├── personal/          # Your expertise, services, positioning
├── values-beliefs/    # Core values, frameworks, principles
├── style-voice/       # Writing style, tone, vocabulary
└── knowledge-repo/
    └── ideas/         # Captured ideas (INDEX-based search)
        ├── INDEX.md   # <- Read this first!
        └── [idea files with YAML frontmatter]
```

### Ideas Index Structure

The ideas INDEX.md organizes ideas by application:
- `content` - Substack, LinkedIn, Instagram
- `product` - Product development
- `client` - Client work
- `presentation` - Talks, decks
- `speech` - Speeches
- `book` - Book content
- `framework` - Mental models
- `positioning` - Your messaging
- `personal` - Personal growth
- `values` - Core beliefs

### Experiences Structure

```
experiences/
├── prospects/         # Prospect-specific work
│   └── [company-name]/
│       ├── plan.md
│       ├── research.md
│       ├── output.md
│       ├── review-findings.md
│       └── learnings.md
└── [other-types]/     # Other project types
```

---

## Recall Use Cases

### Before Starting a Task

```bash
/recall "similar projects"
# Find related past work to reference
```

### Looking for Patterns

```bash
/recall "objection handling"
# Find proven objection responses
```

### Finding Customer Insights

```bash
/recall "CFO pain points"
# Find what resonates with CFOs
```

### Checking Past Work

```bash
/recall "Acme Corp"
# Find all Acme-related context
```

### Finding Examples

```bash
/recall "winning one-pager"
# Find high-scoring one-pagers
```

---

## Integration with Workflow

### Use Recall During Planning

```bash
/recall [relevant topic]
# Review findings
/plan [task]
# Claude automatically incorporates relevant context
```

### Use Recall for Reference

```bash
/recall "similar to current task"
# Find and review similar past work
# Apply learnings to new work
```

---

## No Results?

If recall returns few or no results:

1. **Brain is new** - Complete more /plan → /work → /review → /learn cycles
2. **Try broader query** - Simplify search terms
3. **Check memory files** - Run `/setup` if memory is empty
4. **Build the knowledge** - Feed your brain with `/learn` after each project

---

## After Recall

### Found What You Need?

```bash
/plan [task]
# Claude will use recalled context automatically
```

### Need More Context?

```bash
/recall [different query]
# Try alternative search terms
```

### Ready to Work?

```bash
/work [plan.md]
# Execute with recalled context in mind
```

---

**Recall time:** ~10 seconds
**Memory searched:** All semantic and episodic stores
