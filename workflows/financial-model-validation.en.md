# Workflow: Financial Model Validation

🌐 **Languages**: [English](financial-model-validation.en.md) | [Français](financial-model-validation.md)

> **Estimated time**: 30-45 minutes
> **Difficulty**: Intermediate
> **Category**: 📊 Administrative
> **Professions**: Finance managers, Controllers, Business owners

---

## Use Case

You have a financial model (budget, forecast, pricing calculator) in Excel and need to:

- Verify formula integrity across all sheets
- Check for circular references or errors
- Validate calculation logic
- Document assumptions and dependencies
- Create an audit trail for stakeholders

> ⚠️ **Important**: This workflow uses **Cowork's Excel generation capabilities** (creating new analysis files). It does NOT use the **Claude in Excel add-in** (Microsoft Excel add-in for formula assistance). See [comparison](../reference/comparison.en.md#common-confusion).

---

## Prerequisites

- [ ] Cowork enabled (Pro or Max subscription)
- [ ] Financial model file (.xlsx) ready
- [ ] Workspace folder created
- [ ] Basic understanding of your model's structure

---

## Step-by-Step Instructions

### Step 1: Prepare Model for Review

```bash
# Create workspace structure
mkdir -p ~/Cowork-Workspace/{input/financial-model,output}

# Copy your model to workspace
cp ~/path/to/your-model.xlsx ~/Cowork-Workspace/input/financial-model/
```

**Tip**: Make a backup of the original file before validation.

### Step 2: Initial Structure Analysis

Request a high-level overview:

```
Analyze the Excel file at ~/Cowork-Workspace/input/financial-model/your-model.xlsx

Provide:
1. Sheet list with purpose of each
2. Key input cells (where assumptions are entered)
3. Key output cells (final results)
4. Dependencies between sheets

Save summary to: ~/Cowork-Workspace/output/model-structure.md
```

### Step 3: Formula Audit

Check formula integrity:

```
Audit all formulas in ~/Cowork-Workspace/input/financial-model/your-model.xlsx

Create an Excel report at ~/Cowork-Workspace/output/formula-audit.xlsx with:

Sheet 1 - "Formula Inventory":
- Cell Reference
- Formula
- Sheet Name
- Formula Type (SUM, IF, VLOOKUP, etc.)
- References (which cells it depends on)

Sheet 2 - "Potential Issues":
- Cell Reference
- Issue Type (hardcoded value in formula, missing error handling, complex nested formula)
- Severity (Low/Medium/High)
- Recommendation

Sheet 3 - "Cross-Sheet Dependencies":
- Source Sheet
- Target Sheet
- Number of References
- Key Linked Cells
```

### Step 4: Error Detection

Identify calculation errors:

```
Check ~/Cowork-Workspace/input/financial-model/your-model.xlsx for:

1. Cells with #REF!, #VALUE!, #DIV/0!, #N/A errors
2. Circular references
3. Hidden cells with formulas
4. Inconsistent formula patterns (e.g., row 5 uses different logic than rows 1-4)

Save findings to: ~/Cowork-Workspace/output/error-report.md
```

### Step 5: Assumption Documentation

Extract and document assumptions:

```
Review ~/Cowork-Workspace/input/financial-model/your-model.xlsx

Create ~/Cowork-Workspace/output/assumptions.xlsx with:

Sheet 1 - "Input Assumptions":
- Parameter Name
- Current Value
- Unit
- Source/Justification
- Last Updated
- Sensitivity (Low/Medium/High impact on results)

Sheet 2 - "Calculated Assumptions":
- Parameter Name
- Formula
- Current Value
- Dependencies
```

### Step 6: Sensitivity Check

Test assumption sensitivity:

```
For the financial model at ~/Cowork-Workspace/input/financial-model/your-model.xlsx:

Identify the 5 most critical input assumptions (those with highest impact on final results).

Create ~/Cowork-Workspace/output/sensitivity-analysis.md documenting:
- Which assumptions drive the most variance
- Recommended ranges for scenario planning
- Red flags if assumptions are changed
```

### Step 7: Generate Validation Report

Compile findings into executive summary:

```
Create a Word document at ~/Cowork-Workspace/output/validation-report.docx

Include:
1. Executive Summary
   - Model purpose
   - Validation date
   - Overall health score (Pass/Warning/Fail)

2. Findings
   - Formula issues found
   - Errors detected
   - Assumption gaps

3. Recommendations
   - Critical fixes required
   - Best practice improvements
   - Documentation needs

4. Appendices
   - Detailed formula audit (reference to Excel file)
   - Assumption list (reference to Excel file)
```

---

## Success Criteria

✅ **Complete when**:
- All formulas documented and audited
- No critical errors (#REF!, circular references) remain unaddressed
- Assumptions are documented with sources
- Validation report delivered to stakeholders

---

## Common Pitfalls

| Issue | Solution |
|-------|----------|
| Model too large (>10MB) | Split into modules, validate separately |
| Complex VBA macros | Cowork cannot execute macros—document manually |
| External data links | Note dependencies, validate data sources separately |
| Password-protected sheets | Unlock sheets before analysis |

---

## French Context Adaptations

For French TPE/PME:

**Terminology**:
- Use French Excel function names: `SOMME` not `SUM`, `SI` not `IF`
- Currency: EUR (€) instead of USD ($)
- Date format: DD/MM/YYYY (European) not MM/DD/YYYY (US)

**Compliance**:
- Document assumptions for expert-comptable review
- Maintain audit trail for fiscal inspection (contrôle fiscal)
- Reference French accounting standards (PCG - Plan Comptable Général)

**Regional Settings**:
```
When analyzing, use European Excel syntax:
- Formula separator: semicolon (;) not comma (,)
- Decimal separator: comma (,) not period (.)
- Example: =SOMME(A1;A2) not =SUM(A1,A2)
```

---

## Advanced Tips

**Large Models**:
- Process in batches: validate one sheet at a time
- Focus on critical calculation paths first
- Document module boundaries for clarity

**Recurring Validation**:
- Save prompts for reuse each quarter/year
- Create checklist for consistent validation
- Track changes between validation cycles

**Stakeholder Communication**:
- Generate executive summary first (1 page)
- Provide detailed technical appendix separately
- Use visual aids (charts) for assumption sensitivity

---

## Example Prompt (Complete Workflow)

```
I have a financial model at ~/Cowork-Workspace/input/financial-model/budget-2026.xlsx

Execute this validation workflow:

1. Structure Analysis:
   - List all sheets with purposes
   - Identify input vs calculation vs output sheets
   - Save to structure-analysis.md

2. Formula Audit:
   - Inventory all formulas
   - Flag potential issues (hardcoded values, complex nesting)
   - Create formula-audit.xlsx

3. Error Detection:
   - Find #REF!, #VALUE!, #DIV/0! errors
   - Check for circular references
   - Report hidden formulas
   - Save to error-report.md

4. Assumption Documentation:
   - Extract all input assumptions
   - Document sources and sensitivity
   - Create assumptions.xlsx

5. Validation Report:
   - Executive summary (1 page)
   - Detailed findings
   - Recommendations
   - Save to validation-report.docx

Use European Excel syntax (semicolon separators, French function names).
```

---

## Related Workflows

- [Expense Tracking](expense-tracking.en.md) — Extract financial data from receipts
- [Workforce Planning](workforce-planning.en.md) — Validate headcount models
- [Budget vs Actual Analysis](budget-vs-actual.en.md) — Compare planned vs real expenses

---

*[← Back to Workflows](README.en.md) | [Cowork Documentation](../README.md)*
