---
name: brain-health-reporting
description: Generate weekly intelligence metrics showing knowledge growth, time savings, and pattern evolution to track second brain ROI. Use during Friday evening check-out or via /grow command.
allowed-tools: "Read, Grep, Bash"
when_to_use: |
  - Automatically during Friday evening check-out (after weekly completion dashboard)
  - Manually via /grow command for on-demand brain health report
  - Monthly review for longer-term trend analysis and pattern library health check
version: 1.0.0
---

# Brain-Health-Reporting Skill

## Purpose
Generate weekly intelligence metrics showing knowledge growth, time savings, and pattern evolution to track second brain ROI.

## When to Use
- Automatically during Friday evening check-out
- Manually via `/grow` command for on-demand brain health report
- Monthly review for longer-term trend analysis

**Integration**: Adds intelligence metrics layer to weekly completion dashboard in daily-accountability-coach.

---

## Core Workflow

### Step 1: Collect Pattern Data
Scan all pattern files to count patterns and confidence levels.

**What to extract**:
- Pattern names and confidence levels (HIGH/MEDIUM/LOW)
- Times applied and last applied dates
- Time savings per pattern
- Success rates and metrics

**Data location**: `memory/patterns/*.md`

See `references/calculation-methods.md` for detailed counting logic.

### Step 2: Calculate Pattern Growth
Compare this week vs last week:
- New patterns discovered
- Patterns reinforced (new examples added)
- Confidence promotions (LOW→MEDIUM, MEDIUM→HIGH)
- Total pattern count change
- Confidence distribution shift

### Step 3: Calculate Time Savings
Sum time saved from pattern applications this week:

**Data sources**:
- Experience files: `experiences/**/*.md`
- Pattern files: Check "Time Savings" fields in `memory/patterns/*.md`
- Growth log: Review entries in `brain-health/growth-log.md`
- Calculate ROI: Time saved ÷ Time invested in extraction

See `references/calculation-methods.md` for detailed formulas.

### Step 4: Topic Breakdown
Group patterns by topic/category and show:
- Total patterns per topic
- Confidence distribution per topic
- Most applied pattern in each topic
- Topic-level insights

**Topics tracked**: Extract from pattern file headings and tags

### Step 5: Identify Most Valuable Patterns
Rank patterns by value score:
- Time saved (weighted 3x)
- Application frequency (weighted 2x)
- Confidence level (weighted 1x)
- Success rate (weighted 1x)

Show top 3-5 patterns with metrics.

### Step 6: Generate Recommendations
Based on data analysis, suggest focus areas:
- Apply underutilized HIGH confidence patterns
- Validate patterns close to promotion (need 1 more example)
- Develop weak topics (< 5 patterns or 0 HIGH)
- Archive stale patterns (not used 2+ months)

See `references/calculation-methods.md` for recommendation logic.

### Step 7: Update Brain Health Files
Update brain health tracking files:
- **Growth log**: Update `brain-health/growth-log.md` with new entry
- **Pattern confidence**: Update `brain-health/pattern-confidence.md` with changes
- **Quality metrics**: Update `brain-health/quality-metrics.md` if reviews were completed

---

## Report Structure

The generated report includes:

1. **📊 Knowledge Growth** - Pattern discovery and confidence promotions
2. **⏱️  Time Savings** - Hours saved, ROI calculation
3. **🎯 Topic Breakdown** - Pattern distribution by topic
4. **🏆 Most Valuable Patterns** - Top performers this week
5. **💡 Recommendations** - Actionable focus areas for next week
6. **📈 Trend Analysis** - Multi-week patterns (if history available)
7. **🎉 Wins** - Highlights and achievements

See `references/report-template.md` for complete report format.

---

## Integration with Friday Check-Out

**Timing**: After standard weekly completion dashboard

**Flow**:
1. Coach shows completion rates, energy patterns
2. Coach triggers brain-health-reporting skill
3. Skill generates and displays report
4. Coach summarizes: "Your second brain is compounding..."
5. Coach provides next week recommendation

**Seamless integration** - feels like natural extension of Friday check-out, not separate tool.

---

## Data Sources

**Pattern Data**:
- `memory/patterns/*.md` (current patterns)
- `brain-health/pattern-confidence.md` (confidence tracking)

**Time Savings Data**:
- `experiences/**/*.md` (project files)
- Pattern "Time Savings" fields in `memory/patterns/*.md`
- Growth log entries in `brain-health/growth-log.md`

**Quality Data**:
- `brain-health/quality-metrics.md` (review scores)
- Experience review scores

---

## Success Metrics

**Weekly targets**:
- Pattern discovery: 2-5 new patterns/week
- Pattern reinforcement: 3-7 patterns/week
- Confidence promotions: 1-2/week
- Time invested: 15-25 min/week
- Time saved: 3-8 hours/week (by Month 3)

**Long-term targets (Month 6)**:
- 50-60 total patterns
- 40% HIGH, 40% MEDIUM, 20% LOW distribution
- 8-12 hours saved per week
- 20-30x ROI

---

## Maintenance

**Weekly**: Run `/grow` command to generate and display report
**Monthly**: Review trends, update goals, archive stale patterns
**Quarterly**: Review pattern library health, cleanup and consolidation

---

## Reference Files

**Report Template**: See `references/report-template.md` for:
- Complete report structure
- All sections and formatting
- Integration example with coach
- Output formatting guidelines

**Calculation Methods**: See `references/calculation-methods.md` for:
- Pattern data collection logic
- Growth calculation formulas
- Time savings calculation methods
- Domain breakdown techniques
- Ranking algorithms
- Recommendation generation logic

---

**Version**: 1.0.0
**Last Updated**: 2025-11-10
**Triggered**: Automatically Friday check-out, or `/grow` command
**Part of**: Iwo's Second Brain Upgrade
**Progressive Disclosure**: Core workflow in SKILL.md, report format in `references/report-template.md`, calculations in `references/calculation-methods.md`
