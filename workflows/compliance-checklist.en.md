# Workflow: Compliance Checklist

> **Estimated time**: 30 minutes
> **Difficulty**: Intermediate
> **Category**: 📋 Administrative
> **Professions**: Contractors/Construction, Merchants, Small businesses

🌐 **Disponible aussi en [Français](compliance-checklist.md)**

---

## Use Case

You need to verify that your business has all mandatory documents and certifications for legal operations and client projects. This workflow helps you:

- Check all required business documents (insurance, licenses, permits)
- Prepare compliance files for client requests or audits
- Track expiration dates and renewals
- Generate missing document checklists

> ⚠️ **Important**: Requirements vary by industry, location, and business type. This workflow provides general guidance - always verify specific regulations for your situation.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] List of required documents for your industry
- [ ] Access to your business documents folder
- [ ] Knowledge of your business type and jurisdiction
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Define compliance scope

```bash
mkdir -p ~/Cowork-Workspace/{input/documents,output/compliance}

# Copy relevant business documents
cp ~/Documents/Business/Insurance/*.pdf ~/Cowork-Workspace/input/documents/
cp ~/Documents/Business/Licenses/*.pdf ~/Cowork-Workspace/input/documents/
```

Identify your compliance requirements:

```
Business profile for compliance check:

BUSINESS INFO:
- Type: [LLC, Sole Proprietorship, Corporation]
- Industry: [Construction, Retail, Services, Manufacturing]
- Location: [State/Country]
- Employees: [Number]
- Scope: [Local, Regional, National]

SPECIFIC ACTIVITIES:
- Construction/renovation work? YES/NO
- Food handling? YES/NO
- Hazardous materials? YES/NO
- Professional services? YES/NO
- Interstate commerce? YES/NO

Generate comprehensive compliance checklist based on this profile.
```

### Step 2: Generate industry-specific checklist

For Construction/Contractors:

```
Construction business compliance checklist:

CATEGORY: MANDATORY INSURANCE
☐ General Liability Insurance
  - Minimum coverage: $1M per occurrence, $2M aggregate
  - Status: [Active/Expired]
  - Expiration: [Date]
  - Provider: [Name]

☐ Workers' Compensation Insurance
  - Coverage: All employees
  - Status: [Active/Expired]
  - Certificate of Coverage available

☐ Professional Liability Insurance (if applicable)
  - Coverage: Errors & Omissions
  - Status: [Active/Expired]

CATEGORY: BUSINESS LICENSES & REGISTRATIONS
☐ General Business License
  - Jurisdiction: [City/County]
  - Number: [License #]
  - Expiration: [Date]

☐ Contractor's License
  - Type: [General/Specialty]
  - License #: [Number]
  - Expiration: [Date]
  - State/Province: [Location]

☐ Tax Registration
  - Federal Tax ID (EIN): [Number]
  - State Tax ID: [Number]
  - Sales Tax Permit: [If required]

CATEGORY: CERTIFICATIONS & QUALIFICATIONS
☐ Industry Certifications
  - Type: [OSHA, EPA, DOT, etc.]
  - Expiration: [Date]
  - Certificate #: [Number]

☐ Professional Certifications
  - Employee certifications up to date
  - Apprentice registrations current

CATEGORY: SAFETY & COMPLIANCE
☐ OSHA Compliance
  - Safety Plan documented
  - Employee training records
  - Incident reports (if any)

☐ Environmental Permits
  - Waste disposal permits
  - Hazardous material handling (if applicable)

CATEGORY: PROJECT-SPECIFIC
☐ Building Permits (per project)
  - Permit #: [Number]
  - Jurisdiction: [Location]
  - Expiration: [Date]

Save as: ~/Cowork-Workspace/output/compliance/checklist-construction.xlsx
```

For Retail/Merchant:

```
Retail business compliance checklist:

CATEGORY: BUSINESS REGISTRATION
☐ Business License
  - Type: [Retail/Service]
  - Jurisdiction: [City/County/State]
  - Number: [License #]
  - Renewal: [Date]

☐ Sales Tax Permit
  - State: [Location]
  - Permit #: [Number]
  - Status: Active/Expired

☐ Employer Identification Number (EIN)
  - Number: [XX-XXXXXXX]
  - IRS registration confirmed

CATEGORY: INSURANCE
☐ General Liability Insurance
  - Coverage: $1M minimum
  - Policy #: [Number]
  - Expiration: [Date]

☐ Property Insurance
  - Coverage: Building/Inventory
  - Policy #: [Number]

☐ Workers' Compensation (if employees)
  - Certificate available
  - Current coverage

CATEGORY: INDUSTRY-SPECIFIC
☐ Food Safety Certification (if food retail)
  - Health Department inspection: [Pass/Date]
  - Food Handler Certifications: [Current]

☐ Alcohol License (if applicable)
  - Type: [Beer/Wine/Liquor]
  - License #: [Number]
  - Expiration: [Date]

☐ Hazmat Permits (if applicable)
  - Type: [Specify]
  - Compliance: [Yes/No]

CATEGORY: EMPLOYMENT COMPLIANCE
☐ Labor Law Posters
  - Displayed in workplace
  - Current year versions

☐ Employee Records
  - I-9 Forms (employment eligibility)
  - W-4 Forms (tax withholding)

Save as: ~/Cowork-Workspace/output/compliance/checklist-retail.xlsx
```

### Step 3: Verify existing documents

```
Scan documents folder: ~/Cowork-Workspace/input/documents/

For each document found:
1. Extract: Document type, expiration date, issuing authority
2. Match with checklist items
3. Flag: ✅ Valid | ⚠️ Expiring soon (<30 days) | ❌ Expired | ❓ Missing

Generate compliance status report:

COMPLIANCE STATUS SUMMARY
Generated: [Today's date]

✅ COMPLIANT (12 items):
- General Liability Insurance (exp. 12/31/2026)
- Business License (exp. 06/30/2026)
- Tax Registration (no expiration)
[...]

⚠️ EXPIRING SOON (2 items):
- Contractor's License (exp. 02/28/2026 - 8 days)
  → ACTION: Renew immediately
- OSHA Certification (exp. 03/15/2026 - 23 days)
  → ACTION: Schedule renewal training

❌ EXPIRED (1 item):
- Workers' Comp Certificate (exp. 01/15/2026)
  → CRITICAL: Contact insurance provider ASAP

❓ MISSING (3 items):
- Professional Liability Insurance
  → ACTION: Obtain quote from providers
- Building Permit for [Project Name]
  → ACTION: Apply with [Jurisdiction]
- EPA Certification
  → ACTION: Verify if required for current scope

Save to: ~/Cowork-Workspace/output/compliance/status-report-[date].pdf
```

### Step 4: Generate action plan

```
From compliance status report, create prioritized action plan:

PRIORITY 1 - CRITICAL (Complete within 7 days):
1. Renew Workers' Comp Insurance (EXPIRED)
   - Provider: [Name/Phone]
   - Estimated cost: $XXX
   - Timeline: 2-3 business days

2. Renew Contractor's License (Expires in 8 days)
   - Authority: [State Licensing Board]
   - Requirements: [CEU credits, fees]
   - Timeline: 5-10 business days

PRIORITY 2 - URGENT (Complete within 30 days):
3. Schedule OSHA Certification Renewal
   - Training provider: [Name]
   - Cost: $XXX
   - Duration: [Hours/Days]

PRIORITY 3 - IMPORTANT (Complete within 90 days):
4. Obtain Professional Liability Insurance
   - Research providers
   - Compare quotes (3 minimum)
   - Coverage: $1M recommended

5. Apply for Building Permit - [Project Name]
   - Submit plans to [Jurisdiction]
   - Fee: $XXX
   - Processing time: 2-4 weeks

PRIORITY 4 - VERIFY (No deadline but clarify):
6. EPA Certification requirement
   - Check if work scope requires certification
   - If yes, enroll in certification program

Save as: ~/Cowork-Workspace/output/compliance/action-plan-[date].xlsx
With calendar deadlines and responsible person per item
```

### Step 5: Create client-ready compliance package

For client or contract requests:

```
Client requested compliance documentation for [Project Name]

Assemble compliance package:

COVER PAGE:
- Company name and contact
- Date of package
- Project reference
- Statement: "All documents current as of [date]"

INCLUDE (organized sections):

1. BUSINESS REGISTRATIONS
   - Business License (copy)
   - Tax Registration Certificate
   - [State] Contractor License

2. INSURANCE CERTIFICATES
   - General Liability (with client named as additional insured if required)
   - Workers' Compensation
   - Professional Liability (if applicable)

3. CERTIFICATIONS
   - OSHA Compliance Certificate
   - [Industry-specific certifications]
   - Employee qualification certificates (if required)

4. PROJECT-SPECIFIC
   - Building Permits for this project
   - Safety Plan
   - Environmental compliance (if applicable)

FORMAT: PDF compilation with table of contents
EXPIRATION TRACKING: Note expiration dates on cover letter

Save to: ~/Cowork-Workspace/output/compliance/client-package-[client-name]-[date].pdf
```

---

## Example Prompts

### Quick compliance snapshot

```
Fast compliance check for [Business Name]

Scan: ~/Cowork-Workspace/input/documents/

Generate 1-page summary:
- Total items checked: XX
- Compliant: XX (%)
- Action required: XX items
- Critical issues: XX

Color-coded status:
🟢 Fully compliant
🟡 Minor issues (expiring soon)
🔴 Critical gaps (expired/missing mandatory)

PDF: ~/Cowork-Workspace/output/compliance/snapshot-[date].pdf
```

### Pre-bid compliance verification

```
Bidding on [Project Name] - need to verify compliance requirements

PROJECT REQUIREMENTS (from RFP):
- General Liability: $2M minimum
- Workers' Comp: Required
- Contractor License: [State] Class A
- OSHA 30-hour: Foreman required
- Bonding: $500K capacity

VERIFICATION:
Compare project requirements vs. current coverage
Identify gaps
Estimate costs to meet requirements
Recommend: Bid / No-bid with justification

Report: ~/Cowork-Workspace/output/compliance/bid-compliance-[project].pdf
```

### Multi-location compliance

```
Business operates in 3 states: [State A, State B, State C]

Generate compliance matrix:

| Requirement | State A | State B | State C | Status |
|-------------|---------|---------|---------|--------|
| Business License | ✅ | ✅ | ❌ | Action needed |
| Contractor License | ✅ | ⚠️ (exp 30d) | ✅ | Renew State B |
| Workers' Comp | ✅ | ✅ | ✅ | Compliant |
| [...]

Highlight state-specific requirements and gaps
Action plan per state

Excel: ~/Cowork-Workspace/output/compliance/multi-state-[date].xlsx
```

---

## Troubleshooting

### Document expired but renewal pending

**Cause**: Renewal applied but new certificate not yet received
**Solution**: Document pending status:

```
Workers' Comp Certificate expired 01/15/2026
Renewal application submitted 01/10/2026 (BEFORE expiration)

INTERIM DOCUMENTATION:
1. Copy of renewal application
2. Payment receipt/confirmation
3. Letter from insurance provider confirming continuous coverage
4. Expected certificate issue date: [Date]

Create "Gap Coverage Letter":
"Our Workers' Compensation insurance renewal is in process. Coverage remains
continuous per attached provider confirmation. Updated certificate will be
provided upon receipt (estimated [date])."

Attach to compliance package until official certificate received
```

### Requirement unclear or jurisdiction-specific

**Cause**: Ambiguous regulation or multiple interpretations
**Solution**: Research and document reasoning:

```
Question: Is [Specific Certification] required for [Activity]?

RESEARCH STEPS:
1. Check jurisdiction's official website ([Authority Name])
2. Review business code sections [Cite specific codes]
3. Call licensing authority for clarification (document date/person)
4. Consult industry association guidance

DOCUMENT FINDING:
- Requirement: YES / NO / DEPENDS ON [condition]
- Authority: [Source]
- Date verified: [Date]
- Contact: [Name/Phone if applicable]
- Notes: [Conditions, thresholds, exemptions]

Add to compliance notes with source for future reference/audits
```

### Client requires certification you don't have

**Cause**: Project-specific requirement beyond normal operations
**Solution**: Evaluate obtain vs. subcontract:

```
Client requires [EPA Lead-Safe Certification] for renovation project
Current status: Not certified

ANALYSIS:
Option A - Obtain Certification:
- Training: [Provider], [Duration], $XXX
- Exam: $XX
- Timeline: 2-4 weeks
- Ongoing: Renewal every [period]
- BENEFIT: Enables future similar projects

Option B - Subcontract/Partner:
- Find certified subcontractor for lead work
- Your scope: Non-lead components
- BENEFIT: No certification investment
- RISK: Dependence on subcontractor availability

RECOMMENDATION: [Option A/B] because [reasoning]

If Option A: Begin certification process immediately
If Option B: Identify 2-3 certified partners and establish agreements
```

---

## Variations

### New business setup

```
Starting new [Business Type] in [Location]

Generate startup compliance roadmap:

PHASE 1 - PRE-LAUNCH (Before opening):
☐ Register business name
☐ Obtain Tax ID (EIN)
☐ Apply for business license
☐ Get required permits
☐ Secure insurance (general liability minimum)

PHASE 2 - LAUNCH (First 30 days):
☐ Register for sales tax (if applicable)
☐ Post labor law posters
☐ Set up payroll compliance (if hiring)

PHASE 3 - ONGOING:
☐ Annual renewals schedule
☐ Employee training programs
☐ Quarterly compliance reviews

Timeline: [Weeks before planned opening]
Estimated costs: $X,XXX
Critical path items: [Longest lead-time items]

Save: ~/Cowork-Workspace/output/compliance/startup-roadmap.pdf
```

### Audit preparation

```
Preparing for [Agency] audit scheduled [Date]

AUDIT SCOPE: [Topic, e.g., workplace safety, tax compliance]

PREPARATION CHECKLIST:
☐ Gather all requested documents (per audit letter)
☐ Organize chronologically with index
☐ Review for completeness (no gaps or missing periods)
☐ Prepare explanations for anomalies
☐ Designate point person for audit
☐ Brief employees on audit process

DOCUMENT ORGANIZATION:
- Binder/folder per category
- Table of contents
- Copies (keep originals secure)
- Highlight key sections

COMMON AUDIT REQUESTS:
- Employment records (I-9, W-4, training logs)
- Safety records (incidents, inspections, training)
- Financial records (invoices, payments, tax filings)
- Licenses and permits

Preparation timeline: [Weeks before audit date]
```

### Compliance for government contracts

```
Pursuing government contract - Federal/State compliance requirements

FEDERAL REQUIREMENTS (if >$10K):
☐ SAM.gov registration (System for Award Management)
☐ DUNS number
☐ Cage Code
☐ Davis-Bacon wage compliance (if construction >$2K)
☐ Buy American Act compliance
☐ Equal Employment Opportunity compliance

STATE/LOCAL ADDITIONAL:
☐ [State-specific requirements]
☐ Small business certification (if applicable)
☐ Veteran/minority-owned certifications (if applicable)

ENHANCED INSURANCE:
☐ Higher liability limits (often $2M+)
☐ Performance bonds
☐ Payment bonds

PROCESS:
- Timeline to complete registrations: 2-4 weeks
- Annual renewals and updates required
- Maintain detailed records (audits common)

Checklist: ~/Cowork-Workspace/output/compliance/federal-contract-ready.xlsx
```

---

## Best Practices

1. **Calendar Reminders** — Set renewal alerts 60 days before expirations
2. **Central Repository** — Keep all compliance documents in one organized location
3. **Digital + Physical** — Maintain digital copies AND physical backups
4. **Annual Review** — Review full compliance status every January
5. **Change Tracking** — Note when regulations change in your industry
6. **Over-Comply** — When in doubt, get the certification/insurance (safer than risking gaps)
7. **Professional Guidance** — Consult attorney or insurance broker for complex situations
8. **Client-Ready Packages** — Maintain up-to-date compliance packages for quick response
9. **Employee Training** — Keep training records and certifications current
10. **Document Everything** — Save proof of applications, renewals, correspondence with authorities

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
