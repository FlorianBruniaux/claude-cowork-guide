# Workflow: Quality Control Checklist

> **Estimated time**: 15 minutes per check
> **Difficulty**: Beginner
> **Category**: 🔧 Production
> **Professions**: Contractors, Merchants

🌐 **Disponible aussi en [Français](quality-checklist.md)**

---

## Use Case

You need standardized quality control checklists to ensure consistency. This workflow helps you:

- Create industry-specific checklists
- Conduct systematic quality checks
- Document verification with photos
- Track corrective actions

> ⚠️ **Quality**: Systematic checks reduce defects by 40-60% and customer complaints by 50%.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Industry standards knowledge (codes, best practices)
- [ ] Inspection requirements list
- [ ] Phone/camera for documentation
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Create industry checklist template

```bash
mkdir -p ~/Cowork-Workspace/quality/checklists
mkdir -p ~/Cowork-Workspace/quality/inspections
```

Build checklist:

```
Quality Control Checklist for: [Industry/Service]

INDUSTRY: [Ex: Electrical, Plumbing, HVAC, General Construction, Food Service]
STANDARD: [Ex: NEC, UPC, local building codes, health codes]
VERSION: 1.0 (updated: [date])

──────────────────────────────────────

CHECKLIST STRUCTURE:

Each item should have:
□ Description (what to check)
□ Standard/code reference
□ Acceptance criteria
□ Photo required? (Y/N)
□ Critical? (Y/N) - Must pass for approval

──────────────────────────────────────

EXAMPLE: ELECTRICAL ROUGH-IN CHECKLIST

PROJECT: [Name]
DATE: [MM/DD/YYYY]
INSPECTOR: [Name]
LOCATION: [Address/area]

GENERAL REQUIREMENTS:

□ Permits posted and accessible
   Standard: Local building code
   Criteria: Current permit visible on-site
   Photo: Y
   Critical: Y ✓ Pass / Fail

□ Work matches approved plans
   Standard: Submitted drawings
   Criteria: No deviations without change order
   Photo: N
   Critical: Y ✓ Pass / Fail

ELECTRICAL BOXES:

□ Box depth adequate for device + connections
   Standard: NEC 314.16
   Criteria: Minimum 1.5" depth for switches, 2.5" for receptacles
   Photo: N (unless fail)
   Critical: Y ✓ Pass / Fail

□ Boxes securely fastened
   Standard: NEC 314.23
   Criteria: No movement when pushed, flush with finished wall surface
   Photo: N
   Critical: Y ✓ Pass / Fail

□ Box fill calculations correct
   Standard: NEC 314.16
   Criteria: Count conductors + devices, not exceeding box capacity
   Photo: N
   Critical: Y ✓ Pass / Fail

WIRING:

□ Wire gauge matches circuit requirements
   Standard: NEC 310.15
   Criteria: 14 AWG = 15A max, 12 AWG = 20A max, 10 AWG = 30A max
   Photo: N
   Critical: Y ✓ Pass / Fail

□ Romex secured within 12" of boxes
   Standard: NEC 334.30
   Criteria: Stapled/clamped within 12", every 4.5 ft on runs
   Photo: N
   Critical: Y ✓ Pass / Fail

□ Holes drilled in studs minimum 1.25" from edge
   Standard: NEC 300.4(A)
   Criteria: Prevents nail/screw penetration, metal plates if <1.25"
   Photo: N (unless fail)
   Critical: Y ✓ Pass / Fail

□ No damaged wire insulation
   Standard: NEC 110.7
   Criteria: Visual inspection, no nicks or cuts in insulation
   Photo: Y (if fail)
   Critical: Y ✓ Pass / Fail

GROUNDING:

□ Ground wire continuous (no splices except in box)
   Standard: NEC 250.148
   Criteria: Ground pigtailed at each box, not daisy-chained
   Photo: N
   Critical: Y ✓ Pass / Fail

□ Metal boxes bonded to ground
   Standard: NEC 250.148
   Criteria: Ground screw in box or ground clip attached
   Photo: N
   Critical: Y ✓ Pass / Fail

GFCI/AFCI PROTECTION:

□ GFCI required locations identified
   Standard: NEC 210.8
   Criteria: Bathrooms, kitchens (countertop), laundry, outdoors, garages, crawl spaces
   Photo: N
   Critical: Y ✓ Pass / Fail

□ AFCI required circuits identified
   Standard: NEC 210.12
   Criteria: All bedroom circuits, living areas (check local amendments)
   Photo: N
   Critical: Y ✓ Pass / Fail

PANEL:

□ Panel size adequate for load
   Standard: NEC 220.40
   Criteria: Load calculation matches panel rating
   Photo: N
   Critical: Y ✓ Pass / Fail

□ Panel height correct (center of grip 3-6.5 ft)
   Standard: NEC 240.24(A)
   Criteria: Measured from finished floor
   Photo: N
   Critical: N ✓ Pass / Fail

□ Working clearance 30" wide × 36" deep
   Standard: NEC 110.26
   Criteria: Clear space in front of panel, no storage
   Photo: Y
   Critical: Y ✓ Pass / Fail

LABELING:

□ Circuits labeled at panel
   Standard: NEC 408.4
   Criteria: Each breaker clearly labeled with room/area
   Photo: Y
   Critical: N (can correct) ✓ Pass / Fail

──────────────────────────────────────

SCORING:

Total items: 18
Critical items: 14
Passed: [X]
Failed: [Y]

PASS/FAIL DETERMINATION:
- ALL critical items must pass
- Non-critical can be corrected later
- Overall: □ PASS ✓ / □ FAIL

──────────────────────────────────────

DEFICIENCIES (if any):

Item: [Description]
Location: [Room/area]
Code reference: [NEC section]
Required correction: [Action needed]
Photo: [Filename]
Corrected: □ Yes □ No (re-inspect needed)

──────────────────────────────────────

PHOTOS:

[Timestamp] - Overall panel view
[Timestamp] - Working clearance
[Timestamp] - Deficiency 1 (if any)
[Timestamp] - Deficiency 1 corrected (if re-inspected)

──────────────────────────────────────

INSPECTOR SIGNATURE: _______________
DATE: _______________
NEXT INSPECTION: [Type, estimated date]

──────────────────────────────────────

Save: ~/Cowork-Workspace/quality/inspections/[project]-electrical-rough-[date].pdf
```

### Step 2: Create additional industry checklists

Generate templates for your industry:

```
PLUMBING ROUGH-IN CHECKLIST:

□ Pipe sizing correct for fixtures (IPC Table 604.5)
□ Proper slope on drain lines (1/4" per foot minimum)
□ Vent sizing and placement correct
□ Cleanouts accessible every 100 ft on horizontal drains
□ Water hammer arrestors at quick-closing valves
□ Pipes secured at proper intervals
□ No pipe penetrations weaken structure
□ Pressure test passed (air or water, 15 psi, 15 min, <2 psi drop)

──────────────────────────────────────

HVAC INSTALLATION CHECKLIST:

□ Equipment properly sized for space (Manual J calculation)
□ Ductwork sealed at joints (mastic or UL-181 tape, NOT duct tape)
□ Return air sized adequately (400 CFM per ton minimum)
□ Refrigerant lines insulated (suction line minimum)
□ Condensate drain trapped and sloped
□ Equipment clearances met (manufacturer specs)
□ Electrical disconnect within sight of equipment
□ Filter access provided

──────────────────────────────────────

DRYWALL/FINISH CHECKLIST:

□ Screw spacing correct (12" OC ceiling, 16" OC walls)
□ Screw heads slightly below surface (not breaking paper)
□ Joints taped and mudded smooth (3 coats minimum)
□ Corner bead straight and secure
□ No visible seams or fasteners after prime coat
□ Surfaces sanded smooth (no ridges)
□ No cracks or pops

──────────────────────────────────────

FOOD SERVICE/KITCHEN CHECKLIST:

□ Food contact surfaces: stainless steel or approved material
□ Hand sinks: Hot/cold water, soap, paper towels within 20 ft of food prep
□ 3-compartment sink: Sized for largest pot, hot water 110°F minimum
□ Refrigeration: Holding <41°F, thermometers visible
□ Floors: Smooth, non-absorbent, coved at walls
□ Ventilation: Hood sized for equipment, fire suppression system
□ Pest control: All openings >1/4" sealed, no gaps under doors

──────────────────────────────────────

RETAIL STORE DISPLAY CHECKLIST:

□ Signage clear and visible from 10 ft
□ Pricing displayed for all items
□ Products stocked to front (facing)
□ No damaged/defective items on display
□ Shelves clean and organized
□ Safety: No overhanging items, stable stacks
□ Lighting adequate (no burnt out bulbs)
□ Floor clear of obstacles/trip hazards

Save templates: ~/Cowork-Workspace/quality/checklists/[industry]-template.pdf
```

### Step 3: Conduct inspection

Execute checklist:

```
Inspection execution workflow:

PRE-INSPECTION:
1. Print checklist or load on tablet/phone
2. Gather tools:
   - Flashlight
   - Measuring tape
   - Level
   - Camera
   - Code book (if needed)
3. Review scope (what's being inspected today)

DURING INSPECTION:
1. Work methodically through checklist
2. Check each item, mark Pass/Fail
3. For failures:
   - Take photo
   - Note exact location
   - Describe what's wrong
   - Note code reference
4. Ask questions if unclear
5. Don't skip items

PHOTO DOCUMENTATION:
- Overall view (before inspection)
- Each deficiency (close-up + context)
- Critical passes (for verification)
- Overall view (after inspection)

Naming: [project]-[checklist-type]-[item#]-[date].jpg
Example: johnson-house-electrical-item12-2026-01-20.jpg

POST-INSPECTION:
1. Tally pass/fail count
2. Determine overall pass/fail
3. Write deficiency list with corrections needed
4. Sign and date checklist
5. Deliver to responsible party
6. Schedule re-inspection if needed

TIMELINE:
Small job (bathroom): 15-20 minutes
Medium job (whole house rough-in): 45-60 minutes
Large commercial: 2-3 hours

Save completed: ~/Cowork-Workspace/quality/inspections/[project]-[type]-[date].pdf
```

### Step 4: Track corrective actions

Manage deficiencies:

```
Deficiency tracking for: [Project]

DEFICIENCY LOG:

Deficiency #1:
- Checklist: Electrical rough-in
- Date found: 01/20/2026
- Inspector: [Name]
- Item: Wire gauge incorrect
- Location: Kitchen circuit 14
- Description: 14 AWG wire on 20A circuit (should be 12 AWG)
- Code: NEC 310.15
- Photo: johnson-elec-item4-2026-01-20.jpg
- Severity: □ Critical ✓ / □ Non-critical
- Assigned to: [Electrician name]
- Due date: 01/22/2026
- Status: ⏳ Pending
- Corrected: □ Yes □ No
- Re-inspected: □ Yes □ No
- Re-inspection date: ____
- Re-inspection result: □ Pass □ Fail

Deficiency #2:
- Checklist: Electrical rough-in
- Date found: 01/20/2026
- Inspector: [Name]
- Item: Panel clearance insufficient
- Location: Garage
- Description: Only 24" clearance (need 36")
- Code: NEC 110.26
- Photo: johnson-elec-item15-2026-01-20.jpg
- Severity: Critical ✓
- Assigned to: [Electrician name]
- Due date: 01/22/2026
- Status: ✅ Completed 01/21/2026
- Corrected: ✓ Yes
- Re-inspected: ✓ Yes
- Re-inspection date: 01/21/2026
- Re-inspection result: ✓ Pass

SUMMARY:
Total deficiencies: 2
Critical: 2
Corrected: 1
Pending: 1

Project status: ⚠️ RE-INSPECTION NEEDED (1 critical pending)

Save: ~/Cowork-Workspace/quality/[project]-deficiency-log.xlsx
```

### Step 5: Quality metrics tracking

Monthly/quarterly analysis:

```
Quality metrics report for: [Business/Period]

PERIOD: January 2026
PROJECTS: 8 completed

INSPECTION STATISTICS:

Total inspections conducted: 24
By type:
- Electrical rough: 8
- Plumbing rough: 6
- Final walkthrough: 8
- HVAC: 2

First-time pass rate:
- Overall: 75% (18/24 passed first time)
- Electrical: 87% (7/8)
- Plumbing: 67% (4/6)
- Final: 75% (6/8)

Industry benchmark: 80% first-time pass
Assessment: Need improvement on plumbing ⚠️

DEFICIENCY ANALYSIS:

Total deficiencies: 32
By severity:
- Critical: 8 (25%)
- Non-critical: 24 (75%)

Most common deficiencies:
1. Improper pipe slope (plumbing) - 6 instances
2. Missing GFCI protection (electrical) - 4 instances
3. Inadequate clearances (various) - 3 instances

ROOT CAUSES:
1. Pipe slope: New plumber unfamiliar with code
   → Action: Code review training scheduled 02/01
2. GFCI: Oversight/forgetfulness
   → Action: Added to pre-drywall checklist reminder
3. Clearances: Design issues
   → Action: Review plans for clearances before starting

CORRECTION TIMELINESS:

Average time to correct: 2.1 days
Target: <3 days ✓

Corrections exceeding 3 days: 2 instances (both non-critical)

RE-INSPECTION PASS RATE:

First re-inspection: 95% pass (1 failure required 2nd re-inspect)

CUSTOMER COMPLAINTS:

Quality-related complaints: 1 (12.5% of projects)
Issue: Paint finish uneven (non-critical deficiency missed)
Resolution: Re-painted at no charge
Prevention: Added paint quality item to final checklist

TRENDS:

Comparing to last quarter:
- First-pass rate: 75% (up from 70%) ✓ Improving
- Avg corrections time: 2.1 days (down from 2.8 days) ✓ Improving
- Complaints: 1 (down from 3) ✓ Improving

GOALS FOR NEXT PERIOD:

1. Achieve 85% first-pass rate (focus: plumbing)
2. Zero critical deficiencies on electrical
3. Maintain <3 day correction time
4. Zero quality complaints

Save: ~/Cowork-Workspace/quality/reports/quality-metrics-2026-01.pdf
```

---

## Example Prompts

### Pre-delivery vehicle inspection (detailing business)

```
Vehicle detailing quality checklist:

CLIENT: [Name]
VEHICLE: [Make/Model]
DATE: [MM/DD/YYYY]

EXTERIOR:
□ Entire body washed and dried (no streaks)
□ Wheels and wheel wells cleaned
□ Tires dressed (shine, not greasy)
□ Windows cleaned inside and out (no streaks)
□ Chrome/trim polished
□ Paint waxed/sealed (water beads)
□ Door jambs cleaned
□ Gas cap area cleaned

INTERIOR:
□ Vacuumed (seats, floor, trunk)
□ Dashboard wiped and dressed
□ Center console cleaned
□ Cup holders cleaned (no residue)
□ Door panels wiped down
□ Carpets shampooed (if applicable)
□ Seats cleaned/conditioned
□ Windows streak-free
□ Air vents dusted
□ No cleaning product residue visible
□ Fresh scent (not overpowering)

FINAL:
□ Test drive (windows, AC, verify no issues)
□ Photo documentation (before/after)
□ Customer walkthrough scheduled

Pass/Fail: ___
Inspector: ___
Customer signature: ___ (indicates acceptance)

Save: ~/Cowork-Workspace/quality/detailing-[vehicle]-[date].pdf
```

### Restaurant prep checklist (health code)

```
Daily kitchen prep quality checklist:

DATE: [MM/DD/YYYY]
SHIFT: Breakfast/Lunch/Dinner
PREP COOK: [Name]

FOOD SAFETY:
□ All refrigeration <41°F (check thermometers)
□ Hot holding >135°F
□ Hand sinks stocked (soap, towels)
□ Sanitizer buckets fresh (test strips 200 ppm)
□ Food properly labeled (name, date)
□ No cross-contamination (raw/cooked separated)
□ Thawing done safely (fridge or cold water, not counter)

PREP QUALITY:
□ All vegetables washed
□ Cuts uniform (consistent sizes)
□ Portions accurate (use scale/measures)
□ Presentation ready (garnishes prepped)
□ Ingredients fresh (no expired items)

CLEANLINESS:
□ Work surfaces sanitized
□ Cutting boards clean (separate colors used)
□ Utensils clean and stored properly
□ Floors dry (no slip hazards)
□ Trash emptied before service

Pass: □ Ready for service
Fail: □ Corrections needed: ______

Manager approval: ___

Save: ~/Cowork-Workspace/quality/kitchen-daily-[date].pdf
```

---

## Troubleshooting

### Checklist too long (takes too much time)

**Cause**: Too much detail or irrelevant items
**Solution**: Streamline to essentials:

```
CHECKLIST OPTIMIZATION:

Review each item:
- Is this code-required or critical to function? → Keep
- Is this nice-to-have or cosmetic? → Remove or make non-critical
- Is this redundant with another item? → Combine

EXAMPLE REDUCTION:

Before (18 items, 45 minutes):
□ Screws 12" OC on ceiling
□ Screws 16" OC on walls
□ Screw heads below surface
□ No broken paper
□ Joints taped
□ Joints mudded
□ Corner bead installed
□ Corner bead straight
[...]

After (8 items, 20 minutes):
□ Fasteners: Proper spacing (12"/16" OC), heads set, no breaks ✓
□ Joints: Taped and mudded smooth (3 coats) ✓
□ Corners: Bead straight and secure ✓
[...combine related items]

Result: Same quality, less time
```

### Inspections skipped due to time pressure

**Cause**: Deadline pressure, checklist seen as optional
**Solution**: Make non-negotiable:

```
QUALITY GATE ENFORCEMENT:

Build inspection into workflow as mandatory gate:

WORKFLOW:
1. Work performed
2. □ GATE: Quality inspection (MUST PASS to proceed)
3. Next phase begins

No exceptions policy:
- Even if behind schedule
- Even if client pressuring
- Even if "looks fine"

Rationale:
- Fixing later = 10× more expensive
- Customer complaints = lost time + reputation damage
- Code violations = legal liability

TIME ALLOCATION:
Include inspection time in project schedule:
- Plan: "Rough-in + inspection" = work time + 30 min check
- Not: "Rough-in" (inspection forgotten)

ACCOUNTABILITY:
Crew doesn't leave site until inspection done
Inspector signs off before next phase starts
```

### Subjective items (inconsistent evaluation)

**Cause**: "Looks good" is subjective
**Solution**: Objective criteria:

```
MAKE CRITERIA MEASURABLE:

Subjective (bad):
□ Paint finish is smooth

Objective (good):
□ Paint finish: No visible brush marks from 3 ft, passes hand test (feels smooth)

Subjective:
□ Clean workspace

Objective:
□ Workspace: No debris, tools put away, sweep floor (no visible dirt)

Subjective:
□ Joints taped well

Objective:
□ Joints: Tape embedded in mud, no bubbles, edges feathered 6" beyond tape

TESTING METHODS:
- Visual: "From X feet" (standardizes viewing distance)
- Touch: "Hand test" (run hand over surface)
- Measurement: "No gap >1/8 inch" (use gauge)
- Function: "Operates 3× without sticking" (test operation)
```

---

## Variations

### Customer acceptance checklist

```
Client final walkthrough checklist:

Completed with customer present:
- Walk through each room
- Customer checks quality themselves
- Sign off on acceptance OR note issues

BENEFITS:
- Customer feels involved
- Catches cosmetic items you might miss
- Documented acceptance = prevents later disputes
- Builds trust

WALKTHROUGH FORM:
Room: Living room
□ Acceptable ✓ / □ Needs attention: ______
Customer initials: ___

[Repeat for each room/area]

Overall acceptance:
□ Accept as-is ✓
□ Punch list items (see attached)

Customer signature: ___ Date: ___
```

### Tiered checklists (basic vs premium)

```
Offer service levels with different quality checks:

BASIC SERVICE:
- 10-point checklist (essentials only)
- Faster, lower cost

PREMIUM SERVICE:
- 25-point checklist (comprehensive)
- Higher quality, higher price

EXAMPLE - Car detailing:

BASIC ($50, 1 hour):
□ Exterior wash
□ Vacuum interior
□ Windows cleaned

PREMIUM ($150, 3 hours):
□ All basic items PLUS:
□ Clay bar treatment
□ Paint sealant
□ Interior shampoo
□ Leather conditioning
□ Engine bay cleaned
□ Headlight restoration
□ 15-point final inspection

Customer chooses service level upfront
Checklist matches what they paid for
```

---

## Best Practices

1. **Code-based** — Reference specific code sections (NEC, IPC, IRC, health codes)
2. **Photo everything** — Photos prove work quality and protect from false claims
3. **Non-negotiable gates** — Quality checks are mandatory, not optional
4. **Objective criteria** — Measurable standards, not "looks good"
5. **Training tool** — Use checklists to train new employees on standards
6. **Version control** — Update checklists when codes change (date versions)
7. **Client involvement** — Walk-through with customer builds trust and catches preferences
8. **Track metrics** — Analyze deficiency patterns to prevent recurring issues

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
