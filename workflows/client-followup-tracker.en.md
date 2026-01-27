# Workflow: Client Follow-up Tracker

> **Estimated time**: 25 minutes
> **Difficulty**: Beginner
> **Category**: 📋 Administrative
> **Professions**: All

🌐 **Disponible aussi en [Français](client-followup-tracker.md)**

---

## Use Case

You need to track prospects and client interactions systematically to avoid missed opportunities. This workflow helps you:

- Create a simple CRM-style tracking system
- Track prospect status through sales pipeline
- Schedule and monitor follow-ups
- Analyze conversion rates
- Never lose track of a potential client

> ⚠️ **Important**: This is a lightweight CRM alternative for small businesses. For complex sales processes or teams >5 people, consider dedicated CRM software.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] List of current prospects/clients
- [ ] Contact information (email, phone)
- [ ] Workspace folder created
- [ ] Excel or Google Sheets access

---

## Step-by-Step Instructions

### Step 1: Set up tracking structure

```bash
mkdir -p ~/Cowork-Workspace/{input/contacts,output/tracking}
```

### Step 2: Create base tracking spreadsheet

```
Create client follow-up tracking system:

FILE: ~/Cowork-Workspace/output/tracking/client-followup-tracker.xlsx

SHEET 1: ACTIVE PROSPECTS
Columns:
| ID | Date Added | Company/Name | Contact Person | Phone | Email | Source | Status | Last Contact | Next Action | Due Date | Priority | Notes | Est. Value |

SHEET 2: PIPELINE STAGES
Columns:
| Stage | Count | Total Value | Avg. Days in Stage | Conversion % |

Stages:
1. New Lead (just identified)
2. Contacted (initial outreach done)
3. Qualified (need confirmed, budget exists)
4. Proposal Sent (quote/estimate provided)
5. Negotiation (discussing terms)
6. Won (client signed)
7. Lost (opportunity lost)
8. On Hold (paused by prospect)

SHEET 3: FOLLOW-UP SCHEDULE
Columns:
| Date | Prospect | Action Type | Status | Outcome |

SHEET 4: CONVERSION ANALYSIS
Summary metrics and charts

Format: Excel with formulas, conditional formatting, dropdown lists
```

### Step 3: Import existing contacts

If you have existing contact lists:

```
Import contacts from:
~/Cowork-Workspace/input/contacts/leads.csv

For each contact, extract:
- Name/Company
- Contact info (phone, email)
- Source (how you met: referral, website, trade show, etc.)
- Any notes from initial interaction

Populate ACTIVE PROSPECTS sheet:
- ID: Sequential (P001, P002...)
- Date Added: [Import date or actual date if known]
- Status: "New Lead" (for all imports)
- Priority: "Medium" (default, adjust later)
- Next Action: "Initial Contact" (default)
- Due Date: [3 days from today]

Total imported: [Number] prospects
```

### Step 4: Set up follow-up rules

```
Configure automatic follow-up rules in tracker:

RULE 1 - New Lead → First Contact:
- Timeline: Within 3 business days
- Action: Phone call or email introduction
- Priority: High
- If no response: Reminder after 5 days

RULE 2 - Contacted → Follow-up:
- Timeline: 7 days after initial contact (if no response)
- Action: Second follow-up (different approach: if called, email; if emailed, call)
- Priority: Medium
- If no response: Final attempt after 10 more days

RULE 3 - Qualified → Keep Warm:
- Timeline: Bi-weekly touchpoints
- Action: Value-add content (tips, articles, case studies)
- Priority: Medium-High
- Maintain relationship until ready to proceed

RULE 4 - Proposal Sent → Check-in:
- Timeline: 3 days after sending
- Action: "Just checking if you received the proposal"
- If no response: Follow-up at 7 days and 14 days
- Priority: High

RULE 5 - Negotiation → Close:
- Timeline: Active daily monitoring
- Action: Respond to questions immediately
- Priority: Critical
- Move forward or identify blockers

RULE 6 - On Hold → Re-engage:
- Timeline: Monthly check-in
- Action: "Is the timing better now?"
- Priority: Low-Medium
- After 6 months no activity → Move to "Lost" or archive

Apply these rules as formulas/conditional formatting:
- Next Action date calculated automatically
- Overdue items highlighted red
- Due today highlighted yellow
- Due this week highlighted light blue
```

### Step 5: Daily follow-up routine

Create daily dashboard view:

```
Generate DAILY ACTION LIST from tracker:

TODAY'S ACTIONS ([Today's date]):

🚨 OVERDUE (Immediate action required):
1. P042 - Johnson Plumbing - Call re: proposal (Due: 2 days ago)
   → ACTION: Call and email backup

2. P055 - ABC Contracting - Send quote revision (Due: yesterday)
   → ACTION: Finalize and send today

📅 DUE TODAY (Complete by end of day):
1. P071 - Smith Renovations - Initial contact call
   → Phone: (555) 123-4567 | Best time: 10am-12pm

2. P063 - Elite Builders - Follow-up on proposal sent last week
   → Email: Send check-in message

📆 THIS WEEK (Plan ahead):
- Monday: 2 actions
- Tuesday: 3 actions
- Wednesday: 1 action
- [...]

METRICS:
- Total active prospects: XX
- Pipeline value: $XXX,XXX
- Avg. follow-up response rate: XX%
- Conversion rate (last 30 days): XX%

Save as: ~/Cowork-Workspace/output/tracking/daily-action-list-[date].pdf
Print or keep open while working
```

### Step 6: Update and track outcomes

After each interaction:

```
Update tracker with outcome:

PROSPECT: P042 - Johnson Plumbing

INTERACTION LOG:
- Date: [Today]
- Type: Phone call
- Duration: 15 minutes
- Outcome: Interested, requested site visit
- Next Action: Schedule site visit
- Due Date: [Within 3 days]
- Status: Qualified → Proposal Pending (after site visit)
- Notes: "Prefers morning appointments. Budget: $5K-$7K. Timeline: March."
- Priority: High → Very High (hot lead)

UPDATE FIELDS:
- Last Contact: [Today]
- Status: "Qualified"
- Next Action: "Schedule site visit"
- Due Date: [Date 3 days out]
- Priority: "High"
- Notes: [Add above details]
- Est. Value: $6,000 (midpoint of budget)

Also log in FOLLOW-UP SCHEDULE sheet:
| [Today] | Johnson Plumbing | Phone call | Completed | Interested, site visit needed |
```

---

## Example Prompts

### Quick setup from contacts

```
I have a list of 20 prospects in:
~/Cowork-Workspace/input/contacts/business-cards.csv

Create follow-up tracker with:
- All contacts imported
- ID assigned (P001-P020)
- Status: "New Lead"
- Next Action: "Initial Contact" (due: [3 days from today])
- Priority: "Medium" (default)

Also create THIS WEEK action list sorted by due date

Excel: ~/Cowork-Workspace/output/tracking/followup-tracker.xlsx
PDF action list: ~/Cowork-Workspace/output/tracking/week-actions.pdf
```

### Analyze pipeline health

```
From tracker: ~/Cowork-Workspace/output/tracking/client-followup-tracker.xlsx

Generate PIPELINE ANALYSIS report:

METRICS:
- Total prospects by stage (with percentages)
- Average time in each stage
- Conversion rates (Lead → Qualified, Qualified → Proposal, Proposal → Won)
- Win rate (Proposals → Won vs. Lost)
- Average deal value (Won deals)
- Pipeline velocity (days from Lead to Won)

VISUALIZATIONS:
- Pipeline funnel chart
- Trend: New leads per month (last 6 months)
- Won/Lost ratio chart
- Value by stage (bar chart)

INSIGHTS:
- Bottleneck stages (where prospects stall)
- Drop-off points (highest Lost rate)
- Recommendations for improvement

PDF report: ~/Cowork-Workspace/output/tracking/pipeline-analysis-[month].pdf
```

### Re-engagement campaign

```
Identify prospects in tracker with:
- Status: "On Hold"
- Last Contact: >60 days ago
- Est. Value: >$2,000

Generate RE-ENGAGEMENT CAMPAIGN:

TARGET LIST: [Number] prospects

EMAIL TEMPLATE:
Subject: "Checking in - [Your Company]"
Body: Personalized re-engagement (reference previous conversation, offer value, soft ask about timing)

SCHEDULE:
- Wave 1: [Date] - Email to all
- Wave 2: [+7 days] - Phone call to those who opened email
- Wave 3: [+14 days] - Final touchpoint with special offer

TRACKING:
- Response rate goal: >15%
- Re-activated prospects: [Track outcomes]
- Moved to Won: [Track conversions]

Campaign plan: ~/Cowork-Workspace/output/tracking/reengagement-campaign-[date].xlsx
Email templates: ~/Cowork-Workspace/output/tracking/reengagement-email.txt
```

---

## Troubleshooting

### Too many prospects, can't keep up

**Cause**: Follow-up volume exceeds capacity
**Solution**: Prioritize and batch:

```
TRIAGE TRACKER:

PRIORITY RULES:
1. HIGH = Proposal sent OR Hot lead (expressed strong interest)
   → Action: Daily monitoring, immediate response

2. MEDIUM = Qualified (budget + need confirmed) OR Recent contact
   → Action: Weekly check-ins

3. LOW = Cold leads OR On Hold >90 days
   → Action: Monthly nurture email (automated if possible)

BATCHING STRATEGY:
- Monday: High priority calls (2-3 hours)
- Tuesday: Proposal prep (if needed)
- Wednesday: Medium priority follow-ups (1-2 hours)
- Thursday: Email batch to Low priority (30 min)
- Friday: Update tracker, plan next week

DELEGATION (if team):
- Hot leads: Owner handles
- Warm leads: Team member A
- Cold leads: Team member B (nurture only)

Accept: You can't pursue every lead immediately - focus on highest probability
```

### Losing track of conversation history

**Cause**: Notes too brief or scattered
**Solution**: Structured note-taking:

```
CONVERSATION LOG TEMPLATE (in Notes column):

[DATE] - [CONTACT TYPE]:
- Discussed: [Key topics]
- Client needs: [Pain points/requirements]
- Budget range: $X-Y
- Timeline: [When they want to start]
- Competitors: [Who else they're talking to, if mentioned]
- Decision makers: [Who decides, who influences]
- Next step: [What was agreed]
- Concerns/objections: [If any]

Example:
"02/10/26 - Phone: Discussed bathroom renovation. Needs: replace tub, new tile,
modern fixtures. Budget: $8-10K. Timeline: Start March, finish before May.
Also getting quotes from 2 others. Decision: Joint (him + wife).
Next: Site visit 02/15 @ 10am. Concern: worried about timeline feasibility."

This format ensures you remember context for next follow-up
```

### Prospects going cold after initial interest

**Cause**: Inadequate nurturing or value demonstration
**Solution**: Value-add follow-up strategy:

```
NURTURE SEQUENCE for "Qualified" stage:

Instead of: "Just checking in..." (no value)

Use VALUE-ADD TOUCHPOINTS:

Week 1 (after qualifying):
- Send: Relevant case study or portfolio piece
- "Thought you'd like to see a similar project we completed"

Week 3:
- Share: Industry tip or seasonal advice
- "Quick tip for [their situation]"

Week 5:
- Offer: Free consultation or assessment
- "I'd be happy to provide a free [X] to help you plan"

Week 7:
- Send: Customer testimonial relevant to their need
- "Here's what [Similar Client] said about..."

Week 10:
- Check-in with timing update
- "Is this still on your radar for [timeframe]?"

Each touchpoint:
- Provides value (education, inspiration, help)
- Keeps you top-of-mind
- No pressure to buy
- Positions you as helpful expert

Update tracker with each touchpoint sent and any response
```

---

## Variations

### Simple version (solo freelancer)

```
Minimal tracker for solopreneurs:

COLUMNS (Essential only):
| Name | Contact | Status | Last Contact | Next Action | Due Date | Value | Notes |

STATUSES (Simplified):
1. New
2. Contacted
3. Interested
4. Waiting for Decision
5. Won
6. Lost

ROUTINE:
- Update after every interaction (5 min)
- Review weekly (30 min)
- Follow up on overdue items

This minimal system takes <1 hour/week to maintain
```

### Team collaboration version

```
Multi-user tracker with:

ADDITIONAL COLUMNS:
| Assigned To | Last Updated By | Stage Owner |

SHEETS:
- Active Prospects (shared)
- My Prospects (filtered view per person)
- Team Pipeline (aggregate view)
- Handoff Log (when prospect moves between team members)

ACCESS CONTROL:
- Sales Manager: Full access, edit all
- Team Members: Edit assigned prospects only, view all
- Admin: View only

COLLABORATION RULES:
- Update tracker within 24h of interaction
- Tag team member if handoff needed (@mention in notes)
- Weekly team meeting to review pipeline

Google Sheets (cloud) recommended for team version
```

### Integration with calendar

```
From tracker, generate calendar file:

For all prospects with Next Action due this week:

CREATE CALENDAR EVENTS (.ics):
- Title: "Follow-up: [Prospect Name] - [Action]"
- Date/Time: [Due Date] at [Best time if known, else 9am]
- Duration: 30 min (phone) or 15 min (email)
- Description:
  * Contact: [Phone/Email]
  * Last interaction: [Summary]
  * Action needed: [Specific task]
  * Context: [Relevant notes]

Import to: Google Calendar, Outlook, Apple Calendar

This ensures follow-ups appear in daily schedule
```

### Client Onboarding Checklist

When a prospect becomes a client (deal won), standardized onboarding process:

```
Generate onboarding checklist for new client [Name]:

CLIENT INFORMATION (TO COLLECT)
□ Complete contact details
  - Billing address
  - Service/delivery address (if different)
  - Tax ID/EIN (if business)
  - Primary Email + Phone + Secondary contact
□ Decision maker (name, role, availability)
□ Payment information (if recurring payments)
□ Insurance certificates (if applicable)

ADMINISTRATIVE DOCUMENTS (TO OBTAIN)
□ Signed purchase order OR Accepted quote with date and signature
□ Signed terms and conditions
□ Work authorization (if HOA/regulated building)
□ Existing plans/diagnostics (asbestos, lead, electrical...)
□ Detailed specifications (if complex project)

KICKOFF COMMUNICATION (Day 1 after signing)
□ Confirmation email with:
  - Project summary
  - Timeline overview
  - Dedicated contact person (you or team member)
  - Communication process (reports, approvals)
□ Add client to tracker (status "Active")
□ Create client folder: ~/Cowork-Workspace/clients/[name]/
  - Subfolders: contract, plans, invoices, correspondence, photos

PROJECT ORGANIZATION (Days 2-7)
□ Site visit preparation (if applicable)
□ Order materials/supplies
□ Schedule crew (who, when, duration)
□ Notify neighbors (if noisy work)
□ Parking/site access arranged
□ Kickoff meeting with client:
  - Introduce team
  - Explain process
  - Answer final questions
  - Provide emergency contacts

QUALITY TRACKING (During service)
□ Milestone validation points (per schedule)
□ Before/during/after photos (systematic)
□ Daily work log maintained
□ Weekly/monthly reports (if long project)
□ Immediate incident/change management

PROJECT CLOSEOUT (Service completion)
□ Walkthrough with client
□ Address any punch list items
□ Deliver final documents:
  - Final invoice
  - Warranties
  - Maintenance instructions
  - Certifications (if applicable)
□ Signed acceptance form
□ Request Google review/referral (if satisfied)
□ Archive project file (keep 7-10 years)

LONG-TERM CLIENT RELATIONSHIP
□ Add to newsletter (with consent)
□ Satisfaction follow-up at Day 15 and Day 90
□ Annual check-in (new service opportunity)
□ Responsive warranty service (if needed)

Format: Printable PDF checklist with checkboxes
Save: ~/Cowork-Workspace/templates/client-onboarding-checklist.pdf
```

**Practical usage**:

```
For each new client:
1. Copy checklist template
2. Rename: onboarding-[client-name].pdf
3. Check boxes as completed
4. Attach to client folder

Benefits:
- Nothing forgotten (standard procedure)
- Client reassured (professionalism)
- Relationship starts on solid foundation
- Less improvisation = fewer errors
- Reproducible (same quality for all)
```

**Industry adaptation**:

```
Construction/Trades: Emphasize permits, site safety, neighbor relations
Retail: Emphasize delivery, warranties, after-sales service
Services: Emphasize confidentiality, visit schedule, reporting
```

**Welcome pack personalization**:

```
For high-value clients (>$10K), create welcome package:

PACKAGE CONTENTS:
1. Branded folder with company logo
2. Welcome letter (signed)
3. Project checklist with milestones
4. Team contacts + emergency number
5. "During Your Project" guide (practical tips)
6. Small branded gift (calendar, pen, etc.)

Delivery: Kickoff meeting

Impact: Client feels valued, relationship strengthened from Day 1
```

---

## Best Practices

1. **Update Immediately** — Log interactions right after they happen (memory is fresh)
2. **Consistent Routine** — Check tracker at same time daily (morning review)
3. **Quality Over Quantity** — Better to follow up well with 20 prospects than poorly with 100
4. **Personalize Follow-ups** — Reference previous conversation, show you remember
5. **Set Realistic Due Dates** — Don't overcommit, adjust if needed
6. **Archive Won/Lost** — Move closed opportunities to separate sheet to reduce clutter
7. **Review Weekly** — Look at overall pipeline health, not just daily tasks
8. **Learn from Lost** — Note why deals were lost to improve future approach
9. **Celebrate Wins** — Track conversion rates and improvements over time
10. **Respect Timing** — If prospect says "call back in 3 months," do exactly that (add to calendar)

---

## Key Performance Indicators (KPIs)

Track monthly:
- **New leads added**: [Target: XX/month]
- **Follow-up completion rate**: [Goal: >90%]
- **Conversion rate (Lead → Won)**: [Industry avg: 2-5%]
- **Avg. sales cycle length**: [Days from Lead to Won]
- **Pipeline value**: [Total Est. Value of active prospects]
- **Win rate (Proposal → Won)**: [Goal: >30%]

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
