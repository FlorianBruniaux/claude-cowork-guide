# Document Creation Prompts

> **15+ ready-to-use prompts for reports, summaries, and presentations**

---

## Report Prompts

### 1. Project Status Report

```
Create a project status report from the notes in ~/Cowork-Workspace/input/notes/

Structure:
1. Executive Summary (1 paragraph)
2. Progress This Period
   - Completed items
   - In progress items
3. Key Metrics (if data available)
4. Risks and Issues
5. Next Period Plans
6. Action Items with owners and due dates

Format: Word document
Save to: ~/Cowork-Workspace/output/status-report.docx
Include: Date and project name in header
```

### 2. Meeting Summary Report

```
Create a meeting summary from ~/Cowork-Workspace/input/meeting-notes.txt

Structure:
- Meeting Details (date, attendees, duration)
- Key Discussion Points (bulleted)
- Decisions Made
- Action Items (table with: Action, Owner, Due Date, Status)
- Next Meeting Date/Topics

Format: Word document
Tone: Professional, concise
Save to: ~/Cowork-Workspace/output/meeting-summary.docx
```

### 3. Weekly Summary Report

```
Compile a weekly summary from all documents in ~/Cowork-Workspace/input/week-[date]/

Include:
- Week Overview
- Key Accomplishments
- Challenges Faced
- Metrics/Numbers (if available)
- Next Week Priorities

Format: Word document, max 2 pages
Save to: ~/Cowork-Workspace/output/weekly-summary-[date].docx
```

### 4. Quarterly Business Review

```
Create a QBR document from materials in ~/Cowork-Workspace/input/q[X]-materials/

Structure:
1. Quarter Highlights
2. Goals vs. Actuals (table format)
3. Key Wins
4. Challenges and Learnings
5. Next Quarter Goals
6. Resource Needs

Format: Word document with professional formatting
Include charts/tables where data supports
Save to: ~/Cowork-Workspace/output/q[X]-review.docx
```

---

## Summary Prompts

### 5. Document Summary

```
Create a summary of the document in ~/Cowork-Workspace/input/[document.pdf]

Include:
- One-paragraph overview
- Key points (5-7 bullets)
- Important data/numbers
- Conclusions or recommendations
- Questions raised

Format: Markdown
Length: Max 1 page
Save to: ~/Cowork-Workspace/output/[document]-summary.md
```

### 6. Multi-Document Synthesis

```
Synthesize the following documents in ~/Cowork-Workspace/input/research/:
[List specific files or "all documents"]

Create a unified summary covering:
- Common themes
- Contrasting viewpoints
- Key facts and figures
- Gaps in information
- Synthesis conclusions

Format: Word document
Save to: ~/Cowork-Workspace/output/synthesis-report.docx
```

### 7. Executive Brief

```
Create an executive brief from ~/Cowork-Workspace/input/detailed-report.pdf

Requirements:
- One page maximum
- Focus on: What, So What, Now What
- Include key numbers only
- Bullet points preferred
- Clear recommendations

Format: Word document
Save to: ~/Cowork-Workspace/output/executive-brief.docx
```

---

## Presentation Prompts

### 8. Slide Deck from Report

```
Create a PowerPoint presentation from ~/Cowork-Workspace/input/report.docx

Structure:
- Title slide
- Agenda/Overview
- 5-7 content slides (key points from report)
- Summary/Conclusions
- Next Steps
- Q&A slide

Design: Clean, professional, minimal text per slide
Save to: ~/Cowork-Workspace/output/presentation.pptx
```

### 9. Project Kickoff Deck

```
Create a project kickoff presentation.

Content source: ~/Cowork-Workspace/input/project-charter/

Include slides for:
1. Project Overview
2. Goals and Objectives
3. Scope (In/Out)
4. Timeline and Milestones
5. Team and Roles
6. Risks and Mitigations
7. Success Criteria
8. Next Steps

Format: PowerPoint
Save to: ~/Cowork-Workspace/output/kickoff-deck.pptx
```

### 10. Training Material

```
Create training slides from ~/Cowork-Workspace/input/process-documentation/

Structure:
- Introduction/Objectives
- Key Concepts (one per slide)
- Step-by-step procedures
- Examples/Screenshots placeholders
- Practice exercises
- Summary and resources

Include speaker notes for each slide
Format: PowerPoint
Save to: ~/Cowork-Workspace/output/training-deck.pptx
```

---

## Professional Document Prompts

### 11. Proposal Document

```
Create a proposal document from notes in ~/Cowork-Workspace/input/proposal-notes/

Structure:
1. Executive Summary
2. Understanding of Needs
3. Proposed Solution
4. Approach and Methodology
5. Timeline
6. Team/Resources
7. Pricing (if data available)
8. Why Choose Us
9. Next Steps

Format: Word document, professional formatting
Include table of contents
Save to: ~/Cowork-Workspace/output/proposal.docx
```

### 12. Standard Operating Procedure (SOP)

```
Create an SOP document from process notes in ~/Cowork-Workspace/input/process-notes.txt

Structure:
1. Purpose
2. Scope
3. Responsibilities
4. Prerequisites
5. Procedure (numbered steps)
6. Quality Checks
7. Troubleshooting
8. Related Documents
9. Revision History

Format: Word document
Include: Version number, date, author fields
Save to: ~/Cowork-Workspace/output/sop-[process-name].docx
```

### 13. Client Briefing Document

```
Create a client briefing document from materials in ~/Cowork-Workspace/input/client-[name]/

Include:
1. Company Overview
   - About, size, industry
   - Key products/services
2. Key Contacts
   - Names, titles, LinkedIn (if available)
3. Recent News
   - Last 3-6 months
4. Relationship History (if data available)
5. Talking Points
6. Questions to Ask
7. Potential Opportunities

Format: Word document
Save to: ~/Cowork-Workspace/output/[client]-briefing.docx
```

---

## Formatted Output Prompts

### 14. Formatted Table Document

```
Create a formatted table document from data in ~/Cowork-Workspace/input/raw-data.csv

Table requirements:
- Clear headers
- Alternating row colors
- Sortable columns
- Summary row at bottom

Add:
- Title and date
- Data source attribution
- Notes section for any data quality issues

Format: Word document
Save to: ~/Cowork-Workspace/output/formatted-table.docx
```

### 15. Newsletter/Update Document

```
Create a newsletter from content in ~/Cowork-Workspace/input/newsletter-content/

Structure:
- Header with title and date
- Lead story (featured item)
- News items (3-5 shorter items)
- Upcoming events/dates
- Quick links/resources
- Contact information

Format: Word document with two-column layout
Save to: ~/Cowork-Workspace/output/newsletter-[date].docx
```

### 16. Comparison Document

```
Create a comparison document from materials in ~/Cowork-Workspace/input/comparison/

Structure:
- Overview of items being compared
- Comparison matrix (table)
- Detailed analysis of each option
- Pros and cons for each
- Recommendation with rationale

Format: Word document
Include comparison table that can be extracted
Save to: ~/Cowork-Workspace/output/comparison-analysis.docx
```

---

## Customization Notes

**Tone options:**
- "Professional and formal"
- "Conversational but professional"
- "Technical and detailed"
- "Executive/brief"

**Length controls:**
- "Maximum X pages"
- "Approximately X words"
- "Brief: under 500 words"

**Formatting preferences:**
- "Use bullet points heavily"
- "Include tables where possible"
- "Minimize jargon"
- "Include source citations"

---

*[Back to Prompts Index](README.md) | [Cowork Documentation](../README.md)*
