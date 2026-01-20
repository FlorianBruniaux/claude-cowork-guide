# Workflow: Quote Creation

> **Estimated time**: 20 minutes
> **Difficulty**: Intermediate
> **Category**: 💼 Commercial
> **Professions**: Contractors, Merchants

---

## Use Case

You need to create detailed quotes for your clients. This workflow helps you:

- Create professional priced quotes
- Calculate cost basis and margins
- Generate clear technical descriptions
- Quickly adapt existing quote for new client

> ⚠️ **Important**: A quote commits your professional responsibility. Always verify prices, quantities, and deadlines before sending.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Client information (name, project, contact)
- [ ] List of services to quote
- [ ] Price list or cost basis
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Prepare information

```bash
# Create structure
mkdir -p ~/Cowork-Workspace/{input,output/quotes}

# If you have a price list
cp ~/Documents/price-list.xlsx ~/Cowork-Workspace/input/
```

### Step 2: Create the quote

```
Create professional quote for:

CLIENT:
- Name: [Client name]
- Project: [Project nature]
- Work address: [Address if applicable]

MY DETAILS:
- Business: [Your legal name]
- Address: [Your complete address]
- Tax ID: [Your Tax ID/EIN]
- Contact: [Phone + email]

QUOTE NO.: Q2026-001
Date: January 20, 2026
Validity: 3 months

SERVICES:
[Detailed list with quantities, descriptions, prices]

For each line:
- Precise description
- Quantity
- Unit
- Unit price
- Total

CALCULATIONS:
- Subtotal
- Sales tax/VAT
- Total

CONDITIONS:
- Execution deadline: [X days/weeks]
- Deposit: [if applicable]
- Payment terms: [terms]
- Validity: 3 months

Format: PDF
Save: ~/Cowork-Workspace/output/quotes/Q2026-001.pdf
```

### Step 3: Add technical descriptions

For contractors/construction:

```
For each service, add:
- Detailed technical description
- Materials used (brands, references)
- Applicable standards (ASTM, local codes)
- Intervention timelines
- Warranties

Example:
"Installation of 3 PVC double-glazed windows, 4/16/4 argon,
U-value=1.3 W/m².K, energy code compliant,
white RAL 9016 finish, per local building code,
10-year warranty, 2-week lead time"
```

### Step 4: Verify and adjust

Cowork will show the plan. **Verify**:

- ✓ Correct calculations (margins included)
- ✓ Client-friendly descriptions
- ✓ Realistic deadlines
- ✓ Clear conditions

If adjustment needed:

```
Modify quote:
- Increase margin on service 2 from 25% to 30%
- Reduce deadline from 4 to 3 weeks
- Add option: [option description] +$[price]
```

### Step 5: Generate quote

```
Proceed with quote generation
```

Verify result:

```bash
open ~/Cowork-Workspace/output/quotes/Q2026-001.pdf
```

---

## Example Prompts

### Electrical quote (contractor)

```
Electrician quote for Mrs. Johnson, 45 Oak Street

Services:
1. Electrical panel upgrade:
   - Replace outdated panel
   - Install GFCI breakers
   - 12 circuit breakers
   - Grounding system
   - Price: $1,200

2. Kitchen outlet installation:
   - 6 grounded 20A outlets
   - 12/2 wiring in conduit
   - Price: $450

3. Living room lighting (3 LED recessed lights):
   - Wiring + fixtures
   - 3-way switch
   - Price: $280

NEC compliant
Lead time: 3 days
30% deposit on order
Balance on completion
Professional liability insurance

My details: Johnson Electric, Tax ID 12-3456789

PDF: ~/Cowork-Workspace/output/quotes/Q2026-018-Johnson.pdf
```

### Quote with options

```
Create plumbing quote with 3 options:

BASE (required):
- Gas boiler replacement: $3,500
- Install 5 radiators: $1,800

OPTION 1 (if client accepts):
- Smart thermostat: +$350

OPTION 2 (alternative):
- Thermostatic radiator valves: +$280

OPTION 3 (complementary):
- Annual maintenance contract: +$120/year

Present 3 totals:
- Minimum (base only)
- Recommended (base + option 1)
- Complete (base + all options)
```

---

## Troubleshooting

### Margin calculation difficult

**Cause**: Cost basis poorly estimated
**Solution**: Request calculation help:

```
My material costs: $450
My labor: 8h @ $35/h
Travel expenses: $40
Overhead (20% revenue): ?
Desired margin: 25%

Calculate my selling price
```

### Descriptions too technical

**Cause**: Professional jargon
**Solution**: Adapt for client:

```
Rewrite technical descriptions in client language:
- Avoid jargon
- Explain benefits (comfort, savings, safety)
- Keep regulatory precision small print
```

### Quote too long

**Cause**: Too much detail
**Solution**: Group by lots:

```
Group services by packages:
- Package 1: Rough work (subtotal)
- Package 2: Finish work (subtotal)
- Package 3: Final details (subtotal)

Details in separate appendix
```

---

## Variations

### Comparative quote (3 tiers)

```
Create 3 versions of quote:

ECONOMY TIER:
- Standard materials
- Legal warranty only
- Total: [calculate]

COMFORT TIER (recommended):
- Premium materials
- Extended 5-year warranty
- Total: [calculate]

PREMIUM TIER:
- High-end materials
- 10-year warranty
- Priority service
- Total: [calculate]
```

### Quote from previous job

```
Reuse quote ~/Cowork-Workspace/input/Q2025-156.pdf

Adapt for new client:
- New name: Martin LLC
- Same services
- New prices (inflation adjustment +3%)
- New number: Q2026-022
- New validity date

Save: ~/Cowork-Workspace/output/quotes/Q2026-022-Martin.pdf
```

### Excel summary export

```
After creating PDF quote, also generate:

Excel file: ~/Cowork-Workspace/output/quotes/Q2026-001-calculations.xlsx

With sheets:
- Cost basis (materials + labor)
- Margins per item
- Competitive comparison
- Project schedule
```

---

## Best Practices

1. **Unique numbering** — Continuous numbering system (Q[year]-[number])
2. **Limited validity** — Usually 3 months (state explicitly)
3. **Clear conditions** — Deposit, deadlines, payment, warranties
4. **Photos if helpful** — Include site photos for renovation quotes
5. **Versions** — Keep history if quote modified (v1, v2, etc.)
6. **Proofreading** — Have third party review if large amount
7. **Follow-up timing** — Follow up with client after 1 week if no response
8. **Quote = commitment** — Prices and services locked unless noted otherwise

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
