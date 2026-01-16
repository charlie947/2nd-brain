---
name: add-idea
description: Capture a random idea/thought and save it to your knowledge repo
---

# Add Idea Command

Quickly capture a thought, idea, or insight before it disappears.

## Your Raw Idea

$ARGUMENTS

---

## Processing Your Idea

### Step 1: Clean & Structure

Take the raw thought and:
- Extract the core insight
- Identify the category/theme
- Note potential applications
- Connect to existing work in the brain

### Step 2: Determine Applications

Analyze the idea and assign relevant application tags from this list:

| Tag | Use For |
|-----|---------|
| `content` | Substack, LinkedIn, Instagram posts |
| `product` | Product development, features, bugs |
| `client` | Specific client work, proposals |
| `presentation` | Talks, decks, workshops |
| `speech` | Speech content, new speeches, learnings |
| `book` | Book content, chapters, themes |
| `framework` | New mental models, methodologies |
| `positioning` | Your own positioning/messaging |
| `personal` | Personal growth, reflections |
| `values` | Core beliefs, principles |

**Important**: Ideas can have MULTIPLE applications. Be generous - if it could apply, include it.

### Step 3: Generate Structured Idea File

Create a file with YAML frontmatter:

```markdown
---
title: [Generated Title]
applications: [app1, app2, app3]
tags: [topic1, topic2]
status: raw
captured: YYYY-MM-DD
---

# [Generated Title]

> [One-sentence summary of the idea]

---

## The Idea

[Cleaned up version of the raw thought - 2-3 paragraphs max]

---

## Quick Context

**Captured**: [Today's date]
**Category**: [Primary theme/topic area]
**Status**: Raw

---

## Potential Applications

- **Content**: [Could this become a post, article, or thread?]
- **Client Work**: [Could this inform consulting or positioning?]
- **Product**: [Could this inform product development?]
- **Book**: [Could this become book content?]
- **Speech**: [Could this enhance a speech?]
- **Personal**: [Is this about your own growth or approach?]

---

## Connections

**Related to**:
- [Any obvious connections to values, frameworks, or past ideas]

**Could combine with**:
- [Other concepts this might build on]

---

## Raw Capture

> Original input: $ARGUMENTS

---

**Next Action**: [Suggested next step - develop further, schedule for content, etc.]
```

### Step 4: Save & Create Pull Request

1. Create a new branch: `idea/YYYY-MM-DD-[slug]`
2. Save the idea to: `memory/knowledge-repo/ideas/YYYY-MM-DD-[slug].md`
3. **Update the INDEX**: Add entry to `memory/knowledge-repo/ideas/INDEX.md`
4. Commit with message: `Add idea: [title]`
5. Push the branch to origin
6. Create a GitHub Pull Request using `gh pr create`

---

## Updating the INDEX.md

After creating the idea file, update the index:

### 1. Add to each relevant category section

For each application in the idea's frontmatter, add a line in that category's section:

```markdown
<!-- IDEAS:content -->
- **[Title](./YYYY-MM-DD-slug.md)** - One-sentence summary
<!-- /IDEAS:content -->
```

### 2. Add to the "All Ideas" table

```markdown
| YYYY-MM-DD | [Title](./YYYY-MM-DD-slug.md) | content, book | raw | YYYY-MM-DD-slug.md |
```

### 3. Update the Quick Stats counts

Increment the count for each application category.

### 4. Update "Last Updated" date

---

## Git & PR Workflow

Execute these steps:

```bash
# 1. Create and switch to new branch
git checkout -b idea/YYYY-MM-DD-[slug]

# 2. Add both files (idea + updated index)
git add memory/knowledge-repo/ideas/YYYY-MM-DD-[slug].md
git add memory/knowledge-repo/ideas/INDEX.md

# 3. Commit
git commit -m "Add idea: [title]"

# 4. Push branch to origin
git push -u origin idea/YYYY-MM-DD-[slug]

# 5. Create Pull Request with category info
gh pr create --title "Idea: [title]" --body "$(cat <<'EOF'
## New Idea Captured

**Applications**: `app1`, `app2`, `app3`
**Captured**: YYYY-MM-DD

### Summary
[One-sentence summary]

### Suggested Applications
- [ ] Content (Substack/LinkedIn)
- [ ] Product development
- [ ] Client work
- [ ] Presentation/Workshop
- [ ] Speech
- [ ] Book
- [ ] Framework development
- [ ] Positioning
- [ ] Personal growth
- [ ] Values/Beliefs

*(Checked boxes indicate Claude's suggestions - edit if needed)*

---
Review and merge when ready to integrate into your second brain.
EOF
)"

# 6. Switch back to main
git checkout main
```

---

## After Creating PR

**Confirmation message**:
```
Idea captured and PR created!

Title: [idea title]
Applications: [list of applications]
PR: [link to PR]
Branch: idea/YYYY-MM-DD-[slug]

Review on GitHub app or run /review-ideas to see all pending ideas.
```

---

## Tips for Capturing Ideas

**Good captures** (any of these work):
- "People don't buy consulting, they buy confidence in a decision"
- "Noticed that my best posts always start with a specific story, not a general claim"
- "Client said something interesting: they didn't know they needed positioning until they couldn't explain what they do"
- "What if authenticity isn't about being raw, but about being intentionally honest?"

**From mobile**: Just dump the thought. Don't worry about structure - that's what this command does.

---

## File Naming Convention

Files are saved as:
```
memory/knowledge-repo/ideas/YYYY-MM-DD-[slug].md
```

Example:
```
memory/knowledge-repo/ideas/2025-01-15-confidence-not-consulting.md
```

---

**Time to capture**: ~30 seconds
**Your idea is safe**: Saved as GitHub PR with categories, ready for review
