# Changelog

All notable changes to the AI Second Brain Template.

## [1.2.0] - 2025-12-14

### Added
- **Interview-based onboarding agent** (`brain-onboarding`) - No more blank template anxiety
  - 7-phase guided setup through conversation
  - Multi-session support with automatic progress tracking
  - Scope-first separation (Business/Personal/Hybrid)
  - Tiered voice capture (15→10→5→3 samples)
  - Gap-to-todo pattern for incomplete items
- **Pre-session checklist** (`docs/pre-session-checklist.md`) - Preparation guide for setup
- **Progress tracking template** (`brain-health/onboarding-progress.md`) - Resume support

### Changed
- `/setup` command now launches interview-based onboarding instead of form-based wizard
- README.md updated with new onboarding flow and 4-command workflow emphasis
- GETTING-STARTED.md rewritten for interview-based experience
- Requirements section updated (Claude Pro/Max, not API key)

### Improved
- 4-command workflow (`/plan → /work → /review → /learn`) now prominently featured throughout documentation

---

## [1.1.0] - 2025-12-05

### Added
- Initial template release
- 20 slash commands
- 7 specialized skills
- 9 AI agents
- Complete memory structure with templates
- Brain health tracking
- Experience logging system
- Getting Started guide
- Comprehensive documentation

### Commands Included
- `/ask` - Quick help
- `/plan` - Create execution plans
- `/work` - Execute with tracking
- `/review` - 6-agent quality review
- `/learn` - Extract patterns
- `/recall` - Search memory
- `/grow` - View metrics
- `/setup` - Guided configuration
- `/product` - Product development
- `/substack` - Substack writing
- `/linkedin` - LinkedIn content
- `/content-plan` - Weekly planning
- `/post-today` - Today's content
- `/create-visuals` - Visual assets
- `/content-review` - Performance analysis
- `/add-idea` - Capture ideas
- `/review-ideas` - Manage ideas
- `/status` - Project status
- `/discover` - Discovery reports

### Skills Included
- Brain health reporting
- Memory recall
- Pattern application
- Learn extraction
- Decision documentation
- PMO prioritization
- Substack writing

### Agents Included
- Clarity maximizer
- Feedback synthesizer
- Impact analyzer
- Template builder
- Data analyst
- PMO advisor
- Daily accountability coach
- Chief of staff
- Content essay writer
- Brain onboarding (added in 1.2.0)

---

## Versioning

This template follows [Semantic Versioning](https://semver.org/):
- MAJOR: Breaking changes to structure
- MINOR: New features, commands, or skills
- PATCH: Bug fixes and documentation updates
