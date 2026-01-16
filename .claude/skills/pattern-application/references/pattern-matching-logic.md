# Pattern Matching Logic

How to match user's described work to relevant patterns from semantic memory.

---

## Keyword-to-Domain Mapping

### Growth Domain Triggers
**Keywords**: outreach, email, prospects, leads, cold, warm, content, post, LinkedIn, Twitter, newsletter, blog, engagement, likes, comments, shares, interview, user research, feedback, conversion, funnel, signup, trial, demo

**Patterns to load**:
- `memory/semantic/growth/outreach-patterns.md`
- `memory/semantic/growth/content-performance.md`
- `memory/semantic/growth/interview-insights.md`
- `memory/semantic/growth/conversion-optimization.md`

### Product Domain Triggers
**Keywords**: feature, UX, design, interface, user testing, prototype, wireframe, mockup, launch, rollout, A/B test, feedback, usability, navigation, button, form, dashboard, onboarding, technical, architecture, API, database, performance, bug, deployment

**Patterns to load**:
- `memory/semantic/product/ux-patterns.md`
- `memory/semantic/product/feature-decisions.md`
- `memory/semantic/product/technical-decisions.md`

### Analytics Domain Triggers
**Keywords**: data, SQL, query, analysis, metrics, dashboard, report, insights, cohort, retention, churn, engagement, funnel, conversion rate, user behavior, segment, A/B test results, statistical, trend, correlation

**Patterns to load**:
- `memory/semantic/analytics/query-library.md`
- `memory/semantic/analytics/insight-patterns.md`
- `memory/semantic/analytics/user-behavior.md`

### Operations Domain Triggers
**Keywords**: workflow, process, automation, tools, MCP, integration, setup, calendar, planning, review, documentation, efficiency, time blocking, delegation, coordination, communication, Slack, email management

**Patterns to load**:
- `memory/semantic/operations/workflow-optimizations.md`
- `memory/semantic/operations/tool-integration-learnings.md`

### Business Domain Triggers
**Keywords**: strategy, pricing, customer, segment, B2B, B2C, consultant, partnership, revenue, business model, competitive, market, positioning, value prop, decision, tradeoff, priority, roadmap, investment

**Patterns to load**:
- `memory/semantic/business/*.md` (load all if they exist)

---

## Pattern-to-Task Matching

### Exact Task Matches
| User Says | Load Pattern |
|-----------|--------------|
| "prospect research" | LinkedIn + HubSpot enrichment workflow |
| "cold outreach" | Tuesday email timing + Personalization patterns |
| "LinkedIn post" | Question post formula, Personal story engagement |
| "user testing" | User testing protocol |
| "churn analysis" | Weekly cohort query, Churn prediction |
| "feature launch" | UX patterns, Feature decision patterns |
| "weekly review" | Weekly review protocol |

### Contextual Task Matches
Look for intent, not just keywords:

**User says**: "Need to email 30 consultants about our product"
**Match to**:
- Outreach timing patterns (Tuesday 10-11am)
- Decision-maker personalization (works for consultants)
- Follow-up timing (for later in campaign)

**User says**: "Dashboard showing low user engagement"
**Match to**:
- User behavior analysis patterns
- Cohort retention queries
- Engagement insight patterns

**User says**: "Building onboarding flow"
**Match to**:
- Onboarding checklist pattern (if exists)
- Progressive disclosure UX pattern
- User testing protocol (test before launch)

---

## Confidence-Based Pattern Ranking

When multiple patterns match, rank by:

### 1. Confidence Level (Primary)
- HIGH confidence first (5+ proven examples)
- MEDIUM confidence second (2-4 examples)
- LOW confidence last (1 example, experimental)

### 2. Recency (Secondary)
- Recently applied patterns (< 2 weeks) ranked higher
- Stale patterns (> 2 months) flagged for refresh

### 3. Time Savings (Tertiary)
- Patterns with highest ROI ranked higher
- 1.5 hr saved > 30 min saved

### 4. Success Rate (Quaternary)
- 100% success rate > 75% success rate
- Consistent results > variable results

**Example ranking**:
User wants to do outreach. Available patterns:
1. **Tuesday Morning Timing** (HIGH, used 1 week ago, 45-52% open rate)
2. **Decision-Maker Personalization** (MEDIUM, used 1 week ago, 67% open rate)
3. **Follow-Up Timing** (LOW, used 3 weeks ago, 40% conversion)

Suggest #1 and #2 (HIGH + MEDIUM), skip #3 (LOW + not as relevant to initial outreach).

---

## Multi-Domain Matching

When user's work spans multiple domains:

**User says**: "Need to analyze data and then create content about findings"
**Domains**: Analytics + Growth
**Patterns to load**:
- Analytics: Query library, Insight patterns
- Growth: Content performance (how to share insights)

**Suggestion order**:
1. First: Analytics patterns (they're doing this first)
2. Then: Growth patterns (for sharing after analysis)

**Example**:
```
"I see you'll do analytics work first, then content creation.

For the analysis:
- Pattern: Weekly Cohort Query (HIGH confidence, saves 1.5 hr)

After you have insights:
- Pattern: Data-Driven Content (MEDIUM confidence)
- Format: Start with surprising stat, explain why it matters, CTA

Want me to load both workflows?"
```

---

## Context Constraint Checking

Before suggesting pattern, verify context matches:

### Customer Segment Constraints
**Pattern**: "Industry-specific personalization for healthcare consultants"
**Check**: Is user targeting healthcare segment today?
- ✅ Yes → Suggest pattern
- ❌ No → Don't suggest (wrong segment)

### Time Constraints
**Pattern**: "5-user testing protocol" (needs 3-4 hours)
**Check**: Does user have 3-4 hours available?
- ✅ Yes → Suggest pattern
- ❌ No → Suggest faster variation or skip

### Energy Constraints
**Pattern**: "Strategic planning framework" (needs 8/10 energy)
**Check**: User's energy level today?
- ✅ 8+/10 → Suggest pattern
- ❌ <8/10 → Suggest for tomorrow or when energy higher

### Tool Availability
**Pattern**: "LinkedIn + HubSpot enrichment workflow" (requires MCPs)
**Check**: Are LinkedIn and HubSpot MCPs installed?
- ✅ Yes → Suggest pattern
- ❌ No → Don't suggest (tools not available)

---

## Pattern Freshness

### Recent Patterns (< 2 weeks)
- **Highly relevant** - Fresh in user's memory
- Lead with these if confidence is MEDIUM or HIGH
- "Last week you used this approach and got [results]"

### Moderate Staleness (2 weeks - 2 months)
- **Still relevant** - User may have forgotten
- Frame as reminder: "You haven't used this in a while, but it worked well"
- Good opportunity to re-validate pattern

### Stale Patterns (> 2 months)
- **Flag for review** - May no longer be relevant
- Ask: "You last used this 3 months ago. Still relevant for your current work?"
- Consider archiving if repeatedly skipped

---

## Anti-Pattern Matching

**Don't suggest patterns that**:
- Last failed or produced poor results
- Are marked as "works only in [specific context]" when context doesn't match
- User has explicitly said they want to try a different approach
- Add complexity when user needs speed
- Require tools/resources not currently available

---

## Matching Confidence Levels

**How confident should pattern suggestion be?**

**High Matching Confidence** (Strong suggestion):
- Exact keyword match + HIGH pattern confidence
- Example: User says "cohort analysis" → Suggest "Weekly Cohort Query" (HIGH confidence)
- Language: "I strongly recommend using [pattern]. It's worked [N] times."

**Medium Matching Confidence** (Moderate suggestion):
- Contextual match + MEDIUM pattern confidence
- Example: User says "email prospects" → Suggest "Tuesday Timing" (MEDIUM confidence)
- Language: "Consider using [pattern]. It's shown good results [N] times."

**Low Matching Confidence** (Gentle suggestion):
- Loose match + LOW pattern confidence
- Example: User says "improve onboarding" → Suggest "Checklist pattern" (LOW confidence)
- Language: "You might try [pattern]. It worked once, worth validating."

**No Match** (Don't force it):
- No clear pattern applies → Don't suggest anything
- Better to say nothing than suggest irrelevant pattern

---

*Version: 1.0*
*Last Updated: 2025-11-10*
