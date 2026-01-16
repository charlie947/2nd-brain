---
name: discover
description: Generate AI discovery report for a prospect (competitor intel + industry AI use cases)
---

# AI Discovery Report Generator

Generate a comprehensive AI discovery report for a prospect based on their company, industry, and location.

## Input

$ARGUMENTS

**Expected format**: `"[Company Name]" "[Industry]" "[Location/Region]"`

**Examples**:
- `"Acme Manufacturing" "Industrial Manufacturing" "Germany"`
- `"TechStart Inc" "SaaS / Software" "San Francisco, USA"`
- `"Global Logistics Co" "Supply Chain & Logistics" "Netherlands"`

---

## Discovery Process

### Step 1: Parse Input

Extract from the arguments:
- **Company Name**: The prospect's company
- **Industry**: Their primary industry/sector
- **Location**: Geographic region (affects competitor landscape and regulations)

If arguments are unclear or missing, ask for clarification before proceeding.

---

### Step 2: Load Brain Context

**Search memory for relevant patterns and frameworks:**

```
Read memory/values-beliefs/INDEX.md for positioning context
Read memory/personal/services.md for service alignment
Read memory/patterns/INDEX.md for relevant patterns
Grep "[industry]" experiences/ -i for past similar work
```

---

### Step 3: Competitor AI Research

**Use WebSearch tool to research competitor AI initiatives:**

Execute these searches (run in parallel where possible):
1. `[Industry] companies using AI [Location] 2024 2025`
2. `[Industry] AI adoption case studies`
3. `[Company Name] competitors AI strategy`
4. `Top [Industry] companies artificial intelligence`

**Extract for each major competitor found:**
- Company name
- AI initiatives/tools they're using
- Publicized results or claims
- Source URL (IMPORTANT: Always include sources)

---

### Step 4: Industry AI Use Cases

**Use WebSearch tool for industry-specific AI applications:**

Execute these searches:
1. `AI use cases [Industry] 2024 2025`
2. `[Industry] artificial intelligence applications`
3. `How [Industry] companies use AI`
4. `[Industry] AI transformation examples`

**Categorize findings into:**
- **Operational Efficiency**: Process automation, workflow optimization
- **Customer Experience**: Personalization, support, engagement
- **Decision Intelligence**: Analytics, forecasting, insights
- **Product/Service Innovation**: AI-enhanced offerings
- **Risk & Compliance**: Fraud detection, regulatory compliance

---

### Step 5: Regional Context

**Consider location-specific factors:**
- Regional AI adoption rates
- Local regulations (GDPR for EU, etc.)
- Regional competitors
- Market maturity

Use WebSearch if needed: `AI adoption [Location] regulations 2024 2025`

---

### Step 6: Create Client Folder

Create the output folder:
```bash
mkdir -p experiences/clients/[company-name-slug]
```

Use lowercase, hyphenated company name (e.g., `acme-manufacturing`).

---

### Step 7: Generate Discovery Report

**Save to**: `experiences/clients/[company-slug]/discovery-report.md`

Use the template from: `memory/examples/reports/discovery-report-template.md`

**Report Structure:**

```markdown
# AI Discovery Report: [Company Name]

> **Prepared for**: [Company Name]
> **Industry**: [Industry]
> **Region**: [Location]
> **Generated**: [Today's date]
> **Prepared by**: [Your Name]

---

## Executive Summary

[2-3 sentences: Key opportunity/threat, why now, what's at stake]

---

## Competitor AI Intelligence

### What Your Competitors Are Doing

| Company | AI Initiative | Focus Area | Reported Impact |
|---------|--------------|------------|-----------------|
| [Competitor 1] | [Initiative] | [Category] | [Results] |
| [Competitor 2] | [Initiative] | [Category] | [Results] |
| [Competitor 3] | [Initiative] | [Category] | [Results] |

### Key Competitive Insights

1. **[Insight 1]**: [What this means for the prospect]
2. **[Insight 2]**: [Explanation]
3. **[Insight 3]**: [Explanation]

### Competitive Gap Analysis

**Where competitors are ahead:**
- [Gap 1]
- [Gap 2]

**Where opportunity exists:**
- [Opportunity 1]
- [Opportunity 2]

---

## Industry AI Use Cases

### High-Impact Applications for [Industry]

#### Operational Efficiency
- **[Use Case]**: [Description and typical impact]

#### Customer Experience
- **[Use Case]**: [Description and typical impact]

#### Decision Intelligence
- **[Use Case]**: [Description and typical impact]

#### Product/Service Innovation
- **[Use Case]**: [Description and typical impact]

#### Risk & Compliance
- **[Use Case]**: [Description and typical impact]

### Adoption Benchmark

- **Leaders** (top 20%): [What they're doing]
- **Fast Followers** (next 30%): [What they're doing]
- **Majority** (remaining 50%): [Current state]

---

## Regional Considerations

### [Location] Market Context

- **AI Adoption Rate**: [High/Medium/Low]
- **Regulatory Environment**: [Key regulations]
- **Talent Availability**: [Market conditions]
- **Infrastructure**: [Maturity level]

### Regional Competitors to Watch
- [Competitor 1]
- [Competitor 2]

---

## Opportunity Assessment

### Immediate Opportunities
Quick wins to demonstrate AI value:
1. **[Opportunity]**: [Why it matters, estimated impact]
2. **[Opportunity]**: [Why it matters, estimated impact]

### Medium-Term Opportunities
Strategic initiatives requiring more investment:
1. **[Opportunity]**: [Why it matters, estimated impact]
2. **[Opportunity]**: [Why it matters, estimated impact]

### Long-Term Transformation
Fundamental business model evolution:
1. **[Opportunity]**: [Vision and potential]

---

## Risk of Inaction

### What Happens If [Company Name] Waits

- **Competitive Risk**: [Specific threat]
- **Efficiency Gap**: [Cost/productivity disadvantage]
- **Talent Risk**: [Employee expectations]
- **Customer Expectation Gap**: [Market expectations]

### The Widening Gap

Based on industry research:
- Top performers gain **+162%** AI maturity through active exploration
- The gap between leaders and laggards grows **every quarter**
- **59%** of professionals are struggling with AI adoption

---

## Recommended Next Steps

### For [Company Name]

1. **Assess Current State**: Where are you on the AI maturity spectrum?
2. **Identify Quick Wins**: Which use cases align with immediate pain points?
3. **Build Internal Capability**: Start with 10+ use case exploration
4. **Measure & Iterate**: Track ROI on initial initiatives

### How I Can Help

- **AI Readiness Assessment**: Evaluate your current AI maturity
- **Use Case Prioritization**: Identify highest-impact opportunities
- **Implementation Roadmap**: Create actionable transformation plan
- **Ongoing Advisory**: Guide your AI journey

---

## Sources

- [Source 1 title](URL)
- [Source 2 title](URL)
- [Source 3 title](URL)

---

*This report is intended for [Company Name] leadership to inform AI strategy discussions.*

**Prepared by**: [Your Name]
```

---

## After Generation

### Output Location

```
experiences/clients/[company-slug]/discovery-report.md
```

### Next Steps

1. **Review** the report for accuracy
2. **Customize** any sections as needed
3. **Run `/review`** for quality check (optional)
4. **Share** with prospect or use for discovery call prep

### PDF Conversion

After reviewing, request:
```
Convert experiences/clients/[company]/discovery-report.md to PDF
```

---

## Quality Checklist

Before delivering:
- [ ] Company name used correctly throughout
- [ ] All sources cited with URLs
- [ ] At least 3 competitors identified
- [ ] At least 5 industry use cases included
- [ ] Regional context is relevant
- [ ] CTA is clear

---

## Tips

**Good input:**
- `"Siemens" "Industrial Manufacturing" "Germany"`
- `"Shopify" "E-commerce Platform" "Canada"`

**Too vague (will ask for clarification):**
- `"tech company" "tech" "USA"`
- `"John's business"`
