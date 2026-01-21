# Workflow: Quote → Invoice Conversion

> **Estimated time**: 10 minutes
> **Difficulty**: Beginner
> **Category**: 📋 Administrative
> **Professions**: All

🌐 **Disponible aussi en [Français](quote-to-invoice.md)**

---

## Use Case

A client has accepted your quote and you need to quickly convert it to an invoice. This workflow helps you:

- Automatically convert quote to invoice
- Maintain numbering and amount consistency
- Add invoice legal mentions
- Archive correctly

> ⚠️ **Important**: Always verify that the accepted quote matches exactly the invoiced services.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Accepted quote (PDF or Word)
- [ ] Next invoice number
- [ ] Client approval (email, signature, or confirmation)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Prepare source quote

```bash
mkdir -p ~/Cowork-Workspace/{input,output/invoices}

# Copy accepted quote
cp ~/Documents/Quotes/Q2026-042.pdf ~/Cowork-Workspace/input/
```

### Step 2: Convert to invoice

```
Convert quote ~/Cowork-Workspace/input/Q2026-042.pdf to invoice

TRANSFORMATIONS:
1. Replace "QUOTE" with "INVOICE"
2. Replace quote number Q2026-042 with INV-2026-085
3. Replace quote date with invoice date: January 20, 2026
4. Add due date: February 19, 2026 (30 days)

KEEP IDENTICAL:
- Client details
- Services and quantities
- Unit prices and totals (subtotal, tax, total)
- Terms and conditions (if present)

ADD:
- Note "Quote Q2026-042 dated [quote date] accepted on [acceptance date]"
- Payment terms: Net 30 days
- Late payment penalties: [applicable rate]
- Payment method: [Wire transfer / Check / Other]
- Bank details (IBAN/account number)

REMOVE (if present):
- "Quote is non-binding" mention
- Quote validity period (no longer relevant on invoice)

Format: PDF
Save to: ~/Cowork-Workspace/output/invoices/INV-2026-085.pdf
```

### Step 3: Verify consistency

Cowork will show the plan. **Verify**:

- ✓ Identical quote/invoice amounts
- ✓ Correct and unique numbering
- ✓ Coherent dates (invoice ≥ quote)
- ✓ All legal mentions present

If changes from quote:

```
WARNING: Client requested modification after quote

Original quote Q2026-042:
- Service A: $500

Client requests:
- Service A: $600 (premium option added)

Invoice INV-2026-085:
- Service A premium: $600
- Add note: "Modification agreed with client on [date]"
```

### Step 4: Generate and archive

```
Proceed with conversion
```

Verify and archive:

```bash
# Open generated invoice
open ~/Cowork-Workspace/output/invoices/INV-2026-085.pdf

# Create quote ↔ invoice link for traceability
echo "Quote Q2026-042 → Invoice INV-2026-085 on 01/20/2026" >> ~/Cowork-Workspace/output/correspondences.txt
```

### Step 5: Follow-up (optional)

Create due date reminder:

```
From invoice INV-2026-085 (due 02/19/2026):

Create payment reminder:
- Alert date: 02/12/2026 (7 days before due)
- Action: Check if payment received
- If not: Courteous reminder

Format: Line in ~/Cowork-Workspace/output/payment-reminders.csv
Columns: Invoice | Client | Amount | Due Date | Reminder | Status
```

---

## Example Prompts

### Simple conversion

```
Quote Q2026-038 accepted → Invoice INV-2026-074

Quote: ~/Cowork-Workspace/input/Q2026-038.pdf
Invoice date: 01/20/2026
Due date: +30 days (02/19/2026)
No changes to services

Add:
- Note "Quote Q2026-038 dated 01/12/2026 accepted on 01/18/2026"
- Bank details: IBAN... SWIFT...
- Payment via wire transfer

Save to: ~/Cowork-Workspace/output/invoices/INV-2026-074.pdf
```

### Conversion with deposit

```
Quote Q2026-051 Total: $5,000

Client pays 30% deposit = $1,500

Generate 2 invoices:

INVOICE 1 (deposit):
- Number: INV-2026-089
- Date: 01/20/2026
- Amount: $1,500
- Note: "30% deposit - Quote Q2026-051"
- Due: Immediate (payment on order)

INVOICE 2 (balance - issue later):
- Number: INV-2026-XXX (TBD)
- Amount: $3,500
- Note: "Balance - Quote Q2026-051 - Deposit INV-2026-089 deducted"
- Due: After delivery/completion

For now, generate only INV-2026-089 (deposit)
Save to: ~/Cowork-Workspace/output/invoices/INV-2026-089-deposit.pdf
```

### Batch conversion

```
Batch convert 5 accepted quotes in ~/Cowork-Workspace/input/accepted-quotes/

For each quote:
1. Read quote number Q2026-XXX
2. Generate invoice INV-2026-YYY (sequential numbering from INV-2026-090)
3. Invoice date: 01/20/2026
4. Due date: +30 days
5. Add standard mentions

Also create summary Excel file:
- Columns: Quote | Invoice | Client | Amount | Date | Due Date
- Save to: ~/Cowork-Workspace/output/conversions-january-2026.xlsx
```

---

## Troubleshooting

### Incomplete or modified quote

**Cause**: Negotiation after quote
**Solution**: Document changes:

```
Quote Q2026-042 was modified after acceptance:

ORIGINAL QUOTE:
- Service A: $1,000
- Service B: $500
Total: $1,500

CLIENT AGREEMENT (email 01/18):
- Service A removed
- Service B: $500
- Service C added: $700
Total: $1,200

INVOICE INV-2026-085:
Use final agreement ($1,200)
Add note: "Price per email agreement 01/18/2026"
Attach copy of acceptance email
```

### Numbering gap

**Cause**: Forgotten invoice or duplicate
**Solution**: Verify register:

```
List all invoices in ~/Cowork-Workspace/output/invoices/
Sort by chronological number
Identify last number used: INV-2026-084
Next number: INV-2026-085

If gap in numbering (ex: INV-2026-082 missing):
→ Investigate: invoice cancelled? forgotten?
→ Never reuse cancelled number (create INV-2026-085A if needed)
```

---

## Best Practices

1. **Keep quotes** — Archive quote AND invoice together (traceability)
2. **Formal acceptance** — Always have proof of acceptance (email, signature)
3. **Reasonable delay** — Issue invoice max 1 month after quote acceptance
4. **Amount consistency** — If modified, document and inform client
5. **Unique numbering** — Never 2 invoices with same number
6. **Double verification** — Review before sending (invoice error = credit note + new invoice)
7. **Clear due date** — Always mention payment deadline
8. **Prompt sending** — Send invoice within 48h of acceptance (professionalism)

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
