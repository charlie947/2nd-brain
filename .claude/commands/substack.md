---
name: substack
description: Generate compelling Substack posts in Damian's authentic voice
---

# Substack Post Generator

Generate a publish-ready Substack post that sounds authentically like Damian.

## Your Request

$ARGUMENTS

---

## Step 0: Check Content Calendar Integration

**Looking for active content week...**

```
Check content-calendar/ for current week folder (week-YYYY-MM-DD)
If found, read status.md to get:
- Selected topic
- Product alignment
- Idea source
```

**If active week exists:**
- Use the topic from status.md as context
- After generation, save to: `content-calendar/week-YYYY-MM-DD/substack-draft.md`
- Update status.md: "Substack Draft: ✅ complete"

**If no active week:**
- Proceed normally (standalone mode)
- Save to experiences/content/ as before

---

## Step 1: Load Context & Voice

**Reading Damian's voice and values...**

I'll read these files to ensure authentic voice:
- `memory/style-voice/tone-guide.md` - Voice characteristics
- `memory/values-beliefs/core-values.md` - Core beliefs
- `memory/values-beliefs/frameworks.md` - Mental models (if populated)
- `memory/personal/expertise.md` - Areas of authority
- `.claude/skills/substack-writer/references/voice-patterns.md` - Quick voice reference
- `.claude/skills/substack-writer/references/structure-quick-reference.md` - Post structure
- `.claude/skills/substack-writer/references/validation-checklist.md` - Quality gates

**Check Ideas Index for relevant content ideas:**
```
Read memory/knowledge-repo/ideas/INDEX.md
# Look in the "Content" section for ideas tagged with `content` application
# Only load specific idea files that match the topic being written about
```

**IMPORTANT: Filter out already-used ideas:**
```
# For each potential idea, read the file and check frontmatter:
# - If status: used AND used_in contains "substack" → SKIP (already written)
# - If status: used BUT used_in does NOT contain "substack" → AVAILABLE (repurpose for Substack)
# - If status: raw or developing → AVAILABLE (fresh idea)
#
# When presenting idea options, clearly mark:
# - "Fresh" = never used
# - "Repurpose" = used elsewhere, available for Substack
# - "Already written" = skip for Substack ideation
```

---

## Step 2: Apply The Structure

**Using proven 7-part Substack structure:**

1. **Hook** (1 sentence) - Make people want to read
2. **Opening** (2-3 paragraphs) - Establish tension/question
3. **Core Insight** (1-2 paragraphs) - The main point
4. **Why This Matters** (2-3 paragraphs) - Connection to reader
5. **The Details** (3-5 sections) - Examples, frameworks, stories
6. **What This Means for You** (2-3 paragraphs) - Practical implications
7. **The Takeaway** (1-2 paragraphs) - Memorable closing

**Target**: 800-1500 words total

---

## Step 3: Write in Damian's Voice

**Applying voice characteristics:**

- ✅ **Authenticity**: Write from genuine experience, not generic advice
- ✅ **Values-Driven**: Connect to frameworks and beliefs
- ✅ **Strategic Depth**: Substantive thought leadership
- ✅ **Thoughtful & Exploratory**: "I've been thinking about..."

**Signature patterns to use:**
- Openings: "I've been thinking about...", "Something I've noticed..."
- Transitions: "Here's what this means...", "The deeper insight here is..."
- Closings: "The takeaway is...", "What this means for you..."

---

## Step 4: Validate Before Delivery

**Running validation checks:**

### Tier 1 (MUST PASS - Dealbreakers):
- [ ] Sounds authentically like Damian
- [ ] Reflects his values (authenticity, depth, context)
- [ ] Core insight is substantial, not obvious
- [ ] Appropriate length (800-1500 words)

### Tier 2 (SHOULD PASS - Quality Gates):
- [ ] Hook is compelling
- [ ] Structure flows naturally
- [ ] Examples are specific and concrete
- [ ] Takeaway is memorable

### Red Flags (if present, REVISE):
- ❌ Could have been written by anyone
- ❌ Uses corporate buzzwords without irony
- ❌ Core insight is obvious or surface-level
- ❌ Feels optimized for metrics, not meaning

### AI-Typical Writing (AUTOMATIC FAIL):
- ❌ Em-dashes (—) anywhere in the text
- ❌ "delve", "dive deep", "unpack", "leverage", "harness", "landscape"
- ❌ "Moreover", "Furthermore", "Additionally" starting sentences
- ❌ "It's worth noting", "Interestingly enough", "That said"
- ❌ Repetitive sentence structures or cadences
- ❌ Semicolons connecting thoughts (break into sentences instead)

---

## Generating Your Substack Post

I'll now create a complete post following this structure, in Damian's authentic voice, with validation checks passed.

---

## After Generation

**Post delivered! What's next?**

### If Using Content Calendar (Active Week)

After generating, I will:
1. Save draft to `content-calendar/week-YYYY-MM-DD/substack-draft.md`
2. Update status.md with "Substack Draft: ✅ complete"
3. Ask: **"Review the draft. When approved, say 'approved' and I'll mark it final and we can proceed to LinkedIn."**

When you say "approved":
1. Copy draft to `content-calendar/week-YYYY-MM-DD/substack-final.md`
2. Update status.md with "Substack Approved: ✅ complete"
3. Prompt: **"Substack approved! Ready for LinkedIn? Run `/linkedin`"**

### Standalone Mode (No Active Week)

### To Save This Post:
```bash
# Save to examples for future reference
memory/examples/substack/[descriptive-title].md
```

### To Learn From This:
```bash
/learn   # Extract patterns from this post
```

### To Improve Quality:
```bash
/review [post-file]   # Run 6-agent quality review
```

---

## Tips for /substack

**Good requests:**
- "Write about why AI content lacks authentic voice"
- "Convert memory/knowledge-repo/ideas/[filename].md into a post"
- "Write about [topic] using the [framework] framework"
- "What content ideas do I have?" (checks INDEX for `content` tagged ideas)

**Provide context when helpful:**
- Specific angle or framework to apply
- Target audience considerations
- Any examples from your experience to include

**Using your captured ideas:**
- The command automatically checks your ideas INDEX for `content` tagged ideas
- You can ask "What ideas do I have for content?" to see options
- Reference specific ideas: "Turn the confidence-not-consulting idea into a post"

---

**Generated with:** Substack Writer Skill v1.0.0
**Quality bar:** 95% ready to publish with minimal editing
