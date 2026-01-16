# PMO Prioritizer System

Complete task prioritization system with skill, command, and conversational agent.

## Architecture Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                         USER INTERFACES                          │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  COMMAND: /prioritize-backlog                                   │
│  Quick, non-interactive prioritization                          │
│  → Use when: "Just show me the prioritized list"               │
│                                                                  │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  AGENT: @agent-pmo-advisor                                      │
│  Conversational coaching and decision support                   │
│  → Use when: "Help me decide what to work on"                  │
│                                                                  │
├─────────────────────────────────────────────────────────────────┤
│                      KNOWLEDGE LAYER                             │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  SKILL: pmo-prioritizer                                         │
│  Multi-factor scoring algorithm (passive knowledge)             │
│  → Used by: Commands and agents as reference                   │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

## Components

### 1. Skill (Knowledge Module)
**Location**: `.claude/skills/pmo-prioritizer/`

**Files**:
- `SKILL.md` - Core algorithm and workflow (150 lines)
- `references/scoring-reference.md` - Detailed calculations and examples
- `README.md` - This file

**What it does**: Defines the multi-factor scoring algorithm
- Urgency (35%): Due date proximity
- Impact (25%): Priority level
- Effort (15%): Time estimate (favors quick wins)
- Alignment (15%): Links to goals/projects
- Momentum (10%): Recent activity, blocked status

**Score ranges**:
- 90-100: Critical (drop everything)
- 75-89: Today's Focus
- 60-74: This Week
- 40-59: Backlog (high-medium)
- <40: Backlog (low priority)

### 2. Command (Direct Execution)
**Location**: `.claude/commands/prioritize-backlog.md`

**Usage**:
```bash
/prioritize-backlog
```

**What it does**:
1. Loads pmo-prioritizer skill (algorithm knowledge)
2. Reads all project tasks
3. Calculates scores using skill algorithm
4. Outputs prioritized queues:
   - Today's Focus (≥75)
   - This Week (≥60)
   - Backlog (<60)
5. Identifies: Quick wins, blocked tasks, overdue items

**Output**: Formatted markdown with scores, recommendations, insights

**Use when**: You want quick, data-driven prioritization without conversation

### 3. Agent (Conversational Coach)
**Location**: `.claude/agents/pmo-advisor.md`

**Usage**:
```bash
@agent-pmo-advisor
```

**What it does**:
1. Loads pmo-prioritizer skill (same algorithm)
2. Analyzes your backlog
3. **Provides conversational coaching**:
   - Explains why tasks score high/low
   - Helps you choose between options
   - Considers human factors (energy, context, constraints)
   - Answers "what if" questions
   - Breaks down overwhelm
4. Creates concrete action plan with your input

**Use when**: You need help deciding what to do, not just seeing the data

## When to Use Each

### Use `/prioritize-backlog` (Command) when:
- ✅ You want a quick overview
- ✅ You're comfortable making decisions yourself
- ✅ You just need to see the scored list
- ✅ You're doing weekly planning

**Example**:
```
You: /prioritize-backlog
Claude: [Outputs scored list with Today's Focus, This Week, Backlog]
You: [Reviews and decides what to do]
```

### Use `@agent-pmo-advisor` (Agent) when:
- ✅ You're not sure what to prioritize
- ✅ You want help understanding trade-offs
- ✅ You have constraints (limited time, low energy, conflicts)
- ✅ You need coaching on execution strategy
- ✅ You want to discuss the "why" behind priorities

**Example**:
```
You: @agent-pmo-advisor What should I work on today?

PMO Advisor: Let me analyze your backlog...
[Runs scoring internally]

I see 5 high-priority tasks, but you only have 3 hours today.

Your top 3 options:
1. Fix OAuth bug (score: 83) - Blocks QA team
2. Review spec (score: 79) - Due tomorrow
3. Update deck (score: 76) - Meeting at 3pm

These total 4.25 hours, so we need to drop one.

The deck is quick but the spec has strategic value.
My recommendation: Do #1 and #2 today, reschedule deck.

What do you think?

You: Why not do the quick deck update?

PMO Advisor: Good question! The spec has higher strategic alignment...
[Continues coaching conversation]
```

## Integration Patterns

### Pattern 1: Command → Agent
Run command first, then get coaching on results:

```bash
# Step 1: Get the data
/prioritize-backlog

# Step 2: Get coaching on what to do with it
@agent-pmo-advisor
"I just ran /prioritize-backlog. Help me decide between the top 3 tasks."
```

### Pattern 2: Agent → Command
Agent can run prioritization internally:

```bash
@agent-pmo-advisor
"What should I work on today?"

# Agent internally:
# 1. Loads pmo-prioritizer skill
# 2. Executes scoring workflow
# 3. Presents results conversationally
```

### Pattern 3: Agent + Daily Coach
Combine prioritization with calendar scheduling:

```bash
@agent-pmo-advisor + @agent-daily-accountability-coach

PMO Advisor: "Your top 3 tasks total 4.25 hours..."
Daily Coach: "I'll check your calendar and schedule them..."
```

## Customization

### Adjusting Scoring Weights

Edit: `.claude/skills/pmo-prioritizer/references/scoring-reference.md`

Default weights:
```python
weights = {
    "urgency": 0.35,    # 35% - Due date proximity
    "impact": 0.25,     # 25% - Priority level
    "effort": 0.15,     # 15% - Time estimate
    "alignment": 0.15,  # 15% - Goal/project links
    "momentum": 0.10    # 10% - Recent activity
}
```

Change these to match your prioritization philosophy.

### Task Metadata Format

For best scoring results, format tasks with metadata:

```markdown
- [ ] Fix OAuth authentication bug
  - Priority: CRITICAL
  - Due: 2025-11-18
  - Estimated: 120
  - Status: UNBLOCKED
  - Links: [[Q1-Product-Goals]]
```

## Troubleshooting

### "No tasks found"
- Check `.claude/projects/INDEX.md` exists
- Verify project task files: `.claude/projects/*/tasks.md`
- Ensure tasks use markdown checklist format: `- [ ] Task`

### "Unexpected scores"
- Review task metadata (due dates, priorities, estimates)
- Check scoring reference for calculation details
- Ensure due dates are in YYYY-MM-DD format
- Verify priorities: CRITICAL, HIGH, MEDIUM, LOW

### "Agent not responding"
- Make sure you're using `@agent-pmo-advisor` (not `/pmo-advisor`)
- Agent may take 10-20 seconds to load skill and analyze backlog
- Check that agent file exists: `.claude/agents/pmo-advisor.md`

## Examples

### Example 1: Quick Prioritization
```bash
/prioritize-backlog

# Output:
📊 Prioritized Backlog - November 18, 2025

Today's Focus (Score ≥75):
1. Fix OAuth bug (Score: 83) - 2 hrs - CRITICAL
2. Review spec (Score: 79) - 1.5 hrs - HIGH
3. Update deck (Score: 76) - 45 min - HIGH

This Week (Score ≥60):
4. Draft article (Score: 71) - 3 hrs - MEDIUM
[...]

Quick Wins Available (5 tasks, 2.5 hours):
- Update README (15 min, score: 58)
[...]
```

### Example 2: Conversational Coaching
```bash
@agent-pmo-advisor

User: "What should I work on? I'm overwhelmed."

PMO Advisor: "Let me help you cut through the noise.

I see 15 tasks in your backlog. Let's focus on just the next hour.

Your top quick win: Update README (15 minutes, low stress)

Want to start there and build momentum?"

User: "Yes"

PMO Advisor: "Perfect. Spend the next 15 minutes on README.
When done, ping me and we'll decide the next move.

No pressure beyond 15 minutes. Just one small win."
```

### Example 3: Decision Support
```bash
@agent-pmo-advisor

User: "Should I do the OAuth bug (2 hours) or 3 quick wins (1.5 hours)?"

PMO Advisor: "Great question! Let's compare:

Option 1 (OAuth bug):
✅ Highest priority (score: 83)
✅ Unblocks QA team
❌ 2 hours with no other completions

Option 2 (Quick wins):
✅ 3 completed tasks (feels productive)
✅ Lower cognitive load
❌ OAuth bug still blocking team

My recommendation: Do 1 quick win (15 min) then OAuth bug (2 hrs).

Why? You get momentum + you finish the critical work.

Total: 2.25 hours vs 2 hours (small difference)
But psychologically, starting with a win makes the hard task easier.

Sound good?"
```

## Next Steps

1. **Test the command**: Run `/prioritize-backlog` to see your scored backlog
2. **Try the agent**: Invoke `@agent-pmo-advisor` and ask "What should I work on?"
3. **Refine metadata**: Add due dates, priorities, estimates to your tasks
4. **Customize weights**: Adjust scoring algorithm if needed

---

**Version**: 1.0.0
**Created**: November 18, 2025
**Components**: Skill + Command + Agent
**Maintained by**: [Your Name]
