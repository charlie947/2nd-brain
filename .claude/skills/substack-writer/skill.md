# Substack Writer Skill

> Transform ideas into compelling Substack posts that sound authentically like Damian.

---

## Purpose

This skill helps you write Substack posts that:
- Transform raw ideas from `memory/knowledge-repo/ideas/` into structured posts
- Apply Damian's authentic voice and style from `memory/style-voice/`
- Reflect his values and frameworks from `memory/values-beliefs/`
- Follow the proven Substack structure from `memory/examples/substack/_template.md`
- Create publish-ready content that requires minimal editing

---

## When to Use This Skill

Use this skill when Damian wants to:
- Convert a captured idea into a full Substack post
- Draft a new post on a specific topic
- Develop a rough outline into publishable content
- Create thought leadership content for his audience

---

## How It Works

### Step 1: Load Damian's Context
Read these files to understand Damian's voice and values:
- `memory/style-voice/tone-guide.md` - His writing voice characteristics
- `memory/values-beliefs/core-values.md` - His foundational beliefs
- `memory/values-beliefs/frameworks.md` - His mental models (when populated)
- `memory/personal/expertise.md` - His areas of deep knowledge

### Step 2: Review Available Ideas (Optional)
If Damian hasn't specified a topic, check:
- `memory/knowledge-repo/ideas/` - Captured ideas ready to develop
- Look for ideas marked "Ready to Use" or "Developing"

### Step 3: Apply the Substack Structure
Use the template from `memory/examples/substack/_template.md`:
1. **Hook** - One compelling sentence
2. **Opening** - Establish the problem/question/tension
3. **Core Insight** - The main point
4. **Why This Matters** - Connection to reader's world
5. **The Details** - Examples, stories, data, frameworks
6. **What This Means for You** - Practical implications
7. **The Takeaway** - Memorable closing

### Step 4: Write in Damian's Voice
Apply his voice characteristics (from tone-guide.md):
- **Authenticity**: Write from genuine experience
- **Values-Driven**: Connect to his frameworks and beliefs
- **Strategic Depth**: Thought leadership with substance
- **Thoughtful & Exploratory**: "I've been thinking about X..."

### Step 5: Validate Against Values
Before finalizing, check alignment with `core-values.md`:
- ✅ Does this reflect authenticity over scale?
- ✅ Is it context-rich and substantive?
- ✅ Does it preserve his unique perspective?
- ✅ Would Damian actually say this?

---

## Usage

### Basic Usage
```
/substack "Write a post about [topic]"
```

### From Captured Idea
```
/substack "Convert memory/knowledge-repo/ideas/[filename].md into a post"
```

### With Specific Angle
```
/substack "Write about [topic] focusing on [specific framework/angle]"
```

---

## Output Format

The skill produces a complete Substack post with:

```markdown
# [Compelling Title]

> Hook: One sentence that makes people want to read

---

## Opening
[2-3 paragraphs establishing problem/question]

---

## The Core Insight
[Main point - the "why you're writing this"]

---

## Why This Matters
[Connection to reader's world]

---

## The Details
[Examples, stories, frameworks - the meat of the post]

---

## What This Means for You
[Practical implications]

---

## The Takeaway
[Memorable closing that reinforces main point]

---

## Meta Information
**Target Length**: 800-1500 words
**Tone**: [Analytical/Personal/Provocative/etc.]
**Audience**: [Who this is for]
**Key Message**: [One sentence summary]
```

---

## Quality Checks

Before delivering the post, verify:

### Voice Authenticity
- [ ] Sounds like Damian, not generic AI
- [ ] Uses his vocabulary and phrasing patterns
- [ ] Reflects his genuine perspective
- [ ] Appropriate level of depth for Substack

### Content Quality
- [ ] Hook actually hooks
- [ ] Opening establishes clear tension/question
- [ ] Core insight is substantial, not obvious
- [ ] Examples are specific and concrete
- [ ] Takeaway is memorable

### Structure
- [ ] Flows naturally from section to section
- [ ] Each section advances the argument
- [ ] Proper use of breaks and transitions
- [ ] Length appropriate for topic depth

### Values Alignment
- [ ] Reflects authenticity over metrics
- [ ] Demonstrates strategic depth
- [ ] Provides genuine value
- [ ] Maintains his brand integrity

---

## Examples of Good Substack Posts

Reference successful posts from `memory/examples/substack/` (when populated) to understand:
- What hooks work for Damian's audience
- How he structures arguments
- His typical post length and depth
- Topics that resonate

---

## Common Pitfalls to Avoid

**Don't**:
- ❌ Write generic thought leadership - needs Damian's unique angle
- ❌ Use buzzwords without substance - he values authenticity
- ❌ Oversimplify complex topics - his audience expects depth
- ❌ Rush to practical advice - build the framework first
- ❌ Write in overly formal voice - he's thoughtful but accessible

**Do**:
- ✅ Start with genuine insight or observation
- ✅ Build frameworks and mental models
- ✅ Use specific examples from real experience
- ✅ Connect ideas to his core values
- ✅ Leave readers thinking, not just doing

---

## Integration with Second Brain

### After Writing
1. Save successful posts to `memory/examples/substack/[title].md`
2. Extract patterns to `memory/knowledge-repo/content-patterns.md`
3. Note what resonated with readers for future reference
4. Update `brain-health/quality-metrics.md` with performance

### Learning Loop
- Successful posts inform future voice calibration
- Reader engagement shapes topic selection
- Patterns compound for faster future creation
- Brain gets smarter with each post

---

## Customization Notes

As this skill is used:
- **Voice Refinement**: Update `tone-guide.md` with observed patterns
- **Framework Development**: Add new frameworks to `frameworks.md`
- **Example Collection**: Build library in `examples/substack/`
- **Audience Insights**: Capture what resonates in `audience/`

---

## Advanced Features

### Multi-Idea Synthesis
```
/substack "Combine ideas from [idea1] and [idea2] into a single post"
```

### Series Development
```
/substack "Create part 1 of a 3-part series on [topic]"
```

### Repurposing Content
```
/substack "Expand this LinkedIn post into a full Substack piece"
```

---

## Success Criteria

A successful Substack post from this skill:
1. Sounds authentically like Damian - minimal editing needed
2. Provides strategic depth, not surface-level insights
3. Connects to his frameworks and values
4. Follows proven structure from template
5. Engages his specific audience
6. Is ready to publish with minor review

---

**Version**: 1.0.0
**Created**: 2025-11-28
**Status**: Active
