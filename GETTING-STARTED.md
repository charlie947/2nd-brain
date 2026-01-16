# Getting Started with Your AI Second Brain

Welcome! This guide walks you through setting up your brain.

---

## Before You Start: Preparation (30 min)

Review the [Pre-Session Checklist](docs/pre-session-checklist.md) before your setup session.

### Technical Requirements

| Tool | Install | Verify |
|------|---------|--------|
| **Node.js** (v18+) | `brew install node` | `node --version` |
| **Git** | Pre-installed on Mac | `git --version` |
| **GitHub CLI** | `brew install gh` | `gh auth status` |
| **Claude Code** | `npm install -g @anthropic-ai/claude-code` | `claude --version` |
| **Claude Pro/Max** | [claude.ai/upgrade](https://claude.ai) | Active subscription |

### Content to Gather

The more writing samples you provide, the better the brain captures your voice:

| Quality Level | What to Gather |
|---------------|----------------|
| **Ideal** | 15-20 LinkedIn posts |
| **Good** | 10 posts + 1-2 blog posts |
| **Minimum** | 5 posts + emails/proposals |
| **Fallback** | 3 writing samples (200+ words each) |

---

## Step 1: Open in Claude Code

```bash
cd your-second-brain
claude
```

---

## Step 2: Run Guided Setup (45 min)

```
/setup
```

This launches an **interview-based onboarding**. No forms to fill out - I'll ask questions, you talk, and your brain gets populated automatically.

### The 7 Phases

| Phase | Duration | What Happens |
|-------|----------|--------------|
| **Scope** | 2 min | Business, Personal, or Hybrid |
| **Identity** | 5 min | Who you are, what drains you |
| **Foundation** | 10 min | Why, Vision, Mission, Values |
| **Products** | 10 min | Services, ICP, Differentiation |
| **Voice** | 10 min | Analyze your writing samples |
| **First Win** | 5 min | Demo the brain with YOUR context |
| **Gaps** | 3 min | Todo list for remaining setup |

**Can pause anytime!** Progress is saved automatically. Run `/setup` again to resume.

---

## Step 3: Get Your First Win

After setup, try:

```
/ask "Help me write a follow-up email to a prospect"
```

Congratulations! Your brain is working.

---

## Step 4: Learn the 4-Command Workflow

Your brain gets smarter through this systematic approach:

```
/plan [task]  →  /work [plan]  →  /review [output]  →  /learn
    ↓               ↓                  ↓                 ↓
 Research       Execute with       6-agent           Extract
 + Plan         todo tracking      quality check     patterns
```

### Example First Project

```
/plan "Create a LinkedIn post about [your expertise topic]"
```

Then:
```
/work experiences/content/[project-name]/plan.md
```

Then:
```
/review experiences/content/[project-name]/output.md
```

Then:
```
/learn
```

Each cycle extracts patterns and makes future work better.

---

## What to Do Next

### Quick Tasks
Use `/ask` for instant help:
- "Help me draft an email to..."
- "What should I say when..."
- "Create a quick outline for..."

### Bigger Projects
Use the full workflow:
1. `/plan [describe the task]`
2. `/work [plan-file.md]`
3. `/review [output-file.md]`
4. `/learn`

### Check Your Progress
- `/grow` - See brain health metrics
- `/recall [topic]` - Search your memory

---

## Tips for Success

1. **Always complete the cycle** - `/plan` → `/work` → `/review` → `/learn`
2. **Run /learn after every project** - This is how patterns accumulate
3. **Feed your examples** - Add your best content to `memory/examples/`
4. **Check /grow weekly** - Watch your brain compound

---

## Common Commands

| What You Want | Command |
|---------------|---------|
| Quick help | `/ask [question]` |
| Plan a project | `/plan [task]` |
| Execute a plan | `/work [plan.md]` |
| Quality check | `/review [output.md]` |
| Extract learnings | `/learn` |
| Search memory | `/recall [topic]` |
| See progress | `/grow` |
| Write for Substack | `/substack [topic]` |
| Write for LinkedIn | `/linkedin [file]` |

---

## Need Help?

- Run `/ask [your question]` for instant help
- Check `CLAUDE.md` for full documentation
- Review the Troubleshooting section in CLAUDE.md

---

Happy building! Your brain gets smarter with every project.
