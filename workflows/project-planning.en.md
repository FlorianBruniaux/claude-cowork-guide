# Workflow: Project/Construction Planning

> **Estimated time**: 30 minutes
> **Difficulty**: Intermediate
> **Category**: 🔧 Production
> **Professions**: Contractors, Business Owners

---

## Use Case

You need to organize construction/project planning with milestones and coordination. This workflow helps you:

- Create detailed Gantt planning
- Coordinate work phases and contractors
- Manage material procurement
- Track progress and delays

> ⚠️ **Impact**: Good planning reduces average construction delays by 30% and budget overruns by 20%.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Project description (type, scope)
- [ ] Work phases list
- [ ] Estimated timeline
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Define project phases

```bash
mkdir -p ~/Cowork-Workspace/planning/[project-name]
```

Establish structure:

```
Create planning for: [Project name]

PROJECT OVERVIEW:
- Type: [Ex: Home renovation, Commercial build, Infrastructure]
- Scope: [Surface area, complexity]
- Budget: $[Amount]
- Start date: [Date]
- Target end date: [Date]
- Deadline constraints: [Yes/No - penalties?]

PHASES (construction example):

PHASE 1: SITE PREPARATION (Duration: [X] weeks)
Tasks:
- Permits and authorizations
- Site setup (fencing, site office)
- Utility disconnections if needed
- Demolition/clearing

Dependencies: None (starting phase)
Resources: [Demolition contractor, skip rental]
Deliverable: Site ready for construction

PHASE 2: FOUNDATION & STRUCTURE (Duration: [X] weeks)
Tasks:
- Excavation
- Foundation work
- Structural walls/frame
- Concrete curing

Dependencies: Phase 1 complete
Resources: [Masonry contractor, concrete supplier]
Critical path: Yes (foundation critical)
Deliverable: Structural rough-in complete

PHASE 3: ROUGH-INS (Duration: [X] weeks)
Tasks:
- Electrical rough wiring
- Plumbing rough piping
- HVAC ductwork
- Structural inspection

Dependencies: Phase 2 complete
Resources: [Electrician, plumber, HVAC]
Parallel work possible: Yes (coordination needed)
Deliverable: All systems roughed in, inspection passed

PHASE 4: INSULATION & DRYWALL (Duration: [X] weeks)
Tasks:
- Insulation installation
- Drywall hanging
- Taping and mudding
- First paint coat

Dependencies: Phase 3 + inspection
Resources: [Insulation crew, drywall contractor]
Deliverable: Walls finished

PHASE 5: FINISH WORK (Duration: [X] weeks)
Tasks:
- Final electrical (fixtures, outlets)
- Final plumbing (fixtures)
- Flooring
- Trim and doors
- Final paint
- Cabinetry

Dependencies: Phase 4 complete
Resources: [Various finish contractors]
Deliverable: Finishes complete

PHASE 6: COMPLETION (Duration: [X] weeks)
Tasks:
- Final cleanup
- Final inspection
- Punch list items
- Handover

Dependencies: Phase 5 complete
Deliverable: Project completed, approved

CRITICAL PATH (identify longest dependency chain):
Phases that cannot be delayed: [1 → 2 → 3 inspection → 4 → 5]

FLOAT TIME (slack available):
- Landscaping: Can start during Phase 5
- Painting: 1-2 days float

Save: ~/Cowork-Workspace/planning/[project]/phases.txt
```

### Step 2: Create detailed schedule (Gantt)

```
Generate Gantt chart for project:

GANTT FORMAT:

Week 1-2: ██████████ Phase 1: Site Prep
Week 3-6: ████████████████ Phase 2: Foundation
Week 7-10: ██████████████ Phase 3: Rough-ins
  W7-8: ██████ Electrical rough
  W8-9: ██████ Plumbing rough
  W9-10: ████ HVAC + Inspection
Week 11-13: ████████████ Phase 4: Insulation/Drywall
Week 14-18: ████████████████████ Phase 5: Finishes
  W14-15: ██████ Electrical finish
  W15-16: ██████ Plumbing finish
  W16-17: ██████ Flooring
  W17-18: ██████ Trim + Paint
Week 19-20: ████ Phase 6: Completion

MILESTONES (payment/validation gates):
⭐ Week 2: Site ready → 10% payment
⭐ Week 6: Foundation complete → 20% payment
⭐ Week 10: Rough inspection passed → 30% payment
⭐ Week 13: Drywall complete → 20% payment
⭐ Week 18: Finishes complete → 15% payment
⭐ Week 20: Final inspection → 5% final payment

DEPENDENCIES:
→ Foundation MUST complete before rough-ins
→ Rough inspection MUST pass before drywall
→ Drywall MUST finish before flooring

CRITICAL DATES:
- Permit approval: Week 0 (BLOCKER if delayed)
- Rough inspection: Week 10 (2-day window)
- Final inspection: Week 20

BUFFER TIME:
- Built-in weather delays: 3 days
- Contingency: 1 week at end

Format: Excel Gantt or project management tool
Save: ~/Cowork-Workspace/planning/[project]/gantt-schedule.xlsx
```

### Step 3: Material procurement planning

Coordinate deliveries:

```
Material procurement schedule for: [Project]

MATERIAL ORDERING LOGIC:
Order date = Installation date - (Lead time + Safety margin)

PHASE 1: SITE PREP
Materials needed:
- Fencing: 50 linear ft ($15/ft)
- Skip rental: 1x 20-yard ($400)

Order timing: Week -1 (before start)
Lead time: 1 week
Budget: $1,150

PHASE 2: FOUNDATION
Materials needed:
- Concrete: 30 cubic yards (@$150/yard)
- Rebar: 2,000 lb (@$0.80/lb)
- Formwork lumber: $800

Order timing: Week 2 (delivery Week 3)
Lead time: 1 week
Budget: $6,900
Supplier: [ABC Ready-Mix, XYZ Steel]

PHASE 3: ROUGH-INS
Materials needed:
- Electrical wire: 1,500 ft Romex (@$0.50/ft)
- Conduit: $400
- PVC pipe: 200 ft (@$3/ft)
- HVAC ducts: $1,200

Order timing: Week 5 (delivery Week 6)
Lead time: 1 week
Budget: $3,350
Supplier: [DEF Electrical, GHI Plumbing]

PHASE 4: INSULATION/DRYWALL
Materials needed:
- Insulation: R-19, 2,000 sq ft (@$1/sq ft)
- Drywall: 80 sheets 4x8 (@$12/sheet)
- Joint compound: 15 buckets (@$15/bucket)

Order timing: Week 9 (delivery Week 10)
Lead time: 1 week
Budget: $3,185

PHASE 5: FINISHES
Materials needed:
- Flooring: 1,200 sq ft hardwood (@$8/sq ft)
- Paint: 20 gallons (@$40/gal)
- Trim: 400 linear ft (@$2/ft)
- Fixtures: $3,000 (lights, faucets, hardware)

Order timing:
- Flooring: Week 12 (6-week lead time - CRITICAL)
- Other: Week 13 (delivery Week 14)
Budget: $14,400

MATERIAL BUDGET TOTAL: $28,985

DELIVERY COORDINATION:
- Concrete: Timed delivery (cannot store)
- Drywall: Covered storage area needed
- Flooring: Must acclimate 1 week before install

CRITICAL LONG LEAD ITEMS:
⚠️ Hardwood flooring: 6 weeks → ORDER WEEK 12 LATEST
⚠️ Custom cabinets: 8 weeks (if applicable)
⚠️ Special fixtures: Verify availability early

Save: ~/Cowork-Workspace/planning/[project]/material-procurement.xlsx
```

### Step 4: Contractor coordination

Manage subcontractors:

```
Subcontractor schedule for: [Project]

CONTRACTORS NEEDED:

1. DEMOLITION/SITE PREP
Company: [ABC Demo]
Scope: Site clearing, demolition
Timeline: Week 1-2
Budget: $2,500
Contact: [Name, phone]
Insurance verified: ✓
Payment terms: 50% start, 50% complete

2. FOUNDATION/MASONRY
Company: [DEF Masonry]
Scope: Excavation, foundation, structural walls
Timeline: Week 3-6
Budget: $15,000
Dependencies: Permits approved
Payment milestones:
- 30% start (Week 3)
- 40% foundation pour (Week 5)
- 30% completion (Week 6)

3. ELECTRICAL
Company: [GHI Electric]
License: [#12345]
Scope: Rough + finish electrical
Timeline:
- Rough: Week 7-8
- Finish: Week 14-15
Budget: $8,500
Critical: Inspection Week 10
Payment: 60% after rough, 40% after finish

4. PLUMBING
Company: [JKL Plumbing]
License: [#67890]
Scope: Rough + finish plumbing
Timeline:
- Rough: Week 8-9
- Finish: Week 15-16
Budget: $6,800
Payment: 60% after rough, 40% after finish

5. HVAC
Company: [MNO Heating & Air]
Scope: Ductwork + equipment install
Timeline: Week 9-10
Budget: $7,200
Dependencies: Must coordinate with electrician
Payment: 50% start, 50% final inspection

6. INSULATION
Company: [PQR Insulation]
Scope: Full building insulation
Timeline: Week 11
Budget: $3,500
Payment: Net 30 days

7. DRYWALL
Company: [STU Drywall]
Scope: Hanging, taping, finishing
Timeline: Week 11-13
Budget: $9,200
Payment: 40% hang, 30% tape, 30% finish

8. FLOORING
Company: [VWX Floors]
Scope: Hardwood installation
Timeline: Week 16-17
Budget: $12,000
Critical: Material must acclimate 1 week
Payment: 50% start, 50% complete

9. PAINTING
Company: [YZ Painting]
Scope: Interior paint (2 coats)
Timeline: Week 17-18
Budget: $4,800
Payment: Net 15 days

10. TRIM/FINISH CARPENTRY
Company: [AAA Carpentry]
Scope: Doors, trim, cabinetry
Timeline: Week 17-18
Budget: $8,500
Payment: 50% start, 50% complete

COORDINATION MATRIX:

Week 7-8: Electrical rough (Priority 1)
Week 8-9: Plumbing rough (Must not conflict with electrical)
Week 9-10: HVAC (Coordinate with both trades)
Week 10: INSPECTION COORDINATION (all rough trades must be available)

Week 14-15: Electrical finish (Priority 1)
Week 15-16: Plumbing finish (Coordinate)
Week 16-17: Flooring (Before trim)
Week 17-18: Painting + Trim (Coordinate)

CONTRACTOR PAYMENT TRACKING:
Total subcontractor budget: $77,000
Payment schedule aligned with milestones
Retention: Hold 10% until final completion

Save: ~/Cowork-Workspace/planning/[project]/contractor-schedule.xlsx
```

### Step 5: Progress tracking and updates

Monitor execution:

```
Weekly progress tracking template:

WEEK [X] REPORT - [Date range]

PLANNED THIS WEEK:
□ [Task 1]
□ [Task 2]
□ [Task 3]

ACTUAL COMPLETED:
✓ [Task 1] - On time
✓ [Task 2] - 1 day late
✗ [Task 3] - Rescheduled to Week X+1

DELAYS & ISSUES:
Issue 1: Rain delayed concrete pour by 2 days
Impact: Foundation phase +2 days
Mitigation: Work Saturday to catch up

Issue 2: Electrical supply backorder
Impact: Rough electrical delayed 3 days
Mitigation: Expedited shipping, +$150 cost

UPCOMING CRITICAL ACTIVITIES (Next 2 weeks):
⚠️ Rough inspection scheduled Week 10, Tuesday 10am
⚠️ Drywall delivery Week 11, must have covered storage ready
⚠️ Flooring order deadline Week 12 (long lead item)

BUDGET STATUS:
Spent to date: $32,500 / $85,000 (38%)
Progress completion: 40% (ahead of spending)
Variance: On budget

PHOTOS:
[Attach progress photos dated/timestamped]

NEXT WEEK PRIORITIES:
1. [Priority action 1]
2. [Priority action 2]
3. [Priority action 3]

DECISIONS NEEDED:
- Approve paint colors by Friday (owner)
- Select light fixtures by Week 13 (owner)

Save weekly: ~/Cowork-Workspace/planning/[project]/week-[X]-report.pdf
```

---

## Example Prompts

### Simple residential renovation

```
Bathroom renovation planning:

PROJECT: Full bathroom remodel
Duration: 6 weeks
Budget: $18,000

PHASES:
Week 1: Demo + rough plumbing/electrical
Week 2-3: Tile work (floor + shower)
Week 4: Drywall repair + paint
Week 5: Fixture installation
Week 6: Finish + cleanup

MATERIALS:
- Tile: Order Week 0 (2-week lead time)
- Vanity: Order Week 1 (3-week lead)
- Fixtures: Order Week 2 (2-week lead)

CONTRACTORS:
- Plumber: Week 1 + Week 5
- Electrician: Week 1 + Week 5
- Tile contractor: Week 2-3
- Painter: Week 4

Critical: Shower liner inspection Week 2 before tiling

Save: ~/Cowork-Workspace/planning/bathroom-reno/schedule.xlsx
```

### Multi-unit commercial project

```
Office building planning (3 floors):

STRATEGY: Floor-by-floor progression

TIMELINE: 24 weeks total

FLOOR 1 (Weeks 1-8):
- Rough-ins: Week 1-3
- Drywall: Week 4-5
- Finishes: Week 6-8

FLOOR 2 (Weeks 7-14):
- Overlap start with Floor 1 finishing
- Rough-ins: Week 7-9
- Drywall: Week 10-11
- Finishes: Week 12-14

FLOOR 3 (Weeks 13-20):
- Rough-ins: Week 13-15
- Drywall: Week 16-17
- Finishes: Week 18-20

COMMON AREAS (Weeks 21-24):
- Lobby finish
- Elevator completion
- Parking lot

CREW OPTIMIZATION:
Same rough-in crew moves floor-by-floor
Same finish crew follows 6 weeks behind
Maximize efficiency with staggered starts

Save: ~/Cowork-Workspace/planning/office-building/multi-floor-schedule.xlsx
```

---

## Troubleshooting

### Critical path delays

**Cause**: Weather, supplier issues, inspection delays
**Solution**: Critical path management:

```
DELAY MITIGATION STRATEGIES:

1. IDENTIFY CRITICAL PATH:
Foundation → Rough inspection → Drywall → Flooring
Any delay on this path = project delay

2. FLOAT TIME UTILIZATION:
Non-critical tasks (landscaping, decorative) have float
Can be delayed without impacting completion

3. COMPRESSION TECHNIQUES:
- Add crew/resources to critical tasks
- Work overtime on critical path only
- Fast-track: Overlap phases with risk mitigation

4. RE-SEQUENCING:
If flooring delayed → do painting first if possible
Check dependencies before re-sequencing

EXAMPLE:
Rough inspection delayed 1 week (Week 10 → Week 11)
Options:
A. Accept 1-week project delay (conservative)
B. Compress drywall phase: Add 2nd crew, complete in 2 weeks instead of 3
C. Work 6-day weeks on finish phases to recover time

Decision matrix: Cost vs schedule criticality
```

### Contractor coordination conflicts

**Cause**: Multiple trades need same workspace
**Solution**: Detailed coordination:

```
TRADE COORDINATION PLAN:

CONFLICT: Electrical + Plumbing both need access Week 8

RESOLUTION:
Monday-Tuesday: Electrician (1st floor)
Wednesday-Thursday: Plumber (1st floor)
Friday: Coordination day (both trades available if issues)

Next week:
Monday-Tuesday: Electrician (2nd floor)
Wednesday-Thursday: Plumber (2nd floor)

WORKSPACE ZONING:
If same-day needed, assign different zones:
- Electrician: East wing
- Plumber: West wing

DAILY COORDINATION MEETINGS:
15-minute daily stand-up at 7:30am
Verify no conflicts for the day

LEAD TIME BUFFER:
Schedule key trades with 1-2 day buffer
Allows flexibility for coordination
```

### Material delivery timing issues

**Cause**: Supply chain delays, storage constraints
**Solution**: Procurement management:

```
MATERIAL DELIVERY STRATEGIES:

JUST-IN-TIME DELIVERY:
Minimize storage needs
Risk: Delays can halt work

EARLY DELIVERY WITH STORAGE:
Order early, store on-site
Need: Secure, weatherproof storage

HYBRID APPROACH (RECOMMENDED):
- Long lead items: Order early (6+ weeks)
- Standard items: 2-week lead time
- Perishables/timed items: Just-in-time

TRACKING SYSTEM:
| Material | Order Date | Expected | Status | Backup Plan |
|----------|-----------|----------|--------|-------------|
| Flooring | 01/15 | 03/01 | Confirmed | Expedite if late |
| Fixtures | 01/20 | 02/15 | Backorder | Alt supplier sourced |

EXPEDITING CRITERIA:
If critical path material delayed > 3 days → Expedite or substitute
```

---

## Variations

### Agile/iterative project planning

```
For projects with evolving scope:

2-WEEK SPRINT PLANNING:

Sprint 1 Goals:
- Complete Phase 1
- Start Phase 2

Sprint 1 Review:
- Completed: ✓
- Blockers identified: Permit delay
- Adjust Sprint 2 plan accordingly

ROLLING WAVE PLANNING:
- Detail next 4 weeks: Fully planned
- Weeks 5-8: Medium detail
- Weeks 9+: High-level only

Adapt as information becomes available
Hold weekly replanning sessions
```

### Resource-constrained scheduling

```
Limited crew availability:

CONSTRAINT: Only 1 electrician available

IMPACT:
Cannot overlap electrical rough + finish
Serial scheduling required

ADJUSTED TIMELINE:
Week 7-8: Electrical rough (all areas)
Gap: Week 9-13 (other trades)
Week 14-15: Electrical finish (all areas)

Total: Same duration but different sequencing
Must ensure other work doesn't require electrical
```

### Fast-track scheduling

```
Urgent completion needed:

NORMAL SCHEDULE: 20 weeks
FAST-TRACK TARGET: 14 weeks (30% reduction)

TECHNIQUES:
1. Overlap phases with risk management
2. Increase crew sizes (+50% labor cost)
3. Premium material shipping (expedite)
4. Overtime/weekend work
5. Pre-fabrication where possible

COST PREMIUM: +15-25% budget
RISK: Quality pressure, coordination complexity

DECISION: Fast-track only if deadline penalties > cost premium
```

---

## Best Practices

1. **Critical Path Focus** — Protect critical path tasks from delays at all costs
2. **Buffer Time** — Include 10-15% contingency for unknowns
3. **Early Procurement** — Order long-lead items immediately after design approval
4. **Daily Communication** — Brief daily coordination meetings with all active trades
5. **Visual Planning** — Gantt charts, calendars visible on-site for all crews
6. **Milestone Payments** — Tie payments to deliverables, not just time
7. **Progress Photos** — Daily timestamped photos for documentation and disputes
8. **Inspection Scheduling** — Book inspections 2 weeks ahead, don't assume availability

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
