# Example 3: Analytics Pattern Extraction (Churn Analysis)

This example shows pattern extraction for analytics work.

---

## Context
**Date**: 2025-11-10
**Work Completed**: User churn analysis for product team
**Domain**: Analytics
**Result**: Reused proven query, saved 1.5 hours

---

## Learn-Extraction Conversation (Abbreviated)

**Coach**: "You completed the churn analysis. Used your cohort query template?"

**User**: "Yes! Used the Weekly Cohort Analysis Query from semantic memory. Literally copied it, changed the date range, and it worked perfectly. Took 5 minutes instead of 1.5 hours building from scratch."

**Coach**: "Excellent! That's the knowledge compounding in action. Let me search..."

[Searches memory/semantic/analytics/query-library.md]

**Coach**: "Found it! 'Weekly Cohort Analysis Query' (HIGH confidence, 5 examples). This is the 6th application. Already HIGH confidence, so this just reinforces how reliable it is.

What made it work this time?"

**User**: "The query structure is perfect. I just updated two things:
1. Date range: Last 12 weeks instead of 8 weeks
2. Filter: Added cohort_type = 'B2B' to focus on business users

Everything else stayed the same. Product team loved the insight - showed exactly when churn happens (week 3-4 after signup)."

**Coach**: "Great! This is a HIGH confidence pattern doing exactly what it should - saving you time.

**Pattern**: Weekly Cohort Analysis Query
**Update**: HIGH (5 examples) → HIGH (6 examples)
**Time Saved**: 1.5 hours (5 min with template vs 2 hr from scratch)
**Total Time Saved**: 9 hours over 6 uses!
**New Context**: Also works for segment-specific analysis (B2B filter)

Creating episodic entry: memory/episodic/analytics/2025-11-10-churn-analysis-q4.md

This pattern is rock solid. Consider sharing the query template with the product team?"

**User**: "Good idea."

---

## Semantic Memory Update

```markdown
## Weekly Cohort Analysis Query

**Confidence**: HIGH (6 examples)  ← Incremented

**Last Applied**: 2025-11-10  ← Updated
**Times Applied**: 6  ← Updated

**Examples** (added):
- [2025-11-10 Q4 Churn Analysis](../episodic/analytics/2025-11-10-churn-analysis-q4.md)

**Time Savings**:
- Saved vs building from scratch: 1.5 hours per use
- Total time saved over 6 uses: 9 hours
- Reusable with parameter changes: 5 min to adapt

**Notes** (added):
- Works with segment filters (cohort_type, user_segment, etc.)
- Reliable for any cohort window (tested 8, 12, 16 weeks)
- Product team finds this format most useful for decisions
```

---

## Episodic Memory Entry (Summary)

```markdown
# Q4 User Churn Analysis - 2025-11-10

**Domain**: Analytics

**What Happened**:
Analyzed B2B user churn for Q4 product review. Used proven cohort query template from semantic memory.

**Approach Used**:
- Applied [Weekly Cohort Analysis Query](../../semantic/analytics/query-library.md#weekly-cohort-analysis-query)
- Modified: Date range (12 weeks), added B2B filter
- No other changes needed (query structure perfect)

**Outcome**:
- Insight: 55% of B2B users churn in weeks 3-4 after signup
- Root cause hypothesis: Onboarding ends at week 2, users feel lost at week 3
- Action for product: Extend onboarding touchpoints to week 4
- Stakeholder impact: Informed Q1 roadmap priorities

**Time Spent**: 30 minutes total
- Query execution: 5 min (using template)
- Analysis: 15 min
- Insight memo: 10 min

**Time Saved**: 1.5 hours (vs building query from scratch)

**Patterns Applied**:
- [Weekly Cohort Analysis Query](../../semantic/analytics/query-library.md#weekly-cohort-analysis-query) - 6th time, still perfect

**What Worked**:
- Query template 100% reusable (just changed parameters)
- Segment filter (cohort_type = 'B2B') easy to add
- Visualization clear for product team

**Confidence Update**: HIGH confidence reinforced (6th flawless application)
```

---

## Key Learnings

1. **HIGH confidence patterns** = consistent time savings
2. **Template reuse** = 1.5 hours saved (5 min vs 2 hr)
3. **Cumulative ROI** = 9 hours saved over 6 uses
4. **Zero failures** = 100% success rate (true HIGH confidence)
5. **Actionable insight** = Informed product roadmap

---

*Example Type: HIGH Confidence Pattern Reuse*
*Domain: Analytics*
*Outcome: Time savings, reliable results*
