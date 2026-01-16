# PMO Priority Scoring Reference

Complete guide to the multi-factor priority scoring algorithm used by the PMO Prioritizer.

## Scoring Formula

```
Priority_Score = (Urgency × 35) + (Impact × 25) + (Effort × 15) + (Alignment × 15) + (Momentum × 10)
```

**Total Range**: 0-100 points
**Recommended Thresholds**:
- **Today's Focus**: Score >= 75
- **This Week**: Score >= 60
- **Backlog**: Score < 60
- **Deprioritize**: Score < 30

---

## Factor 1: Urgency (35% weight)

**Purpose**: Prioritize time-sensitive work before deadlines pass.

### Calculation Logic

```python
def calculate_urgency(task):
    if not task.due_date:
        return 5  # No due date = medium urgency

    days_until_due = (task.due_date - today()).days

    if days_until_due < 0:
        # Overdue - scale by how late
        if days_until_due < -7:
            return 10  # More than a week overdue
        else:
            return 10  # Any overdue is max urgency

    if days_until_due == 0:
        return 9  # Due today

    if days_until_due <= 3:
        return 8  # Due within 3 days

    if days_until_due <= 7:
        return 7  # Due this week

    if days_until_due <= 14:
        return 6  # Due within 2 weeks

    if days_until_due <= 30:
        return 4  # Due this month

    return 3  # Due beyond a month
```

### Scoring Examples

| Due Date | Days Until Due | Urgency Score | Contribution to Total |
|----------|----------------|---------------|----------------------|
| 2 days ago | -2 | 10 | 3.5 |
| Today | 0 | 9 | 3.15 |
| Tomorrow | 1 | 8 | 2.8 |
| In 5 days | 5 | 7 | 2.45 |
| In 10 days | 10 | 6 | 2.1 |
| In 20 days | 20 | 4 | 1.4 |
| No due date | N/A | 5 | 1.75 |

---

## Factor 2: Impact (25% weight)

**Purpose**: Prioritize work that creates the most value or prevents the most harm.

### Calculation Logic

```python
def calculate_impact(task):
    if task.priority == "CRITICAL":
        return 10

    if task.priority == "HIGH":
        return 8

    if task.priority == "MEDIUM":
        return 5

    if task.priority == "LOW":
        return 3

    # No priority set - use heuristics
    if "urgent" in task.description.lower():
        return 7

    if "important" in task.description.lower():
        return 6

    return 5  # Default medium impact
```

### Scoring Examples

| Priority | Impact Score | Contribution to Total | Use Case |
|----------|--------------|----------------------|----------|
| CRITICAL | 10 | 2.5 | Production outage, client blocker |
| HIGH | 8 | 2.0 | Feature delivery, important bug |
| MEDIUM | 5 | 1.25 | Standard development task |
| LOW | 3 | 0.75 | Documentation, nice-to-have |
| (none) | 5 | 1.25 | Unclassified task |

---

## Factor 3: Effort (15% weight, inverted)

**Purpose**: Favor quick wins when scores are similar. Smaller tasks get higher scores.

### Calculation Logic

```python
def calculate_effort(task):
    if not task.estimated_time:
        return 5  # No estimate = medium effort score

    minutes = task.estimated_time

    if minutes <= 30:
        return 10  # Quick win

    if minutes <= 60:
        return 8  # 30-60 min

    if minutes <= 120:
        return 6  # 1-2 hours

    if minutes <= 240:
        return 4  # 2-4 hours

    return 2  # 4+ hours (large task)
```

### Scoring Examples

| Estimated Time | Effort Score | Contribution to Total | Rationale |
|----------------|--------------|----------------------|-----------|
| 15 min | 10 | 1.5 | Quick win - do it now |
| 45 min | 8 | 1.2 | Sub-hour task |
| 90 min | 6 | 0.9 | Half-morning task |
| 3 hours | 4 | 0.6 | Significant work block |
| 6 hours | 2 | 0.3 | Full day task |
| (none) | 5 | 0.75 | Unknown scope |

---

## Factor 4: Strategic Alignment (15% weight)

**Purpose**: Prioritize work that advances strategic goals and key projects.

### Calculation Logic

```python
def calculate_alignment(task):
    score = 5  # Base score

    # Check for goal links
    if task.links_to_quarterly_goals:
        score += 3

    # Check for project importance
    if task.project in ["client-a", "product-launch", "fundraising"]:
        score += 2  # Critical project

    # Check for critical path
    if task.is_critical_path:
        score += 2

    # Check for dependencies
    if task.blocks_other_tasks:
        score += 1

    return min(10, score)  # Cap at 10
```

### Scoring Examples

| Task Type | Alignment Score | Contribution to Total | Why |
|-----------|-----------------|----------------------|-----|
| Q1 Goal + Critical Project | 10 | 1.5 | Strategically vital |
| Links to goals | 8 | 1.2 | Advances objectives |
| Active project | 7 | 1.05 | Part of current work |
| Standalone task | 5 | 0.75 | Not linked to strategy |
| Legacy/maintenance | 3 | 0.45 | Keep-lights-on work |

---

## Factor 5: Momentum (10% weight)

**Purpose**: Leverage existing context and energy. Prioritize areas where you have momentum.

### Calculation Logic

```python
def calculate_momentum(task):
    score = 5  # Base score

    # Check recent completion history
    recent_completions = get_recent_completions(days=7)
    similar_tasks = find_similar_tasks(task, recent_completions)

    if len(similar_tasks) > 0:
        score += 2  # You have momentum in this area

    # Check if task was recently unblocked
    if task.recently_unblocked:
        score += 2

    # Penalize long-blocked tasks
    if task.status == "blocked":
        if task.blocked_days > 14:
            score = max(1, score - 4)  # Long blocked
        else:
            score = max(3, score - 2)  # Recently blocked

    # Check if in active project context
    if task.project == get_current_project_context():
        score += 1

    return min(10, score)  # Cap at 10
```

### Scoring Examples

| Scenario | Momentum Score | Contribution to Total | Explanation |
|----------|----------------|----------------------|-------------|
| Similar tasks done recently | 8 | 0.8 | High momentum |
| Recently unblocked | 7 | 0.7 | Can make progress now |
| Active project area | 6 | 0.6 | Context loaded |
| New task | 5 | 0.5 | Neutral |
| Blocked 3 days | 3 | 0.3 | Low momentum |
| Blocked 2+ weeks | 1 | 0.1 | Stalled |

---

## Complete Scoring Examples

### Example 1: High-Priority Bug Fix

**Task**: "Fix OAuth authentication bug blocking QA testing"
- **Priority**: CRITICAL
- **Due**: Today
- **Estimated**: 2 hours
- **Project**: client-a (critical project)
- **Status**: Unblocked yesterday

**Calculations**:
- Urgency: 9 (due today) → 9 × 0.35 = **3.15**
- Impact: 10 (CRITICAL) → 10 × 0.25 = **2.5**
- Effort: 6 (2 hours) → 6 × 0.15 = **0.9**
- Alignment: 7 (critical project) → 7 × 0.15 = **1.05**
- Momentum: 7 (recently unblocked) → 7 × 0.10 = **0.7**

**Total Score**: 3.15 + 2.5 + 0.9 + 1.05 + 0.7 = **8.3** (out of 10) = **83/100**

**Recommendation**: ✅ **Today's Focus** - High urgency + high impact + actionable

---

### Example 2: Strategic Planning Task

**Task**: "Draft Q2 product roadmap"
- **Priority**: HIGH
- **Due**: In 10 days
- **Estimated**: 4 hours
- **Project**: product-strategy
- **Links**: Q1 goals

**Calculations**:
- Urgency: 6 (10 days) → 6 × 0.35 = **2.1**
- Impact: 8 (HIGH) → 8 × 0.25 = **2.0**
- Effort: 4 (4 hours) → 4 × 0.15 = **0.6**
- Alignment: 10 (links to goals + strategic) → 10 × 0.15 = **1.5**
- Momentum: 5 (new task) → 5 × 0.10 = **0.5**

**Total Score**: 2.1 + 2.0 + 0.6 + 1.5 + 0.5 = **6.7** (out of 10) = **67/100**

**Recommendation**: 📋 **This Week** - Important but not urgent, plan ahead

---

### Example 3: Quick Documentation Fix

**Task**: "Update README with new setup steps"
- **Priority**: MEDIUM
- **Due**: None
- **Estimated**: 15 minutes
- **Project**: internal-tools
- **Status**: normal

**Calculations**:
- Urgency: 5 (no due date) → 5 × 0.35 = **1.75**
- Impact: 5 (MEDIUM) → 5 × 0.25 = **1.25**
- Effort: 10 (15 min) → 10 × 0.15 = **1.5**
- Alignment: 5 (standalone) → 5 × 0.15 = **0.75**
- Momentum: 5 (normal) → 5 × 0.10 = **0.5**

**Total Score**: 1.75 + 1.25 + 1.5 + 0.75 + 0.5 = **5.75** (out of 10) = **57.5/100**

**Recommendation**: ✨ **Quick Win** - Below this-week threshold but fast to complete

---

### Example 4: Blocked Integration Task

**Task**: "Integrate with external API"
- **Priority**: HIGH
- **Due**: 5 days
- **Estimated**: 3 hours
- **Project**: client-b
- **Status**: Blocked 2 weeks (waiting on API keys)

**Calculations**:
- Urgency: 7 (5 days) → 7 × 0.35 = **2.45**
- Impact: 8 (HIGH) → 8 × 0.25 = **2.0**
- Effort: 4 (3 hours) → 4 × 0.15 = **0.6**
- Alignment: 7 (client project) → 7 × 0.15 = **1.05**
- Momentum: 1 (blocked 2+ weeks) → 1 × 0.10 = **0.1**

**Total Score**: 2.45 + 2.0 + 0.6 + 1.05 + 0.1 = **6.2** (out of 10) = **62/100**

**Recommendation**: ⏸️ **Blocked** - High score but can't execute. Focus on unblocking.

---

## Tuning the Scoring Algorithm

### Adjusting Weights

If you want to change priorities, adjust the weights:

```python
# Default weights
weights = {
    "urgency": 0.35,    # Time pressure
    "impact": 0.25,     # Business value
    "effort": 0.15,     # Efficiency (inverted)
    "alignment": 0.15,  # Strategic fit
    "momentum": 0.10    # Context/energy
}

# Example: Favor quick wins more
weights_quick_wins = {
    "urgency": 0.30,
    "impact": 0.25,
    "effort": 0.25,     # Increased from 0.15
    "alignment": 0.10,
    "momentum": 0.10
}

# Example: Pure deadline-driven
weights_deadline_focused = {
    "urgency": 0.50,    # Increased from 0.35
    "impact": 0.30,
    "effort": 0.05,
    "alignment": 0.10,
    "momentum": 0.05
}
```

### Interpreting Scores

| Score Range | Priority Tier | Typical Action |
|-------------|---------------|----------------|
| 90-100 | 🔥 **Urgent/Critical** | Drop everything, do now |
| 75-89 | 🎯 **Today's Focus** | Top 3-5 tasks for today |
| 60-74 | 📋 **This Week** | Schedule within next 7 days |
| 45-59 | 🗂️ **Backlog** | Nice to have, low urgency |
| 30-44 | 💤 **Low Priority** | Consider deprioritizing |
| 0-29 | ❌ **Deprioritize** | Remove from active backlog |

### Special Cases

**Quick Wins**: If score >= 50 AND estimated_time <= 30 min, promote to "Today's Focus"

**Blockers**: If task blocks 3+ other tasks, add +10 to final score

**Overdue Tasks**: Always include in "Today's Focus" regardless of score

---

## Integration with Task Metadata

### Expected Task Format

```markdown
## Task Section

- [ ] Task description
  Priority: HIGH
  Due: 2025-01-20
  Estimated: 90
  Links: [[Q1-Goal-1]], [[Client-Project-A]]
  Status: blocked
  Blocked_Since: 2025-01-10
  Blocks: [[Task-2]], [[Task-3]]
```

### Metadata Fields

| Field | Format | Example | Used For |
|-------|--------|---------|----------|
| Priority | CRITICAL/HIGH/MEDIUM/LOW | `Priority: HIGH` | Impact scoring |
| Due | YYYY-MM-DD | `Due: 2025-01-20` | Urgency scoring |
| Estimated | Minutes (integer) | `Estimated: 90` | Effort scoring |
| Links | [[WikiLinks]] | `Links: [[Q1-Goal]]` | Alignment scoring |
| Status | blocked/in-progress/pending | `Status: blocked` | Momentum scoring |
| Blocked_Since | YYYY-MM-DD | `Blocked_Since: 2025-01-10` | Momentum penalty |
| Blocks | [[WikiLinks]] | `Blocks: [[Task-X]]` | Alignment bonus |

---

**Version**: 1.0.0
**Last Updated**: 2025-01-18
**Algorithm Tuned For**: Individual contributor managing 20-50 tasks across 3-7 active projects
