# Workflow: Meeting Preparation

> **Estimated time**: 20 minutes
> **Difficulty**: Intermediate

---

## Use Case

You have an upcoming meeting and need to:

- Research the company/people you're meeting
- Compile relevant background materials
- Create a briefing document
- Prepare talking points and questions

---

## Prerequisites

- [ ] Cowork enabled with Chrome access (for web research)
- [ ] Any existing documents about the meeting/company
- [ ] Clear understanding of meeting purpose

---

## Step-by-Step Instructions

### Step 1: Set Up Workspace

```bash
# Create workspace for meeting prep
mkdir -p ~/Cowork-Workspace/input/meeting-[name]
mkdir -p ~/Cowork-Workspace/output

# Copy any existing materials
cp ~/Documents/relevant-files/* ~/Cowork-Workspace/input/meeting-[name]/
```

### Step 2: Define Meeting Context

Tell Cowork about the meeting:

```
I have a meeting with [Company/Person] on [Date] at [Time].

Meeting purpose: [describe]
My role: [your position/company]
Their role: [who you're meeting]
What I want to achieve: [your goals]

This context is for the briefing document you'll create.
```

### Step 3: Research Phase

**Company Research:**
```
Research [Company Name] and create a company brief.

Include:
1. Company Overview
   - What they do
   - Size (employees, revenue if public)
   - Founded, headquarters
   - Key products/services

2. Recent News
   - Last 3-6 months
   - Relevant announcements
   - Press mentions

3. Leadership
   - CEO and key executives
   - Board members (if relevant)

4. Market Position
   - Main competitors
   - Market standing
   - Recent changes

Save to: ~/Cowork-Workspace/output/company-research.md
```

**Person Research:**
```
Research [Person Name] at [Company].

Find:
- Current title and responsibilities
- Career background
- Education (if available)
- Public speaking/publications
- LinkedIn summary points
- Common topics they discuss
- Any shared connections or interests

Save to: ~/Cowork-Workspace/output/person-profile.md
```

### Step 4: Create Briefing Document

```
Create a meeting briefing document using:
- Research you just compiled
- Materials in ~/Cowork-Workspace/input/meeting-[name]/

Structure:
1. Meeting Overview
   - Date, time, location/platform
   - Attendees
   - Purpose

2. Company Background
   - Key facts (from research)
   - Relevant recent developments

3. People Profiles
   - Brief on each person I'm meeting

4. Our History (if materials provided)
   - Previous interactions
   - Past discussions

5. Talking Points
   - 5-7 topics to cover
   - Key messages to convey

6. Questions to Ask
   - 5-7 strategic questions
   - Discovery questions
   - Clarifying questions

7. Potential Objections
   - Likely concerns they might raise
   - Suggested responses

8. Meeting Goals
   - What success looks like
   - Minimum acceptable outcomes

Format: Word document
Save to: ~/Cowork-Workspace/output/meeting-brief.docx
```

### Step 5: Create Quick Reference Card

```
From the briefing document, create a 1-page quick reference card.

Include only:
- Key facts about company/person
- Main talking points (bullets)
- Critical questions
- Names to remember

Format: Can print and bring to meeting
Save to: ~/Cowork-Workspace/output/quick-reference.docx
```

---

## Meeting Type Variations

### Sales/Client Meeting
```
Create a client meeting brief for [Company].

Focus on:
1. Their Business
   - Industry, challenges, goals
   - Decision-making process
   - Budget cycle/timing

2. Our Fit
   - How our solution helps them
   - Relevant case studies
   - Competitive positioning

3. Sales Strategy
   - Entry points
   - Value propositions
   - Objection handling

4. Next Steps
   - Ideal meeting outcome
   - Follow-up actions

Save to: ~/Cowork-Workspace/output/client-brief.docx
```

### Job Interview
```
Create interview preparation document for [Company] [Role].

Include:
1. Company Research
   - Culture and values
   - Recent news
   - Team structure (if known)

2. Role Analysis
   - Key responsibilities
   - Required skills
   - Success metrics (likely)

3. My Fit
   - Relevant experience points
   - Stories to tell (STAR format)
   - Skills to highlight

4. Questions to Ask
   - About the role
   - About the team
   - About growth

5. Logistics
   - Interview format
   - Interviewer background

Save to: ~/Cowork-Workspace/output/interview-prep.docx
```

### Partnership/Vendor Meeting
```
Create vendor evaluation brief for meeting with [Company].

Include:
1. Vendor Overview
   - Company background
   - Relevant products/services
   - Market reputation

2. Evaluation Criteria
   - Must-have requirements
   - Nice-to-have features
   - Deal-breakers

3. Questions Matrix
   - Technical questions
   - Pricing questions
   - Support questions
   - Contract questions

4. Comparison Notes
   - How they compare to alternatives
   - Key differentiators

Save to: ~/Cowork-Workspace/output/vendor-brief.docx
```

### Board/Executive Meeting
```
Create executive meeting brief for [meeting name].

Include:
1. Meeting Context
   - Agenda items
   - Key decisions needed
   - Attendees and their interests

2. Background Materials Summary
   - Key points from supporting docs

3. Recommendations
   - What I'm proposing
   - Supporting rationale
   - Anticipated questions

4. Stakeholder Map
   - Who supports what
   - Potential concerns by person
   - Influence dynamics

5. Presentation Notes
   - Key messages
   - Data points to cite
   - Backup slides needed

Save to: ~/Cowork-Workspace/output/executive-brief.docx
```

---

## Troubleshooting

### Can't find much about the company

```
Limited information available for [Company].

For smaller/private companies, focus on:
- What their website says
- LinkedIn company page
- Any news mentions
- Industry context

Note gaps in the briefing so I know what to research during the meeting.
```

### Research seems outdated

```
Verify this information is current (as of [today's date]).

For any items more than 6 months old:
- Note the date of the information
- Flag if it might have changed
- Suggest verification questions
```

### Person has common name

```
Research [Name] specifically at [Company] in [City/Role].

Distinguish from others with same name.
Use LinkedIn profile at: [URL if known]
```

---

## Time-Saving Templates

### Quick 15-Minute Prep
```
I have 15 minutes to prepare for a meeting with [Company/Person].

Create a quick brief with:
- 5 key facts about them
- 3 talking points
- 3 questions to ask
- 1 paragraph company summary

Save to: ~/Cowork-Workspace/output/quick-brief.md
```

### Recurring Meeting Update
```
Update the meeting brief at ~/Cowork-Workspace/input/previous-brief.docx

Research any new developments since [last meeting date].
Add to the existing document:
- New news section
- Updated talking points
- New questions based on developments

Save to: ~/Cowork-Workspace/output/updated-brief.docx
```

---

## Best Practices

1. **Start research early** — Web research takes time
2. **Focus on relevance** — Not everything about a company matters
3. **Prepare questions** — Shows engagement and drives conversation
4. **Know your goals** — Clear objectives guide the brief
5. **Update and reuse** — Briefs for recurring meetings can be updated

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
