# Confidence Scoring System

This file defines how patterns are scored and promoted through confidence levels.

---

## Confidence Levels

### LOW Confidence (1 example)
**Definition**: Pattern just discovered, needs validation

**Criteria**:
- Applied successfully 1 time
- Positive results observed
- Hypothesis that this approach is repeatable
- Not yet tested in different contexts

**How to Use**:
- Apply with caution
- Track results carefully
- Note context and conditions
- Be ready to adjust or abandon

**Label**: `**Confidence**: LOW (1 example)`

**Notes Section**: Should include:
- What assumptions need testing
- What contexts haven't been tried yet
- What could make this pattern fail
- What would promote it to MEDIUM

---

### MEDIUM Confidence (2-4 examples)
**Definition**: Pattern showing promise, needs more validation

**Criteria**:
- Applied successfully 2-4 times
- Results generally consistent
- May have worked in slightly different contexts
- Starting to see conditions where it works best

**How to Use**:
- Apply with monitoring
- Track variations in results
- Note what contexts work better/worse
- Start identifying pattern boundaries

**Label**: `**Confidence**: MEDIUM (3 examples)` (show actual count)

**Promotion from LOW**:
After 2nd successful application where:
- Results similar to first time (within 20% variance)
- OR: Results better than first time
- Update pattern with 2nd example

**Notes Section**: Should include:
- Contexts where it works best
- Contexts where it underperforms
- What conditions to check before applying
- What would promote it to HIGH

---

### HIGH Confidence (5+ examples)
**Definition**: Pattern proven across multiple instances, highly reliable

**Criteria**:
- Applied successfully 5+ times
- Consistent results across different contexts
- Clear understanding of when it works and when it doesn't
- Measurable success metrics

**How to Use**:
- Apply confidently
- Use as default approach for this type of work
- Template or automate if possible
- Share with team (if applicable)

**Label**: `**Confidence**: HIGH (7 examples)` (show actual count)

**Promotion from MEDIUM**:
After 5th successful application where:
- Success rate ≥ 80% (4 out of 5 worked well)
- Results are predictable
- Clear pattern boundaries understood

**Notes Section**: Should include:
- Well-defined context (when to apply, when not to)
- Success rate and metrics
- Known failure modes (what breaks the pattern)
- Templates or frameworks for easy reuse

---

## Promotion Rules

### LOW → MEDIUM
**Trigger**: After 2nd successful application

**Requirements**:
1. Second application in similar but not identical context
2. Results comparable to first application (± 20%)
3. User confirms pattern feels repeatable

**Process**:
1. Add 2nd example to pattern
2. Update confidence label: `LOW (1) → MEDIUM (2)`
3. Update "Times Applied" count
4. Update "Last Applied" date
5. Add notes on what varied between applications

### MEDIUM → HIGH
**Trigger**: After 5th successful application

**Requirements**:
1. At least 5 successful applications
2. Success rate ≥ 80% (4 out of 5 worked)
3. Applied in at least 2 different contexts or scenarios
4. Clear understanding of pattern boundaries

**Process**:
1. Add 5th example to pattern
2. Update confidence label: `MEDIUM (4) → HIGH (5)`
3. Update "Times Applied" count
4. Update "Last Applied" date
5. Add comprehensive notes on:
   - When to apply (context rules)
   - When not to apply (anti-patterns)
   - Expected success rate
   - Template or framework (if applicable)

---

## Demotion Rules

### When to Demote or Flag a Pattern

**Consecutive Failures** (HIGH → MEDIUM, or MEDIUM → LOW):
- Pattern fails 2 consecutive times
- Results significantly worse than expected (> 30% variance)
- User reports pattern didn't work as anticipated

**Process**:
1. Don't immediately demote - investigate first
2. Ask: "What was different this time?"
3. Options:
   - Add context constraint (pattern works only when X)
   - Demote confidence if pattern is unreliable
   - Archive if pattern consistently fails

**Inconsistent Results** (Flag for review):
- Success rate drops below 60%
- High variance in results (some great, some poor)
- Pattern works only in very narrow contexts

**Process**:
1. Add note: "⚠️ Inconsistent results - use with caution"
2. Document what conditions lead to success vs failure
3. Consider splitting into two patterns (Pattern A: when X, Pattern B: when Y)

**Low Usage** (Archive):
- Pattern not used in 3 months
- Better pattern discovered that supersedes this one
- Pattern no longer relevant to current work

**Process**:
1. Move to `memory/semantic/{domain}/_archived/`
2. Add note on why archived
3. Keep episodic links (historical record)
4. Don't delete - may be useful reference later

---

## Success Rate Calculation

**Formula**:
```
Success Rate = (Successful Applications / Total Applications) × 100
```

**What counts as "successful"**:
- Achieved expected outcome (or better)
- Results comparable to previous applications
- User would apply pattern again in similar context

**What counts as "failed"**:
- Worse outcome than baseline approach
- Pattern actively hurt results
- User would not apply pattern again

**What's "neutral"** (doesn't count either way):
- Pattern applied but results unclear
- Context too different to compare
- External factors dominated (pattern effect unknown)

**Tracking**:
Update in pattern notes:
```markdown
**Success Rate**: 5 successful, 1 failed, 1 neutral = 71% (5/7)
```

---

## Context Boundaries

As patterns mature, define clear boundaries:

### Context Where Pattern Works
- Customer segment: B2B, B2C, consultants
- Work phase: Planning, execution, review
- Time constraints: Tight deadline, ample time
- Resources available: Tools, team, budget
- Specific conditions: Day of week, seasonality, market conditions

### Context Where Pattern Doesn't Work
Document anti-patterns and failure modes:
- "Doesn't work for cold prospects (needs warm intro)"
- "Fails when timeline < 2 days (needs customization time)"
- "Not effective for technical audience (prefer data over stories)"

### Unknown Contexts (To Test)
Keep a list of untested contexts:
- "Not yet tried with enterprise segment (500+ employees)"
- "Not tested during Q4 (holiday season impact unknown)"
- "Not applied to product launches (only content so far)"

---

## Confidence Updates in Evening Check-Out

During learn-extraction, show confidence updates clearly:

**Example - Promotion to MEDIUM**:
```
✅ Pattern Reinforced: "Decision-Maker Personalization"

Confidence: LOW → MEDIUM (2 examples now)
- First application: Oct 28 (67% open rate)
- Today's application: Nov 10 (65% open rate)
- Consistency: ✓ (results within 5% of each other)

Action: One more successful application will promote to MEDIUM confidence
```

**Example - Promotion to HIGH**:
```
✅ Pattern Promoted: "Weekly Cohort Analysis Query"

Confidence: MEDIUM → HIGH (5 examples now)
- Success rate: 100% (5/5 worked perfectly)
- Time saved: 1.5 hours per use × 5 uses = 7.5 hours total
- Contexts tested: Churn analysis, retention, feature adoption, weekly metrics

Action: This is now a HIGH confidence pattern - use it as default for cohort analysis
```

**Example - Flagged for Review**:
```
⚠️ Pattern Flagged: "Hook Patterns for LinkedIn"

Confidence: MEDIUM (3 examples)
Success rate: 67% (2/3 worked well, 1 underperformed)

Today's result: Contrarian hook got low engagement (30% of usual)
Difference: More technical audience vs usual business audience

Action: Added context constraint - "Works for business audience, not technical"
```

---

## Visualization

**Pattern Confidence Distribution** (for brain-health-reporting):

```
Current Pattern Confidence Levels (14 total patterns):

HIGH (5+ examples):     ███ 3 patterns (21%)
  - Daily Planning Process (30+ examples)
  - Weekly Cohort Query (6 examples)
  - Question Post Formula (5 examples)

MEDIUM (2-4 examples):  █████ 5 patterns (36%)
  - Personal Story Engagement (4 examples)
  - User Testing Protocol (4 examples)
  - Tuesday Email Timing (3 examples)
  - User Churn Prediction (3 examples)
  - Weekly Review Protocol (8 examples)

LOW (1 example):        ██████ 6 patterns (43%)
  - Decision-Maker Personalization (1 example)
  - Follow-Up Timing (2 examples)
  - Hook Patterns (2 examples)
  - Progressive Disclosure (2 examples)
  - Onboarding Checklist (1 example)
  - MCP Integration (3 examples)

Target: 40% HIGH confidence by Month 6
```

---

*Version: 1.0*
*Last Updated: 2025-11-10*
