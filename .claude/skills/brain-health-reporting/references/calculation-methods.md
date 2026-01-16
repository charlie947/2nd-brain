# Brain Health Calculation Methods

Detailed methods for calculating pattern data, time savings, and brain health metrics.

---

## 1. Pattern Data Collection

### Files to Scan
```
memory/patterns/*.md
```

### Data to Extract Per Pattern

**Required fields**:
- Pattern name (from heading: `## Pattern Name`)
- Confidence level (`**Confidence**: HIGH|MEDIUM|LOW`)
- Times applied (`**Times Applied**: N`)
- Last applied date (`**Last Applied**: YYYY-MM-DD`)

**Optional fields**:
- Time savings (`**Time Savings**: X hours`)
- Success rate/metrics (`**Success Rate**: X%`)
- Examples count (count items in `**Examples**:` section)

### Counting Logic

```bash
# Count total patterns (all ## headings in pattern files)
grep -r "^## " memory/patterns/ | wc -l

# Count HIGH confidence patterns
grep -r "Confidence: HIGH" memory/patterns/ | wc -l

# Count MEDIUM confidence patterns
grep -r "Confidence: MEDIUM" memory/patterns/ | wc -l

# Count LOW confidence patterns
grep -r "Confidence: LOW" memory/patterns/ | wc -l
```

---

## 2. Pattern Growth Calculation

### This Week vs Last Week Comparison

**Data sources**:
- **This week**: Current pattern files in `memory/patterns/*.md`
- **Last week**:
  - Option A: `brain-health/pattern-confidence.md` (historical tracking)
  - Option B: Git history (`git show HEAD~7:memory/patterns/`)
  - Option C: Manual baseline (if first week)

**Metrics to calculate**:
```
New patterns = Patterns in current week NOT in last week
Patterns reinforced = Patterns with new examples added
Confidence promotions = Patterns that moved confidence level up
Total growth = Current total - Last week total
```

### Example Calculation

**Last week**:
- Total: 15 patterns
- HIGH: 3, MEDIUM: 7, LOW: 5

**This week**:
- Total: 18 patterns
- HIGH: 5, MEDIUM: 8, LOW: 5

**Growth**:
- New patterns: +3
- Patterns reinforced: Check examples count increase
- Confidence promotions: 2 (MEDIUM→HIGH)
- Total growth: +3 patterns (+20%)

---

## 3. Time Savings Calculation

### Data Sources

**Source 1: Growth log** (primary)
```
brain-health/growth-log.md
```

Look for:
- Recent entries with time savings data
- Patterns applied and their impact

**Source 2: Pattern files** (secondary)
```
memory/patterns/*.md
```

For each pattern:
- Check `Times Applied: N` field
- Check `Time Savings: X hours per use` field
- If `Times Applied` increased this week, multiply: N × Time Savings

**Source 3: Experience files** (tertiary)
```
experiences/**/*.md
```

Look for time savings mentioned in project outputs and reviews

### Calculation Formula

```
Total time saved this week =
  Σ(time savings from growth log entries) +
  Σ(pattern applications × time saved per pattern)

Time invested in extraction =
  Number of /learn cycles × 3 minutes

ROI = Time saved / Time invested
```

### Example Calculation

**Growth log entries show**:
- Monday: Applied "Consultant Outreach Pattern", saved 1.5 hours
- Tuesday: Applied "Email Personalization", saved 0.5 hours
- Thursday: Applied "LinkedIn Post Formula", saved 1 hour

**Pattern files show**:
- "Cohort Analysis Query" applied 2× this week, saves 1.5 hr/use = 3 hours

**Totals**:
- Time saved: 1.5 + 0.5 + 1 + 3 = 6 hours
- Time invested: 3 /learn cycles × 3 min = 9 min = 0.15 hours
- ROI: 6 / 0.15 = 40x

---

## 4. Topic Breakdown Calculation

### Group Patterns by Topic

**Method**:
1. For each pattern file, extract topic/category from:
   - Pattern file name
   - Pattern headings
   - Topic tags/metadata if present

2. Count patterns per topic:
   - Count `## Pattern Name` headings in each category
   - Extract confidence levels for each

3. Aggregate by topic:
   ```
   Messaging: Total patterns, HIGH count, MEDIUM count, LOW count
   Positioning: Total patterns, HIGH count, MEDIUM count, LOW count
   Process: Total patterns, HIGH count, MEDIUM count, LOW count
   ```

### Most Applied Pattern Per Topic

**Method**:
1. For each topic, get all patterns
2. Check `Times Applied: N` field
3. Rank by N (descending)
4. Return top pattern per topic

---

## 5. Most Valuable Patterns Ranking

### Ranking Criteria

**Score calculation**:
```
Value score =
  (Time saved × 3) +
  (Application frequency × 2) +
  (Confidence level × 1) +
  (Success rate × 1)

Where:
- Time saved = hours saved this week
- Application frequency = times applied this week
- Confidence level = HIGH:3, MEDIUM:2, LOW:1
- Success rate = percentage (0-100)
```

**Sort**: Descending by value score
**Show**: Top 3-5 patterns

### Example Ranking

**Pattern A**:
- Time saved: 4 hours (score: 12)
- Applied: 3 times (score: 6)
- Confidence: HIGH (score: 3)
- Success: 90% (score: 90)
- **Total: 111**

**Pattern B**:
- Time saved: 1 hour (score: 3)
- Applied: 5 times (score: 10)
- Confidence: MEDIUM (score: 2)
- Success: 80% (score: 80)
- **Total: 95**

**Pattern C**:
- Time saved: 2 hours (score: 6)
- Applied: 1 time (score: 2)
- Confidence: LOW (score: 1)
- Success: 100% (score: 100)
- **Total: 109**

**Ranking**: Pattern A (111) > Pattern C (109) > Pattern B (95)

---

## 6. Recommendation Generation Logic

### Apply More HIGH Confidence Patterns

**Trigger**: If underutilized HIGH confidence patterns exist

```bash
# Count HIGH confidence patterns
HIGH_COUNT=$(grep -r "Confidence: HIGH" memory/patterns/ | wc -l)

# Count HIGH patterns applied this week (from growth log)
APPLIED_COUNT=$(grep -r "Pattern.*applied" brain-health/growth-log.md | tail -7 | wc -l)

# If APPLIED_COUNT < HIGH_COUNT / 2, suggest using more
```

**Output**:
```
You have [HIGH_COUNT] HIGH confidence patterns but only applied [APPLIED_COUNT] this week.

Underused patterns:
- [List patterns with "Times Applied" not incremented this week]

Action: Reference these in morning check-ins.
```

### Validate Patterns Close to Promotion

**Trigger**: Patterns at 1 or 2 examples (one away from promotion)

```bash
# Find patterns at 2 examples (one from HIGH)
grep -r "Examples" memory/patterns/ | grep "2 items"

# Find patterns at 1 example (one from MEDIUM)
grep -r "Examples" memory/patterns/ | grep "1 item"
```

**Output**:
```
Patterns 1 example from promotion:
- [Pattern] at 4 examples (needs 1 more for HIGH)
- [Pattern] at 1 example (needs 1 more for MEDIUM)

Action: Look for opportunities to apply these.
```

### Develop Weak Topics

**Trigger**: Topic with < 5 patterns OR 0 HIGH confidence patterns

**Detection logic**:
```bash
# Analyze patterns by topic from pattern files
# Extract topics from file names or headings
# Count patterns and confidence levels per topic

# Example check:
# If messaging patterns < 5 OR messaging HIGH patterns = 0
# Then flag as weak topic
```

**Output**:
```
[Topic] has only [X] patterns / no HIGH confidence patterns.

Action: Focus on [Topic] work next week to build proven patterns.
```

### Archive Stale Patterns

**Trigger**: Patterns with `Last Applied` > 60 days ago

```bash
# Find patterns not used in 60+ days
# (requires parsing Last Applied dates)
grep -r "Last Applied:" memory/patterns/ | [date comparison logic]
```

**Output**:
```
Patterns not used in 2+ months:
- [Pattern X] (last used [Date])

Action: Archive to _archive/ or test once more.
```

---

## 7. Trend Analysis Calculation

### Multi-Week Pattern Growth

**Data source**: `brain-health/pattern-confidence.md`

**Format in pattern-confidence.md**:
```markdown
## Confidence History

| Date | Pattern | Change | Reason |
|------|---------|--------|--------|
| 2025-11-04 | Total: 15 | - | Baseline |
| 2025-11-11 | Total: 18 | +3 | Added patterns |
| 2025-11-18 | Total: 21 | +3 | Added patterns |
```

**Trend calculation**:
```
Growth rate = (Week N - Week 1) / (N weeks)
Projection = Current + (Growth rate × weeks to Month 6)
```

### Multi-Week Time Savings Trend

**Data source**: `brain-health/growth-log.md`

**Calculation**:
```
Extract time savings from growth log entries over multiple weeks
Trend = Linear regression on weekly time savings
Projection = Extend trend line to Month 6
Status = Compare to target (8-12 hours/week)
```

---

## 8. Data Storage for History

### Weekly Snapshot
Update: `brain-health/growth-log.md`

**Append weekly summary**:
```markdown
## Week of [YYYY-MM-DD]

### Learning Events: [X]

| Day | Project | Patterns | Score |
|-----|---------|----------|-------|
| Mon | [Name] | +2 | 8/10 |

### Weekly Growth
- Patterns added: [X]
- Patterns upgraded: [Y]
- Avg review score: [Z]

### Cumulative Totals
- Total patterns: [XX]
- Brain age: [YY] days
```

### Update Pattern Confidence
Update: `brain-health/pattern-confidence.md`

Add entries to Confidence History table for any changes.

---

**Version**: 1.0.0
**Last Updated**: 2025-11-20
**Usage**: Reference from brain-health-reporting/SKILL.md for calculation details
