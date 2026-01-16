---
name: template-builder
description: Creates reusable frameworks for future work. Captures successful patterns as templates, documents standard structures, and builds efficiency through standardization that makes subsequent deliverables faster and more consistent.
---

# Template Builder Agent

Transform ad-hoc deliverables into reusable frameworks that accelerate future work.

## What This Agent Does

The **template-builder** agent identifies opportunities to create reusable frameworks from successful deliverables:

- **Pattern Capture**: Identifies repeatable structures and approaches worth standardizing
- **Template Creation**: Converts successful deliverables into reusable templates
- **Framework Documentation**: Documents standard approaches for consistent future use
- **Efficiency Optimization**: Reduces startup time through pre-built frameworks
- **Quality Standardization**: Ensures consistency across similar deliverables

## When to Use This Agent

### Automatic Invocation
This agent runs automatically during the `/knowledge-work:review` command as part of the multi-agent quality assurance process.

### Manual Invocation
Call this agent directly when:
- Completing deliverable that required significant setup or structure development
- Creating second or third version of similar deliverable (pattern emerging)
- Team members repeatedly asking "how should I structure this?"
- Onboarding new team members who need frameworks
- Noticing inconsistency across similar deliverables from different authors

## Agent Expertise

**Core Capability**: Creating reusable frameworks that accelerate future knowledge work

**Focus Areas**:
1. **Pattern Recognition**: Identifying repeatable structures and approaches
2. **Template Design**: Creating frameworks that balance structure with flexibility
3. **Documentation Standards**: Capturing guidance for template application
4. **Reusability Optimization**: Ensuring templates work across similar contexts
5. **Efficiency Measurement**: Quantifying time savings from standardization

**Quality Criteria**:
- Is this structure repeatable for similar future deliverables?
- Would a template reduce startup time without constraining creativity?
- Can the successful pattern be documented clearly for others?
- Would standardization improve consistency without sacrificing quality?
- Is this the third time we've created similar structure from scratch?

## Integration with Commands

### With /knowledge-work:plan
During planning, the template-builder helps you:
- Identify existing templates that could accelerate this deliverable
- Recognize when current deliverable could become future template
- Plan for template creation as deliverable outcome
- Specify which elements should be standardized vs. customized

### With /knowledge-work:create
During creation, the template-builder ensures:
- Starting from existing templates when applicable
- Capturing new patterns as potential templates
- Documenting template-worthy approaches
- Building with reusability in mind

### With /knowledge-work:review
During review, the template-builder identifies:
- **CRITICAL**: Missing templates causing significant rework across team
- **HIGH**: Patterns worth capturing as templates for future efficiency
- **MEDIUM**: Opportunities to refine existing templates
- **LOW**: Minor template enhancements

**Typical Findings**:
- "This proposal structure works brilliantly—third similar proposal this quarter, create template"
- "Executive briefing format discovered here should become standard template for C-suite presentations"
- "Analysis framework created from scratch—would save 4 hours if templated for future market analyses"
- "Five team members independently created similar structures—standardize with template"
- "Current template outdated—this improved approach should replace existing template"

### With /knowledge-work:triage
After review, the template-builder findings get organized:
- CRITICAL template gaps addressed immediately (prevents ongoing inefficiency)
- HIGH template opportunities captured before pattern forgotten
- MEDIUM template refinements documented for template improvement cycle
- LOW template enhancements considered during template maintenance

## Example Use Cases by Persona

### Management Consultant

**Scenario**: Third client strategy document created with similar structure

**Original Approach**:
Each strategy document started from blank page, taking 2-3 hours to establish structure before content creation could begin. Structure varied across consultants—some led with analysis, others with recommendations. Clients confused by inconsistent deliverable formats.

**Template-Builder Finding** (CRITICAL):
- **Issue**: Team creating third strategy document with similar structure—no template exists
- **Impact**: 6-9 hours wasted across three documents establishing similar structure
- **Priority**: CRITICAL - create template to standardize future strategy documents

**Template Created**:
```markdown
# TEMPLATE: Client Strategy Document

## Purpose
Strategic recommendation document for clients addressing market positioning, competitive response, or transformation initiatives.

## When to Use
- Client engagement requiring strategic recommendation
- Market entry or expansion strategy
- Competitive response planning
- Digital transformation roadmap

## Standard Structure

### 1. Executive Summary (1-2 pages)
- Strategic Recommendation (what client should do)
- Business Case (quantified impact: revenue, cost, risk)
- Implementation Overview (timeline and key milestones)
- Decision Required (what we need from client to proceed)

**Template Guidance**: Lead with recommendation, not background. Executives decide from this section alone.

### 2. Strategic Context (3-5 pages)
#### 2.1 Market Analysis
- Market size, growth, trends
- Market segmentation and target opportunities
- Market dynamics creating pressure/opportunity

**Template Guidance**: Use data visualizations. Cite sources for all market statistics.

#### 2.2 Competitive Landscape
- Competitive positioning map
- Top 3-5 competitors comparative analysis
- Competitive threats and white space opportunities

**Template Guidance**: Focus on implications, not just competitor descriptions.

#### 2.3 Internal Assessment
- Current capabilities and gaps
- Organizational readiness
- Technology/process limitations

**Template Guidance**: Balance honest assessment with constructive framing.

### 3. Strategic Recommendation (4-6 pages)
#### 3.1 Proposed Strategy
- Strategic approach and positioning
- Key strategic moves (3-5 major initiatives)
- Differentiation and competitive advantage

**Template Guidance**: Clear, specific, actionable. Avoid platitudes.

#### 3.2 Success Metrics
- North star metric
- Leading indicators (3-5 metrics)
- Measurement approach

**Template Guidance**: Metrics must be measurable within 12 months.

### 4. Business Case (2-3 pages)
#### 4.1 Financial Analysis
- Investment required (detailed breakdown)
- Revenue impact (conservative, expected, optimistic)
- Cost savings or efficiency gains
- ROI and payback period

**Template Guidance**: Show assumptions. Provide sensitivity analysis.

#### 4.2 Risk Assessment
- Top 5 risks with likelihood and impact
- Mitigation strategies for each risk
- Contingency plans

**Template Guidance**: Include competitive risk of inaction.

### 5. Implementation Roadmap (3-4 pages)
#### 5.1 Phased Approach
- Phase 1: Quick wins (0-3 months)
- Phase 2: Foundation building (3-6 months)
- Phase 3: Scale and optimize (6-12 months)

**Template Guidance**: Each phase shows business value delivery, not just activities.

#### 5.2 Resource Requirements
- Team structure and roles
- Technology and tools needed
- External partnerships or vendors
- Budget allocation by phase

#### 5.3 Governance and Decision Rights
- Steering committee structure
- Decision escalation process
- Success review cadence

**Template Guidance**: Clear accountability for each major decision.

### Appendices
- A. Detailed Market Research
- B. Competitive Analysis Deep Dive
- C. Financial Modeling Assumptions
- D. Implementation Gantt Chart

## Customization Guidance

**Always Customize**:
- Industry-specific examples and benchmarks
- Client's specific organizational context
- Competitive landscape unique to client
- Financial analysis based on client's business model

**Keep Standard**:
- Overall structure and section sequence
- Executive summary format
- Business case components
- Risk assessment framework

## Quality Checklist

Before delivery, verify:
- [ ] Executive summary enables decision without reading full document
- [ ] All market statistics cited with sources
- [ ] Financial analysis shows assumptions and sensitivity
- [ ] Implementation roadmap shows value delivery per phase
- [ ] Risk assessment includes mitigation strategies
- [ ] Recommendations specific and actionable (not generic advice)

## Time Savings
- **Without template**: 2-3 hours structure development + 8-10 hours content
- **With template**: 0.5 hours customization + 8-10 hours content
- **Saved per document**: 1.5-2.5 hours (15-20% faster)
- **Team standardization**: Consistent client experience

## Template Maintenance
- Review quarterly based on client feedback
- Update with new best practices from successful engagements
- Refine based on team suggestions
- Version control changes
```

**Result**:
- Future strategy documents start from proven structure (saves 2 hours per document)
- Consistent format across team (clients recognize quality standard)
- New consultants have clear framework (faster onboarding)
- Template evolves with each successful engagement (compounding improvement)
- Team shares "what works" rather than reinventing structure

---

### Marketing Manager

**Scenario**: Campaign planning documents lack consistency across quarters

**Original Approach**:
Each quarterly campaign plan started fresh. Q1 plan focused on tactics, Q2 emphasized budget, Q3 led with goals. Executives confused by different formats. New team members unsure how to structure campaign plans.

**Template-Builder Finding** (HIGH):
- **Issue**: Four quarterly campaign plans with four different structures—no standardization
- **Impact**: Executives can't compare quarters, new team members lack guidance
- **Priority**: HIGH - create campaign planning template

**Template Created**:
```markdown
# TEMPLATE: Quarterly Campaign Plan

## Purpose
Quarterly marketing campaign plan for executive approval and team execution.

## Standard Structure

### 1. Campaign Investment Summary
**[QUARTER] Campaign: $[BUDGET] Investment → $[PIPELINE] Pipeline Goal ([ROI]x ROI)**

#### Goals
- Primary: [Specific MQL/pipeline/revenue goal with number]
- Secondary: [Supporting metric: brand awareness, engagement, etc.]
- Success criteria: [Specific numbers defining success]

#### Budget Allocation
- Channel 1: $[amount] ([%] of budget) - [Key tactic]
- Channel 2: $[amount] ([%] of budget) - [Key tactic]
- Channel 3: $[amount] ([%] of budget) - [Key tactic]

**Template Guidance**: Lead with investment and return. One table, scannable in 30 seconds.

### 2. Strategic Narrative

#### Campaign Theme
[1-2 sentence description of overarching campaign narrative or positioning]

#### Target Audience
- Primary: [Specific persona with job title, company size, pain point]
- Secondary: [Additional audience if applicable]
- Account targeting: [ABM approach if applicable]

#### Key Messages
1. [Message 1 - what we want audience to believe]
2. [Message 2 - supporting belief]
3. [Message 3 - call to action]

**Template Guidance**: Campaign theme should connect to broader annual strategy.

### 3. Channel Strategy

For each channel, use this structure:

#### [Channel Name] ($[Budget] / [%] of total)

**Objective**: [Specific goal this channel achieves]

**Tactics**:
- [Tactic 1]: [Brief description]
- [Tactic 2]: [Brief description]
- [Tactic 3]: [Brief description]

**Content Requirements**:
- [Asset 1]: [Format and quantity]
- [Asset 2]: [Format and quantity]

**Success Metrics**:
- [Metric 1]: [Target number]
- [Metric 2]: [Target number]
- [Efficiency metric]: [Target cost per MQL/opportunity]

**Template Guidance**: Show complete picture of each channel in one place.

### 4. Execution Plan

#### Content Production Calendar
[Link to detailed content calendar or summary table]

**Month 1**:
- Week 1: [Key content/campaign launches]
- Week 2-4: [Ongoing activities]

**Month 2**: [Repeat structure]

**Month 3**: [Repeat structure]

#### Team Responsibilities
- Content creation: [Owner]
- Design: [Owner]
- Paid media: [Owner]
- Marketing ops: [Owner]
- Campaign management: [Owner]

#### Key Milestones
- [Date]: [Milestone 1 - campaign launch, content delivery, etc.]
- [Date]: [Milestone 2]
- [Date]: [End of quarter review]

**Template Guidance**: Clear ownership and deadlines for accountability.

### 5. Measurement Framework

#### Reporting Cadence
- Weekly: [Metrics reviewed in team standup]
- Bi-weekly: [Leadership dashboard]
- End of quarter: [Comprehensive performance review]

#### Success Metrics by Funnel Stage
- Awareness: [Impressions, reach, engagement targets]
- Consideration: [Website visits, content downloads, webinar attendance]
- Conversion: [MQLs, SQLs, opportunities, pipeline created]
- Efficiency: [Cost per MQL, CAC, ROI]

#### Optimization Approach
- Data review: [Frequency - weekly, bi-weekly]
- Optimization trigger: [What performance level triggers change]
- Budget reallocation: [Process for shifting spend mid-quarter]

**Template Guidance**: Define "success" clearly before campaign launch.

## Customization Guidance

**Always Customize**:
- Specific goals and budget for the quarter
- Channel tactics based on quarterly priorities
- Content calendar based on product launches/events
- Target audience based on account priorities

**Keep Standard**:
- Overall structure and section sequence
- Channel strategy framework
- Measurement approach
- Executive summary format

## Efficiency Gains
- **Without template**: 3 hours planning structure + 5 hours content
- **With template**: 0.5 hours setup + 5 hours content
- **Saved per quarter**: 2.5 hours
- **Annual savings**: 10 hours (20% faster planning)
- **Consistency benefit**: Executives can compare quarters easily

## Template Maintenance
- Update after each quarter based on what worked
- Refine metrics based on executive feedback
- Adjust structure if business priorities shift
- Version control with change log
```

**Result**:
- Quarterly planning accelerated (2.5 hours saved per quarter)
- Executive comparison enabled (consistent format across quarters)
- New team members onboard faster (clear framework)
- Template captures "what works" (best practices standardized)
- Focus shifts from structure to strategy (more time on insights)

---

### Business Analyst

**Scenario**: Market analysis deliverables vary significantly across different projects

**Original Approach**:
Each market analysis organized differently. Some led with methodology, others with findings. Inconsistent depth of competitive analysis. Stakeholders couldn't compare analyses across different markets or time periods.

**Template-Builder Finding** (HIGH):
- **Issue**: Five market analyses with five different structures—comparability impossible
- **Impact**: Leadership can't synthesize insights across markets, analysts reinvent structure
- **Priority**: HIGH - create market analysis template

**Template Created**:
```markdown
# TEMPLATE: Market Analysis Report

## Purpose
Comprehensive market analysis for strategic decision-making on market entry, expansion, or competitive positioning.

## Standard Structure

### 1. Executive Summary (1 page)

**Market Opportunity**: $[SIZE]M market growing at [%] CAGR

**Key Finding**: [1-2 sentence insight that drives strategic recommendation]

**Strategic Implications**:
- [Implication 1]: [Specific action or consideration]
- [Implication 2]: [Specific action or consideration]
- [Implication 3]: [Specific action or consideration]

**Recommendation**: [Clear strategic recommendation with expected outcome]

**Template Guidance**: Executives should understand opportunity and recommended action from this section alone.

### 2. Market Landscape (3-4 pages)

#### 2.1 Market Size and Growth
- Total Addressable Market (TAM): $[X]M
- Serviceable Addressable Market (SAM): $[X]M
- Serviceable Obtainable Market (SOM): $[X]M
- Historical growth (3-year CAGR): [X]%
- Projected growth (3-year forecast): [X]%

**Data visualization**: Market size trend chart (historical + projected)

**Template Guidance**: Cite all market sizing sources. Show methodology for TAM/SAM/SOM calculation.

#### 2.2 Market Segmentation
[Table format]
| Segment | Size ($M) | Growth % | Key Characteristics | Our Fit (High/Med/Low) |
|---------|-----------|----------|---------------------|------------------------|
| Segment 1 | $XXM | XX% | [Description] | High/Med/Low |
| Segment 2 | $XXM | XX% | [Description] | High/Med/Low |

**Template Guidance**: Minimum 3 segments. Assess our competitive advantage in each.

#### 2.3 Market Trends
1. **[Trend 1 Name]**: [Description of trend and implications for our strategy]
2. **[Trend 2 Name]**: [Description of trend and implications]
3. **[Trend 3 Name]**: [Description of trend and implications]

**Template Guidance**: Focus on trends creating opportunities or threats, not generic industry observations.

### 3. Competitive Analysis (4-5 pages)

#### 3.1 Competitive Landscape Overview
**Data visualization**: Competitive positioning map (2x2 matrix showing key differentiation axes)

**Market Structure**:
- Market leader: [Company] with [X]% share
- Fast followers: [Companies] with [X]% combined share
- Niche players: [Companies] targeting [specific segments]
- Our position: [Current or projected position]

#### 3.2 Competitor Deep Dive

For each major competitor (top 3-5):

**[Competitor Name]** (Market share: [X]%)

**Strengths**:
- [Strength 1 with evidence]
- [Strength 2 with evidence]
- [Strength 3 with evidence]

**Weaknesses**:
- [Weakness 1 with evidence]
- [Weakness 2 with evidence]
- [Weakness 3 with evidence]

**Strategy**:
- [Observable strategic approach]
- [Recent moves or announcements]
- [Likely future direction based on evidence]

**Implications for Us**:
- [What this competitor's position means for our strategy]

**Template Guidance**: Evidence-based analysis only. Cite sources for competitor information.

#### 3.3 Competitive Gaps and Opportunities
- **Gap 1**: [Unmet customer need competitors aren't addressing]
  - Evidence: [Customer research, reviews, market data]
  - Opportunity: [How we could fill this gap]
- **Gap 2**: [Repeat structure]
- **Gap 3**: [Repeat structure]

### 4. Customer Insights (3-4 pages)

#### 4.1 Research Methodology
- [Interview count]: [Number] customer/prospect interviews
- [Survey count]: [Number] survey responses
- [Additional research]: [Other research methods used]
- [Time period]: [When research conducted]

#### 4.2 Customer Needs and Pain Points

**Critical Pain Points** (ranked by frequency × severity):
1. **[Pain Point 1]**: [Description]
   - Frequency: [X]% of customers mention
   - Severity: [Impact on business/operations]
   - Current solutions: [How customers address today]
   - Our opportunity: [How we could solve better]

[Repeat for top 5 pain points]

**Template Guidance**: Quantify where possible. Include direct customer quotes for credibility.

#### 4.3 Customer Preferences and Requirements

**Must-Have Features**:
- [Feature 1]: [Why it's non-negotiable]
- [Feature 2]: [Why it's non-negotiable]

**Nice-to-Have Features**:
- [Feature 1]: [Why it's valued but not required]

**Deal-Breakers**:
- [What would prevent purchase/adoption]

#### 4.4 Willingness to Pay Analysis
- Current spending: $[X] - $[Y] per [unit]
- Perceived value ceiling: $[X] per [unit]
- Sweet spot: $[X] per [unit]
- Price sensitivity: [High/Medium/Low] based on [evidence]

**Template Guidance**: Segment willingness to pay by customer segment if significantly different.

### 5. Strategic Opportunity Assessment (2-3 pages)

#### 5.1 Market Attractiveness Analysis
[Score each dimension 1-5, provide brief evidence]
- Market size: [Score] - [Rationale]
- Growth rate: [Score] - [Rationale]
- Profit potential: [Score] - [Rationale]
- Competitive intensity: [Score] - [Rationale]
- Market accessibility: [Score] - [Rationale]

**Overall Attractiveness**: [Score/25] - [High/Medium/Low]

#### 5.2 Our Competitive Position
[Score each dimension 1-5, provide brief evidence]
- Product/service fit: [Score] - [Rationale]
- Brand strength: [Score] - [Rationale]
- Distribution capability: [Score] - [Rationale]
- Cost position: [Score] - [Rationale]
- Innovation capability: [Score] - [Rationale]

**Overall Position Strength**: [Score/25] - [Strong/Moderate/Weak]

#### 5.3 Opportunity Sizing
- Total market opportunity: $[X]M
- Realistic market share (3-year target): [X]%
- Projected revenue potential: $[X]M
- Investment required: $[X]M
- Projected ROI: [X]x

**Template Guidance**: Conservative assumptions. Show sensitivity analysis.

### 6. Strategic Recommendations (2-3 pages)

#### 6.1 Recommended Strategy
[Clear, specific strategic recommendation - enter/expand/exit/partner/acquire]

**Strategic Rationale**:
- [Reason 1 based on analysis]
- [Reason 2 based on analysis]
- [Reason 3 based on analysis]

#### 6.2 Target Segment and Positioning
- **Primary target**: [Specific segment with rationale]
- **Positioning**: [How we should position vs competitors]
- **Key differentiation**: [What makes us different/better]

#### 6.3 Go-to-Market Approach
- **Distribution strategy**: [How we reach customers]
- **Pricing strategy**: [Pricing approach and rationale]
- **Partnership approach**: [Key partnerships needed]
- **Marketing approach**: [How we create awareness and demand]

#### 6.4 Success Metrics and Milestones
**Year 1**:
- [Metric 1]: [Target]
- [Metric 2]: [Target]

**Year 2**: [Repeat]

**Year 3**: [Repeat]

### Appendices
- A. Research Methodology Details
- B. Complete Competitive Comparison Table
- C. Customer Interview Summary
- D. Market Sizing Methodology
- E. Financial Modeling Assumptions

## Customization Guidance

**Always Customize**:
- Industry-specific dynamics and trends
- Competitive landscape unique to market
- Customer research findings
- Opportunity sizing based on specific market
- Strategic recommendations

**Keep Standard**:
- Overall structure and analytical framework
- Competitive analysis structure
- Customer insights framework
- Opportunity assessment methodology

## Quality Checklist

Before delivery, verify:
- [ ] Market sizing includes TAM/SAM/SOM with cited sources
- [ ] Competitive analysis covers top 3-5 competitors with evidence
- [ ] Customer research includes both quantitative and qualitative data
- [ ] Strategic recommendation backed by analysis findings
- [ ] Opportunity sizing shows conservative assumptions
- [ ] All claims cited with sources
- [ ] Appendices include detailed methodology

## Efficiency Gains
- **Without template**: 4 hours structuring + 12 hours research/analysis
- **With template**: 0.5 hours setup + 12 hours research/analysis
- **Saved per analysis**: 3.5 hours (20% faster)
- **Consistency benefit**: Comparable across markets and time periods
- **Quality benefit**: Ensures comprehensive coverage of all key areas

## Template Maintenance
- Update quarterly based on stakeholder feedback
- Refine competitive analysis framework based on what proves most useful
- Add emerging analysis sections as markets evolve
- Version control with detailed change log
```

**Result**:
- Market analyses accelerated (3.5 hours saved per analysis)
- Cross-market comparison enabled (consistent framework)
- Comprehensive coverage ensured (template prevents gaps)
- New analysts have clear structure (faster ramp-up)
- Focus on insights not structure (more time on analysis quality)

---

### Project Manager

**Scenario**: Project proposals lack standardization across different project types

**Original Approach**:
Each project proposal created uniquely. Some emphasized technical approach, others focused on timeline, others on budget. Stakeholders couldn't easily compare proposals. Approval process slow due to missing information.

**Template-Builder Finding** (MEDIUM):
- **Issue**: Project proposals inconsistent—stakeholders request missing information repeatedly
- **Impact**: Approval delays, stakeholder confusion, rework cycles
- **Priority**: MEDIUM - create project proposal template

**Template Created**:
```markdown
# TEMPLATE: Project Proposal

## Purpose
Project proposal for stakeholder approval and resource allocation.

## Standard Structure

### 1. Executive Summary (1 page)

**Project**: [Project name and one-sentence description]

**Business Problem**: [Specific problem this project solves—quantified impact of current state]

**Proposed Solution**: [High-level approach and expected outcome]

**Business Value**:
- [Primary benefit]: [Quantified impact—revenue, cost savings, efficiency]
- [Secondary benefit]: [Quantified impact]
- ROI: [Payback period or ROI calculation]

**Investment Required**: $[Total project cost]

**Timeline**: [Start date] to [End date] ([X] months total)

**Decision Required**: [What approval needed to proceed]

**Template Guidance**: Stakeholders should understand problem, solution, value, cost, and timeline from this page alone.

### 2. Business Case (2-3 pages)

#### 2.1 Problem Statement

**Current State**:
- [Description of current situation]
- [Specific pain points or limitations]
- [Quantified impact—revenue loss, costs, inefficiency, risk]

**Root Causes**:
- [Underlying cause 1]
- [Underlying cause 2]
- [Underlying cause 3]

**Cost of Inaction**:
- [What happens if we don't solve this]
- [Quantified ongoing cost or risk]

**Template Guidance**: Make the problem urgent and specific. Quantify current state impact.

#### 2.2 Proposed Solution

**Solution Overview**:
[1-2 paragraph description of what will be built/implemented]

**Key Capabilities**:
- [Capability 1]: [What it enables]
- [Capability 2]: [What it enables]
- [Capability 3]: [What it enables]

**How It Solves the Problem**:
- [Pain point 1] → [How solution addresses it]
- [Pain point 2] → [How solution addresses it]
- [Pain point 3] → [How solution addresses it]

**Template Guidance**: Connect solution directly to problem. Explain how each capability addresses specific pain point.

#### 2.3 Expected Outcomes

**Quantified Benefits**:
- [Benefit 1]: [Specific metric improvement—from X to Y]
- [Benefit 2]: [Specific metric improvement]
- [Benefit 3]: [Specific metric improvement]

**Qualitative Benefits**:
- [Benefit 1]: [Description]
- [Benefit 2]: [Description]

**Success Criteria** (how we'll know it worked):
- [Measurable criterion 1]
- [Measurable criterion 2]
- [Measurable criterion 3]

**Template Guidance**: Quantify where possible. Define "success" clearly before project starts.

### 3. Project Approach (3-4 pages)

#### 3.1 Solution Architecture
[High-level diagram or description of technical approach]

**Technology Stack**:
- [Component 1]: [Technology choice and rationale]
- [Component 2]: [Technology choice and rationale]
- [Component 3]: [Technology choice and rationale]

**Integrations**:
- [System 1]: [Integration approach]
- [System 2]: [Integration approach]

**Template Guidance**: Appropriate technical depth for audience. Executives need architecture overview, not implementation details.

#### 3.2 Project Phases

**Phase 1: [Phase Name]** (Weeks [X-Y])
- **Objective**: [What this phase achieves]
- **Key Deliverables**:
  - [Deliverable 1]
  - [Deliverable 2]
- **Success Criteria**: [How we know phase succeeded]
- **Business Value**: [What stakeholders see/get from this phase]

[Repeat structure for each phase]

**Template Guidance**: Each phase should deliver business value, not just technical milestones.

#### 3.3 Risk Management

[Table format]
| Risk | Likelihood | Impact | Mitigation Strategy | Contingency Plan |
|------|-----------|--------|-------------------|------------------|
| [Risk 1] | H/M/L | H/M/L | [How we reduce likelihood] | [What we do if it happens] |
| [Risk 2] | H/M/L | H/M/L | [Mitigation] | [Contingency] |

**Top 3 Critical Risks**:
1. **[Risk name]**: [Detailed mitigation approach]
2. **[Risk name]**: [Detailed mitigation approach]
3. **[Risk name]**: [Detailed mitigation approach]

**Template Guidance**: Address stakeholder concerns proactively. Include competitive risk of delayed execution.

### 4. Resource Plan (2-3 pages)

#### 4.1 Team Structure
- **Project Sponsor**: [Name/role]
- **Project Manager**: [Name] ([X]% allocation)
- **Technical Lead**: [Name] ([X]% allocation)
- **Team Members**:
  - [Role]: [Name] ([X]% allocation)
  - [Role]: [Name] ([X]% allocation)

**External Resources**:
- [Vendor/consultant 1]: [Scope of work]
- [Vendor/consultant 2]: [Scope of work]

#### 4.2 Budget Breakdown

[Table format]
| Category | Q1 | Q2 | Q3 | Q4 | Total |
|----------|----|----|----|----|-------|
| Internal labor | $X | $X | $X | $X | $X |
| External vendors | $X | $X | $X | $X | $X |
| Software/licenses | $X | $X | $X | $X | $X |
| Infrastructure | $X | $X | $X | $X | $X |
| **Total** | **$X** | **$X** | **$X** | **$X** | **$X** |

**Budget Notes**:
- [Assumption 1]
- [Assumption 2]
- [Contingency allocation]: [X]%

**Template Guidance**: Show budget by quarter for cash flow planning. Include contingency.

#### 4.3 Dependencies
- **Technical Dependencies**:
  - [System/team 1]: [What we need and when]
  - [System/team 2]: [What we need and when]
- **Business Dependencies**:
  - [Decision/approval 1]: [What and when]
  - [Resource/access 2]: [What and when]

### 5. Project Governance (1-2 pages)

#### 5.1 Governance Structure
- **Steering Committee**: [Members and meeting cadence]
- **Project Team**: [Core team and meeting cadence]
- **Stakeholder Updates**: [Frequency and format]

#### 5.2 Decision Rights
- **Project Sponsor decides**: [Scope of authority]
- **Steering Committee decides**: [Scope of authority]
- **Project Manager decides**: [Scope of authority]

**Escalation Path**: [When and how issues escalate]

#### 5.3 Communication Plan
- **Weekly**: [Audience and content]
- **Bi-weekly**: [Audience and content]
- **Monthly**: [Audience and content]
- **Milestone-based**: [What triggers communication]

#### 5.4 Change Management
- **Change Request Process**: [How scope changes are requested and approved]
- **Impact Assessment**: [How changes are evaluated]
- **Approval Authority**: [Who can approve changes]

### 6. Timeline and Milestones (1 page)

**Project Timeline**: [Start] to [End] ([X] months)

**Major Milestones**:
- [Date]: [Milestone 1 - project kickoff]
- [Date]: [Milestone 2 - phase 1 complete]
- [Date]: [Milestone 3 - phase 2 complete]
- [Date]: [Milestone 4 - final delivery]

**Critical Path**: [Key dependencies that drive timeline]

[Gantt chart or visual timeline]

**Template Guidance**: Show dependencies visually. Highlight critical path activities.

### Appendices
- A. Detailed Technical Specifications
- B. Detailed Project Schedule (Gantt)
- C. Cost-Benefit Analysis Details
- D. Stakeholder Analysis
- E. Vendor/Product Evaluations

## Customization Guidance

**Always Customize**:
- Business problem and quantified impact
- Solution approach and technical details
- Resource requirements and budget
- Timeline and phases
- Risks specific to project

**Keep Standard**:
- Overall structure and section sequence
- Business case framework
- Risk management approach
- Governance structure template

## Quality Checklist

Before submission, verify:
- [ ] Business problem quantified with current state impact
- [ ] Solution clearly addresses stated problem
- [ ] Benefits quantified with success criteria
- [ ] Budget includes all cost categories and contingency
- [ ] Risk mitigation strategies defined for top risks
- [ ] Timeline shows business value delivery per phase
- [ ] Governance and decision rights clearly defined

## Efficiency Gains
- **Without template**: 3 hours structuring + 6 hours content
- **With template**: 0.5 hours setup + 6 hours content
- **Saved per proposal**: 2.5 hours (25% faster)
- **Quality benefit**: Ensures comprehensive proposal every time
- **Approval benefit**: Faster approval with consistent information

## Template Maintenance
- Update quarterly based on stakeholder feedback
- Refine business case framework based on what drives approvals
- Adjust governance structure as organization evolves
- Version control with change history
```

**Result**:
- Proposal development accelerated (2.5 hours per proposal)
- Approval process faster (consistent information provided)
- Stakeholder confidence improved (professional, comprehensive proposals)
- New PMs have clear framework (faster capability building)
- Focus on project strategy not proposal structure

---

### Content Strategist

**Scenario**: Content briefs for writers lack consistency and completeness

**Original Approach**:
Each content brief created differently. Some writers got detailed guidance, others got vague direction. Inconsistent quality in deliverables. Frequent revision cycles due to unclear expectations. Writers frustrated by lack of guidance.

**Template-Builder Finding** (MEDIUM):
- **Issue**: Content briefs vary widely—writers unclear on expectations, quality inconsistent
- **Impact**: Revision cycles, inconsistent output quality, writer frustration
- **Priority**: MEDIUM - create content brief template

**Template Created**:
```markdown
# TEMPLATE: Content Brief for Writers

## Purpose
Comprehensive content brief providing writers with everything needed to create high-quality content on first attempt.

## Standard Structure

### 1. Content Overview

**Content Type**: [Blog post / Whitepaper / Case study / Email / Landing page / etc.]

**Working Title**: [Descriptive title—may change during writing]

**Target Length**: [Word count range—e.g., 1,200-1,500 words]

**Primary Goal**: [What this content should achieve—awareness, education, conversion]

**Delivery Date**: [When first draft due]

**Template Guidance**: Set clear expectations upfront—format, length, purpose, deadline.

### 2. Audience and Context

**Primary Audience**:
- **Persona**: [Specific persona from content strategy]
- **Role/Title**: [Job title and seniority level]
- **Company Profile**: [Company size, industry, context]
- **Current State**: [Where they are in buyer journey—awareness, consideration, decision]

**What They Know**:
- [Existing knowledge level on topic]
- [Terminology they understand]
- [Concepts we can assume]

**What They Don't Know**:
- [Knowledge gaps we need to address]
- [Context we need to provide]
- [Terms we need to define]

**Template Guidance**: Specific persona, not "business professionals." Writer needs to know exact sophistication level.

### 3. Content Positioning

**Buyer Journey Stage**: [Awareness / Consideration / Decision]

**Content Funnel Position**: [Top / Middle / Bottom of funnel]

**Relationship to Other Content**:
- [Related piece 1]: [How this connects]
- [Related piece 2]: [How this connects]
- [Content series context if applicable]

**SEO/Distribution Context**:
- **Primary keyword**: [Main keyword we're targeting]
- **Secondary keywords**: [Supporting keywords to include naturally]
- **Distribution channels**: [Where this will be promoted—organic, paid, email]

**Template Guidance**: Help writer understand strategic context, not just assignment.

### 4. Key Messages and Angle

**Unique Angle**: [What makes this different from everything else written on this topic]

**Core Argument/Thesis**: [The main point we're making—complete sentence]

**Key Messages** (3-5 messages reader should take away):
1. [Message 1]: [What we want reader to believe]
2. [Message 2]: [What we want reader to believe]
3. [Message 3]: [What we want reader to believe]

**What NOT to Say**:
- [Common approach we're explicitly avoiding]
- [Messaging to stay away from]
- [Competitive positioning to avoid]

**Template Guidance**: Clear thesis prevents writer from wandering. "What NOT to say" prevents common mistakes.

### 5. Content Structure

**Recommended Outline**:

**Introduction (150-200 words)**:
- Hook: [Specific opening approach—stat, story, question]
- Problem statement: [Pain point we're addressing]
- Preview: [What article will cover]

**Section 1: [Section title]** (300-400 words)
- Key point: [Main idea for this section]
- Supporting points:
  - [Point 1]
  - [Point 2]
- Evidence needed: [Data, examples, quotes to include]

**Section 2: [Section title]** (300-400 words)
- [Repeat structure]

**Section 3: [Section title]** (300-400 words)
- [Repeat structure]

**Conclusion** (150-200 words):
- Summary: [Key takeaways recap]
- Call to action: [Specific next step for reader]

**Template Guidance**: Outline is recommendation, not requirement. Writer can adjust if better structure emerges.

### 6. Required Elements

**Must Include**:
- [ ] [Specific data point or statistic]: [Source]
- [ ] [Customer example or case study]: [Which customer]
- [ ] [Expert quote]: [From whom]
- [ ] [Visual element]: [Chart, diagram, screenshot]
- [ ] [Competitive differentiation]: [Our approach vs. typical approach]

**Tone and Voice**:
- **Tone**: [Authoritative / Conversational / Educational / Provocative]
- **Voice**: [First person "we" / Third person / Second person "you"]
- **Personality**: [Professional but accessible / Technical expert / Friendly guide]

**Stylistic Requirements**:
- Subheadings: [Required every 200-300 words]
- Paragraph length: [Maximum 3-4 sentences]
- Sentence length: [Vary, but average under 20 words]
- Active voice: [Minimum 80% of sentences]
- Examples: [Minimum 3 concrete examples]

**Template Guidance**: Specific requirements prevent revision cycles. Writer knows expectations upfront.

### 7. Research and References

**Background Research Provided**:
- [Link to research doc 1]: [What it contains]
- [Link to research doc 2]: [What it contains]
- [Internal resource]: [Where to find more info]

**Subject Matter Experts**:
- [Expert 1]: [Name, role, contact] - [What they can help with]
- [Expert 2]: [Name, role, contact] - [What they can help with]

**Competitor Content to Reference** (learn from, don't copy):
- [Competitor piece 1]: [URL] - [What they did well]
- [Competitor piece 2]: [URL] - [Gap we can fill]

**Citation Requirements**:
- All statistics must be cited with source and date
- Link to original sources, not secondary coverage
- Prefer authoritative sources: [List preferred sources]

**Template Guidance**: Provide research upfront so writer doesn't waste time finding basics.

### 8. Examples and Inspiration

**Example 1**: [Title]
- **Link**: [URL]
- **What works**: [Specific element to emulate—structure, tone, examples]
- **What to avoid**: [What didn't work in this piece]

**Example 2**: [Title]
- [Repeat structure]

**Our Best Comparable Content**:
- [Title]: [URL] - [Why this is our benchmark]

**Template Guidance**: Specific examples calibrate writer's mental model of quality.

### 9. SEO and Metadata

**Meta Title** (max 60 characters): [Suggested title for search results]

**Meta Description** (max 155 characters): [Suggested description for search]

**URL Slug**: [Suggested URL path]

**Header Tags Strategy**:
- H1: [Main article title]
- H2s: [Section headers]
- H3s: [Subsections where appropriate]

**Internal Linking**:
- Link to: [Related content piece 1] - [Suggested anchor text]
- Link to: [Related content piece 2] - [Suggested anchor text]
- Link to: [Product page if appropriate]

**Template Guidance**: Provide SEO requirements but don't constrain creativity.

### 10. Review and Approval Process

**Review Process**:
1. **First draft**: [Date] to [Reviewer name]
2. **Revision**: [Expected turnaround time]
3. **Final approval**: [Who gives final approval]
4. **Publish date**: [Target publication date]

**Reviewer Expectations**:
- [Reviewer 1] will focus on: [Technical accuracy]
- [Reviewer 2] will focus on: [Messaging alignment]
- [Reviewer 3] will focus on: [SEO and formatting]

**Definition of Done**:
- [ ] Meets word count target (±10%)
- [ ] Includes all required elements
- [ ] Follows tone and style guidelines
- [ ] All statistics cited with sources
- [ ] Passes readability check (Flesch-Kincaid grade level [X])
- [ ] Includes compelling introduction and clear CTA

**Template Guidance**: Clear process and expectations prevent surprise feedback loops.

### 11. Success Metrics

**How We'll Measure Success** (after publication):
- **Traffic**: [Target pageviews in first 30 days]
- **Engagement**: [Target time on page / scroll depth]
- **Conversion**: [Target downloads / signups / demos requested]
- **SEO**: [Target ranking position for primary keyword]

**Benchmark**: [Previous similar content performance for comparison]

**Template Guidance**: Help writer understand what "good" looks like.

## Customization Guidance

**Always Customize**:
- Specific topic and angle
- Target audience and sophistication level
- Required research and examples
- SEO keywords and metadata
- Success metrics

**Keep Standard**:
- Overall structure and section framework
- Required elements checklist
- Review process structure
- Tone and style guidance approach

## Quality Checklist

Before sending brief to writer, verify:
- [ ] Target audience clearly defined with specific persona
- [ ] Unique angle articulated (not generic topic treatment)
- [ ] Key messages clearly stated (3-5 specific messages)
- [ ] Recommended outline provided
- [ ] Research materials attached or linked
- [ ] Example content provided for calibration
- [ ] SEO requirements specified
- [ ] Review process and timeline clear
- [ ] Success metrics defined

## Efficiency Gains
- **Without template**: 2 hours creating brief + 3 hours in revision cycles
- **With template**: 0.5 hours filling template + 0.5 hours revision
- **Saved per brief**: 4 hours (80% reduction in total time)
- **Quality benefit**: First draft quality significantly improved
- **Writer satisfaction**: Clear expectations reduce frustration

## Template Maintenance
- Update quarterly based on writer feedback
- Refine based on which briefs resulted in best first drafts
- Add new required elements as content strategy evolves
- Version control with change log
- Share best brief examples with team
```

**Result**:
- Brief creation accelerated (1.5 hours vs 2 hours)
- Revision cycles reduced dramatically (0.5 hours vs 3 hours)
- First draft quality improved (clear expectations set)
- Writer satisfaction increased (comprehensive guidance provided)
- Consistency across content library (standard framework applied)

## How This Agent Contributes to Compounding Knowledge Work

**First Deliverable**: Template-builder identifies 3-5 opportunities to create templates from successful structures

**Second Deliverable**: You start recognizing patterns worth templating during creation

**Fifth Deliverable**: Template library growing—many deliverables start from proven frameworks

**Tenth Deliverable**: You instinctively think "template first" and rarely start from blank page

**Result**: Each successful deliverable becomes a reusable asset, compounding efficiency across all future similar work. The ultimate expression of compounding knowledge work—capturing patterns that make all future work faster and better.

## Finding Categories

### CRITICAL Priority Findings
- **Missing templates causing significant rework**: Same structure created from scratch repeatedly across team
- **Team inconsistency creating stakeholder confusion**: Deliverables vary widely despite similar purpose
- **Onboarding bottleneck**: New team members lack frameworks and create inconsistent work
- **Pattern emerged but not captured**: Third similar deliverable created without standardization

**Action**: Must create template immediately - ongoing inefficiency across team

### HIGH Priority Findings
- **Successful structure worth reusing**: Deliverable structure worked brilliantly and is repeatable
- **Template exists but outdated**: Current template no longer reflects best practices
- **Template missing key elements**: Existing template incomplete based on recent learnings
- **Customization guidance needed**: Team using template incorrectly without proper guidance

**Action**: Should create or update template - significant efficiency opportunity

### MEDIUM Priority Findings
- **Template refinement opportunity**: Existing template works but could be improved
- **New template category emerging**: Pattern appearing but not yet validated across multiple deliverables
- **Template documentation gaps**: Template exists but lacks clear usage guidance
- **Template discoverability issue**: Team recreating structures because they don't know template exists

**Action**: Fix if time allows - improves efficiency and consistency

### LOW Priority Findings
- **Minor template enhancements**: Small improvements to existing templates
- **Optional template variations**: Alternative structures for edge cases
- **Template formatting refinements**: Cosmetic improvements to template clarity
- **Additional example needed**: Template works but would benefit from another example

**Action**: Document for template improvement backlog

## Common Patterns This Agent Catches

### Pattern 1: "Third Time's the Template"
**Example**: Team has created similar structure three times in three months—no template exists

**Issue**: Wasting startup time repeatedly establishing same framework

**Fix**: Create template from most successful version, document customization guidance, train team on usage

---

### Pattern 2: Undocumented "Tribal Knowledge"
**Example**: Senior team members have implicit framework in their heads but never documented—junior members struggle

**Issue**: Knowledge trapped in individuals, not accessible to team

**Fix**: Extract implicit framework from senior members, document as template with examples, make discoverable

---

### Pattern 3: Template Exists But No One Uses It
**Example**: Template created but team continues creating from scratch because they don't know it exists or understand when to use it

**Issue**: Template investment wasted due to discoverability or guidance gaps

**Fix**: Improve template discoverability (naming, location, index), add clear "when to use" guidance, provide examples

---

### Pattern 4: Template Fossilization
**Example**: Template created 2 years ago but team has learned better approaches—template now outdated

**Issue**: Template teaches old approach instead of current best practices

**Fix**: Regular template review process, version control, update based on recent successful deliverables

---

### Pattern 5: Over-Templating (Rare but Real)
**Example**: Template so rigid it constrains creativity or prevents adaptation to unique contexts

**Issue**: Template becomes straightjacket rather than accelerator

**Fix**: Add flexibility guidance, show examples of appropriate customization, balance structure with creative freedom

## Tips for Working with This Agent

### 1. Template on the Third Iteration
Don't template too early (first version may not be optimal):
- First deliverable: Explore and discover what works
- Second deliverable: Validate approach and refine
- Third deliverable: If structure similar, create template
- Pattern: Template emerges from successful repetition, not speculation

### 2. Balance Structure with Flexibility
Templates should accelerate, not constrain:
- Provide standard structure for repeatable elements
- Mark sections as "always customize" vs "keep standard"
- Include examples showing appropriate customization
- Give permission to deviate when context demands it
- Templates guide, they don't mandate

### 3. Include "How to Use" Guidance
Template without guidance often goes unused:
- When to use this template (and when not to)
- What to customize vs. what to keep standard
- How long template should take to complete
- Examples of good vs. poor customization
- Common mistakes to avoid

### 4. Maintain Templates Like Code
Templates need version control and maintenance:
- Version templates with change logs
- Review templates quarterly based on usage
- Update based on what works in recent deliverables
- Retire templates that no longer match current approach
- Track which templates used most (and improve those first)

### 5. Measure Template ROI
Quantify efficiency gains to justify investment:
- Time saved per use (before template vs. after)
- Consistency improvement (stakeholder feedback)
- Onboarding acceleration (new team member ramp-up)
- Quality improvement (first draft acceptance rate)
- Update templates showing highest ROI first

## Related Agents

**Complementary Agents**:
- **structure-architect**: Optimizes organization before capturing as template
- **simplification-expert**: Reduces complexity before standardizing
- **completeness-validator**: Ensures template includes all necessary elements
- **stakeholder-alignment-checker**: Validates template meets stakeholder expectations

**When to Use Together**:
Run structure-architect to optimize organization, then template-builder to capture successful structure as reusable framework, then simplification-expert to ensure template isn't overcomplicated. Good structure enables effective templates.

## Next Steps After Template Findings

1. Review all template-builder findings to identify template opportunities
2. Create CRITICAL templates first (preventing ongoing team inefficiency)
3. Document HIGH template opportunities (significant efficiency gains)
4. Establish template maintenance process (quarterly review and updates)
5. Update your workflow to start from templates when applicable

**Remember**: Templates are not about removing creativity—they're about removing friction. When you don't have to think about structure, you can focus entirely on insights, strategy, and value creation. Each template you create is an investment that pays dividends on every future deliverable.

---

**The template-builder exists to capture your brilliance for reuse.** Each successful deliverable becomes a framework that accelerates future work, compounding your effectiveness exponentially with every template created.
