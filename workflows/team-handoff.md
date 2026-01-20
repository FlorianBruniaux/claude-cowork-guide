# Workflow: Team Handoff (Dev ↔ Non-Dev)

> **Estimated time**: 30 minutes
> **Difficulty**: Advanced

---

## Use Case

Your team has both technical (developers using Claude Code) and non-technical members (PMs, analysts using Cowork). This workflow enables:

- Seamless handoff between Claude Code and Cowork
- Shared context and documentation
- Complementary capabilities
- Efficient collaboration

---

## Prerequisites

- [ ] Shared folder accessible to both team members
- [ ] Claude Code for developer
- [ ] Cowork for non-technical member
- [ ] Agreed conventions (folder structure, naming)

---

## Setting Up Shared Infrastructure

### Step 1: Create Shared Workspace

```bash
# On developer's machine (or shared drive)
mkdir -p ~/Shared/{specs,docs,research,data,handoff}
```

### Step 2: Create Shared CLAUDE.md

Both Claude Code and Cowork can reference this context file:

```markdown
# ~/Shared/CLAUDE.md

## Project: [Project Name]

### Folder Conventions
- `/specs/` - Technical specifications (from dev)
- `/docs/` - Business documents (from PM/analyst)
- `/research/` - Research materials (either)
- `/data/` - Data files for analysis
- `/handoff/` - Active handoff items

### Active Items
- [List current work items]

### Team
- Dev: [Name] - Uses Claude Code
- PM: [Name] - Uses Cowork
- Analyst: [Name] - Uses Cowork

### Current Sprint
- [Sprint goals]

### Key Decisions
- [Important decisions with dates]
```

---

## Pattern 1: Developer → PM Handoff

**Scenario**: Developer creates technical spec, PM needs stakeholder summary.

### Developer (Claude Code)

```bash
# Developer creates technical specification
claude "Create a technical specification for the authentication system.
Include: architecture diagram (text), API endpoints, data models,
security considerations, and implementation phases.
Save to ~/Shared/specs/auth-spec.md"
```

### PM (Cowork)

```
Read the technical spec at ~/Shared/specs/auth-spec.md

Create a stakeholder summary document that:
1. Explains the feature in non-technical terms
2. Highlights business benefits
3. Identifies timeline and phases
4. Lists resource needs
5. Flags any risks or dependencies

Format: Word document for presentation
Save to: ~/Shared/docs/auth-stakeholder-summary.docx
```

### Handoff File

Create a handoff note:

```
Create a handoff note at ~/Shared/handoff/auth-handoff.md

Include:
- Source: ~/Shared/specs/auth-spec.md
- Created by: [Dev name]
- Date: [today]
- Destination: ~/Shared/docs/auth-stakeholder-summary.docx
- Created by: [PM name]
- Status: Ready for stakeholder review
- Next steps: [what happens next]
```

---

## Pattern 2: Research → Implementation

**Scenario**: Analyst does competitive research, developer implements based on findings.

### Analyst (Cowork)

```
Research competitors' pricing pages for our industry.

For each competitor:
- Screenshot (via Chrome)
- Pricing tiers and features
- UX patterns observed
- What works well / what doesn't

Create:
1. ~/Shared/research/pricing-comparison.xlsx (detailed matrix)
2. ~/Shared/research/pricing-analysis.md (summary and recommendations)
3. ~/Shared/research/screenshots/ (reference images)
```

### Developer (Claude Code)

```bash
# Developer reads research and implements
claude "Review the competitive research at ~/Shared/research/

Based on the analysis:
1. Create a pricing page component that incorporates best practices identified
2. Follow the recommended tier structure from pricing-analysis.md
3. Use our existing design system

Implementation should be in src/pages/pricing/"
```

---

## Pattern 3: Data Analyst → Developer

**Scenario**: Analyst identifies data patterns, developer needs to build features.

### Analyst (Cowork)

```
Analyze the user data in ~/Shared/data/user-metrics.csv

Create analysis report:
1. Key user behavior patterns
2. Most common user journeys
3. Drop-off points
4. Feature usage statistics
5. Recommendations for product improvements

Save to: ~/Shared/docs/user-analysis.docx
Include: charts-data.xlsx for any visualizations
```

### Developer (Claude Code)

```bash
# Developer builds features based on analysis
claude "Review the user analysis at ~/Shared/docs/user-analysis.docx

Based on the drop-off points identified:
1. Implement improvements to reduce friction
2. Add analytics tracking for recommended metrics
3. Create A/B test framework for suggested changes

Start with the highest-impact recommendation."
```

---

## Pattern 4: Bidirectional Collaboration

**Scenario**: Ongoing collaboration on a document/feature.

### Shared Document Workflow

**PM starts:**
```
Create a PRD (Product Requirements Document) for the new dashboard feature.

Structure:
1. Problem Statement
2. User Stories
3. Requirements (functional)
4. Success Metrics
5. [Technical Requirements - TO BE FILLED BY DEV]
6. Timeline
7. Open Questions

Save to: ~/Shared/docs/dashboard-prd.docx
```

**Developer adds:**
```bash
claude "Read the PRD at ~/Shared/docs/dashboard-prd.docx

Add a Technical Requirements section:
- Architecture approach
- API endpoints needed
- Data models
- Performance requirements
- Technical risks

Save updated version to same location."
```

**PM finalizes:**
```
Review the updated PRD at ~/Shared/docs/dashboard-prd.docx

Add:
- Timeline based on technical requirements
- Resource allocation
- Final open questions

Create final version: ~/Shared/docs/dashboard-prd-final.docx
```

---

## Handoff Protocols

### Standard Handoff Template

```markdown
# Handoff: [Item Name]

## Source
- **File**: [path to source file]
- **Created by**: [name]
- **Date**: [date]
- **Tool used**: [Claude Code / Cowork]

## Destination
- **Expected output**: [what should be created]
- **Owner**: [who will process this]
- **Due**: [deadline if any]

## Context
[Any important context for the recipient]

## Instructions
[Specific instructions for processing]

## Dependencies
- [Any files or information needed]

## Completion Criteria
- [ ] [Criterion 1]
- [ ] [Criterion 2]
```

### Notification System

Create a simple notification file:

```
# ~/Shared/handoff/INBOX.md

## Pending Items

### [Date] - [Item Name]
- From: [sender]
- To: [recipient]
- Priority: [High/Medium/Low]
- Handoff file: [link]
- Status: [ ] Pending / [x] Received / [ ] Complete
```

---

## Best Practices

### 1. Consistent Naming
```
Agree on naming conventions:
- specs/[feature]-spec.md
- docs/[feature]-summary.docx
- research/[topic]-analysis.md
- handoff/[date]-[item]-handoff.md
```

### 2. Clear Ownership
Each file should indicate:
- Who created it
- Who should process it
- Current status

### 3. Version Tracking
```
Use date prefixes for versions:
- 2024-01-15-dashboard-prd-v1.docx
- 2024-01-20-dashboard-prd-v2.docx
```

### 4. Status Updates
Update the shared CLAUDE.md with current status:
```markdown
### Active Handoffs
| Item | From | To | Status | Due |
|------|------|-----|--------|-----|
| Auth spec | Dev | PM | In review | Jan 20 |
```

### 5. Feedback Loop
After each handoff:
```
Create feedback note at ~/Shared/handoff/feedback/[item]-feedback.md

Include:
- What worked well
- What was missing
- Suggestions for next time
```

---

## Troubleshooting

### Cowork can't read Claude Code output

**Issue**: Format incompatibility or location mismatch

**Solution**:
- Ensure files are in shared location
- Use standard formats (.md, .docx, .xlsx)
- Avoid code-specific formats

### Context lost between tools

**Issue**: Each tool starts fresh

**Solution**:
- Use CLAUDE.md for persistent context
- Include relevant background in each prompt
- Reference source files explicitly

### Conflicting edits

**Issue**: Both tools editing same file

**Solution**:
- Use clear ownership per file
- Create new versions instead of editing
- Lock files during active work

---

## Example: Complete Feature Cycle

### Phase 1: Research (Cowork)
```
Research notification best practices.
Save to ~/Shared/research/notifications-research.md
```

### Phase 2: Spec (Claude Code)
```bash
claude "Based on research at ~/Shared/research/notifications-research.md,
create technical spec at ~/Shared/specs/notifications-spec.md"
```

### Phase 3: Documentation (Cowork)
```
Create user-facing documentation based on
~/Shared/specs/notifications-spec.md
Save to ~/Shared/docs/notifications-user-guide.docx
```

### Phase 4: Implementation (Claude Code)
```bash
claude "Implement notifications feature per
~/Shared/specs/notifications-spec.md"
```

### Phase 5: Release Notes (Cowork)
```
Create release notes for stakeholders based on:
- ~/Shared/specs/notifications-spec.md
- ~/Shared/docs/notifications-user-guide.docx

Save to ~/Shared/docs/notifications-release.docx
```

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
