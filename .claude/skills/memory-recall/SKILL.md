---
name: memory-recall
description: Search all memory types (semantic, episodic, procedural) during work to find relevant patterns, past examples, and proven workflows. Manual trigger via /recall command.
allowed-tools: "Read, Grep, Bash"
when_to_use: |
  - During active work when needing "how did I do this before?"
  - When facing a challenge to check if you've solved it before
  - When creating something to reference past successful examples
  - Manual invocation via /recall [topic] command
  - When stuck and need inspiration from past work
version: 1.0.0
---

# Memory-Recall Skill

**Purpose**: Search all memory types (semantic, episodic, procedural) during work sessions to find relevant patterns, past examples, and proven workflows.

**When to Use**:
- During active work when you need to remember "how did I do this before?"
- When facing a challenge and want to check if you've solved it before
- When creating something and want to reference past successful examples
- Manually via `/recall [topic]` command

**Integration**: Complements morning pattern-application (which is proactive) with on-demand memory search during work.

---

## Core Workflow

### Step 1: Parse Search Query
When user runs `/recall [topic]` or asks to search memory:

**Extract keywords** from query:
- Domain indicators (outreach, UX, query, workflow, strategy)
- Specific terms (pricing, consultant, churn, personalization)
- Outcome terms (response rate, engagement, time saved)

**Examples**:
- `/recall pricing objections from consultants` → Keywords: pricing, objections, consultants, sales
- `/recall linkedin posts with high engagement` → Keywords: linkedin, posts, engagement, content
- `/recall user churn analysis` → Keywords: user, churn, analysis, cohort

### Step 2: Multi-Memory Search
Search across all three memory types in parallel:

#### A. Semantic Memory Search
**Where**: `memory/semantic/**/*.md`
**What to find**: Patterns, frameworks, proven approaches
**Search method**: Grep for keywords, prioritize HIGH confidence patterns

**Example search**:
```bash
grep -r "pricing" memory/semantic/ -l
grep -r "objection" memory/semantic/ -l
```

**Return**: Patterns that match query + confidence levels

#### B. Episodic Memory Search
**Where**: `memory/episodic/**/*.md`
**What to find**: Past examples, specific instances, outcomes
**Search method**: Grep for keywords, sort by date (recent first)

**Example search**:
```bash
grep -r "pricing" memory/episodic/ -l
grep -r "consultant" memory/episodic/ -l
```

**Return**: Past experiences with actual outcomes and learnings

#### C. Procedural Memory Search
**Where**: `memory/procedural/**/*.md`
**What to find**: Step-by-step workflows, checklists
**Search method**: Grep for keywords or workflow names

**Example search**:
```bash
grep -r "prospect" memory/procedural/ -l
```

**Return**: Workflows that apply to current task

### Step 3: Rank and Format Results
Rank results by relevance:

**Ranking criteria**:
1. **Exact keyword match** in title or pattern name
2. **Multiple keyword matches** in same file
3. **Confidence level** (for semantic patterns)
4. **Recency** (for episodic entries)
5. **Success metrics** mentioned (outcome > process)

**Result limit**: Show top 5-7 most relevant results (don't overwhelm)

### Step 4: Present Results
Format results by memory type:

**Format**:
```markdown
## Memory Recall: "[query]"

### Semantic Memory (Patterns):
**[Pattern Name]** - [Confidence level]
- File: memory/semantic/domain/file.md
- Summary: [1-line description]
- Success rate: [Metric if available]
- Last applied: [Date]
[Link to full pattern]

[Repeat for 2-3 top patterns]

### Episodic Memory (Past Examples):
**[Event Name] - [Date]**
- File: memory/episodic/domain/YYYY-MM-DD-slug.md
- Outcome: [What happened]
- Learnings: [Key takeaway]
[Link to full episode]

[Repeat for 2-3 top examples]

### Procedural Memory (Workflows):
**[Workflow Name]**
- File: memory/procedural/domain/workflow-name.md
- Purpose: [What it accomplishes]
- Time required: [Duration]
[Link to full workflow]

[If applicable]

---

**💡 Recommendation**: [Based on results, suggest most relevant pattern/example to apply]
```

**Example output**:
```markdown
## Memory Recall: "pricing objections from consultants"

### Semantic Memory (Patterns):
**Value-Based Pricing Response** - MEDIUM confidence (3 examples)
- File: memory/semantic/growth/outreach-patterns.md
- Summary: When consultants object to price, shift to ROI conversation
- Success rate: 60% conversion after objection handling
- Last applied: 2025-10-28
[Read full pattern →]

### Episodic Memory (Past Examples):
**Healthcare Consultant Pricing Objection - 2025-10-28**
- File: memory/episodic/sales/2025-10-28-healthcare-consultant-call.md
- Outcome: Converted "too expensive" to demo booking by showing 10x ROI
- Learnings: Healthcare consultants care about compliance time saved, not just revenue
[Read full experience →]

**B2B Consultant Objection Handling - 2025-09-15**
- File: memory/episodic/sales/2025-09-15-b2b-consultant-demo.md
- Outcome: Lost deal due to weak ROI case
- Learnings: Need concrete time-savings data, not just "efficiency gains"
[Read full experience →]

### Procedural Memory (Workflows):
No workflows found for "pricing objections"

---

**💡 Recommendation**: Use the Value-Based Pricing Response pattern (MEDIUM confidence). Reference the 2025-10-28 example - showing specific compliance time savings worked better than generic efficiency claims.
```

---

## Use Cases

### During a Sales Call
**Scenario**: Consultant just said "Your pricing is too high"

**User**: `/recall pricing objections consultants`

**Output**:
- Pattern: Value-based pricing response (how to handle)
- Examples: 2 past consultant calls (1 converted, 1 lost - learn from both)
- Recommendation: Focus on compliance time saved (what worked)

### During Content Creation
**Scenario**: Writing LinkedIn post, want to reference high-performing posts

**User**: `/recall linkedin posts high engagement`

**Output**:
- Pattern: Question post formula (HIGH confidence, 5 examples)
- Pattern: Personal story engagement (MEDIUM confidence, 4 examples)
- Examples: 3 specific posts with engagement metrics
- Recommendation: Question posts drive 5-8x more comments

### During Data Analysis
**Scenario**: Product team asks for churn analysis, want to reuse approach

**User**: `/recall user churn analysis`

**Output**:
- Pattern: Weekly cohort analysis query (HIGH confidence, template ready)
- Pattern: Churn prediction indicators (MEDIUM confidence)
- Examples: 2 past churn analyses with insights
- Workflow: Cohort analysis steps (full checklist)
- Recommendation: Use cohort query template (saves 1.5 hours)

### During Product Work
**Scenario**: About to launch feature, want to check what worked before

**User**: `/recall feature launch`

**Output**:
- Pattern: User testing protocol (MEDIUM confidence)
- Pattern: Progressive rollout approach (if exists)
- Examples: 2-3 past feature launches (what went well, what didn't)
- Recommendation: Test with 5-8 users first (caught issues 90% of the time)

---

## Search Optimization

### Fuzzy Matching
If exact search returns no results, try variations:
- Plural/singular: "objection" → "objections"
- Synonyms: "pricing" → "cost", "price"
- Related terms: "churn" → "retention", "drop-off"

### Multi-Keyword AND Logic
For queries with multiple keywords, prioritize results that match ALL keywords:
- Query: "consultant pricing objections"
- Best: File contains all 3 terms
- Good: File contains 2 of 3 terms
- Okay: File contains 1 of 3 terms

### Date-Based Filtering (Optional)
User can specify recency:
- `/recall linkedin posts last month` → Filter episodic to last 30 days
- `/recall outreach recent` → Prioritize results from last 2 weeks

---

## Integration Points

### Morning Check-In
Pattern-application skill is automatic. Memory-recall is on-demand backup:
- "If patterns suggested don't match, run `/recall [topic]` for more options"

### During Work
Primary use case - search memory when you need it:
- Stuck on a task? `/recall [task type]`
- Need inspiration? `/recall [similar work]`
- Facing a challenge? `/recall [challenge type]`

### Evening Check-Out
Can recall during learning extraction to check if pattern already exists:
- Coach: "Let me search memory to see if this pattern exists..."
- Uses memory-recall internally to avoid duplicate patterns

---

## Command Usage

**Slash command**: `/recall [query]`

**Query types**:
- **Topic-based**: `/recall pricing strategy`
- **Task-based**: `/recall user testing`
- **Outcome-based**: `/recall high engagement posts`
- **Problem-based**: `/recall handling objections`

**Response time**: < 2 seconds (grep is fast)

**Empty results**:
```
## Memory Recall: "[query]"

No results found in your memory system.

**Suggestions**:
- Try broader keywords (e.g., "outreach" instead of "cold email personalization")
- Check spelling
- This may be a new area - document your learnings as you work!
```

---

## Best Practices

1. **Be specific**: "linkedin engagement" better than "content"
2. **Use domain words**: Include "sales", "product", "analytics" for better filtering
3. **Try variations**: If first search fails, try synonyms
4. **Reference often**: The more you use recall, the more you reinforce patterns
5. **Update after recall**: If you use a pattern from recall, update it in evening check-out

---

## Success Metrics

Track in brain-health-reporting:
- **Recall usage**: How often per week (target: 3-5 times)
- **Recall → Application**: How often recalled patterns are applied (target: 60%)
- **Time saved from recall**: Hours saved by reusing past work (target: 2-4 hr/week)
- **Empty searches**: Track queries that return nothing (opportunities to build patterns)

---

**Version**: 1.0.0
**Last Updated**: 2025-11-10
**Part of**: Iwo's Second Brain Upgrade
**Command**: `/recall [query]`
**Progressive Disclosure**: Consider moving search examples to `examples/` directory for better organization.
