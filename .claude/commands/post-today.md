---
name: post-today
description: Show today's LinkedIn post with all details and visual assets
---

# What's Our Post Today?

Get today's LinkedIn post with copy, visual, timing, and CTA.

## Your Request

$ARGUMENTS

---

## Step 1: Check for Active Week

**Looking for ready content week...**

```
Check content-calendar/ for current week folder (week-YYYY-MM-DD)
Read status.md to verify:
- Week Ready: ✅ (required)
- Get linkedin-posts.md path
- Get visuals folder path
```

**If no ready week:**
```
"No content is ready for this week.

To prepare content, run:
1. /content-plan - Start weekly planning
2. /substack - Write the newsletter
3. /linkedin - Generate 5 posts
4. /create-visuals - Create visual assets

Current week status: [show status if exists]"
```

---

## Step 2: Check Interaction Status

**Reading status.md for last interaction...**

```
Get: last_interaction_date from status.md
Compare to: today's date
```

**If first interaction today:**

Ask about yesterday's post status:
```
"Good morning! Before we get to today's post:

Did you post yesterday's content?

[Yes] [No] [Skipped]"
```

**Based on response:**
- Yes → Update status.md: Yesterday's post = ✅ Posted
- No → Keep status as is, continue
- Skipped → Update status.md: Yesterday's post = ⏭ Skipped

**Then update:**
```
last_interaction_date: [today's date]
```

**If NOT first interaction today:**
Skip the status check, go directly to showing today's post.

---

## Step 3: Determine Today's Post

**Map day of week to post:**

| Day | Post Number | Type |
|-----|-------------|------|
| Monday | Post 1 | Core Insight |
| Tuesday | Post 2 | Story |
| Wednesday | Post 3 | Framework |
| Thursday | Post 4 | Discussion |
| Friday | Post 5 | Teaser |

**Weekend handling:**
```
"It's [Saturday/Sunday]. No LinkedIn post scheduled for today.

Your week's posting status:
| Day | Type | Posted |
|-----|------|--------|
| Mon | Core Insight | [status] |
| Tue | Story | [status] |
| Wed | Framework | [status] |
| Thu | Discussion | [status] |
| Fri | Teaser | [status] |

Next post: Monday's Core Insight

Want to review the week or prep for next week?"
```

---

## Step 4: Display Today's Post

**Read linkedin-posts.md and extract the relevant post**

**Format output:**

```
═══════════════════════════════════════════════════════════════
TODAY: [Day], [Full Date]
═══════════════════════════════════════════════════════════════

POST TYPE: [Type] ([Hook Type])
BEST TIME: [Time from schedule]
STATUS: [Ready / Already Posted]

───────────────────────────────────────────────────────────────
COPY-PASTE POST:
───────────────────────────────────────────────────────────────

[Full post content here - ready to copy/paste]

[Hashtags]

───────────────────────────────────────────────────────────────

VISUAL: [Full path to visual file]
  → Carousel: content-calendar/week-YYYY-MM-DD/visuals/monday-carousel/monday-carousel.pdf
  → Or static: content-calendar/week-YYYY-MM-DD/visuals/tuesday-static.png

CTA REMINDER: [Specific reminder based on post type]
  → Posts 1 & 5: "Add Substack link in first comment"
  → Posts 2 & 4: "Engage with comments"
  → Post 3: "Follow invitation is in post"

───────────────────────────────────────────────────────────────
```

---

## Step 5: Additional Context

**Show product alignment if relevant:**

```
PRODUCT TIE-IN: [Product name]
  → This post supports: [messaging theme]
  → If DMs come in: [how to follow up]
```

**Show posting schedule context:**

```
THIS WEEK'S PROGRESS:
| Day | Type | Posted |
|-----|------|--------|
| Mon | Core Insight | ✅ |
| Tue | Story | ✅ |
| Wed | Framework | ← TODAY |
| Thu | Discussion | ⬜ |
| Fri | Teaser | ⬜ |
```

---

## Quick Actions

After showing the post, offer:

```
What would you like to do?

[1] Mark as posted - Update status when you've published
[2] Show visual - Open the visual file
[3] Edit post - Make changes to the copy
[4] Skip today - Mark as skipped and move on
```

**When "Mark as posted" is selected:**
1. Update status.md: Today's post = ✅ Posted
2. Add timestamp to interaction log
3. Confirm: "Posted! See you tomorrow for [next post type]."

---

## Edge Cases

### Already Posted Today
```
"Today's post is already marked as posted.

Posted: [Day] [Type] at [time]

Want to see tomorrow's post instead?"
```

### Missed Posts
If previous days in the week are not posted:
```
"Note: You have [X] unposted content from earlier this week:
- [Day]: [Type] - [Still available / Outdated]

Would you like to:
1. Post today's scheduled content
2. Catch up on missed posts
3. Review the week"
```

### Week Almost Done
On Friday:
```
"This is your last post of the week!

After posting, run /content-review on Sunday to:
- Analyze this week's performance
- Extract patterns for improvement
- Prep for next week's /content-plan"
```

---

## Status File Updates

**/post-today modifies status.md:**

```markdown
## Interaction Log

| Date | Action | Notes |
|------|--------|-------|
| 2024-12-09 | Post 1 posted | Marked via /post-today |
| 2024-12-10 | Post 2 posted | Marked via /post-today |
| 2024-12-11 | Post 3 viewed | First interaction |

**Last Interaction Date**: 2024-12-11
```

---

## Best Time Reference

| Day | Post Type | Best Time | Why |
|-----|-----------|-----------|-----|
| Monday | Core Insight | 8-9am | Start of week, high engagement |
| Tuesday | Story | 12-1pm | Lunch break browsing |
| Wednesday | Framework | 8-9am | Morning learning mode |
| Thursday | Discussion | 5-6pm | End of day reflection |
| Friday | Teaser | 8-9am | Before weekend planning |

---

**Generated with:** Post Today Command v1.0.0
