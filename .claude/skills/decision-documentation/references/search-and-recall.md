# Decision Search and Recall

Methods for finding and retrieving past decisions from your decision history.

---

## Search Methods

### 1. Find Related Decisions

**By keyword:**
```bash
# Search all decisions
grep -r "keyword" "company brain/decisions/"

# Case-insensitive search
grep -ri "pricing" "company brain/decisions/"

# Multiple keywords (AND logic)
grep -r "pricing" "company brain/decisions/" | grep "consultant"
```

**By date:**
```bash
# List decisions from specific month
ls "company brain/decisions/2025/11-november/"

# Recent decisions (last 7 days)
find "company brain/decisions/" -name "*.md" -mtime -7
```

**By context/department:**
```bash
# Find by context field
grep -l "Product Strategy" "company brain/decisions/**/*.md"

# Find by specific domain
ls "company brain/product/decisions/"
ls "company brain/growth/decisions/"
```

---

## 2. Decision History Views

### Chronological View
```bash
# All decisions, most recent first
ls -lt "company brain/decisions/2025/**/*.md" | head -20

# Decisions from this month
ls -lt "company brain/decisions/2025/$(date +%m)-*/" 2>/dev/null
```

### By Status
```bash
# Active decisions
grep -l "Status: Active" "company brain/decisions/**/*.md"

# Decisions due for review
grep -l "Review:" "company brain/decisions/**/*.md"

# Superseded decisions
grep -l "Superseded" "company brain/decisions/**/*.md"
```

### By Type
```bash
# Strategic decisions
grep -l "Context: Product Strategy" "company brain/decisions/**/*.md"

# Technical decisions
grep -l "Context: Technical" "company brain/decisions/**/*.md"

# Quick captures
grep -l "**Chose:**" "company brain/decisions/**/*.md"
```

---

## 3. Integration with /recall Command

Use the `/recall` slash command for semantic search:

```
/recall decisions about "pricing strategy"
/recall decisions about "B2B focus"
/recall decisions from "last month"
```

The memory-recall skill will:
1. Search decision documents
2. Rank by relevance
3. Show top 3-5 matching decisions
4. Provide quick summaries with links

---

## 4. Advanced Search Patterns

### Find Decision Chains
```bash
# Find all decisions that reference a specific decision
grep -r "2025-11-20-b2b-focus" "company brain/decisions/"

# Find decisions by same participant
grep -l "Participants:.*Iwo" "company brain/decisions/**/*.md"
```

### Find Decisions Needing Review
```bash
# Decisions with review dates in the past
grep -r "Scheduled review:" "company brain/decisions/" | grep "2025-11"

# Decisions marked for revisit
grep -r "Revisit if:" "company brain/decisions/"
```

### Find High-Impact Decisions
```bash
# Strategic/high-impact decisions
grep -l "Impact:.*High" "company brain/decisions/**/*.md"
grep -l "Strategic" "company brain/decisions/**/*.md"
```

---

## 5. Decision Analytics

### Count decisions by timeframe
```bash
# Decisions this month
find "company brain/decisions/2025/11-november/" -name "*.md" | wc -l

# Decisions this year
find "company brain/decisions/2025/" -name "*.md" | wc -l
```

### Decision velocity
```bash
# Decisions per month (last 3 months)
for month in 09 10 11; do
  count=$(find "company brain/decisions/2025/$month-*/" -name "*.md" 2>/dev/null | wc -l)
  echo "Month $month: $count decisions"
done
```

---

## 6. Cross-Reference Searches

### Find decisions affecting specific areas
```bash
# Decisions affecting product roadmap
grep -r "product roadmap" "company brain/decisions/"

# Decisions affecting team processes
grep -r "team" "company brain/decisions/" | grep -i "process\|workflow"
```

### Find decisions by outcome
```bash
# Successful decisions
grep -r "Status: ✅ Success" "company brain/decisions/"

# Postponed decisions
grep -r "Status: ⏸️  Postponed" "company brain/decisions/"
```

---

## Storage Structure Reference

```
company brain/
├── decisions/
│   ├── INDEX.md (chronological list + search tips)
│   ├── 2025/
│   │   ├── 11-november/
│   │   │   ├── 2025-11-20-use-posttooluse-hooks.md
│   │   │   ├── 2025-11-20-target-b2b-customers.md
│   │   │   └── 2025-11-22-add-team-reports.md
│   │   └── 12-december/
│   └── templates/
│       ├── strategic-decision.md
│       ├── technical-decision.md
│       └── quick-decision.md
```

**Alternative locations:**
- `company brain/operations/decisions/` - Technical decisions
- `company brain/product/decisions/` - Product-specific decisions
- `.agents-context/decisions/` - Session-specific quick decisions

---

## Best Practices

1. **Tag decisions consistently** - Use consistent Context values (Product Strategy, Technical, Growth, etc.)
2. **Link related decisions** - Use Related Decisions section to build decision chains
3. **Update status** - Mark decisions as Superseded when overridden
4. **Schedule reviews** - Set review dates for all important decisions
5. **Use grep wisely** - Combine flags for powerful searches: `grep -ril "keyword"`

---

**Version**: 1.0.0
**Last Updated**: 2025-11-20
**Usage**: Reference from decision-documentation/SKILL.md for search guidance
