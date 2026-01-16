---
name: pmo-prioritizer
description: Intelligent backlog prioritization using multi-factor scoring algorithm. Analyzes tasks across all projects and generates prioritized work queues based on urgency, impact, effort, strategic alignment, and momentum.
allowed-tools: "Read, Grep, TodoWrite"
when_to_use: "When user wants to prioritize tasks across multiple projects, create daily focus queues, or analyze backlog priorities"
version: 1.0.0
---

# PMO Prioritizer Skill

**Purpose**: Automatically prioritize your backlog across all projects using a data-driven scoring algorithm.

## What This Does

Reads all tasks from `.claude/projects/*/tasks.md` files, applies multi-factor priority scoring, and generates:
- **Today's Focus Queue**: Top 3-5 tasks you should work on today
- **This Week's Priorities**: Top 10 tasks for the week
- **Backlog Rankings**: All tasks sorted by priority score
- **Insights**: Why tasks scored high/low, blocked items, quick wins

## Priority Scoring Algorithm

**Formula**:
```
Priority_Score = (Urgency × 35) + (Impact × 25) + (Effort × 15) + (Alignment × 15) + (Momentum × 10)
```

Each factor scores 0-10. Total score range: 0-100.

### Factor Definitions

**1. Urgency (Weight: 35%)**
- Overdue tasks: 10
- Due today: 9
- Due in 1-3 days: 8
- Due in 4-7 days: 7
- Due in 2 weeks: 6
- No due date: 5
- Due beyond 2 weeks: 3-4

**2. Impact (Weight: 25%)**
- CRITICAL priority: 10
- HIGH priority: 8
- MEDIUM priority: 5
- LOW priority: 3
- No priority set: 5

**3. Effort (Weight: 15%, inverted)**
- Quick wins (<30 min): 10
- 30-60 min: 8
- 1-2 hours: 6
- 2-4 hours: 4
- 4+ hours: 2
- No estimate: 5

**4. Strategic Alignment (Weight: 15%)**
- Links to quarterly goals: +3
- Links to active projects: +2
- Part of critical path: +3
- Standalone task: 5

**5. Momentum (Weight: 10%)**
- Similar tasks completed recently: +2
- Task unblocked recently: +2
- Long-blocked task: -4
- New task in active area: +1
- Default: 5

## Usage Workflow

### Step 1: Read All Project Tasks
```bash
# Find all projects
projects=$(grep -E "^- \[" .claude/projects/INDEX.md | grep -v archived)

# Read tasks from each project
for project in $projects; do
  Read(".claude/projects/$project/tasks.md")
done
```

### Step 2: Parse Task Metadata
Extract from each task:
- Description
- Priority (CRITICAL, HIGH, MEDIUM, LOW)
- Due date (YYYY-MM-DD format)
- Estimated time (minutes)
- Status (blocked, in-progress, pending)
- Project context
- Links to goals

### Step 3: Calculate Scores
For each task, apply the scoring formula:

```python
def calculate_priority_score(task):
    urgency = calculate_urgency(task.due_date)
    impact = calculate_impact(task.priority)
    effort = calculate_effort(task.estimated_time)
    alignment = calculate_alignment(task.links, task.project)
    momentum = calculate_momentum(task.status, task.project)

    score = (urgency * 0.35) + (impact * 0.25) + (effort * 0.15) +
            (alignment * 0.15) + (momentum * 0.10)

    return round(score, 1)
```

### Step 4: Generate Prioritized Queues

**Today's Focus (Score >= 75)**:
- Top 3-5 highest scoring tasks
- Must be actionable (not blocked)
- Balanced for time (fit in work day)

**This Week (Score >= 60)**:
- Top 10-15 tasks
- Mix of urgent and strategic work
- Include some quick wins

**Backlog (Score < 60)**:
- All remaining tasks sorted by score
- Identify blocked items
- Flag stale tasks (no activity in 30 days)

### Step 5: Present Results

```markdown
# Prioritized Backlog - [Date]

## 🎯 Today's Focus (Top 3)

1. **[Project]** Task description (Score: 87)
   - Why: Overdue + High Impact + Quick Win
   - Est: 45 min | Due: Today

2. **[Project]** Task description (Score: 82)
   - Why: Due Tomorrow + Critical Priority
   - Est: 2 hrs | Due: [Date]

## 📋 This Week's Priorities (10 tasks)

[Sorted list with scores and reasons]

## 🔄 Backlog (remaining tasks)

[Grouped by score ranges: 50-59, 40-49, etc.]

## 📊 Insights

- **Blocked**: 3 tasks waiting on external dependencies
- **Quick Wins**: 5 tasks under 30 minutes available
- **Stale**: 2 tasks no activity in 30+ days
- **Overdue**: 1 task needs immediate attention
```

## Advanced Features

### Time-Box Optimization
If provided with available hours today:
```python
def optimize_today_queue(tasks, available_hours):
    sorted_tasks = sort_by_score(tasks)
    selected = []
    time_used = 0

    for task in sorted_tasks:
        if time_used + task.estimated_minutes/60 <= available_hours:
            selected.append(task)
            time_used += task.estimated_minutes/60

    return selected
```

### Project Balancing
Ensure today's queue includes tasks from multiple projects:
```python
def balance_by_project(tasks, max_per_project=2):
    project_counts = {}
    balanced = []

    for task in tasks:
        count = project_counts.get(task.project, 0)
        if count < max_per_project:
            balanced.append(task)
            project_counts[task.project] = count + 1

    return balanced
```

## Integration Points

### With /overview Command
- `/overview` shows categorized tasks (URGENT, IMPORTANT, etc.)
- `pmo-prioritizer` shows scored priorities with reasons
- Use both: `/overview` for quick scan, prioritizer for deep analysis

### With daily-accountability-coach
- Coach reads today's goals and calendar availability
- Prioritizer provides scientifically ranked task queue
- Coach creates time-blocked schedule from prioritized tasks

### With TodoWrite
- Prioritizer recommends task order
- User works through tasks using TodoWrite tracking
- Completion patterns feed back into momentum scoring

## Best Practices

1. **Run daily**: Priorities shift as due dates approach
2. **Review scores**: Understand why tasks rank high/low
3. **Adjust weights**: Tune the scoring formula to your preferences
4. **Update metadata**: Keep due dates, priorities, estimates current
5. **Clear blockers**: Focus on unblocking high-scoring blocked tasks

## Customization

To adjust scoring weights, modify the formula in the scoring reference.

For detailed factor calculations and tuning guidance:
```bash
Read {baseDir}/references/scoring-reference.md
```

## Related Skills
- `/overview` - Daily task overview across projects
- `@agent-daily-accountability-coach` - Calendar-integrated task planning
- `/add-task` - Add new tasks with proper metadata

---
**Version**: 1.0.0
**Last Updated**: 2025-01-18
**Maintainer**: [Your Name]
