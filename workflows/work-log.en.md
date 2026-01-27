# Workflow: Daily Work Log

> **Estimated time**: 10 minutes/day
> **Difficulty**: Beginner
> **Category**: 🔧 Production
> **Professions**: Contractors

🌐 **Disponible aussi en [Français](work-log.md)**

---

## Use Case

You need to document daily construction site activities with legal value. This workflow helps you:

- Create daily activity reports
- Document incidents and issues
- Maintain photo evidence
- Generate final completion report

> ⚠️ **Legal**: Work log serves as legal evidence in disputes - dates, photos, incidents are admissible in court.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Active construction project
- [ ] Phone/camera for photos (with timestamps)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Create project structure

```bash
mkdir -p ~/Cowork-Workspace/projects/[project-name]/work-logs
mkdir -p ~/Cowork-Workspace/projects/[project-name]/photos
```

### Step 2: Daily entry template

Each day on-site:

```
Work Log Entry - [Project Name]

DATE: [MM/DD/YYYY]
DAY: [Monday/Tuesday/etc.]
WEATHER: [Sunny, Rainy, Temperature]
SITE HOURS: [7:00 AM - 5:00 PM]

PROJECT INFO:
- Client: [Name]
- Address: [Site location]
- Project Manager: [Your name]
- Phase: [Current construction phase]

──────────────────────────────────────

CREW PRESENT:

Contractor Employees:
- [Name 1]: Foreman (8 hours)
- [Name 2]: Electrician (8 hours)
- [Name 3]: Laborer (6 hours - left early)

Subcontractors:
- ABC Plumbing: 2 workers (8 hours)
- XYZ HVAC: 1 technician (4 hours)

Total Man-Hours Today: 36 hours

──────────────────────────────────────

WORK PERFORMED:

AREA: First Floor
Tasks completed:
✓ Electrical rough-in complete in living room
✓ Installed 8 outlets, 4 switches
✓ Ran conduit for future lighting
✓ Kitchen electrical 70% complete (continuing tomorrow)

AREA: Second Floor
Tasks completed:
✓ Framing inspection passed (9:00 AM - Inspector Johnson)
✓ Insulation started in bedrooms 1 & 2
✓ Delivered drywall materials for next phase

AREA: Exterior
Tasks completed:
✓ Site cleanup
✓ Delivered plumbing materials

──────────────────────────────────────

MATERIALS USED/DELIVERED:

Delivered today:
- Drywall: 60 sheets (4×8, 1/2")
- Joint compound: 10 buckets
- Insulation: R-19, 800 sq ft

Used today:
- Romex wire 12/2: 400 ft
- Electrical boxes: 12 units
- Conduit: 40 ft

──────────────────────────────────────

EQUIPMENT ON-SITE:

- Scissor lift (rental, day 5 of 7)
- Air compressor
- Table saw
- Power tools (various)

Equipment issues: None

──────────────────────────────────────

INCIDENTS/ISSUES:

Issue 1: Minor electrical panel location conflict
- Description: Panel location blocks planned cabinet
- Impact: Need design revision
- Action: Called client at 10:30 AM, approved new location 3 ft left
- Resolution: Panel relocated, no delay
- Time lost: 1 hour

Issue 2: Weather delay (morning)
- Description: Heavy rain 7:00-9:00 AM prevented exterior work
- Impact: 2-hour delay on insulation delivery
- Action: Crew worked on interior electrical instead
- Resolution: Delivery rescheduled to 11:00 AM, arrived on time

No injuries today ✓
No safety violations ✓
No damage to property ✓

──────────────────────────────────────

VISITORS/INSPECTIONS:

9:00 AM: Building Inspector (Johnson)
- Inspection type: Framing
- Result: PASSED ✓
- Notes: Minor observation about header blocking, corrected immediately
- Next inspection: Rough electrical (scheduled 01/25)

11:30 AM: Client walk-through (Mr. & Mrs. Smith)
- Discussed: Kitchen electrical layout revision
- Approved: New panel location
- Requested: Update on tile selection deadline (advised 02/01)

──────────────────────────────────────

PHOTO DOCUMENTATION:

Photos taken today (all timestamped):

Photo 1 (08:15): Overall first floor progress
- File: 2026-01-20_0815_first-floor-overview.jpg

Photo 2 (09:05): Framing inspection approval
- File: 2026-01-20_0905_framing-inspection-pass.jpg

Photo 3 (10:45): Electrical panel location conflict (before)
- File: 2026-01-20_1045_panel-conflict-before.jpg

Photo 4 (14:30): Electrical panel relocated (after)
- File: 2026-01-20_1430_panel-relocated-after.jpg

Photo 5 (16:00): Insulation progress bedrooms 1-2
- File: 2026-01-20_1600_insulation-bedrooms.jpg

Photo 6 (16:45): End-of-day site condition
- File: 2026-01-20_1645_site-cleanup.jpg

All photos stored: ~/Cowork-Workspace/projects/[project-name]/photos/2026-01-20/

──────────────────────────────────────

TOMORROW'S PLAN:

Priority tasks:
1. Complete kitchen electrical rough-in (4 hours)
2. Continue bedroom insulation (full day)
3. Prepare for rough electrical inspection (cleanup, label circuits)
4. Coordinate with plumber for fixture rough-in

Materials needed:
- Additional Romex 12/2: 200 ft (have on hand)
- GFCI outlets: 4 units (ordering today)

Crew scheduled:
- 3 electricians (full day)
- 2 laborers (insulation)

Expected weather: Sunny, 55°F (good conditions)

──────────────────────────────────────

NOTES/OBSERVATIONS:

Positive:
- Framing inspection passed first try (no corrections needed beyond minor blocking)
- Crew productivity high today despite weather delay
- Client relationship strong (flexible on panel relocation)

Concerns:
- Scissor lift rental ends in 2 days - verify if extension needed
- GFCI outlets currently backordered (2-day ship) - may need to expedite

Follow-ups required:
- Confirm rough electrical inspection date (Inspector Johnson, 01/25)
- Order GFCI outlets (expedited shipping)
- Update project schedule for 2-hour weather delay

──────────────────────────────────────

LOGGED BY: [Your name]
TIME: 5:30 PM
SIGNATURE: [Digital or scanned]

──────────────────────────────────────

Save: ~/Cowork-Workspace/projects/[project-name]/work-logs/2026-01-20.pdf
```

### Step 3: Photo management

Organize evidence:

```
Photo documentation best practices:

PHOTO REQUIREMENTS:

1. TIMESTAMP:
- Use camera with auto date/time stamp
- OR use phone with EXIF data preserved
- Timestamp proves when photo taken (legal evidence)

2. NAMING CONVENTION:
Format: YYYY-MM-DD_HHMM_description.jpg

Examples:
✓ 2026-01-20_0815_first-floor-overview.jpg
✓ 2026-01-20_1430_panel-relocated-after.jpg
✗ IMG_1234.jpg (unclear)
✗ photo.jpg (no context)

3. ORGANIZATION:
Folder structure:
~/Cowork-Workspace/projects/[project-name]/photos/
  /2026-01-20/
  /2026-01-21/
  /2026-01-22/

OR by category:
  /progress/
  /inspections/
  /issues/
  /before-after/

4. WHAT TO PHOTOGRAPH:

DAILY (minimum):
- Overall site condition (start of day)
- Work areas (before starting work)
- Work in progress
- Completed work
- Site condition (end of day)

SPECIFIC EVENTS:
- Inspections (inspector, passed/failed items)
- Incidents (damage, issues)
- Before/after (corrections, changes)
- Material deliveries (quantity, condition)
- Safety concerns
- Weather conditions (if impacting work)

WEEKLY:
- Panoramic site views (track overall progress)
- Each room/area from same angle (comparison over time)

5. PHOTO QUALITY:
- High resolution (not thumbnails)
- Well-lit (use flash if needed)
- Clear focus
- Include context (not just close-ups)
- Include measuring tape for scale when documenting issues

BACKUP STRATEGY:
- Primary: Phone/camera
- Backup 1: Cloud storage (Google Photos, iCloud) - auto-upload
- Backup 2: External hard drive (weekly)

Legal value: Timestamped photos can prove:
- Work actually performed on claimed dates
- Condition before/after repairs
- Compliance with inspections
- Timeline of events in disputes

Save protocol: ~/Cowork-Workspace/projects/[project-name]/photos/README-photo-protocol.txt
```

### Step 4: Weekly summary

Consolidate entries:

```
Weekly Summary - Week of [Date Range]

PROJECT: [Name]
WEEK: [MM/DD - MM/DD/YYYY]

OVERVIEW:
- Days worked: 5 days
- Total man-hours: 180 hours
- Weather delays: 1 day (Tuesday AM, 2 hours)
- Safety incidents: 0 ✓

──────────────────────────────────────

WORK ACCOMPLISHED:

PHASE: Electrical Rough-In
- First floor: 100% complete ✓
- Second floor: 80% complete (continuing next week)
- Inspections: Framing passed (01/20)

PHASE: Insulation
- Bedrooms 1-2: 100% complete ✓
- Bedrooms 3-4: 50% complete

OVERALL PROGRESS:
- Project: 45% complete (vs 40% scheduled - ahead!)
- Budget spent: 42% ($35,700 of $85,000)
- On schedule: Yes, 1 day ahead

──────────────────────────────────────

ISSUES THIS WEEK:

1. Electrical panel relocation (01/20)
   - Resolved: Client approved new location
   - Impact: 1-hour delay
   - Cost: $0 (no change order)

2. GFCI outlet backorder (01/21)
   - Resolved: Expedited shipping from alternate supplier
   - Impact: No delay (arrived 01/22)
   - Cost: +$20 shipping

3. Weather delay (01/20)
   - Resolved: Worked interior instead
   - Impact: 2-hour delay on insulation
   - Cost: $0 (recovered time later in week)

──────────────────────────────────────

INSPECTIONS:
✓ Framing (01/20) - PASSED
⏳ Rough electrical (scheduled 01/25)
⏳ Insulation (scheduled 01/27)

──────────────────────────────────────

MATERIALS USED:
- Romex 12/2 wire: 1,200 ft
- Electrical boxes: 45 units
- Insulation R-19: 1,600 sq ft
- Drywall delivered: 120 sheets (for next phase)

──────────────────────────────────────

NEXT WEEK PRIORITIES:
1. Complete second floor electrical rough-in (2 days)
2. Pass rough electrical inspection (01/25)
3. Complete all insulation (3 days)
4. Start drywall hanging (if inspections pass)

──────────────────────────────────────

DECISIONS NEEDED:
- Lighting fixture selection (client - deadline 02/01)
- Paint colors (client - deadline 02/05)

──────────────────────────────────────

PHOTOS THIS WEEK: 42 photos
Organized by date in project photo folder

Save: ~/Cowork-Workspace/projects/[project-name]/work-logs/weekly-summary-2026-week-03.pdf
```

### Step 5: Final project report

At completion:

```
Final Project Report - [Project Name]

CLIENT: [Name]
ADDRESS: [Location]
PROJECT START: [Date]
PROJECT COMPLETION: [Date]
TOTAL DURATION: [X weeks]

──────────────────────────────────────

EXECUTIVE SUMMARY:

Project: [Brief description]
Outcome: Successfully completed on [date]
Budget: $85,000 (actual: $84,200 - $800 under budget) ✓
Schedule: 20 weeks planned, 19 weeks actual (1 week ahead) ✓
Quality: All inspections passed, no deficiencies
Client satisfaction: Excellent (testimonial attached)

──────────────────────────────────────

WORK COMPLETED:

PHASE 1: Site Preparation (Weeks 1-2)
- Demolition and clearing ✓
- Permits obtained ✓
- Deliverable: Site ready

PHASE 2: Foundation & Structure (Weeks 3-6)
- Foundation work ✓
- Structural framing ✓
- Inspection: Passed 01/20
- Deliverable: Structure complete

[...continue for all phases]

PHASE 6: Completion (Week 19-20)
- Final inspection: Passed 03/15 ✓
- Punch list: 5 items, all resolved
- Deliverable: Certificate of Occupancy issued

──────────────────────────────────────

TIMELINE:

[Visual timeline or Gantt chart showing planned vs actual]

Milestones achieved:
✓ Foundation complete: Week 6 (planned: Week 6)
✓ Rough-ins complete: Week 10 (planned: Week 10)
✓ Finishes complete: Week 18 (planned: Week 19 - 1 week early!)
✓ Final completion: Week 19 (planned: Week 20)

──────────────────────────────────────

BUDGET BREAKDOWN:

| Category | Budgeted | Actual | Variance |
|----------|----------|--------|----------|
| Labor | $35,000 | $34,500 | -$500 ✓ |
| Materials | $30,000 | $29,800 | -$200 ✓ |
| Subcontractors | $15,000 | $15,200 | +$200 |
| Equipment rental | $3,000 | $2,900 | -$100 ✓ |
| Permits/fees | $2,000 | $1,800 | -$200 ✓ |
| **TOTAL** | **$85,000** | **$84,200** | **-$800** ✓ |

──────────────────────────────────────

INSPECTIONS (All Passed):

| Date | Type | Inspector | Result | Notes |
|------|------|-----------|--------|-------|
| 01/20 | Framing | Johnson | ✓ Pass | Minor blocking correction |
| 01/25 | Rough Electrical | Martinez | ✓ Pass | No corrections |
| 01/27 | Insulation | Johnson | ✓ Pass | |
| 02/10 | Plumbing | Lee | ✓ Pass | |
| 03/15 | Final | Johnson | ✓ Pass | Certificate issued |

──────────────────────────────────────

ISSUES & RESOLUTIONS:

Total incidents logged: 8
Major issues: 0
Minor issues: 8 (all resolved)

Notable:
1. Electrical panel relocation (Week 3)
   - Resolution: Client approved alternate location
   - Impact: 1-hour delay, no cost

2. Weather delays (Week 3, 7, 12)
   - Total: 8 hours lost
   - Mitigation: Interior work prioritized
   - Impact: Recovered, no schedule impact

──────────────────────────────────────

PHOTOS:

Total photos taken: 487 photos
Organized chronologically by date
Key milestone photos:
- Before project: [Date]
- Foundation complete: [Date]
- Rough-in complete: [Date]
- Final completion: [Date]

All photos delivered to client on USB drive

──────────────────────────────────────

LESSONS LEARNED:

Successes:
- Early material ordering prevented delays
- Daily coordination meetings kept trades aligned
- Proactive client communication avoided change orders

Improvements for future:
- Add 2 extra days buffer for finish work
- Pre-qualify backup suppliers for specialty items
- Consider weather delays in winter months (add 1 week)

──────────────────────────────────────

DELIVERABLES TO CLIENT:

✓ Certificate of Occupancy
✓ All inspection reports
✓ Equipment warranties (10-year HVAC, etc.)
✓ As-built drawings (showing final electrical/plumbing)
✓ Photo documentation (USB drive)
✓ Maintenance recommendations
✓ Contractor contact list for future service

──────────────────────────────────────

CLIENT TESTIMONIAL:

"[Testimonial quote from client]"

— [Client name], [Date]

──────────────────────────────────────

PROJECT TEAM:

Project Manager: [Your name]
Key subcontractors:
- ABC Masonry
- DEF Electrical
- GHI Plumbing
[...etc]

──────────────────────────────────────

FINAL NOTES:

Warranty period: 1 year from 03/15/2026
Follow-up inspection: Scheduled 09/15/2026 (6-month check)
Client satisfaction: Excellent - referred 2 new clients already

Project archived: ~/Cowork-Workspace/projects/[project-name]/FINAL-REPORT.pdf

──────────────────────────────────────

Save: ~/Cowork-Workspace/projects/[project-name]/FINAL-PROJECT-REPORT.pdf
Deliver to client: Email + printed copy
```

---

## Example Prompts

### Simple daily log (minimal)

```
Quick daily log for small jobs:

DATE: 01/20/2026
PROJECT: Johnson bathroom remodel

WORK TODAY:
- Removed old tile (4 hours)
- Repaired drywall damage (2 hours)

CREW: 2 workers (6 hours each)

TOMORROW: Install new tile

PHOTOS: 3 photos (before, during, end-of-day)

Save: ~/Cowork-Workspace/projects/johnson-bath/log-01-20.txt
```

### Incident documentation (detailed)

```
Incident report - Water damage:

DATE: 01/20/2026, 2:30 PM
PROJECT: [Name]
LOCATION: Second floor bathroom

INCIDENT:
Water pipe burst during demolition work

DETAILS:
- Crew removing old vanity
- Accidentally hit copper supply line with pry bar
- Line ruptured, water sprayed for ~3 minutes
- Main water shut off at 2:33 PM

DAMAGE:
- Second floor bathroom: Water pooled on floor
- First floor ceiling below: Water stain developing

IMMEDIATE ACTION:
- Water shut off
- Area dried with shop vac and fans
- Damaged pipe section cut out
- Temporary cap installed

PHOTOS:
- 2026-01-20_1435_pipe-damage.jpg
- 2026-01-20_1440_water-cleanup.jpg
- 2026-01-20_1500_ceiling-stain-below.jpg

NEXT STEPS:
- Plumber called (arriving tomorrow 8 AM)
- Monitor ceiling for 24 hours
- May need ceiling repair/repaint
- Inform client immediately (called at 2:45 PM)

ESTIMATED IMPACT:
- Repair cost: $200-400
- Time delay: 1 day

PREVENTION:
- Mark all supply lines before demolition
- Use detection tools before prying near walls

Save: ~/Cowork-Workspace/projects/[project]/incidents/2026-01-20-water-damage.pdf
```

---

## Troubleshooting

### Forgetting daily entries

**Cause**: End-of-day rush, forgotten
**Solution**: Set routine and reminders:

```
DAILY LOG ROUTINE:

END OF DAY (15 minutes before crew leaves):
1. Take end-of-day site photos (5 min)
2. Fill out work log template (5 min)
   - Quick notes: tasks, crew, materials, issues
3. Save and backup (1 min)

Phone reminder: 4:30 PM daily "Log work for today"

Template pre-filled with:
- Project name
- Your name
- Standard crew names (just mark present/absent)

Requires only filling in variables:
- Tasks completed
- Materials used
- Issues (if any)

Total time: 5-10 minutes/day
```

### Photo overload (too many photos)

**Cause**: Taking too many, cluttered storage
**Solution**: Selective photography:

```
PHOTO GUIDELINES:

REQUIRED (minimum):
- Start of day site overview: 1 photo
- End of day site overview: 1 photo
- Each work area before work: 1 photo each
- Completed work areas: 1 photo each
- Inspections: 2-3 photos (inspector, pass/fail items)
- Incidents: 3-5 photos (angles, context)

TOTAL: ~10-20 photos/day for typical project

OPTIONAL (if time permits):
- Progress details
- Interesting techniques
- Client walk-through highlights

DELETE immediately:
- Blurry photos
- Duplicates
- Accidental photos

Weekly purge: Review photos, keep only relevant ones
```

### Lost or corrupted files

**Cause**: No backups, file corruption
**Solution**: 3-2-1 backup rule:

```
BACKUP STRATEGY:

3 copies: Original + 2 backups
2 different media: Phone + Computer + Cloud
1 off-site: Cloud storage

IMPLEMENTATION:

Primary: Phone photos + daily log on computer
Backup 1: Auto-sync phone to cloud (Google Photos/iCloud)
Backup 2: Weekly copy to external hard drive

Tools:
- Cloud: Google Drive, Dropbox, iCloud (free tiers)
- External drive: $50-100 for 1TB
- Automatic sync: Set and forget

Recovery: If computer crashes, all files recoverable from cloud
```

---

## Variations

### Digital vs paper logs

```
PAPER LOGS:
Advantages:
- No battery/tech needed
- Quick on-site
- Sign-able (legal signature)

Disadvantages:
- Handwriting legibility
- Physical storage
- No digital backup

DIGITAL LOGS:
Advantages:
- Searchable
- Easy backup
- Photo integration
- Templates/automation

Disadvantages:
- Device needed
- Battery/connectivity
- Learning curve

HYBRID (RECOMMENDED):
- Quick notes on paper during day
- Transfer to digital at end of day (5-10 min)
- Scan paper copy → attach to digital log
- Best of both: quick capture + digital benefits
```

### Shared logs (multiple crew leads)

```
Multiple people logging:

STRUCTURE:
- Project Manager: Overall daily log
- Electrical lead: Electrical-specific log
- Plumbing lead: Plumbing-specific log

CONSOLIDATION:
PM reviews all logs end-of-day
Merges into master daily log
Keeps trade-specific logs as appendices

CLOUD COLLABORATION:
Shared folder: ~/Cowork-Workspace/projects/[name]/logs-shared/
Each person uploads their section
PM compiles final version

Tool: Google Drive with shared folder permissions
```

### Weekly/Monthly Progress Reporting

For longer projects (>2 weeks), create periodic progress reports:

```
Generate weekly progress report from work log [project name]:

PERIOD: Week of [start date] to [end date]

WORK COMPLETED THIS WEEK:
- [Summary of tasks with completion %]
- [Milestones achieved]

CREW:
- Total man-days: [X]
- Average crew size: [X people]

MATERIALS CONSUMED:
- [Key materials with quantities]
- [Approximate cost if needed]

OVERALL PROGRESS:
- Start of week: [X%]
- End of week: [Y%]
- Weekly gain: [+Z%]

SCHEDULE ADHERENCE:
- Original completion date: [date]
- Current forecast: [date]
- Variance: [± X days] → Reason: [brief explanation]

INCIDENTS/ALERTS:
- [Any issues affecting schedule/budget]
- [Corrective actions in progress]

NEXT WEEK FORECAST:
- [Planned work]
- [Expected deliveries]
- [Milestones to validate]

CLIENT NEEDS:
- [Decisions required]
- [Approvals needed]
- [Meetings to schedule]

Format: 2-page PDF max
Tone: Factual, reassuring, transparent
Recipient: Client / Project Owner
Save: ~/Cowork-Workspace/projects/[name]/reports/week-[number]-report.pdf
```

**Recommended frequency**:
- 2-4 week projects: Weekly report
- 1+ month projects: Weekly reports + monthly summary
- <2 week projects: Final report only

**Automated email delivery**:

```
Prepare email for weekly report:

Subject: [Project Name] - Week [number] Progress Report

Hello [Client],

Please find attached this week's progress report for your project.

Key points:
- Progress: [X%] (+[Y]% this week)
- Schedule: [On track OR [X] days delay due to [reason]]
- Next steps: [2-3 task summary]

Feel free to contact me with any questions.

Best regards,
[Signature]

Attachment: week-[number]-report.pdf
```

**Benefits of recurring reporting**:
- Client reassurance (continuous visibility)
- Avoid surprises (early alerts)
- Justify delays before they become problems
- Showcase progress (client sees value)
- Traceability (proof of rigorous tracking)

---

## Best Practices

1. **Consistency** — Log every single day, no exceptions
2. **Timeliness** — Log same day (memory fades quickly)
3. **Objectivity** — Factual descriptions, not opinions ("panel conflicts with cabinet" not "dumb design")
4. **Completeness** — All work, incidents, visitors documented
5. **Photos = Evidence** — Timestamped photos are your best legal protection
6. **Backup Always** — Lose logs = lose legal protection and project memory
7. **Client transparency** — Share weekly summaries, builds trust
8. **Archive post-project** — Keep logs 7+ years (statute of limitations for construction)

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
