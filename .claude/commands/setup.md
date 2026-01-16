---
name: setup
description: Guided setup to personalize your AI Second Brain (~45 min, can pause and resume)
---

# Setup Command

Set up your AI Second Brain through a guided conversation.

---

## What This Does

Launches the **brain-onboarding** agent which:
1. Checks for existing progress (resumes if found)
2. Guides you through 7 phases via interview
3. Writes structured content to your brain
4. Creates a todo list for gaps to fill later

---

## Prerequisites

Before running this command, ensure you have:
- [ ] Node.js installed (`node --version`)
- [ ] Git installed (`git --version`)
- [ ] GitHub CLI authenticated (`gh auth status`)
- [ ] Claude Code installed (`claude --version`)
- [ ] Active Claude Pro or Max subscription

**Optional but recommended:**
- 15-20 LinkedIn posts ready to paste (for voice capture)
- Brand guidelines document (if available)

See `docs/pre-session-checklist.md` for detailed preparation guide.

---

## The 7 Phases

| Phase | Duration | What Happens |
|-------|----------|--------------|
| 0. Scope | 2 min | Business, Personal, or Hybrid |
| 1. Identity | 5 min | Who you are, what drains you |
| 2. Foundation | 10 min | Why, Vision, Mission, Values |
| 3. Products | 10 min | Services, ICP, Differentiation |
| 4. Voice | 10 min | Analyze your writing samples |
| 5. Branding | 5 min | Colors, fonts, visual identity |
| 6. First Win | 5 min | Demo the brain with YOUR context |
| 7. Gaps | 3 min | Todo list for remaining setup |

**Total time**: ~45 minutes (can pause and resume anytime)

---

## Start Onboarding

Use the Task tool to launch the brain-onboarding agent:

```
Launch brain-onboarding agent to guide user through Second Brain setup.
Check for existing progress in brain-health/onboarding-progress.md first.
If progress exists and status is IN_PROGRESS, resume from last phase.
If no progress or status is COMPLETED, start fresh from Phase 0.
```

---

## After Onboarding: The 4-Command Workflow

Your brain works best with this systematic approach:

```
/plan [task]  →  /work [plan]  →  /review [output]  →  /learn
    ↓               ↓                  ↓                 ↓
 Research       Execute with       6-agent           Extract
 + Plan         todo tracking      quality check     patterns
```

### Command Reference

| Command | Purpose | When to Use |
|---------|---------|-------------|
| `/ask [question]` | Quick help | Simple questions, fast tasks |
| `/plan [task]` | Create execution plan | Before any non-trivial work |
| `/work [plan.md]` | Execute with tracking | After planning, systematic execution |
| `/review [output]` | Quality check | After completing work |
| `/learn` | Extract patterns | After each project |
| `/recall [topic]` | Search knowledge | Find past patterns & context |
| `/grow` | Brain health metrics | Weekly check-in |

### The Workflow in Action

1. **Plan First**: `/plan Create a proposal for Client X`
   - Creates systematic execution plan
   - Identifies research needed
   - Breaks into actionable steps

2. **Execute with Tracking**: `/work experiences/clients/client-x/plan.md`
   - Follows the plan step-by-step
   - Uses todo tracking for progress
   - Catches issues early

3. **Quality Check**: `/review experiences/clients/client-x/proposal.md`
   - 6-agent parallel review
   - Catches what you miss
   - Ensures brand consistency

4. **Grow the Brain**: `/learn`
   - Extracts patterns from the work
   - Feeds back into memory
   - Makes next project faster

---

## Troubleshooting

**"I need to pause"** - Just say so. Progress is saved automatically to `brain-health/onboarding-progress.md`.

**"I don't have LinkedIn posts"** - Share any writing: emails, proposals, even transcripts. Minimum 3 samples of 200+ words each.

**"I'm not sure how to answer"** - Say what comes to mind first. We can refine together.

**"I want to skip this part"** - Fine! It goes on your todo list for later.

**"I already started but want to restart"** - Delete `brain-health/onboarding-progress.md` and run `/setup` again.

---

## Skill Unlock Progress

After setup, you'll have completed Level 1:

### Level 1: Foundation ✅
- [x] Complete `/setup` configuration
- [x] Fill `memory/company/` with business foundation
- [x] Capture your voice (if content creator)

### Level 2: Core Workflow (Next)
- [ ] Complete first `/plan → /work → /review → /learn` cycle
- [ ] See first pattern extracted to memory
- [ ] Achieve 8+ quality score on /review

---

**Command Version**: 2.0
**Last Updated**: 2025-12-14
