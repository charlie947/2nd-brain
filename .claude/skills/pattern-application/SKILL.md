---
name: pattern-application
description: Surface relevant patterns from semantic memory during morning check-in to help apply proven approaches to today's work. Automatically triggered during morning check-in.
allowed-tools: "Read, Grep"
when_to_use: |
  - Automatically during morning check-in (after loading goals, before priority coaching)
  - Manually when starting specific work: /apply [domain] [task description]
  - When user describes work that matches known patterns in semantic memory
  - To provide intelligence layer on top of priority coaching
version: 1.0.0
---

# Pattern-Application Skill

**Purpose**: Surface relevant patterns from semantic memory during morning check-in to help apply proven approaches to today's work.

**When to Use**:
- Automatically triggered during morning check-in (after loading goals, before priority coaching)
- Manually via command when starting specific work

**Integration**: Works with daily-accountability-coach agent to provide intelligence layer on top of priority coaching.

---

## Core Workflow

### Step 1: Domain Identification
From user's brain dump (Step 1 of morning check-in), identify which domains they'll work in today:

**Listen for keywords**:
- **Growth**: outreach, email, prospects, content, LinkedIn, newsletter, sales, interviews, users
- **Product**: feature, UX, testing, design, interface, users, launch, roadmap
- **Analytics**: data, query, metrics, dashboard, analysis, cohort, churn, insights
- **Operations**: workflow, process, tools, MCP, automation, integration, calendar
- **Business**: strategy, pricing, partnership, decision, customer, segment

**Multi-domain work**: If user mentions multiple domains, load patterns for all relevant domains.

### Step 2: Load Relevant Semantic Memory
For each identified domain, load the appropriate semantic memory files:

**Growth domain**:
- `memory/semantic/growth/outreach-patterns.md`
- `memory/semantic/growth/content-performance.md`

**Product domain**:
- `memory/semantic/product/ux-patterns.md`
- `memory/semantic/product/feature-decisions.md` (if exists)

**Analytics domain**:
- `memory/semantic/analytics/query-library.md`
- `memory/semantic/analytics/insight-patterns.md` (if exists)

**Operations domain**:
- `memory/semantic/operations/workflow-optimizations.md`
- `memory/semantic/operations/tool-integration-learnings.md` (if exists)

**Business domain**:
- `memory/semantic/business/*.md` (if patterns exist)

### Step 3: Pattern Matching
Match user's described work to relevant patterns:

**Matching Logic**:
1. **Exact match**: User says "outreach" → Load outreach patterns
2. **Contextual match**: User says "need to email prospects" → Match to outreach timing and personalization patterns
3. **Task type match**: User says "analyze churn" → Match to cohort analysis query pattern
4. **Time-saving match**: User describes tedious work → Look for automation/template patterns

**Priority ranking** (which patterns to surface first):
1. **HIGH confidence patterns** (5+ examples, proven reliable)
2. **Patterns last applied recently** (fresh in memory)
3. **Patterns with highest time savings** (ROI matters)
4. **Patterns user hasn't tried in a while** (reminder of what works)

### Step 4: Pattern Suggestion Format
Surface 2-3 most relevant patterns during priority coaching:

**Format**:
```
"I'm seeing you'll work on [domain] today. Let me share relevant patterns from your knowledge base:

**Pattern: [Pattern Name]**
- Confidence: [HIGH/MEDIUM/LOW] ([N] examples)
- Last used: [Date]
- Success rate: [Metric/outcome]
- Time savings: [Hours saved vs baseline]
- When to apply: [Context]

**Quick reference**: [Link to semantic memory file]

[If HIGH confidence]:
'This pattern has worked [N] times consistently. I recommend using it as your default approach.'

[If MEDIUM confidence]:
'This pattern shows promise (worked [N] times). Worth applying with monitoring.'

[If LOW confidence]:
'Early-stage pattern (1-2 examples). Consider trying again to validate.'
```

**Example during morning check-in**:
```
Coach: "You mentioned prospect outreach today. I'm seeing you have two proven patterns:

**Pattern: Tuesday Morning Email Timing**
- Confidence: MEDIUM (3 examples)
- Last used: 2025-11-10
- Success: 45-52% open rate (vs 30% baseline)
- Context: Send B2B emails Tuesday 10-11am for best engagement

**Pattern: Decision-Maker Personalization**
- Confidence: MEDIUM (2 examples)
- Last used: 2025-11-10
- Success: 65-67% open rate, 20-24% response rate
- Time saved: 10 min investment = 2x response rate
- Context: Senior decision-makers (C-level, VPs, consultants)

Today's Tuesday at 9am. Want to block 10-11am for outreach using the personalization approach?"
```

### Step 5: Reference Episodic Examples
When suggesting patterns, link to specific past examples:

**Format**:
```
"Last time you used this pattern ([Date]), you:
- Did: [Specific approach from episodic memory]
- Got: [Specific outcome/metrics]
- Learned: [Key insight from that application]

The full details are in: [Link to episodic entry]
```

**Example**:
```
"Last time you used Decision-Maker Personalization (Nov 10), you:
- Referenced LinkedIn activity + company milestones for 18 consultants
- Got 67% open rate and 17% immediate response rate
- Learned: Company milestones drive faster responses

Full campaign details: memory/episodic/sales/2025-11-10-consultant-outreach-campaign.md"
```

### Step 6: Offer Templates/Workflows
If procedural memory exists for this work, offer to walk through it:

**Check for workflows**:
- `memory/procedural/{domain}-workflows/{workflow-name}.md`

**Offer format**:
```
"I have a step-by-step workflow for this: [Workflow name]

This workflow takes [N] minutes and covers:
1. [Step 1]
2. [Step 2]
3. [Step 3]

Want me to walk you through it, or do you have your own approach today?"
```

**Example**:
```
"I have a 'Prospect Research Workflow' that uses LinkedIn MCP + HubSpot + PostgreSQL to qualify leads in 3 minutes per prospect (vs 10 minutes manually).

Steps:
1. LinkedIn profile data
2. Check HubSpot CRM (existing contact?)
3. Check PostgreSQL (platform user?)
4. Personalize based on all three

Want to use this workflow for today's research?"
```

### Step 7: Pattern Application Tracking
After user decides which patterns to apply, note this in the session file (for evening extraction):

**Track**:
- Which patterns user chose to apply
- Which patterns user skipped (and why, if mentioned)
- New contexts for existing patterns

This informs evening learning extraction and pattern refinement.

---

## Pattern Selection Strategy

### When to Suggest HIGH Confidence Patterns
**Always suggest** - These are proven and reliable:
- "This has worked [5+] times consistently. Use it as your default approach."
- Show metrics, time savings, success rate
- Reference most recent successful application

### When to Suggest MEDIUM Confidence Patterns
**Suggest with context**:
- "This shows promise ([2-4] examples). Worth applying with monitoring."
- Explain what contexts it worked in
- Note any variations or caveats
- Encourage user to help validate pattern

### When to Suggest LOW Confidence Patterns
**Suggest cautiously**:
- "Early-stage pattern (1-2 examples). Want to test it again?"
- Frame as experiment, not proven approach
- Track results carefully for validation
- Don't push if user prefers different approach

### When NOT to Suggest Patterns
- Pattern last failed (don't push unreliable patterns)
- User explicitly trying new approach (support experimentation)
- Pattern doesn't match context (wrong customer segment, timeline, etc.)
- User seems rushed (don't add cognitive load)

---

## Integration with Priority Coaching

**Timing**: Surface patterns DURING priority coaching, not before brain dump

**Flow**:
1. User completes brain dump (Step 1)
2. Coach identifies domains → **Trigger pattern-application skill**
3. Load semantic memory for identified domains
4. During Step 2 (Impact Filter Coaching), weave in pattern suggestions
5. When coaching on Priority 1, 2, 3 → Reference relevant patterns

**Example integrated coaching**:
```
Coach: "If you complete that outreach today, what changes by tomorrow?"
User: "We start getting replies, hopefully book demos."
Coach: "High impact. By the way, I'm seeing you have a proven pattern for this: 'Tuesday Morning Email Timing' (MEDIUM confidence). Your last campaign on Tuesday 10am got 52% open rate vs 30% baseline. Today's Tuesday – want to apply that timing?"
User: "Yes, definitely."
Coach: "Great. I'll block 10-11am for outreach. Also, you have 'Decision-Maker Personalization' pattern that doubled your response rate last time. Should we use that approach too?"
```

**Seamless integration** - Don't make it feel like separate tool, just enhanced coaching.

---

## Reference Files

**Pattern matching logic**: `references/pattern-matching-logic.md`
**Suggestion timing**: `references/suggestion-timing.md`
**Application guidance**: `references/application-guidance.md`

---

## Examples

**Example 1**: Morning pattern suggestion for outreach work
See: `examples/morning-pattern-suggestion.md`

**Example 2**: Mid-work pattern reminder
See: `examples/mid-work-pattern-reminder.md` (optional for manual trigger)

---

## Manual Trigger

If user wants to search patterns mid-work:
```
/apply [domain] [task description]
```

Example: `/apply growth I'm about to do consultant outreach`

This loads relevant patterns on demand, outside of morning check-in.

---

## Success Metrics

Track in brain-health-reporting:
- **Pattern suggestions per check-in**: Target 2-3 relevant patterns
- **Pattern application rate**: Target 60%+ (user applies suggested patterns)
- **Time saved from application**: Track cumulative hours
- **Pattern validation**: How many LOW→MEDIUM, MEDIUM→HIGH promotions

---

## Best Practices

1. **Context matters**: Don't suggest patterns that don't fit today's context
2. **Don't overwhelm**: 2-3 patterns max per check-in
3. **Prioritize HIGH confidence**: Lead with proven patterns
4. **Link to examples**: Concrete episodic entries > abstract descriptions
5. **Respect user choice**: Suggest, don't mandate
6. **Learn from skips**: If user skips pattern repeatedly, investigate why
7. **Update stale patterns**: If pattern not used in 3 months, flag for review

---

**Version**: 1.0.0
**Last Updated**: 2025-11-10
**Part of**: Iwo's Second Brain Upgrade
**Integrated with**: Daily Accountability Coach (Morning Check-In)
**Progressive Disclosure**: Create referenced files in `references/` (pattern-matching-logic.md, suggestion-timing.md, application-guidance.md) and `examples/` directory for full implementation.
