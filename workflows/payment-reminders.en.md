# Workflow: Payment Reminders

> **Estimated time**: 20 minutes
> **Difficulty**: Intermediate
> **Category**: 📋 Administrative
> **Professions**: Contractors, Merchants, Freelancers, Small businesses

---

## Use Case

A client hasn't paid their invoice by the due date. This workflow helps you:

- Generate escalating payment reminders (courteous → firm → formal)
- Calculate late payment penalties legally
- Prepare formal notice before legal action
- Track payment reminder history

> ⚠️ **Important**: Always comply with applicable commercial law and payment regulations. Late payment penalties must follow legal rates.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Unpaid invoice (PDF or data)
- [ ] Invoice payment terms (due date, penalty clause)
- [ ] Workspace folder created
- [ ] Knowledge of applicable late payment rate (legal rate or contractual)

---

## Step-by-Step Instructions

### Step 1: Identify overdue invoice

```bash
mkdir -p ~/Cowork-Workspace/{input/invoices,output/reminders}

# Copy unpaid invoice
cp ~/Documents/Invoices/INV-2026-042.pdf ~/Cowork-Workspace/input/invoices/
```

### Step 2: Generate first reminder (R1 - Courteous)

```
From invoice INV-2026-042:
- Client: ABC Contracting Inc
- Amount: $1,500.00
- Due date: January 20, 2026
- Today: February 5, 2026 (15 days overdue)

Generate COURTEOUS payment reminder (R1):

TONE: Professional, understanding, non-confrontational
ASSUMPTION: Oversight or administrative delay

CONTENT:
- Reference invoice number and date
- Recall amount and due date
- Note delay (15 days)
- Request payment confirmation
- Offer payment facilitation if needed
- Provide payment details (bank, check address)
- No late penalty mention at this stage

FORMAT: Professional business letter (PDF)
SUBJECT: "Payment Reminder - Invoice INV-2026-042"

Save to: ~/Cowork-Workspace/output/reminders/INV-2026-042-R1.pdf
```

### Step 3: Evaluate response

**If client responds/pays** → Case closed

**If no response after 7-10 days** → Proceed to Step 4

### Step 4: Generate second reminder (R2 - Firm)

```
Invoice INV-2026-042 - No response to R1 sent on 02/05/2026
Today: February 15, 2026 (25 days overdue)

Generate FIRM payment reminder (R2):

TONE: Professional but firmer, reminder of contractual obligations
ASSUMPTION: Client is avoiding

CONTENT:
- "Despite our reminder dated 02/05/2026..."
- Recall invoice details (number, date, amount)
- Note significant delay (25 days)
- Mention contractual payment terms
- Apply late payment penalties per contract terms:
  * Legal rate: [specify applicable rate, e.g., Prime rate + 10%]
  * Late penalties: $1,500.00 × [rate]% × 25 days / 365 = $XX.XX
- Specify new payment deadline: 7 days (02/22/2026)
- Warn: "Failure to comply will result in formal notice"
- Request written confirmation

FORMAT: Registered letter recommended (+ email copy)

Save to: ~/Cowork-Workspace/output/reminders/INV-2026-042-R2.pdf
```

### Step 5: Evaluate response

**If client responds/pays** → Case closed (invoice late penalties if applicable)

**If no response after 7 days** → Proceed to Step 6

### Step 6: Generate formal notice (R3 - Formal/Legal)

```
Invoice INV-2026-042 - No response to R2 sent on 02/15/2026
Today: February 25, 2026 (35 days overdue)

Generate FORMAL NOTICE (R3):

TONE: Legal, formal, final warning before legal action
ASSUMPTION: Potential bad faith

CONTENT:
HEADER: "FORMAL NOTICE - FINAL NOTICE BEFORE LEGAL ACTION"

- Recap payment history:
  * Invoice INV-2026-042 issued 01/10/2026, due 01/20/2026
  * R1 sent 02/05/2026 (15 days late) - No response
  * R2 sent 02/15/2026 (25 days late) - No response

- Amount breakdown:
  * Principal: $1,500.00
  * Late penalties (35 days × [rate]%): $XX.XX
  * Collection costs: $YY.YY
  * TOTAL DUE: $1,5XX.XX

- Formal demand:
  * "You are hereby formally notified to pay..."
  * Final deadline: 8 days (03/05/2026)
  * "Failure to comply will result in legal proceedings without further notice"

- Mention:
  * Right to legal collection proceedings
  * Additional legal costs will be added
  * Possible credit reporting/business registry notation

FORMAT: Registered letter with acknowledgment of receipt (mandatory)
Copy via email for traceability

LEGAL REMINDER: Consider consulting attorney before sending if large amount

Save to: ~/Cowork-Workspace/output/reminders/INV-2026-042-R3-FORMAL-NOTICE.pdf
```

### Step 7: Track reminder history

Create tracking log:

```
Create Excel tracking file:
~/Cowork-Workspace/output/payment-tracking.xlsx

COLUMNS:
| Invoice | Client | Amount | Due Date | Days Late | R1 Date | R2 Date | R3 Date | Status | Amount + Penalties | Notes |

INSERT LINE:
INV-2026-042 | ABC Contracting | $1,500 | 01/20/2026 | 35 | 02/05 | 02/15 | 02/25 | Formal Notice | $1,5XX | Legal action planned if no response by 03/05

STATUS VALUES: R1 Sent / R2 Sent / Formal Notice / Paid / Legal Action / Write-off
```

---

## Example Prompts

### Simple reminder (R1)

```
Courteous reminder for invoice INV-2026-089
- Client: Johnson Plumbing Services
- Amount: $850.00
- Due: 01/30/2026
- Today: 02/10/2026 (10 days late)

Professional tone, understanding approach
Assume simple oversight
Request payment confirmation
No penalty mention

PDF to: ~/Cowork-Workspace/output/reminders/INV-2026-089-R1.pdf
```

### Batch reminders

```
Generate R1 reminders for all overdue invoices in:
~/Cowork-Workspace/input/invoices/overdue/

For each invoice:
1. Extract: number, client, amount, due date
2. Calculate days overdue
3. Generate personalized R1
4. Name: [invoice-number]-R1.pdf

Also create tracking Excel summary with all cases

Save to: ~/Cowork-Workspace/output/reminders/batch-[date]/
```

### Multi-language reminder

```
Invoice INV-2026-075 - International client (Spain)

Generate R2 in SPANISH:
- Original invoice in English
- All amounts in USD
- Spanish business letter conventions
- Applicable late penalty: Spanish legal rate
- Dual format: Spanish + English translation side-by-side

PDF: ~/Cowork-Workspace/output/reminders/INV-2026-075-R2-ES.pdf
```

---

## Troubleshooting

### Client disputes invoice

**Cause**: Legitimate disagreement on service/amount
**Solution**: Pause reminders, resolve dispute:

```
Received dispute on INV-2026-042:
Client claims: "Service not completed as agreed"

IMMEDIATE ACTION:
1. STOP all reminders
2. Create dispute case file:
   - Original invoice + quote
   - Client correspondence
   - Service delivery proof (photos, signatures, emails)

RESOLUTION:
Option A: Client is right → Issue credit note, revised invoice
Option B: Client is wrong → Provide evidence, negotiate solution
Option C: Partial dispute → Adjust invoice, payment plan

Do NOT send formal notice during active dispute (bad faith risk)
```

### Uncertain about legal rates

**Cause**: Penalty rate not specified in contract
**Solution**: Apply default legal rate:

```
Invoice INV-2026-042 - Contract doesn't specify penalty rate

RESEARCH applicable rate:
- Jurisdiction: [State/Country]
- Default commercial late payment rate: [Legal database search]
- Example (U.S.): Often Prime Rate + 1-3% or statutory rate
- Example (EU): ECB rate + 8 percentage points

Calculate penalties using CONSERVATIVE rate to avoid disputes:
"Penalties calculated per applicable law: [Rate]%"

Recommend: Add penalty clause to future contracts
```

### Client ignores formal notice

**Cause**: Bad faith or insolvency
**Solution**: Evaluate legal action:

```
Formal notice sent 02/25/2026 - Deadline 03/05/2026 passed
No response, no payment

DECISION TREE:

Amount > $2,000 AND client solvent?
→ YES → Consult attorney for legal proceedings
→ NO → Evaluate cost/benefit

Client insolvent (bankruptcy/closed)?
→ File proof of claim in insolvency proceedings
→ Or write-off as bad debt (tax deduction)

Client reachable but refusing?
→ Mediation/arbitration (if clause exists)
→ Small claims court (if amount < threshold)
→ Attorney-led collection

IMPORTANT: Document EVERYTHING (all correspondence, delivery confirmations)
```

---

## Variations

### Payment plan proposal

```
Client responds to R2: "Financial difficulties, cannot pay full amount now"

Generate PAYMENT PLAN proposal:
- Principal: $1,500.00
- Penalties waived IF plan respected
- Plan: 3 monthly payments of $500 (03/15, 04/15, 05/15)
- Terms:
  * First payment = good faith (mandatory)
  * Missed payment = full amount + penalties immediately due
  * Written agreement required (both signatures)

Legal clause: "This plan doesn't constitute debt forgiveness..."

PDF: ~/Cowork-Workspace/output/agreements/INV-2026-042-payment-plan.pdf
```

### Express formal notice

```
Large amount ($10,000+) or urgent situation

Generate EXPRESS formal notice (5-day deadline):
- Accelerated timeline due to amount
- Mention risk of significant additional costs
- Attorney letterhead (if available)
- State intent to file lien/claim if applicable
- Request immediate contact for resolution

Registered mail + email + courier delivery for traceability
```

### Reminder with settlement offer

```
Old debt (6+ months), want to close case quickly

Generate R2 with settlement offer:
- Original amount: $1,500.00
- Accumulated penalties: $150.00
- OFFER: "Pay $1,400 within 10 days = full discharge"
- Discount: $250 (penalties waived + $100 goodwill)
- Terms: Payment in full only (no plan), wire transfer only

Benefit: Quick collection vs prolonged dispute
Risk: Sets precedent for other clients

Specify: "One-time exceptional offer, not replicable"
```

---

## Best Practices

1. **Escalation Timing** — Respect delays between levels (R1 +10 days → R2 +7 days → R3)
2. **Always Courteous** — Even R3 stays professional, avoid insults/threats
3. **Legal Compliance** — Verify applicable rates and collection laws in your jurisdiction
4. **Document Everything** — Keep copies of all reminders and delivery confirmations
5. **Pick Your Battles** — Legal action costs money; evaluate if worth pursuing
6. **Payment Facilitation** — Offer payment plans before formal notice (better recovery)
7. **Registered Mail** — R2 and especially R3 should be sent via registered mail
8. **Systematic Tracking** — Use spreadsheet to monitor all reminders (avoid forgetting cases)
9. **Attorney Consultation** — For amounts >$5,000 or complex situations, consult attorney
10. **Prevention** — Add clear payment terms and penalty clauses to contracts

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
