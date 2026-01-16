---
name: status
description: View and update project statuses across books, speeches, clients, and products
---

# Status Command

Review and update the status of active projects across all areas.

## Arguments

$ARGUMENTS

---

## Processing

### Step 1: Determine Scope

If arguments provided (e.g., "books", "speeches", "clients", "products"):
- Focus on that specific area

If no arguments:
- Show overview of all active projects

---

### Step 2: Gather Current Status

Read the relevant files based on scope:

**All/Overview:**
- `experiences/books/README.md`
- `experiences/speeches/README.md`
- `experiences/clients/README.md`
- `products/README.md`

**Books only:**
- `experiences/books/README.md`
- All `experiences/books/*/plan.md` files

**Speeches only:**
- `experiences/speeches/README.md`
- All `experiences/speeches/*/plan.md` files

**Clients only:**
- `experiences/clients/README.md`
- Recent client folders

**Products only:**
- `products/README.md`
- Active product trackers

---

### Step 3: Display Status Overview

Present a summary table:

```markdown
## Project Status Overview

### Books
| Title | Status | Last Updated |
|-------|--------|--------------|
| [Book name] | [Status] | [Date] |

### Speeches
| Title | Status | Last Updated |
|-------|--------|--------------|
| [Speech name] | [Status] | [Date] |

### Client Work
| Client | Project | Status |
|--------|---------|--------|
| [Client] | [Project] | [Status] |

### Products
| Product | Stage | Status |
|---------|-------|--------|
| [Product] | [Stage] | [Status] |
```

---

### Step 4: Ask for Updates

```markdown
## Update Projects

Would you like to update any project status?

1. Update a book status
2. Update a speech status
3. Update client work
4. Update a product
5. No updates needed
```

---

### Step 5: Process Updates

When user selects an area to update:

1. Show current status of items in that area
2. Ask which item to update
3. Ask for new status
4. Update the relevant file(s):
   - Update the README table
   - Update the project's plan.md
   - Add timestamp to changes

---

### Step 6: Commit Changes (Optional)

After updates:

```markdown
## Changes Made

- [List of updates]

Would you like me to commit these changes?
```

If yes, commit with message: `Update project status: [summary]`

---

## Status Definitions

### Books
- **Ideation** - Concept phase
- **Writing** - Actively drafting
- **Editing** - Revising content
- **Review** - With beta readers/editors
- **Published** - Released

### Speeches
- **Ideation** - Concept phase
- **Writing** - Developing content
- **Rehearsing** - Practicing delivery
- **Scheduled** - Confirmed date
- **Delivered** - Completed

### Client Work
- **Discovery** - Initial research
- **Active** - Currently engaged
- **Delivered** - Work completed
- **Follow-up** - Post-delivery

### Products
- **Ideation** - Exploring concept
- **Definition** - Defining scope
- **Building** - In development
- **Testing** - Validating
- **Launched** - Live

---

## Examples

**Overview:**
```
/status
```

**Specific area:**
```
/status books
/status speeches
/status clients
/status products
```

---

**Time to run**: ~30 seconds for overview, ~2 minutes with updates
