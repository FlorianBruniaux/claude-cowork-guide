# Workflow: Workforce Planning

🌐 **Languages**: [English](workforce-planning.en.md) | [Français](workforce-planning.md)

> **Estimated time**: 40-60 minutes
> **Difficulty**: Intermediate
> **Category**: 📊 Administrative
> **Professions**: HR managers, Operations directors, Business owners

---

## Use Case

You need to plan headcount for the next quarter/year and want to:

- Consolidate current team structure from multiple sources
- Model growth scenarios (hiring, departures, promotions)
- Calculate total compensation costs
- Visualize org chart changes
- Generate budget justification for stakeholders

> ⚠️ **Important**: This workflow uses **Cowork's Excel generation capabilities** (creating new planning files). It does NOT use the **Claude in Excel add-in** (Microsoft Excel add-in for formula assistance). See [comparison](../reference/comparison.en.md#common-confusion).

---

## Prerequisites

- [ ] Cowork enabled (Pro or Max subscription)
- [ ] Current employee list (CSV, Excel, or text)
- [ ] Salary/compensation data
- [ ] Growth targets or hiring plan notes
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Prepare Input Data

```bash
# Create workspace structure
mkdir -p ~/Cowork-Workspace/{input/hr-data,output}

# Copy employee data to workspace
cp ~/path/to/employee-list.xlsx ~/Cowork-Workspace/input/hr-data/
cp ~/path/to/compensation.csv ~/Cowork-Workspace/input/hr-data/
```

**Tip**: Anonymize sensitive data if sharing model with stakeholders.

### Step 2: Consolidate Current Headcount

Create baseline snapshot:

```
Analyze employee data in ~/Cowork-Workspace/input/hr-data/

Create ~/Cowork-Workspace/output/headcount-baseline.xlsx with:

Sheet 1 - "Current Team":
- Employee ID
- Name (or ID if anonymized)
- Department
- Role/Title
- Employment Type (Full-time, Part-time, Contractor)
- Start Date
- Base Salary
- Benefits Cost (if available)
- Total Compensation

Sheet 2 - "Department Summary":
- Department
- Headcount (FTE equivalent)
- Total Compensation
- Average Salary
- Roles Breakdown

Sheet 3 - "Cost Centers":
- Cost Center
- Headcount
- Total Cost
- Percentage of Total Budget
```

### Step 3: Model Growth Scenarios

Plan hiring and attrition:

```
Using data from ~/Cowork-Workspace/output/headcount-baseline.xlsx

Create ~/Cowork-Workspace/output/growth-scenarios.xlsx with:

Sheet 1 - "Q1 2026 Plan":
- Current Headcount (by department)
- Planned Hires (role, start month, estimated salary)
- Planned Departures (role, departure month)
- Net Headcount Change
- Total Cost Impact

Sheet 2 - "Q2 2026 Plan":
[Same structure as Q1]

Sheet 3 - "Full Year Summary":
- Department
- Jan Headcount
- Mar Headcount (Q1 end)
- Jun Headcount (Q2 end)
- Sep Headcount (Q3 end)
- Dec Headcount (Year end)
- Total New Hires
- Total Attrition
- Net Growth

Sheet 4 - "Cost Projection":
- Month (Jan-Dec 2026)
- Base Salary Cost
- Benefits/Taxes (% of base)
- Contractor Cost
- Total Monthly Cost
- Cumulative Annual Cost
- Year-over-Year Change %

Use formulas so I can adjust hiring dates and salaries interactively.
```

### Step 4: Role Impact Analysis

Understand hiring priorities:

```
From the growth scenarios at ~/Cowork-Workspace/output/growth-scenarios.xlsx:

Create ~/Cowork-Workspace/output/role-impact.xlsx with:

Sheet 1 - "Priority Roles":
- Role/Title
- Department
- Planned Hire Date
- Business Impact (High/Medium/Low)
- Dependencies (which projects/goals this role enables)
- Risk if Not Filled

Sheet 2 - "Skills Gap":
- Current Team Skills Inventory
- Required Skills for Growth
- Gap (skills we need but don't have)
- Training vs Hiring Recommendation
```

### Step 5: Compensation Benchmarking

Validate salary ranges:

```
Analyze compensation data in ~/Cowork-Workspace/input/hr-data/

Create ~/Cowork-Workspace/output/compensation-analysis.xlsx with:

Sheet 1 - "Salary Ranges":
- Role/Title
- Current Min Salary
- Current Max Salary
- Current Average
- Proposed Range (for new hires)
- Justification

Sheet 2 - "Equity Analysis":
- Department
- Average Salary
- Median Salary
- Standard Deviation
- Outliers (employees >2 std dev from mean)
- Equity Concerns (underpaid roles, gender/experience disparities if data available)

Sheet 3 - "Market Comparison":
- Role
- Our Average
- Market Average (if data available)
- Gap
- Competitiveness Score
```

### Step 6: Org Chart Visualization

Visualize structure changes:

```
From ~/Cowork-Workspace/output/headcount-baseline.xlsx and growth-scenarios.xlsx:

Create a Word document at ~/Cowork-Workspace/output/org-chart.docx with:

1. Current Org Chart (text-based hierarchy)
2. Proposed Q4 2026 Org Chart (with new roles)
3. Key Changes Highlighted:
   - New positions (bold, marked "NEW")
   - Departures (marked "DEPARTURE")
   - Promotions/Moves (marked "PROMOTION")

Format: Hierarchical list with indentation showing reporting structure.
```

### Step 7: Budget Justification Report

Compile stakeholder document:

```
Create a Word document at ~/Cowork-Workspace/output/workforce-plan-2026.docx

Include:

1. Executive Summary (1 page)
   - Current headcount: X FTE
   - Proposed year-end headcount: Y FTE
   - Net growth: +Z (or -Z)
   - Total compensation budget: €X,XXX,XXX
   - Year-over-year change: +X%

2. Strategic Rationale
   - Why these hires are critical
   - Business goals enabled by growth
   - Risk of not hiring

3. Department Breakdown
   - Per-department headcount changes
   - Key roles to fill
   - Timeline

4. Financial Impact
   - Monthly cost ramp-up
   - Annual total cost
   - Budget allocation by department

5. Contingency Plans
   - What if hiring is delayed?
   - Which roles are flexible vs critical?
   - Phased hiring options

6. Appendices
   - Detailed growth scenarios (reference Excel)
   - Compensation analysis (reference Excel)
   - Org chart (visual)
```

---

## Success Criteria

✅ **Complete when**:
- Current baseline documented with full compensation
- Growth scenarios modeled for 4 quarters
- Cost projections calculated with formulas
- Org chart shows before/after structure
- Budget justification report ready for stakeholders

---

## Common Pitfalls

| Issue | Solution |
|-------|----------|
| Incomplete employee data | Start with departments you have full data for |
| Complex benefits calculations | Use simplified % of salary (e.g., 30% benefits/taxes) |
| Uncertain hiring timelines | Model 3 scenarios: optimistic, realistic, pessimistic |
| Confidential salary data | Anonymize individuals, show ranges/averages only |

---

## French Context Adaptations

For French TPE/PME:

**Legal Framework**:
- Include employer charges (cotisations patronales): ~45% of gross salary
- Reference conventions collectives (collective agreements)
- Account for legal minimums (SMIC)
- Consider mandatory profit-sharing (participation) for 50+ employees

**Terminology**:
- Use French job titles (Directeur Commercial, Chargé de Mission, etc.)
- Cost centers = "Centres de coûts" or "Services"
- FTE = "Équivalent Temps Plein (ETP)"

**Compliance**:
- Document for URSSAF review (labor cost verification)
- Maintain DADS/DSN compatibility (social declarations)
- Track convention collective requirements

**Regional Settings**:
```
When generating Excel files, use European syntax:
- Formula separator: semicolon (;) not comma (,)
- Currency: EUR (€)
- Date format: DD/MM/YYYY
- Decimal separator: comma (,) not period (.)
- Employer charges: Gross salary × 1.45 = total cost
```

**Example French Prompt Addition**:
```
Include French employer charges:
- Cotisations sociales patronales: 45% of gross salary
- Total cost = Gross salary × 1.45
- Separate columns for: Salaire brut, Charges patronales, Coût total employeur
```

---

## Advanced Tips

**Multi-Year Planning**:
- Extend scenarios to 2-3 years
- Model compound growth effects
- Account for inflation in salary projections

**Scenario Comparison**:
- Conservative (minimal hiring)
- Baseline (planned growth)
- Aggressive (accelerated growth)
- Show side-by-side cost/benefit analysis

**Attrition Modeling**:
- Use historical attrition rate (e.g., 15% annual)
- Apply probabilistic departures to long-term plans
- Budget for replacement hiring costs

**Interactive Model**:
Request formulas so you can:
- Change salary ranges and see instant cost impact
- Shift hiring dates and see cash flow changes
- Toggle roles on/off to test scenarios

---

## Example Prompt (Complete Workflow)

```
I have employee data at ~/Cowork-Workspace/input/hr-data/employees.xlsx

Execute this workforce planning workflow:

1. Consolidate Current Headcount:
   - Extract employee list with compensation
   - Create department summaries
   - Calculate cost centers
   - Save to headcount-baseline.xlsx

2. Model Growth Scenarios:
   - Q1-Q4 2026 hiring plans
   - Attrition assumptions (15% annual)
   - Monthly cost projections with formulas
   - Save to growth-scenarios.xlsx

3. Role Impact Analysis:
   - Priority roles ranked by business impact
   - Skills gap analysis
   - Training vs hiring recommendations
   - Save to role-impact.xlsx

4. Compensation Benchmarking:
   - Salary ranges per role
   - Equity analysis (identify outliers)
   - Market comparison if data available
   - Save to compensation-analysis.xlsx

5. Org Chart:
   - Current structure (hierarchical text)
   - Proposed Q4 2026 structure with new roles
   - Highlight changes (NEW, DEPARTURE, PROMOTION)
   - Save to org-chart.docx

6. Budget Justification Report:
   - Executive summary (1 page)
   - Strategic rationale
   - Financial impact
   - Contingency plans
   - Save to workforce-plan-2026.docx

Use European syntax (semicolons, EUR currency).
For French company: include employer charges (45% of gross salary).
```

---

## Related Workflows

- [Financial Model Validation](financial-model-validation.en.md) — Audit budget formulas
- [Expense Tracking](expense-tracking.en.md) — Track actual labor costs
- [Budget vs Actual Analysis](budget-vs-actual.en.md) — Compare planned vs real headcount costs

---

*[← Back to Workflows](README.en.md) | [Cowork Documentation](../README.md)*
