---
name: linkedin
description: Generate 5 LinkedIn posts from a Substack article (week's worth of content)
---

# LinkedIn Weekly Content Generator

Generate 5 publish-ready LinkedIn posts from a Substack article, enriched with your knowledge repo ideas and grounded in your values.

## Your Request

$ARGUMENTS

---

## Step 0: Check Content Calendar Integration

**Looking for active content week...**

```
Check content-calendar/ for current week folder (week-YYYY-MM-DD)
If found, read status.md to check:
- Is Substack approved? (required before LinkedIn)
- Get substack-final.md path
```

**If active week exists with approved Substack:**
- Auto-load: `content-calendar/week-YYYY-MM-DD/substack-final.md`
- Get product alignment from status.md for CTA decisions
- After generation, save to: `content-calendar/week-YYYY-MM-DD/linkedin-posts.md`
- Update status.md: "LinkedIn Posts: ✅ complete"

**If active week but Substack not approved:**
```
"The Substack for this week isn't approved yet.

Current status: [Substack Draft status]

Please run /substack first, then approve the draft before generating LinkedIn posts."
```

**If no active week:**
- Proceed normally (standalone mode)
- Require file path in $ARGUMENTS or ask for one

---

## Step 1: Load Context & Voice

**Reading Damian's voice and values...**

I'll read these files to ensure authentic voice:
- `memory/style-voice/linkedin-style.md` - LinkedIn-specific voice guide (CRITICAL)
- `memory/style-voice/tone-guide.md` - General voice characteristics
- `memory/values-beliefs/core-values.md` - Core beliefs to reflect
- `memory/values-beliefs/frameworks.md` - Mental models to reference
- `memory/values-beliefs/principles.md` - Guiding principles
- `memory/values-beliefs/pov.md` - Points of view to express
- `memory/personal/expertise.md` - Areas of authority
- `memory/patterns/content-patterns.md` - Proven content patterns

**Read the source Substack article:**

If a file path is provided in $ARGUMENTS, read it and extract:
- Main thesis/premise (for Post 1)
- Key story or analogy (for Post 2)
- Any named framework (for Post 3)
- Core pain point addressed (for Post 4)
- "Why it matters" angle (for Post 5)
- Memorable phrases or hooks

If no file path provided:
```
Check experiences/content/ for recent Substack posts
Ask: "Which Substack article should I repurpose for LinkedIn?"
```

**Check Ideas Index for related content:**
```
Read memory/knowledge-repo/ideas/INDEX.md
# Look for ideas that relate to the Substack topic
# These can provide:
# - Additional angles for posts
# - Supporting examples
# - Framework connections
# - Fresh hooks
```

**Filter idea availability:**
```
# For each relevant idea, read the file and check frontmatter:
# - status: used + used_in contains "linkedin" → SKIP (already used)
# - status: used BUT used_in does NOT contain "linkedin" → AVAILABLE (repurpose)
# - status: raw or developing → AVAILABLE (fresh angle)
#
# Present available ideas that could enrich the LinkedIn posts
```

**Determine CTA type:**
- If `--cta=product` in $ARGUMENTS → Read `memory/personal/services.md` for service details
- If `--cta=substack` or no flag → Use Substack follow CTAs
- If product CTA requested but unclear which service → Ask user

---

## Step 2: Extract Content Pillars

From the Substack article and related ideas, identify:

| Pillar | For Post | Source |
|--------|----------|--------|
| Main thesis | Post 1 (Core Insight) | Substack opening/hook |
| Key story/analogy | Post 2 (Story Extract) | Substack + related ideas |
| Named framework | Post 3 (Framework Share) | Substack + values-beliefs |
| Pain point/question | Post 4 (Discussion) | Knowledge repo idea or Substack |
| "Why it matters" | Post 5 (Teaser) | Substack closing + values |

**Values-Beliefs Integration Check:**
- Which core value does this content reflect?
- Which framework from `frameworks.md` applies?
- What's Damian's authentic POV on this topic?
- How does this connect to his expertise areas?

**Present the pillars to confirm before generating:**
```
Here's what I extracted from your Substack:

1. CORE INSIGHT: [thesis statement]
2. STORY: [the narrative element]
3. FRAMEWORK: [named model if present]
4. PAIN POINT: [key struggle addressed]
5. WHY IT MATTERS: [the stakes]

Related ideas from knowledge repo:
- [idea 1] - could enrich Post X
- [idea 2] - could enrich Post Y

Values this reflects: [list values]

Ready to generate 5 posts?
```

---

## Step 3: Generate 5 Posts

### The 5-Post Weekly Mix

| Post | Type | Hook Style | Words | Best For | Format |
|------|------|------------|-------|----------|--------|
| 1 | Core Insight | Bold Claim | 200-250 | Monday 8-9am | Carousel |
| 2 | Story Extract | Analogy | 150-180 | Tuesday 12-1pm | **Reel OR Static** |
| 3 | Framework Share | Contrarian | 180-220 | Wednesday 8-9am | **Reel (mandatory)** |
| 4 | Discussion Starter | Direct Address | 120-150 | Thursday 5-6pm | Static |
| 5 | Teaser/Driver | Problem-Agitate | 150-180 | Friday 8-9am | Carousel |

**Video Content Note:**
- **Post 3 (Wednesday)**: Always generates a reel script - Framework posts work well as teaching videos
- **Post 2 (Tuesday)**: Flexible - can be static or reel. Story posts work as either quick video narratives OR split-image statics

---

### Post 1: Core Insight (Monday)

**Hook Type:** Bold Claim (40% of Damian's posts use this)
**Word Count:** 200-250 words
**Source:** Substack main thesis
**CTA:** Primary (product or Substack)

**Structure:**
1. Bold opening claim (1-2 sentences)
   - Pattern: "[Strong statement about the world]."
   - Examples: "Things are moving fast in AI education." / "The impossible becomes ordinary."

2. Why this matters (2-3 sentences)
   - Connect to reader's reality
   - Create stakes

3. The insight explained (3-4 sentences)
   - The core idea from Substack
   - Make it standalone (don't require reading Substack)

4. Practical implication (2-3 sentences)
   - What this means for the reader
   - Keep it actionable

5. Primary CTA
   - Product: Service-specific CTA
   - Substack: "I go deeper on this in my Substack. Link in comments."

---

### Post 2: Story Extract (Tuesday)

**Hook Type:** Analogy (15% of posts, but high engagement)
**Word Count:** 150-180 words
**Source:** Substack story + related knowledge repo ideas
**CTA:** Engagement question

**Structure:**
1. Analogy hook (1-2 sentences)
   - Pattern: "[Familiar thing] is like [unexpected comparison]."
   - Examples: "Giving your team access to ChatGPT is like buying a gym membership for a couch potato."

2. Brief story or example (3-4 sentences)
   - Extract the narrative from Substack
   - Or use a related idea from knowledge repo
   - Make it concrete and specific

3. The lesson (2-3 sentences)
   - What this story reveals
   - The insight in one clear takeaway

4. Engagement question CTA
   - "What's your experience with [topic]?"
   - "Have you seen this in your organization?"

---

### Post 3: Framework Share (Wednesday)

**Hook Type:** Contrarian Statement (25% of posts)
**Word Count:** 180-220 words
**Source:** Substack framework + values-beliefs alignment
**CTA:** Follow invitation

**Structure:**
1. Contrarian opener (1-2 sentences)
   - Pattern: "[Common belief]. But [opposite is true]."
   - Examples: "Self-doubt isn't your enemy." / "I'd rather be underestimated."

2. Introduce the framework (2-3 sentences)
   - Name it if it has a name
   - Set up what it solves

3. Framework elements with arrows (→)
   - Use LinkedIn formatting
   - 3-5 elements maximum
   ```
   → Element 1: Brief explanation
   → Element 2: Brief explanation
   → Element 3: Brief explanation
   ```

4. Why it works (2-3 sentences)
   - Connect to values-beliefs
   - Make the "so what" clear

5. Follow invitation CTA
   - "Follow me for regular guidance through the jungle of AI. Simple. Clear. Applicable."
   - Or variation from linkedin-style.md

---

### Post 4: Discussion Starter (Thursday)

**Hook Type:** Direct Address (20% of posts)
**Word Count:** 120-150 words (shortest post)
**Source:** Knowledge repo idea or key pain point from Substack
**CTA:** Open-ended engagement question

**Structure:**
1. Direct address hook (1-2 sentences)
   - Pattern: "Feeling [emotion] by [situation]? You're not alone."
   - Pattern: "If you're [struggling with X], here's what I've learned."

2. Describe the struggle (2-3 sentences)
   - Validate the pain point
   - Show you understand

3. Offer perspective (2-3 sentences)
   - Brief insight or reframe
   - Don't solve it completely (save that for Substack)

4. Open-ended engagement question
   - "How are you handling [this challenge]?"
   - "What's worked for you?"
   - Invite discussion, not just likes

---

### Post 5: Teaser/Driver (Friday)

**Hook Type:** Problem-Agitate
**Word Count:** 150-180 words
**Source:** "Why it matters" angle + values connection
**CTA:** Primary (drives to Substack or product)

**Structure:**
1. Problem statement (1-2 sentences)
   - State the challenge clearly
   - Make it feel urgent

2. Agitate the pain (2-3 sentences)
   - What happens if this isn't addressed?
   - The hidden cost of inaction
   - Pattern: "Every day you avoid [X], [consequence]."

3. Hint at solution (2-3 sentences)
   - Tease what the answer looks like
   - Don't give it all away

4. Primary CTA
   - Substack: "This is the short version. The full breakdown is on my Substack."
   - Product: Service-specific CTA with urgency

---

## Step 4: Validate All Posts

**Before delivering, run these checks:**

### Tier 1 (MUST PASS - Dealbreakers):
- [ ] Each post sounds like Damian (not generic AI)
- [ ] Each post reflects his values (from values-beliefs/)
- [ ] Each post can stand alone (doesn't require Substack context)
- [ ] Posts are within word count (120-250 words each)
- [ ] No AI-typical patterns (see list below)
- [ ] CTAs match requested type (product vs. Substack)

### Tier 2 (SHOULD PASS - Quality Gates):
- [ ] 5 distinct hooks (no repetition of hook types)
- [ ] Formatting follows LinkedIn style (short paragraphs, arrows where appropriate)
- [ ] Each post has one clear takeaway
- [ ] Hashtags are relevant (3-5 per post)
- [ ] Knowledge repo ideas integrated where relevant

### Red Flags (Revise if present):
- Same opening pattern across multiple posts
- Posts feel like summary instead of standalone insights
- CTAs feel forced or disconnected from content
- Corporate buzzwords without substance
- No connection to values or frameworks
- Posts only make sense if you read the Substack

### AI-Typical Writing (AUTOMATIC FAIL - Revise immediately):
- Em-dashes (—) anywhere in the text
- "delve", "dive deep", "unpack", "leverage", "harness", "landscape"
- "Moreover", "Furthermore", "Additionally" starting sentences
- "It's worth noting", "Interestingly enough", "That said"
- Repetitive sentence structures or cadences
- Semicolons connecting thoughts (break into sentences instead)
- Excessive enthusiasm ("Amazing!", "Incredible!", "Game-changing!")

---

## Output Format

```markdown
# LinkedIn Weekly Content: [Topic]

**Generated from:** [substack-file.md]
**CTA Focus:** [Product Campaign: Service Name | Substack Follow]
**Related Ideas Used:** [list any knowledge repo ideas incorporated, or "None"]
**Values Reflected:** [which core values/frameworks appear in these posts]

---

## Post 1: Core Insight (Monday)

**Hook Type:** Bold Claim
**Word Count:** ~XXX
**Values Connection:** [which value/framework this reflects]

[Post content here - ready to copy/paste to LinkedIn]

---

**CTA:** [The specific call to action used]
**Hashtags:** #AI #Leadership #[topic-specific tags]

---

## Post 2: Story Extract (Tuesday)

**Hook Type:** Analogy
**Word Count:** ~XXX
**Values Connection:** [which value/framework this reflects]
**Ideas Used:** [if a knowledge repo idea was incorporated]
**Format:** Reel OR Static (flexible)

[Post content here]

---

**CTA:** [Engagement question]
**Hashtags:** #[relevant tags]
**Reel Potential:** [Yes - story works well as video / No - better as static]

---

## Post 3: Framework Share (Wednesday)

**Hook Type:** Contrarian Statement
**Word Count:** ~XXX
**Values Connection:** [which value/framework this reflects]
**Format:** REEL (mandatory)

[Post content here]

---

**CTA:** [Follow invitation]
**Hashtags:** #[relevant tags]
**Reel Hook:** [Under 12 words - the opening line for video]

---

## Post 4: Discussion Starter (Thursday)

**Hook Type:** Direct Address
**Word Count:** ~XXX
**Values Connection:** [which value/framework this reflects]
**Ideas Used:** [if a knowledge repo idea was incorporated]

[Post content here]

---

**CTA:** [Engagement question]
**Hashtags:** #[relevant tags]

---

## Post 5: Teaser/Driver (Friday)

**Hook Type:** Problem-Agitate
**Word Count:** ~XXX
**Values Connection:** [which value/framework this reflects]

[Post content here]

---

**CTA:** [Primary CTA driving to Substack or product]
**Hashtags:** #[relevant tags]

---

## Posting Schedule

| Day | Post | Best Time | CTA Type | Format |
|-----|------|-----------|----------|--------|
| Monday | Post 1: Core Insight | 8-9am | Primary | Carousel |
| Tuesday | Post 2: Story | 12-1pm | Engagement | Reel OR Static |
| Wednesday | Post 3: Framework | 8-9am | Follow | **REEL** |
| Thursday | Post 4: Discussion | 5-6pm | Engagement | Static |
| Friday | Post 5: Teaser | 8-9am | Primary | Carousel |

**Reel Recording Tip:** Batch record Tuesday + Wednesday reels in one session to save time.

---

## Validation Summary

### Tier 1 Checks: [X/6 passed]
### Tier 2 Checks: [X/5 passed]
### Red Flags Found: [None | List any issues]
### AI Patterns Found: [None | List any that slipped through]
```

---

## After Generation

### If Using Content Calendar (Active Week)

After generating, I will:
1. Save posts to `content-calendar/week-YYYY-MM-DD/linkedin-posts.md`
2. Update status.md with "LinkedIn Posts: ✅ complete"
3. Ask: **"Review the posts. When approved, say 'approved' and I'll mark them final and we can proceed to visuals."**

When you say "approved":
1. Update status.md with "LinkedIn Approved: ✅ complete"
2. Prompt: **"LinkedIn approved! Ready for visuals? Run `/create-visuals`"**

### Standalone Mode (No Active Week)

**If knowledge repo ideas were used, update their status:**
```
# For each idea file used, update frontmatter:
# status: used
# used_in: [...existing, "linkedin"]
# used_date: YYYY-MM-DD
```

**Save output:**
```
experiences/content/linkedin-[topic]/output.md
```

**To review quality:**
```bash
/review experiences/content/linkedin-[topic]/output.md
```

**To extract patterns from what worked:**
```bash
/learn
```

---

## CTA Reference

### Product Campaign CTAs (by service)

**AI Adoption Sprint:**
- "I help companies go from zero to AI pilot in 5 days. DM me if you're ready to stop waiting."
- "My AI Adoption Sprint takes you from curious to confident in one week. Ready to start?"

**Executive Advisory:**
- "If you're leading AI transformation and need a strategic partner, let's talk."
- "I advise executives navigating the AI transition. Bi-weekly calls, real guidance."

**Training:**
- "Want your team AI-literate by next month? I run hands-on sessions that stick."
- "I train teams on practical AI. Not theory. Results."

**Keynote:**
- "I speak about the human side of AI adoption. Event coming up? Let's connect."

### Substack Follow CTAs

**Primary (Posts 1 & 5):**
- "I go deeper on this in my Substack. Link in comments."
- "This is the short version. The full breakdown is on my Substack."
- "I write about [topic] weekly. Link to subscribe in comments."

**Soft (Follow invitation):**
- "Follow me for regular guidance through the jungle of AI. Simple. Clear. Applicable."
- "Follow Damian Nomura for daily inspiration on navigating AI. As human, in an AI world."

---

## Tips for /linkedin

**Good requests:**
- `/linkedin experiences/content/substack-solution-seeking-problem/output.md`
- `/linkedin [substack-file] --cta=product`
- `/linkedin [substack-file] --cta=substack`
- `/linkedin` (will ask which Substack to use)

**The command automatically:**
- Reads the Substack source
- Searches knowledge repo for related ideas
- Loads values-beliefs for authentic voice
- Checks for active product campaigns (if --cta=product)
- Generates 5 distinct posts with varied hooks
- Validates against LinkedIn style guide
- Outputs copy-paste ready content

**For best results:**
- Use Substack posts that have a clear framework or story
- Have your values-beliefs files populated
- Keep knowledge repo ideas fresh and tagged

---

**Generated with:** LinkedIn Weekly Command v1.0.0
**Quality bar:** 95% ready to publish with minimal editing
