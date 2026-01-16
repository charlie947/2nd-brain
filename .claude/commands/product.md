---
name: product
description: Full companion for product development - from idea to launch and iteration
---

# Product Development Agent

## Input: $ARGUMENTS

**Commands:**
- `new "[Name]"` - Start new product
- `"[Name]"` - Resume existing
- `"[Name]" [stage]` - Jump to stage
- `list` - Show all products
- `"[Name]" refresh-context` - Update brain context

**Stages:** `ideation` | `research` | `definition` | `build` | `launch` | `iterate`

---

## Flows

### New Product
1. `mkdir -p products/[slug]` (lowercase, hyphenated)
2. Read `memory/personal/positioning.md` + `expertise.md`, save to `brain-snapshot.md`
3. Create `tracker.md` with stage=Ideation
4. → Start Ideation

### Resume Product
1. Read `products/[slug]/tracker.md`
2. Compare `brain-snapshot.md` with current `positioning.md`/`expertise.md`
   - If changed: "Brain Update Detected - Apply? [Yes/No/Review]"
3. Read latest `memory/values-beliefs/` and `memory/patterns/`
4. Show: Stage, last session, next action, open questions
5. → Continue current stage

### List Products
`Glob products/*/tracker.md` → Display table: Product | Stage | Status | Last Active

### Refresh Context
Re-snapshot `positioning.md` + `expertise.md` to `brain-snapshot.md`

---

## Stage Templates

### Ideation
**Purpose:** Validate problem, size opportunity
**Context:** Read `expertise.md`, `values-beliefs/`, grep patterns for "ideation|validation"
**Output:** `ideation.md`

```markdown
# Ideation: [Name]
> Status: [Complete/In Progress]

## Problem
- **Problem**: [Statement]
- **Who**: [Customer]
- **Current solutions**: [Alternatives]
- **Cost**: [Impact]

## Opportunity
- **Market size**: [Estimate]
- **Willingness to pay**: [Assessment]
- **Trend**: [Growing/Stable/Declining]

## Strategic Fit
- Values alignment: [Assessment]
- Expertise leverage: [Which areas]
- Service complement: [How it fits]

## Hypothesis
> We believe [customer] will [action] because [reason], resulting in [outcome].

## Assumptions & Validation
1. [Assumption] → Validate via: [method]

## Decision: Proceed? [Yes/No/Need more]
```

**Checklist:** Problem defined? Customer identified? Strategic fit confirmed?

---

### Research
**Purpose:** Market & competitive landscape
**Context:** Read `ideation.md`, grep patterns for "research|competitor|market"
**WebSearch:** Market size, competitors, solutions, trends
**Output:** `research.md`

```markdown
# Research: [Name]

## Market
- **Size**: [With source]
- **Growth**: [Rate]
- **Trends**: [Key trends]

## Competitors
| Name | Position | Price | Strengths | Weaknesses |

## Positioning Gaps
- Underserved: [Segments]
- Messaging: [Gaps]
- Features: [Missing]

## Target Customer (Refined)
- Primary: [Who]
- Anti-target: [Not for]

## Sources
- [URLs]
```

**Checklist:** Market sized? Competitors identified? Gap found?

---

### Definition
**Purpose:** Lock value prop, positioning, pricing
**Context:** Read `ideation.md`, `research.md`, `positioning.md`, `differentiators.md`
**Output:** `definition.md`

```markdown
# Definition: [Name]

## Value Proposition
For [customer] who [problem], [product] is a [category] that [benefit]. Unlike [alternatives], we [differentiator].

## Positioning
[2-3 sentences]

## Messages
- **Primary**: [One thing]
- **Supporting**: [1-3 proof points]

## Pricing
| Tier | Price | Includes |
**Rationale**: [Why]

## MVP Scope
- Must have: [Features]
- Should have: [v1.1]
- Won't have: [Out of scope]

## Success Metrics
| Metric | Target | Timeframe |

## Brand Alignment
Values: [OK?] | Voice: [OK?] | Fit: [OK?]
```

**Checklist:** Value prop locked? Pricing decided? MVP defined?

---

### Build
**Purpose:** Track development
**Context:** Read `definition.md`
**Output:** `build-log.md`

```markdown
# Build Log: [Name]
> Target: [Date] | Status: [In Progress/Complete]

## MVP Checklist
- [ ] [Feature from definition]

## Sessions
### [Date]
- Focus: [What]
- Done: [What]
- Blockers: [Any]
- Next: [What]

## Decisions
| Date | Decision | Rationale |

## Pre-Launch
- [ ] Features complete
- [ ] Pricing ready
- [ ] Sales materials
- [ ] Process documented
```

**Checklist:** MVP complete? Materials ready? Process documented?

---

### Launch
**Purpose:** GTM execution
**Context:** Read `definition.md`, `build-log.md`, `services.md`
**Output:** `launch-plan.md`

```markdown
# Launch: [Name]
> Date: [Target] | Status: [Planning/Launched]

## Strategy
- Type: [Soft/Full/Beta]
- Primary channel: [Where]

## Checklist
Pre-launch: Landing page | Pricing | Content | Email list
Launch day: Announce | Email | Social | Outreach
Post-launch: Monitor | Follow up | Testimonials

## Assets
| Asset | Status |

## Metrics
| Metric | Target | Actual |
```

**Checklist:** Launched? Feedback collected? Metrics tracked?

---

### Iterate
**Purpose:** Learn and optimize
**Context:** Read `launch-plan.md`, `definition.md`
**Output:** `learnings.md`

```markdown
# Learnings: [Name]

## Working
- [What]: [Evidence]

## Not Working
- [Issue]: [Evidence] → Fix: [Solution]

## Customer Feedback
- Positive: [Quotes]
- Constructive: [Quotes] → Action: [What]

## Metrics
| Metric | Target | Actual | Gap |

## Next Version
- Fixes: [List]
- Features: [List]

## Patterns to Extract
- Repeat: [What worked]
- Avoid: [What didn't]
→ Run `/learn`
```

---

## Tracker Template

```markdown
# Product: [Name]
> Started: [Date] | Stage: [Current] | Status: Active

## Current
- Stage: [X]
- Sub-step: [Y]
- Last: [Date]
- Next: [Action]

## Session Log
### [Date]
- Stage: [X]
- Done: [What]
- Decisions: [Any]
- Next: [What]

## Decisions
| Date | Decision | Rationale | Stage |

## Open Questions
- [ ] [Question]

## Progress
- [ ] Ideation → [ ] Research → [ ] Definition → [ ] Build → [ ] Launch → [ ] Iterate
```

---

## Session End

Update tracker with: stage, completed, decisions, next, open questions

```
"[Name] - Session Saved
Progress: [Stage] - [Sub-step]
Next: [What's queued]
Continue: /product "[Name]""
```

---

## Brain Sync (Option C)
- **Always fresh**: `values-beliefs/`, `patterns/`
- **Snapshot + detect**: `positioning.md`, `expertise.md` → Alert on changes

## Integration
- `/learn` - Extract patterns after stages
- `/review` - Quality check outputs
- `/discover` - Competitor intel
- `/recall` - Search brain context
