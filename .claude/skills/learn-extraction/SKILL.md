---
name: learn-extraction
description: Extract patterns and learnings from completed work and save to semantic/episodic memory for future reuse. Automatically triggered during evening check-out or manually mid-day.
allowed-tools: "Read, Write, Grep, Bash"
when_to_use: |
  - Automatically at the end of daily evening check-out (after completion assessment)
  - Manually when capturing mid-day learning: /learn [domain] [description]
  - After completing significant work that revealed new patterns or insights
  - When you discover something worth remembering for future similar work
version: 1.0.0
---

# Learn-Extraction Skill

**Purpose**: Extract patterns and learnings from completed work and save to semantic/episodic memory for future reuse.

**When to Use**:
- Automatically triggered at the end of daily evening check-out
- Manually via command when you want to capture a learning mid-day

**Integration**: Works with daily-accountability-coach agent to build knowledge compounding on top of execution tracking.

---

## Core Workflow

### Step 1: Context Loading
When triggered, load:
1. Today's session file from `daily-sessions/YYYY-MM-DD.md`
2. Today's completed priorities
3. Domain tags for the work (growth, product, analytics, operations, business)

### Step 2: Domain-Specific Questioning
For each completed priority, ask targeted extraction questions based on domain:

**Growth Domain** (outreach, content, interviews, conversion):
- "What messaging/timing/approach worked differently this time?"
- "What was the response rate or engagement compared to previous attempts?"
- "What personalization or customization drove better results?"
- "What would you repeat? What would you change?"

**Product Domain** (features, UX, technical decisions):
- "What did users respond to positively? What surprised you?"
- "What design pattern or interaction worked well?"
- "What technical decision made this faster/better?"
- "What would you do differently in the next feature?"

**Analytics Domain** (queries, insights, metrics):
- "What insight emerged that you didn't expect?"
- "What query pattern or approach saved time?"
- "How did you structure the analysis? Would you reuse this?"
- "What made this analysis more valuable than others?"

**Operations Domain** (workflows, tools, processes):
- "What made this faster or smoother than usual?"
- "What would you automate next time?"
- "What process improvement emerged?"
- "What tool or integration helped most?"

**Business Domain** (strategy, pricing, partnerships):
- "What strategic insight changed your thinking?"
- "What customer segment responded differently?"
- "What pricing or positioning angle worked?"
- "What would inform future strategic decisions?"

### Step 3: Pattern Matching
Search semantic memory for similar patterns:
1. Load relevant semantic memory file based on domain
2. Check if this learning reinforces an existing pattern
3. Check if this is a variation of an existing pattern
4. Determine if this is entirely new

**Search Logic**:
- Grep through semantic memory files for keywords
- Match on domain + work type (e.g., "outreach" in growth/)
- Look for similar success metrics or outcomes
- Flag potential pattern matches for user confirmation

### Step 4: Classification Decision
Ask user to classify the learning:

**Option A: REINFORCEMENT** (This reinforces an existing pattern)
- Which pattern does this reinforce?
- Update pattern file with new example
- Increment confidence level if threshold reached
- Add link to today's episodic entry

**Option B: NEW PATTERN** (This is a new discovery)
- What should we call this pattern?
- Create new pattern entry in semantic memory
- Set confidence = LOW (1 example)
- Link to today's episodic entry

**Option C: VARIATION** (Similar to existing but different)
- Which pattern is this related to?
- Add as variant within existing pattern section
- Or create new pattern if significantly different

**Option D: NO PATTERN** (One-off event, not worth capturing)
- Skip semantic memory update
- Still create episodic entry for historical record

### Step 5: Update Semantic Memory
Based on classification:

**For REINFORCEMENT**:
```markdown
## Pattern Name (existing)

**Confidence**: MEDIUM → HIGH (if 5th example reached)

[Keep existing pattern description]

**Examples** (add new entry):
- [2025-11-10 New Example Description](../episodic/domain/2025-11-10-event.md)

**Last Applied**: 2025-11-10
**Times Applied**: [Increment count]
```

**For NEW PATTERN**:
```markdown
## New Pattern Name

**Confidence**: LOW (1 example)

**Context**: When to apply this pattern

**The Pattern**: Clear, actionable description

**Time Savings**: [If measurable]

**Success Rate**: [Quantified outcomes from this first example]

**Examples**:
- [2025-11-10 First Example](../episodic/domain/2025-11-10-event.md)

**Last Applied**: 2025-11-10
**Times Applied**: 1

**Notes**: [Any caveats or areas for future testing]
```

### Step 6: Create Episodic Memory Entry
Create detailed record of what happened today:

**File location**: `memory/episodic/{domain}/YYYY-MM-DD-{event-slug}.md`

**Template**:
```markdown
# [Event Name] - YYYY-MM-DD

**Domain**: [Growth | Product | Analytics | Operations | Business]

**Related Goal**:
- Quarterly: [Which Q4 2025 goal from goals/2025-goals.md]
- Monthly: [Which November priority]
- Weekly: [Which weekly objective]

**What Happened**:
[Description of what you did - be specific]

**Approach Used**:
[What method, pattern, or framework you applied]

**Outcome**:
[Results - quantified when possible]
- Metrics: [Numbers, percentages, comparisons]
- Impact: [What changed as a result]

**Patterns Applied**:
[If you used existing patterns from semantic memory]
- [Pattern 1 name] - [Link to semantic/domain/file.md]

**Patterns Discovered**:
[New patterns identified today]
- [New pattern name] - [Link to semantic/domain/file.md]

**Time Spent**: [Actual hours on this work]
**Time Saved**: [If pattern was applied, how much faster vs baseline]

**What Worked**:
[Wins to remember and repeat]
-
-

**What Didn't Work**:
[Challenges or things to avoid next time]
-
-

**Next Time**:
[What you'd do differently or build on]
-
-

**Linked Session**: [Link to daily-sessions/YYYY-MM-DD.md]

**Confidence Update**: [If pattern was reinforced, note confidence change]
```

### Step 7: Link to Daily Session
Update today's session file with:
```markdown
## Learnings Extracted

Patterns reinforced:
- [Pattern name] → Now [confidence level]

New patterns discovered:
- [Pattern name] → Added to semantic/domain/

Episodic entries created:
- [Link to memory/episodic/domain/YYYY-MM-DD-event.md]
```

### Step 8: Provide Feedback Summary
Show user what was captured:
```
✅ Learning extraction complete!

📊 Semantic Memory Updated:
- Reinforced: [Pattern A] (MEDIUM → HIGH confidence, 5 examples now)
- New Pattern: [Pattern B] (LOW confidence, 1 example)

📝 Episodic Memory Created:
- memory/episodic/growth/2025-11-10-consultant-outreach.md

🔗 Links Created:
- Session → Episodic entry
- Episodic entry → Semantic patterns
- Semantic patterns → Episodic examples

⏱️  Time invested in extraction: 3 minutes
💡 Potential time savings: 1.5 hours next time you do similar work
```

---

## Confidence Scoring Rules

Load from: `references/confidence-scoring.md`

**Promotion Rules**:
- LOW (1 example) → MEDIUM (2 examples): After 2nd successful application
- MEDIUM (2-4 examples) → HIGH (5+ examples): After 5th successful application

**Demotion Rules**:
- If pattern fails 2 consecutive times → Investigate and note in pattern
- If pattern not used in 3 months → Consider archiving
- If pattern shows inconsistent results → Add context constraints

---

## Domain-Specific Templates

Load from: `references/question-templates-by-domain.md`

Contains detailed question sets for:
- Growth (outreach, content, conversion)
- Product (features, UX, technical)
- Analytics (queries, insights, metrics)
- Operations (workflows, tools, automation)
- Business (strategy, pricing, partnerships)

---

## Memory Organization

Load from: `references/memory-organization.md`

Guidelines for:
- Where to save patterns (which semantic file)
- How to structure episodic entries
- Linking strategy (bidirectional)
- Naming conventions

---

## Example Extractions

**Example 1: Growth Pattern Extraction**
See: `examples/01-growth-pattern-extraction.md`
Shows full workflow for extracting outreach pattern

**Example 2: Product Insight Extraction**
See: `examples/02-product-insight-extraction.md`
Shows UX pattern discovery and reinforcement

**Example 3: Analytics Pattern Extraction**
See: `examples/03-analytics-pattern-extraction.md`
Shows query pattern reuse tracking

---

## Usage

**Automatic Trigger** (Recommended):
The daily-accountability-coach agent will trigger this skill automatically during evening check-out after completion assessment.

**Manual Trigger**:
If you want to capture a mid-day learning:
```
/learn [domain] [brief description]
```

Example: `/learn growth Tried industry-specific personalization in outreach, got 27% response vs usual 18%`

---

## Best Practices

1. **Be specific**: Vague patterns aren't reusable ("it worked well" vs "67% open rate, 24% response")
2. **Capture context**: When does this pattern apply? When doesn't it?
3. **Track metrics**: Numbers make patterns actionable
4. **Link everything**: Episodic ↔ Semantic bidirectional links
5. **Update immediately**: Don't batch - extract learning same day
6. **Embrace LOW confidence**: It's okay to have new patterns, they'll grow
7. **Archive liberally**: If pattern isn't used, move it out of active memory

---

## Integration with Accountability Coach

The accountability coach should:
1. Complete standard evening check-out (completion assessment, what got in the way, etc.)
2. For each completed priority, trigger this learn-extraction skill
3. Let this skill handle all memory updates
4. Return control to coach for "tomorrow's #1 priority"
5. Coach saves session file with learning extraction summary

**Seamless handoff**: User shouldn't feel like they're using two separate tools.

---

## Success Metrics

Track weekly in brain-health-reporting:
- Patterns extracted per week (target: 2-5)
- Patterns reinforced per week (target: 3-7)
- Confidence promotions per week (target: 1-2)
- Time invested in extraction (target: 15-25 min/week)
- Time saved from pattern reuse (target: 3-8 hours/week by Month 3)

---

**Version**: 1.0.0
**Last Updated**: 2025-11-10
**Part of**: Iwo's Second Brain Upgrade
**Integrated with**: Daily Accountability Coach
**Progressive Disclosure**: Create referenced files in `references/` (confidence-scoring.md, question-templates-by-domain.md, memory-organization.md) and `examples/` directory for full implementation.
