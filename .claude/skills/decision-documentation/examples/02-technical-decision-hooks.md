# Example: Technical Decision - PostToolUse Hooks

This example shows how to document a technical implementation decision using the full template.

---

# Decision: Use PostToolUse Hooks for Automatic Skill Activation

**Date:** 2025-11-20
**Context:** Claude Code Automation
**Participants:** Iwo
**Status:** Active (Review: After 2 weeks usage)

---

## Decision Made

Implement automatic skill activation using PostToolUse hooks rather than PreToolUse hooks or manual slash commands.

---

## Why This Decision?

### Problem
Skills are manually activated via slash commands, leading to:
- Forgetting to use relevant skills
- Interrupting workflow to switch context
- Missing opportunities for proactive assistance

### Options Considered
1. **PreToolUse Hooks**
   - Pros: Can block/validate before execution
   - Cons: Adds latency, can't see tool results

2. **PostToolUse Hooks** ✅ **CHOSEN**
   - Pros: See tool results, provide context based on actual data
   - Cons: Can't prevent tool execution

3. **Manual Slash Commands** (status quo)
   - Pros: Explicit control
   - Cons: Requires remembering, interrupts flow

### Rationale
- PostToolUse allows context injection AFTER seeing tool results
- Can activate skills conditionally (e.g., only for large datasets)
- No latency penalty - hooks run in parallel with Claude's processing
- More intelligent activation (data-driven, not predictive)

---

## Trade-offs Accepted

**Not getting:**
- Ability to block tool execution based on validation
- Pre-execution warnings

**Gaining:**
- Zero-latency skill activation
- Context-aware (based on actual results)
- Proactive rather than reactive assistance

---

## Implementation Impact

**Affects:**
- .claude/hooks/ (3 new hook scripts)
- .claude/settings.json (PostToolUse configurations)
- User workflow (automatic context vs manual activation)

**Action Items:**
- [x] Create hook scripts for postgresql, gmail, company-brain
- [x] Validate with claude-code-specialist
- [ ] Test each hook with real workflows
- [ ] Monitor for false positives (unnecessary activations)

---

## Review Criteria

**Revisit if:**
- Hooks activate too frequently (noise)
- Performance impact noticeable (>500ms delay)
- Users prefer explicit control

**Success metrics:**
- Time saved: ~2-3 min per relevant tool use
- Reduced "I should have used skill X" moments
- Positive user feedback after 2 weeks

**Scheduled review:** December 4, 2025

---

## Related Decisions
- Builds on: Session context management strategy
- Influences: Future hook development patterns

---

## Notes
Can add PreToolUse hooks later for validation if needed - these are complementary, not mutually exclusive.

---

**Learning:** This example shows how technical decisions benefit from documenting the trade-offs and review criteria. Notice the scheduled review after 2 weeks of usage - important for technical experiments.
