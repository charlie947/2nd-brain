---
name: ask
description: Quick help with any task using your brain's knowledge
---

# Ask Command

Get instant help powered by your brain's memory. Works even before setup.

## What You Asked

$ARGUMENTS

## How I'll Help

### Step 1: Check Your Brain

**Searching memory for relevant context...**

```
Read memory/company/products.md
Read memory/company/differentiators.md
Read memory/customers/ideal-customer-profile.md
Read memory/patterns/INDEX.md
```

### Step 2: Find Related Patterns

**Looking for patterns that apply...**

```
Grep "$ARGUMENTS" memory/patterns/ -i
```

### Step 3: Check Past Experiences

**Finding similar past work...**

```
Grep "$ARGUMENTS" experiences/ -i
```

### Step 4: For Content Requests, Check Idea Status

**If request involves writing content (Substack, LinkedIn, etc.):**

```
Read memory/knowledge-repo/ideas/INDEX.md
# For each idea with matching application tag, check the idea file:
# - status: used + used_in contains this content type → SKIP
# - status: used + used_in does NOT contain this type → AVAILABLE (repurpose)
# - status: raw/developing → AVAILABLE (fresh)
#
# Present only available ideas, clearly marking fresh vs repurpose
```

---

## Generating Response

Based on:
- Your business context (from memory/)
- Relevant patterns (if found)
- Past similar work (if found)

I'll now help you with your request, incorporating everything your brain knows.

---

## After I Help

**Want even better results?**

If you haven't set up your brain yet:
```bash
/setup   # 10 min to personalize (makes future /ask much smarter)
```

**For complex tasks:**
```bash
/plan [task]   # Break into systematic steps
```

**Liked the result?**
```bash
/learn   # Extract patterns for next time
```

---

## Tips for /ask

**Good questions:**
- "Help me write a follow-up email to a prospect"
- "Draft a response to this objection: [objection]"
- "Summarize the key points for [topic]"
- "What's our positioning for [customer type]?"

**For bigger tasks, use /plan instead:**
- "Create a complete proposal" → `/plan Create proposal for X`
- "Build a presentation" → `/plan Build presentation about Y`
- "Research a competitor" → `/plan Research competitor Z`

---

**Time to value:** ~30 seconds
**Brain engagement:** Automatic (reads your memory)
