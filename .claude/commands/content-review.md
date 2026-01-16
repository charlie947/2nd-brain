---
name: content-review
description: Weekly performance analysis - paste posts and metrics to learn and improve
---

# Weekly Content Review

Analyze this week's LinkedIn performance and extract patterns for improvement.

## Your Request

$ARGUMENTS

---

## Step 1: Identify Completed Week

**Looking for week to review...**

```
Check content-calendar/ for completed weeks (Week Ready: ✅)
If multiple completed weeks, show most recent first
```

**Show week summary:**
```
"Ready to review: Week of Dec 9-13, 2025

Posts created:
| Day | Type | Posted |
|-----|------|--------|
| Mon | Core Insight | ✅ |
| Tue | Story | ✅ |
| Wed | Framework | ✅ |
| Thu | Discussion | ✅ |
| Fri | Teaser | ✅ |

Please paste your LinkedIn posts with their metrics."
```

---

## Step 2: Collect Performance Data

**Prompt for data:**

```
Please paste each post with its metrics in this format:

---
POST 1 (Monday - Core Insight)
Impressions: [number]
Likes: [number]
Comments: [number]
Reposts: [number]
Link clicks: [number if available]

[Optional: Paste the actual post as published, if you made edits]
---

[Repeat for all 5 posts]
```

**Example input:**
```
POST 1 (Monday)
Impressions: 2,450
Likes: 87
Comments: 12
Reposts: 3
Link clicks: 24

POST 2 (Tuesday)
Impressions: 1,890
Likes: 52
Comments: 18
Reposts: 1
```

---

## Step 3: Analyze Performance

**Calculate metrics:**

```
## Performance Analysis

### Raw Numbers

| Day | Type | Impressions | Likes | Comments | Reposts |
|-----|------|-------------|-------|----------|---------|
| Mon | Core Insight | 2,450 | 87 | 12 | 3 |
| Tue | Story | 1,890 | 52 | 18 | 1 |
| Wed | Framework | 2,100 | 65 | 8 | 5 |
| Thu | Discussion | 1,650 | 41 | 22 | 0 |
| Fri | Teaser | 2,200 | 73 | 15 | 4 |

**Week Totals**: X impressions, Y likes, Z comments, W reposts

### Engagement Rates

| Day | Like Rate | Comment Rate | Engagement Rate |
|-----|-----------|--------------|-----------------|
| Mon | 3.5% | 0.5% | 4.2% |
| ... | ... | ... | ... |

**Engagement Rate** = (Likes + Comments + Reposts) / Impressions * 100
```

---

## Step 4: Identify Patterns

**Analyze by dimensions:**

### By Post Type
```
Best performing type: [Type] with [X]% engagement
Worst performing type: [Type] with [Y]% engagement

Insight: [What this suggests]
```

### By Hook Type
```
Hook types used this week:
- Bold Claim (Mon): [engagement]
- Analogy (Tue): [engagement]
- Contrarian (Wed): [engagement]
- Direct Address (Thu): [engagement]
- Problem-Agitate (Fri): [engagement]

Best hook: [Type]
```

### By Day/Time
```
Highest impressions: [Day] at [Time]
Highest engagement: [Day] at [Time]

Pattern: [What this suggests about audience behavior]
```

### Content Themes
```
What resonated:
- [Theme/angle that performed well]
- [Specific phrase or hook that got engagement]

What fell flat:
- [Theme that underperformed]
- [Why it might not have landed]
```

---

## Step 5: Extract Learnings

**Format insights for memory:**

```
## Learnings from Week of [Date]

### What Worked
1. [Specific insight] - Evidence: [metric]
2. [Specific insight] - Evidence: [metric]

### What to Try Next
1. [Specific recommendation]
2. [Specific recommendation]

### Patterns to Test
1. [Hypothesis to validate next week]
```

---

## Step 6: Update Content Patterns

**Add to memory/patterns/content-patterns.md:**

```markdown
## Performance Tracking

### Hook Performance (Updated: [Date])

| Hook Type | Avg Engagement | Sample Size | Confidence |
|-----------|----------------|-------------|------------|
| Bold Claim | 3.8% | 4 posts | LOW |
| Analogy | 4.2% | 3 posts | LOW |
| Contrarian | 3.5% | 3 posts | LOW |
| Direct Address | 5.1% | 3 posts | LOW |
| Problem-Agitate | 3.2% | 3 posts | LOW |

### Topic Performance (Updated: [Date])

| Topic Theme | Avg Engagement | Notes |
|-------------|----------------|-------|
| Experimentation/Play | 4.1% | Resonates strongly |
| Leadership/Pace | 3.8% | Good for exec audience |
| Culture vs Strategy | 4.5% | High comment rate |

### Best Posting Times (Learned)

| Day | Tested Time | Performance | Notes |
|-----|-------------|-------------|-------|
| Monday | 8am | Above avg | Confirmed good |
| Thursday | 5pm | High comments | Discussion works |

### Engagement Patterns

- Comment rate higher on: [observation]
- Repost rate higher on: [observation]
- Link clicks correlate with: [observation]
```

---

## Step 7: Archive Week

**Move completed week to archive:**

```
content-calendar/week-YYYY-MM-DD/ → content-calendar/archive/week-YYYY-MM-DD/
```

**Add performance summary to archived status.md:**

```markdown
## Performance Summary (Added after review)

| Metric | Value | vs. Previous |
|--------|-------|--------------|
| Total Impressions | X | +/- Y% |
| Total Engagement | X | +/- Y% |
| Best Post | [Day] | [Why] |
| Learnings | [Key insight] | |

Reviewed: [Date]
```

---

## Output Format

```
## Weekly Content Review: Dec 9-13, 2025

### Performance Summary

**Impressions**: 10,290 total (2,058 avg per post)
**Engagement**: 4.1% average rate
**Best Performer**: Thursday Discussion (5.1% engagement)
**Most Comments**: Thursday (22 comments)

### Key Learnings

1. **Direct Address hooks drive comments**
   - Thursday's "You've started your AI journey..." got 22 comments
   - People want to share their experiences

2. **Analogy hooks need stronger punch**
   - Tuesday's story performed below average
   - Consider shorter, punchier analogies

3. **Friday Substack driver worked**
   - 24 link clicks on Monday + Friday combined
   - CTA placement in comments confirmed effective

### Pattern Updates

Updated memory/patterns/content-patterns.md with:
- Hook performance data (5 new data points)
- Posting time confirmation
- Topic resonance notes

### Recommendations for Next Week

1. Use more Direct Address hooks (high comment rate)
2. Test shorter Story posts (Tuesday underperformed)
3. Keep Friday Problem-Agitate structure (good clicks)

### Week Archived

Moved to: content-calendar/archive/week-2025-12-09/

---

Ready for next week? Run `/content-plan` to start planning.
```

---

## Confidence Levels

Pattern confidence based on sample size:

| Sample Size | Confidence |
|-------------|------------|
| 1-3 posts | LOW |
| 4-7 posts | MEDIUM |
| 8+ posts | HIGH |

Update confidence levels in content-patterns.md as data accumulates.

---

## Tips for Better Analysis

**Provide context when pasting:**
- Did you post at the recommended time?
- Any external factors (holiday, trending topic)?
- Did you make edits to the generated copy?

**Track over time:**
- Compare week-over-week trends
- Note seasonal patterns
- Watch for audience growth impact

---

**Generated with:** Content Review Command v1.0.0
