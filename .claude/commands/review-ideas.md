---
name: review-ideas
description: Review and manage pending idea PRs waiting to be integrated into your brain
---

# Review Ideas Command

Review all pending ideas captured from mobile or other sessions.

---

## Step 1: Fetch Pending Idea PRs

Run the following command to list all open idea PRs:

```bash
gh pr list --state open --search "Idea:" --json number,title,url,createdAt,headRefName,body
```

---

## Step 2: Display Pending Ideas

For each pending PR, show:

```
## Pending Ideas ([count] waiting)

### 1. [PR Title]
- **Captured**: [date from PR]
- **Branch**: [branch name]
- **Applications**: [extracted from PR body]
- **PR**: [link]

**Summary**: [one-line summary from PR body]

**Suggested Applications**:
- [x] Content
- [ ] Product
- [x] Book
... (as shown in PR)

**Actions**: Accept | Edit | Reject | Skip

---
```

If no pending ideas:
```
No pending ideas to review.

Capture new ideas anytime with:
/add-idea "your thought here"
```

---

## Step 3: Process Each Idea

For each idea, ask what to do:

### Accept (merge as-is)
```bash
gh pr merge [PR_NUMBER] --merge --delete-branch
```
Response: "Idea integrated into your brain. Index updated."

### Edit (open for modification)
```bash
# Checkout the branch
git fetch origin [branch]
git checkout [branch]
```
Response: "Branch checked out. You can now:"
- Edit the idea file to refine content
- Edit the INDEX.md entry if categories need adjustment
- Edit the frontmatter `applications:` array

After edits:
```bash
git add . && git commit -m "Refine idea: [title]" && git push
gh pr merge [PR_NUMBER] --merge --delete-branch
git checkout main
```

### Reject (close without merging)
```bash
gh pr close [PR_NUMBER] --delete-branch
```
Response: "Idea discarded."

### Skip
Response: "Skipped. Will appear in next review."

---

## Step 4: Summary

After processing all ideas:

```
## Review Complete

- Accepted: [count]
- Edited: [count] (pending your changes)
- Rejected: [count]
- Skipped: [count]

Your brain now has [total] ideas in memory/knowledge-repo/ideas/

## Ideas by Application (updated)
| Category | Count |
|----------|-------|
| content | X |
| product | X |
| book | X |
| speech | X |
... (from INDEX.md)
```

---

## Quick Actions

### Accept All
If you want to merge all pending ideas at once:
```bash
gh pr list --state open --search "Idea:" --json number -q '.[].number' | xargs -I {} gh pr merge {} --merge --delete-branch
```

### View Specific PR
```bash
gh pr view [PR_NUMBER]
```

### View Idea Content
```bash
gh pr diff [PR_NUMBER]
```

### Filter by Application
To see only ideas tagged for specific applications:
```bash
gh pr list --state open --search "Idea: in:title content in:body"
```

---

## Application Categories Reference

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

---

## Tips

- **From GitHub app**: You can also review and merge directly from the GitHub mobile app
- **Notifications**: Enable GitHub notifications to get alerted when new ideas are captured
- **Edit categories**: If Claude miscategorized, edit the frontmatter before merging
- **Batch review**: Run this command daily as part of your morning routine

---

**Time to review**: ~1 min per idea
