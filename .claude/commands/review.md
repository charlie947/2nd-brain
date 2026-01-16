---
name: review
description: Run 6-agent parallel quality review on any output
---

# Review Command

Run a comprehensive 6-agent parallel review to catch issues before delivery.

## Content to Review

$ARGUMENTS

---

## Review Process

### Step 1: Load Content

**Reading content for review...**

```
Read $ARGUMENTS
```

If no file provided:
```
"No content specified for review. Would you like me to:
1. List recent outputs in experiences/
2. Review text you paste directly
3. Review a specific file you point me to"
```

### Step 2: Load Review Context

**Loading supporting context...**

```
Read memory/company/products.md
Read memory/company/differentiators.md
Read memory/company/positioning.md (if exists)
Read memory/patterns/messaging-patterns.md (if exists)
Read memory/examples/INDEX.md (if exists)
```

### Step 3: Parallel Review

**Launching 6 specialized review agents simultaneously...**

Each agent focuses on a specific quality dimension:

---

## The 6 Review Agents

### Agent 1: Messaging Reviewer
**Focus**: Message clarity and impact

Checks:
- [ ] Key message is clear in first 30 seconds
- [ ] Value proposition is compelling
- [ ] Call to action is specific
- [ ] No jargon or unclear terms
- [ ] Message flows logically

### Agent 2: Positioning Reviewer
**Focus**: Market positioning and differentiation

Checks:
- [ ] Differentiators are highlighted
- [ ] Positioning aligns with memory/company/
- [ ] Competitive advantages are clear
- [ ] Claims are supportable
- [ ] Target audience alignment

### Agent 3: Quality Reviewer
**Focus**: Overall quality and completeness

Checks:
- [ ] All required sections present
- [ ] No placeholder text or TODOs
- [ ] Formatting is consistent
- [ ] Length is appropriate
- [ ] Professional presentation

### Agent 4: Data Accuracy Reviewer
**Focus**: Factual accuracy and data integrity

Checks:
- [ ] Statistics are accurate
- [ ] Claims have evidence
- [ ] Company information is correct
- [ ] No contradictory statements
- [ ] Sources cited where needed

### Agent 5: Brand Voice Reviewer
**Focus**: Consistency with brand voice

Checks:
- [ ] Tone matches brand guidelines
- [ ] Language is consistent
- [ ] Personality comes through
- [ ] Appropriate formality level
- [ ] Matches winning examples in memory/examples/

### Agent 6: Competitive Reviewer
**Focus**: Competitive positioning and objection handling

Checks:
- [ ] Handles likely objections
- [ ] Doesn't oversell
- [ ] Competitive context is appropriate
- [ ] Unique value is clear
- [ ] Avoids competitor traps

---

## Review Output Format

```markdown
# Review Results

> Reviewed: [filename]
> Date: [date]
> Overall Score: [X/10]

## Summary

[2-3 sentence overall assessment]

## Scores by Dimension

| Dimension | Score | Status |
|-----------|-------|--------|
| Messaging | X/10 | ✅/⚠️/❌ |
| Positioning | X/10 | ✅/⚠️/❌ |
| Quality | X/10 | ✅/⚠️/❌ |
| Data Accuracy | X/10 | ✅/⚠️/❌ |
| Brand Voice | X/10 | ✅/⚠️/❌ |
| Competitive | X/10 | ✅/⚠️/❌ |

## Detailed Findings

### ✅ Strengths
- [Strength 1]
- [Strength 2]
- [Strength 3]

### ⚠️ Suggestions
- [Suggestion 1]: [How to improve]
- [Suggestion 2]: [How to improve]

### ❌ Issues (Must Fix)
- [Issue 1]: [Why it's a problem] → [Fix]
- [Issue 2]: [Why it's a problem] → [Fix]

## Verdict

**[READY TO SEND / NEEDS REVISION / MAJOR REWORK]**

[Explanation of verdict]

## Next Steps

If Ready to Send:
```bash
/learn   # Extract patterns from this success
```

If Needs Revision:
```bash
# Apply suggested fixes, then:
/review [updated-file.md]
```
```

---

## Score Interpretation

| Score | Meaning | Action |
|-------|---------|--------|
| 9-10 | Excellent | Send immediately |
| 7-8 | Good | Minor tweaks optional |
| 5-6 | Acceptable | Apply suggestions |
| 3-4 | Needs work | Revise before sending |
| 1-2 | Major issues | Significant rework |

---

## Review Calibration

The review agents improve over time by:

1. **Learning from examples**: Feed `memory/examples/` with winning work
2. **Pattern application**: Uses `memory/patterns/` for consistency
3. **Brand voice training**: References past approved content
4. **Feedback incorporation**: Learns from your corrections

### Making Reviews Smarter

After each project, run `/learn` to:
- Extract successful patterns
- Note what worked well
- Update review criteria

---

## Quick Review Options

### Full Review (Default)
```bash
/review output.md
```
All 6 agents, comprehensive analysis.

### Focus Review
```bash
/review output.md --focus messaging
```
Deep dive on specific dimension.

### Speed Review
```bash
/review output.md --quick
```
Quick pass, essential checks only.

---

## After Review

### If Score 8+
```bash
/learn   # Capture what worked
```

### If Score 5-7
1. Apply suggested fixes
2. Run `/review` again
3. Then `/learn` when satisfied

### If Score <5
1. Review the plan (`/plan`)
2. Check memory context
3. Consider similar past work
4. Revise significantly
5. Re-review

---

## Review Tips

1. **Don't skip review** - It catches what you miss
2. **Trust the process** - Agents are calibrated for quality
3. **Address ❌ issues** - These are must-fix items
4. **Consider ⚠️ suggestions** - Often worth implementing
5. **Celebrate ✅ strengths** - Learn what works

---

**Review time:** ~30 seconds
**Next step:** `/learn` (to extract patterns)
