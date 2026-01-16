# Decision Documentation Templates

This file contains all decision templates for various decision types and complexity levels.

---

## 1. Full Template (Strategic/High-Impact Decisions)

Use for important decisions that need comprehensive documentation.

```markdown
# Decision: [Short Title]

**Date:** YYYY-MM-DD
**Context:** [Product/Growth/Operations/Technical/etc]
**Participants:** [Who was involved]
**Status:** Active | Revisit-on-DATE | Superseded-by-DOC

---

## Decision Made

[Clear one-sentence statement of what was decided]

---

## Why This Decision?

### Problem/Question
[What needed to be decided?]

### Options Considered
1. **Option A:** [Description]
   - Pros: ...
   - Cons: ...

2. **Option B:** [Description] ✅ **CHOSEN**
   - Pros: ...
   - Cons: ...

3. **Option C:** [Description]
   - Pros: ...
   - Cons: ...

### Decision Rationale
[Why we chose Option B]
- Key factor 1
- Key factor 2
- Key factor 3

---

## Trade-offs Accepted

**What we're giving up:**
- [Thing we're not doing]
- [Feature we're deferring]

**What we're gaining:**
- [Benefit 1]
- [Benefit 2]

---

## Implementation Impact

**Affects:**
- [System/Process/Team affected]
- [Files/Code to change]
- [People who need to know]

**Action Items:**
- [ ] Update documentation X
- [ ] Notify team Y
- [ ] Implement change Z

---

## Review Criteria

**When to revisit this decision:**
- [Condition 1: e.g., "After 3 months of usage data"]
- [Condition 2: e.g., "If customer complaints increase"]
- [Condition 3: e.g., "When team size doubles"]

**Success metrics:**
- [How we'll know this was the right choice]

**Scheduled review:** [DATE or "After milestone X"]

---

## Related Decisions
- [Link to prior decision this builds on]
- [Link to decision this overrides]

---

## Notes
[Additional context, caveats, or considerations]
```

---

## 2. Quick Capture Template (Tactical Decisions)

Use for rapid decisions that don't need full documentation.

```markdown
# Decision: [Title]
**Date:** [DATE] | **Context:** [Area]

**Chose:** [Option chosen]
**Over:** [Rejected alternatives]
**Because:** [One-sentence reason]

**Trade-off:** [What we're not doing]
**Review:** [When/condition]
```

---

## 3. Strategic Template (High-Impact Decisions)

Use for decisions affecting roadmap, resources, or requiring stakeholder alignment.

Based on Full Template above, add these additional sections:

```markdown
## Stakeholder Communication Plan

**Who needs to know:**
- [Stakeholder 1] - [Why they care]
- [Stakeholder 2] - [Why they care]

**Communication method:**
- [ ] Team meeting
- [ ] Email announcement
- [ ] Slack/chat update
- [ ] Documentation update

**Timeline:**
- Announce by: [DATE]
- Implement by: [DATE]

---

## Success Metrics Dashboard

**Leading indicators** (track weekly):
- [Metric 1]
- [Metric 2]

**Lagging indicators** (track monthly):
- [Metric 1]
- [Metric 2]

**Dashboard location:** [Link to analytics/monitoring]

---

## Risk Assessment

**Risks accepted:**
1. [Risk 1] - Probability: [Low/Med/High], Impact: [Low/Med/High]
   - Mitigation: [How we'll handle if it happens]

2. [Risk 2] - Probability: [Low/Med/High], Impact: [Low/Med/High]
   - Mitigation: [How we'll handle if it happens]

**Contingency plan:**
- If [condition], then [action]

---

## Quarterly Review Schedule

- Q1 Review: [DATE]
- Q2 Review: [DATE]
- Annual review: [DATE]
```

---

## 4. Technical Template (Architecture/Implementation Decisions)

Use for technical architecture, tool selection, or implementation approach decisions.

```markdown
# Decision: [Technical Choice]

**Date:** YYYY-MM-DD
**Context:** Technical/Architecture
**Impact:** [High/Medium/Low]
**Status:** Active

---

## Decision Made

[Clear statement of technical choice]

---

## Problem Context

**Technical challenge:**
[What problem needed solving]

**Constraints:**
- Performance: [Requirements]
- Scalability: [Requirements]
- Maintainability: [Requirements]
- Cost: [Budget constraints]

---

## Options Evaluated

### Option 1: [Technology/Approach A]
**Pros:**
- [Benefit 1]
- [Benefit 2]

**Cons:**
- [Drawback 1]
- [Drawback 2]

**Effort:** [Time/complexity estimate]

### Option 2: [Technology/Approach B] ✅ **CHOSEN**
**Pros:**
- [Benefit 1]
- [Benefit 2]

**Cons:**
- [Drawback 1]
- [Drawback 2]

**Effort:** [Time/complexity estimate]

---

## Technical Rationale

**Why this approach:**
1. [Performance/scalability consideration]
2. [Team expertise/learning curve]
3. [Ecosystem/community support]
4. [Long-term maintainability]

**Proof of concept results:**
- [Any testing or prototyping done]

---

## Implementation Plan

**Files affected:**
- [File 1]
- [File 2]

**Dependencies:**
- [Library/service 1]
- [Library/service 2]

**Migration path:**
- [ ] Step 1
- [ ] Step 2
- [ ] Step 3

**Rollback plan:**
[How to revert if this fails]

---

## Performance/Scalability Impact

**Expected:**
- Response time: [Estimate]
- Throughput: [Estimate]
- Resource usage: [Estimate]

**Monitoring:**
- [What metrics to watch]
- [Alert thresholds]

---

## Review Criteria

**Revisit if:**
- Performance degrades beyond [threshold]
- Scaling issues emerge at [user count]
- Better alternatives become available

**Success metrics:**
- [Technical metric 1]
- [Technical metric 2]

**Scheduled review:** [DATE]
```

---

## Template Selection Guide

**Use Full Template when:**
- Strategic decisions affecting roadmap/resources
- High-impact decisions requiring team buy-in
- Decisions with long-term consequences
- Complex trade-offs need documentation

**Use Quick Capture when:**
- Tactical decisions with clear rationale
- Time-sensitive decisions during active work
- Low-impact reversible choices
- Session-specific implementation choices

**Use Strategic Template when:**
- Decision affects multiple stakeholders
- Need tracking metrics and review schedule
- Risk assessment required
- Quarterly planning decisions

**Use Technical Template when:**
- Architecture decisions
- Technology/tool selection
- Implementation approach choices
- Performance/scalability trade-offs

---

**Version**: 1.0.0
**Last Updated**: 2025-11-20
**Usage**: Reference these templates from decision-documentation/SKILL.md
