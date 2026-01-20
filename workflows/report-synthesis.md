# Workflow: Report Synthesis

> **Estimated time**: 25 minutes
> **Difficulty**: Intermediate

---

## Use Case

You have multiple documents—meeting notes, emails, data files—and need to:

- Combine information into a coherent report
- Extract key points from various sources
- Create structured deliverables
- Summarize for different audiences

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Source documents (text, PDF, Word, etc.)
- [ ] Clear idea of the output format needed

---

## Step-by-Step Instructions

### Step 1: Gather Source Documents

```bash
# Create workspace
mkdir -p ~/Cowork-Workspace/{input/sources,output}

# Copy all source documents
cp ~/Documents/meeting-notes/*.txt ~/Cowork-Workspace/input/sources/
cp ~/Documents/project-docs/*.pdf ~/Cowork-Workspace/input/sources/
cp ~/Documents/data/*.xlsx ~/Cowork-Workspace/input/sources/
```

### Step 2: Document Inventory

Have Cowork understand what's available:

```
List and summarize all documents in ~/Cowork-Workspace/input/sources/

For each document, provide:
- Filename
- Type (meeting notes, report, data, etc.)
- Date (if detectable)
- Brief description (1-2 sentences)
- Key topics covered

Save inventory to ~/Cowork-Workspace/output/source-inventory.md
```

### Step 3: Define Report Structure

Before asking for the report, define what you need:

**Option A: Status Report**
```
Create a project status report from documents in ~/Cowork-Workspace/input/sources/

Structure:
1. Executive Summary (1 paragraph, 3-4 sentences)
2. Progress This Period
   - Completed items (bullet points)
   - In progress items (bullet points)
3. Key Metrics (extract any numbers/data)
4. Decisions Made (list with date and context)
5. Risks and Issues (prioritized list)
6. Next Period Plans (bullet points)
7. Action Items (table: Action, Owner, Due Date)

Tone: Professional, concise
Length: Maximum 4 pages
Format: Word document
Save to: ~/Cowork-Workspace/output/status-report.docx
```

**Option B: Meeting Summary**
```
Create a consolidated meeting summary from notes in ~/Cowork-Workspace/input/sources/

Structure:
1. Meeting Overview
   - Dates covered
   - Participants mentioned
   - Topics discussed

2. Key Discussions
   - Topic 1: [summary]
   - Topic 2: [summary]
   - ...

3. Decisions Log
   - Date | Decision | Context | Owner

4. Action Items
   - All action items from all meetings
   - Deduplicated
   - Sorted by due date

5. Open Questions
   - Questions raised but not resolved

Format: Word document
Save to: ~/Cowork-Workspace/output/meeting-summary.docx
```

**Option C: Executive Brief**
```
Create an executive brief from all documents in ~/Cowork-Workspace/input/sources/

Requirements:
- ONE PAGE MAXIMUM
- Focus on: What happened, Why it matters, What's next
- Include only critical numbers
- Bullet points preferred
- Clear recommendations at the end

Format: Word document
Save to: ~/Cowork-Workspace/output/executive-brief.docx
```

### Step 4: Review and Refine

After initial generation, refine as needed:

```
Review the report you created. Make these adjustments:
- Expand the section on [topic]
- Add more detail about [specific item]
- Move [section] before [other section]
- Add a table summarizing [data]
```

### Step 5: Create Alternate Versions (Optional)

For different audiences:

```
Create a simplified version of the status report for non-technical stakeholders.

Changes:
- Remove technical jargon
- Focus on outcomes, not process
- Add more context for acronyms
- Shorten to 2 pages maximum

Save to: ~/Cowork-Workspace/output/status-report-stakeholder.docx
```

---

## Example Report Types

### Weekly Team Update
```
Create weekly team update from:
- ~/Cowork-Workspace/input/sources/ (this week's notes)

Include:
- Wins (what went well)
- Progress (what moved forward)
- Blockers (what's stuck)
- Learnings (what we discovered)
- Next week focus

Format: Markdown (for Slack/email)
Tone: Conversational but professional
Save to: ~/Cowork-Workspace/output/weekly-update.md
```

### Quarterly Review
```
Create Q[X] review document from quarterly materials in ~/Cowork-Workspace/input/sources/

Structure:
1. Quarter Highlights (3-5 bullets)
2. Goals vs. Actuals (table format)
3. Key Achievements
4. Challenges Faced
5. Lessons Learned
6. Q[X+1] Priorities
7. Resource Needs

Include charts/tables where data supports
Save to: ~/Cowork-Workspace/output/quarterly-review.docx
```

### Research Summary
```
Synthesize research documents in ~/Cowork-Workspace/input/sources/

Create research summary with:
1. Research Questions Addressed
2. Methodology Overview
3. Key Findings
   - Finding 1 (with supporting evidence)
   - Finding 2 (with supporting evidence)
   - ...
4. Implications
5. Recommendations
6. Limitations
7. Next Steps

Save to: ~/Cowork-Workspace/output/research-summary.docx
```

---

## Troubleshooting

### "Context limit" errors

**Cause**: Too many documents for one session

**Solution**: Process in chunks
```
Start with just these files:
- file1.txt
- file2.txt
- file3.txt

Create partial summary. I'll provide more files in next message.
```

### Important information missing

```
The report is missing information about [topic].

Check these specific files for that information:
- [filename1]
- [filename2]

Add a section covering [topic] with details from those files.
```

### Conflicting information in sources

```
I notice conflicting information in the sources about [topic]:
- Document A says X
- Document B says Y

In the report:
1. Note the discrepancy
2. Use the most recent information
3. Flag for verification
```

### Report is too long

```
Condense the report to [X] pages.

Prioritize:
1. Executive summary
2. Key decisions
3. Action items

Move detailed information to an appendix section.
```

### Report is too short/vague

```
Expand the report with more detail:

Specifically:
- Add specific examples for each finding
- Include relevant quotes from source documents
- Add data points where available
- Elaborate on recommendations
```

---

## Variations

### Multi-Audience Reports

Create one source report, then variants:

```
# Step 1: Comprehensive report
Create detailed report... [full prompt]

# Step 2: Executive version
From the report you just created, make an executive summary:
- 1 page maximum
- Key points only
- Clear recommendations
Save to ~/Cowork-Workspace/output/report-executive.docx

# Step 3: Team version
From the report you created, make a team version:
- Focus on action items and next steps
- Include more tactical detail
- Remove strategic context
Save to ~/Cowork-Workspace/output/report-team.docx
```

### Incremental Updates

For ongoing projects:

```
I have a previous report at ~/Cowork-Workspace/input/previous-report.docx
New documents are in ~/Cowork-Workspace/input/sources/

Create an updated report that:
- Builds on the previous report
- Adds new information from recent documents
- Moves completed items to "Completed" section
- Updates status of ongoing items

Save to ~/Cowork-Workspace/output/updated-report.docx
```

### With Data Visualization

```
Create the status report AND prepare visualization data:

Main report: ~/Cowork-Workspace/output/status-report.docx

Supporting data: ~/Cowork-Workspace/output/charts-data.xlsx
- Sheet 1: Progress over time (for line chart)
- Sheet 2: Tasks by status (for pie chart)
- Sheet 3: Team allocation (for bar chart)
```

---

## Best Practices

1. **Define structure first** — Know what output you need before starting
2. **Quality in, quality out** — Well-organized sources yield better reports
3. **Iterate** — First draft rarely perfect; refine in follow-up prompts
4. **Verify facts** — Spot-check key numbers and claims
5. **Keep sources** — Don't delete until report is final

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
