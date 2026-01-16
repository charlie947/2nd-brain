# Pre-Session Checklist: AI Second Brain Setup

> Complete this before your setup session to make the most of our time together.
> Total prep time: ~30 minutes

---

## Part 1: Technical Setup (15 minutes)

### Required Tools

| Tool | What It Is | How to Install | Verify |
|------|------------|----------------|--------|
| **Node.js** (v18+) | JavaScript runtime | `brew install node` or [nodejs.org](https://nodejs.org) | `node --version` |
| **Git** | Version control | Usually pre-installed on Mac | `git --version` |
| **GitHub Account** | Hosts your brain | [github.com](https://github.com) | Can log in |
| **GitHub CLI** | Create repos from terminal | `brew install gh` | `gh auth status` |
| **Claude Code** | AI interface | `npm install -g @anthropic-ai/claude-code` | `claude --version` |
| **Claude Pro/Max** | Powers the AI | [claude.ai/upgrade](https://claude.ai) | Active subscription |

### Step-by-Step Installation

**Mac users (with Homebrew):**
```bash
# 1. Install Node.js
brew install node

# 2. Install GitHub CLI
brew install gh

# 3. Log into GitHub
gh auth login
# Follow the prompts - choose HTTPS and browser authentication

# 4. Install Claude Code
npm install -g @anthropic-ai/claude-code

# 5. Verify everything works
node --version      # Should show v18 or higher
git --version       # Should show any version
gh auth status      # Should show "Logged in"
claude --version    # Should show version number
```

**Don't have Homebrew?**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Claude Subscription
- Go to [claude.ai](https://claude.ai)
- Click "Upgrade" or go to Settings → Subscription
- Choose **Pro** ($20/month) or **Max** ($100/month)
- Either works with Claude Code

---

## Part 2: Content to Gather (15 minutes)

### For Voice Capture (Most Important)

The more writing samples you provide, the better the brain captures your voice.

| Quality Level | What to Gather | Result |
|---------------|----------------|--------|
| **Ideal** | 15-20 LinkedIn posts | Full voice profile |
| **Good** | 10 posts + 1-2 blog posts | Solid patterns |
| **Minimum** | 5 posts + emails/proposals | Basic tone |
| **Fallback** | 3 writing samples (200+ words each) | Rough approximation |

**How to export LinkedIn posts:**
1. Go to your LinkedIn profile
2. Click "Activity" → "Posts"
3. Copy/paste your recent posts into a text file
4. Or: Use a browser extension like "LinkedIn Post Exporter"

**Alternative sources (if you don't have many posts):**
- Blog articles you've written
- Email newsletters
- Client proposals (remove confidential info)
- Substack posts
- Even voice memo transcripts work

### For Brand Consistency (If Available)

Gather these if you have them:
- [ ] Brand guidelines / style guide PDF
- [ ] Logo files
- [ ] Color palette (hex codes or descriptions)
- [ ] Typography/font information
- [ ] Existing "About" page copy
- [ ] Tagline or positioning statement

**Don't have formal brand docs?** No problem - we'll create them together.

---

## Part 3: Think About These (During Prep)

You don't need to write these down - just reflect on them. We'll explore together.

### Your Business Foundation

| Question | What to Think About |
|----------|---------------------|
| **The Why** | Why did you really start this? What problem bothers you? |
| **The Vision** | If everything worked perfectly, what's different in 5 years? |
| **The Mission** | How do you actually deliver on that vision day-to-day? |
| **Core Values** | What 3-5 principles would you never compromise? |

### Your Offerings

| Question | What to Think About |
|----------|---------------------|
| **Services** | What do you offer? What's your flagship? |
| **Best Client** | Who was your best client ever? What made them perfect? |
| **Differentiation** | What makes your approach different from competitors? |

### Your Use Cases

| Question | What to Think About |
|----------|---------------------|
| **Time Drains** | What task do you repeat weekly that drains you? |
| **Lost Ideas** | What do you wish you never forgot? |
| **Goals** | If this brain saved you 5 hours/week, where would it come from? |

---

## Part 4: Session Day Checklist

**Right before we start:**

```bash
# Quick verification (run all of these)
node --version      # v18+
git --version       # any version
gh auth status      # shows "Logged in"
claude --version    # shows version
```

**Have ready:**
- [ ] Your writing samples (text file or browser tabs)
- [ ] Brand docs (if you have them)
- [ ] 45-60 minutes of uninterrupted time
- [ ] A quiet place where you can think

---

## What to Expect

### During Setup (~45 minutes)

The onboarding is **interview-based** - I'll ask questions, you talk, the brain gets populated.

| Phase | Duration | What Happens |
|-------|----------|--------------|
| Scope Setting | 2 min | Business, Personal, or Hybrid? |
| Identity & Discovery | 5 min | Who you are, what drains you |
| Business Foundation | 10 min | Why, Vision, Mission, Values |
| Products & Positioning | 10 min | Services, ICP, Differentiation |
| Voice Capture | 10 min | Analyze your writing samples |
| First Win | 5 min | See the brain work with YOUR context |
| Gap Review | 3 min | What's missing → todo list |

### After Setup: The 4-Command Workflow

Your brain works best with this systematic approach:

```
/plan [task]  →  /work [plan]  →  /review [output]  →  /learn
    ↓               ↓                  ↓                 ↓
 Research       Execute with       6-agent           Extract
 + Plan         todo tracking      quality check     patterns
```

| Command | Purpose |
|---------|---------|
| `/ask [question]` | Quick help with any task |
| `/plan [task]` | Create systematic execution plan |
| `/work [plan.md]` | Execute with todo tracking |
| `/review [output]` | 6-agent quality check |
| `/learn` | Extract patterns from work |
| `/recall [topic]` | Search your captured knowledge |
| `/grow` | Check brain health metrics |

---

## Questions?

If you get stuck on technical setup, reach out before the session and we'll troubleshoot.

See you soon!

---

**Checklist Version**: 1.0
**Last Updated**: 2025-12-14
