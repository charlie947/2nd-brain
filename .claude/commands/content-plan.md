---
name: content-plan
description: Start weekly content planning - pick topic, create status file, align with products
---

# Weekly Content Planning

Start or resume your weekly content creation workflow.

## Your Request

$ARGUMENTS

---

## Step 1: Check for Existing Week

**Looking for incomplete content weeks...**

```
Check content-calendar/ for any week-YYYY-MM-DD folders
Read status.md in each to find incomplete weeks
```

**If incomplete week found:**
```
"You have an incomplete week: [week folder]

Current progress:
- Topic Selected: [status]
- Substack: [status]
- LinkedIn: [status]
- Visuals: [status]

Resume this week? Or start fresh?"
```

**If no incomplete week or starting fresh:**
Continue to Step 2.

---

## Step 2: Load Context

**Reading active products for alignment...**

```
Read memory/company/products/active-products.md
```

**Reading available ideas...**

```
Read memory/knowledge-repo/ideas/INDEX.md
# Filter for ideas tagged with "content" application
# Check status: raw or developing = available
# Skip: status = used AND used_in contains "substack"
```

---

## Step 3: Recommend Topics

Based on:
1. Available ideas from knowledge repo
2. Active product promotions this week
3. Recent content (avoid repetition)

**Present 2-3 options:**

```
## Topic Recommendations

### Option 1: [Topic from Ideas]
- **Source**: memory/knowledge-repo/ideas/[filename].md
- **Product Alignment**: [Product] - [why this aligns]
- **Angle**: [specific angle for Substack]

### Option 2: [Topic based on Product Priority]
- **Source**: New topic (no existing idea)
- **Product Alignment**: [Product] - [why this is timely]
- **Angle**: [specific angle for Substack]

### Option 3: [Alternative]
- ...

Which topic would you like to develop? Or propose your own.
```

---

## Step 4: Create Week Structure

After topic selection:

**Determine week dates:**
```
# Find next Monday
# Week folder: week-YYYY-MM-DD (using Monday's date)
```

**Create folder structure:**
```
content-calendar/week-YYYY-MM-DD/
├── status.md
└── visuals/
```

**Initialize status.md from template:**
```
Read content-calendar/_templates/status-template.md
Replace placeholders:
- [WEEK_DATES] → e.g., "Dec 9-13, 2025"
- [DATE] → today's date
- [TOPIC] → selected topic
- [TITLE] → working title
- [PRODUCT] → aligned product
- [WHY] → product alignment reason
- [PATH_TO_IDEA] → idea file if applicable
```

**Update status:**
- Topic Selected: ✅ complete
- Updated: [today]

---

## Step 5: Provide Next Steps

```
## Week Initialized

**Folder**: content-calendar/week-YYYY-MM-DD/
**Topic**: [selected topic]
**Product Focus**: [aligned product]

### Progress
| Stage | Status |
|-------|--------|
| Topic Selected | ✅ |
| Substack | ⬜ Next |
| LinkedIn | ⬜ |
| Visuals | ⬜ |

### Next Step

Ready to write the Substack? Run:

/substack [topic description or angle]

Or if you have a specific idea file:

/substack memory/knowledge-repo/ideas/[filename].md
```

---

## Resume Behavior

When resuming an incomplete week, determine the next action:

| Current State | Next Action |
|---------------|-------------|
| Topic selected, no Substack | `/substack [topic]` |
| Substack draft exists | Review and approve, or `/substack` again |
| Substack approved, no LinkedIn | `/linkedin` (auto-detects Substack) |
| LinkedIn exists | Review and approve |
| LinkedIn approved, no visuals | `/create-visuals` |
| Visuals exist | Mark week as ready |

**Show the appropriate next step based on status.md**

---

## Edge Cases

### No Ideas Available
```
"No unused ideas found in knowledge repo.

Options:
1. Create content based on active product priority
2. Capture a new idea first with /add-idea
3. Propose a topic directly

What would you like to do?"
```

### Multiple Incomplete Weeks
```
"Found multiple incomplete weeks:
- week-2024-12-02: Substack done, LinkedIn pending
- week-2024-12-09: Topic selected only

Which would you like to work on?"
```

---

## Product Alignment Reference

From memory/company/products/active-products.md:

| Content Theme | Best Product |
|---------------|--------------|
| Experimentation, playing | Sprint |
| Pace, stuck, slow | Executive Sparring |
| Culture over strategy | Both |
| Use case discovery | Sprint |
| Leadership decisions | Executive Sparring |

---

**Generated with:** Content Plan Command v1.0.0
