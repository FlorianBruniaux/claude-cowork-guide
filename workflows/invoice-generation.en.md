# Workflow: Invoice Generation

> **Estimated time**: 15 minutes
> **Difficulty**: Beginner
> **Category**: 📋 Administrative
> **Professions**: Contractors, Merchants, Freelancers, Small businesses

🌐 **Disponible aussi en [Français](invoice-generation.md)**

---

## Use Case

You need to create professional invoices quickly from templates or existing quotes. This workflow helps you:

- Generate compliant invoices from templates
- Convert accepted quotes into invoices
- Automatically number your invoices
- Calculate taxes and totals automatically

> ⚠️ **Important**: This workflow generates invoices in text/PDF format. Always verify amounts and legal mentions before sending.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Invoice template (Word, Excel or PDF) OR client information
- [ ] Next invoice number
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Prepare the Workspace

```bash
# Create structure
mkdir -p ~/Cowork-Workspace/{templates,output/invoices}

# If you have a template, copy it
cp ~/Documents/invoice-template.docx ~/Cowork-Workspace/templates/
```

### Step 2: Create invoice from template

If you have a template:

```
Use the template in ~/Cowork-Workspace/templates/invoice-template.docx

Fill it with this information:
- Invoice number: INV-2026-001
- Date: January 20, 2026
- Client: [Customer name and address]
- Services:
  * [Description 1]: [quantity] x [unit price]
  * [Description 2]: [quantity] x [unit price]
- Payment terms: Net 30

Calculate automatically:
- Subtotal
- Tax (VAT/Sales Tax)
- Total

Save to ~/Cowork-Workspace/output/invoices/INV-2026-001.pdf
```

### Step 3: Create invoice from scratch

If you don't have a template:

```
Create a professional invoice with:

HEADER:
- My details: [Name, address, Tax ID]
- Logo: (optional)

CLIENT:
- Name: [Client name]
- Address: [Full address]

INVOICE:
- Number: INV-2026-001
- Issue date: 01/20/2026
- Due date: 02/19/2026

SERVICES:
| Description | Qty | Unit Price | Total |
|-------------|-----|------------|-------|
| [Service 1] | 1   | $500.00    | $500.00 |
| [Service 2] | 2   | $250.00    | $500.00 |

TOTALS:
- Subtotal: $1,000.00
- Tax (20%): $200.00
- Total: $1,200.00

LEGAL MENTIONS:
- Payment terms: Net 30 days
- Late payment penalties: [legal rate]
- Early payment discount: none

Format: PDF
Save to: ~/Cowork-Workspace/output/invoices/INV-2026-001.pdf
```

### Step 4: Verify the invoice

Cowork will display its plan. **Verify**:

- ✓ Correct calculations (subtotal, tax, total)
- ✓ Unique invoice number
- ✓ Complete contact details
- ✓ Required legal mentions

### Step 5: Generate and save

```
Proceed with generation
```

After generation:

```bash
# Check the file
open ~/Cowork-Workspace/output/invoices/INV-2026-001.pdf

# OR on Linux
xdg-open ~/Cowork-Workspace/output/invoices/INV-2026-001.pdf
```

---

## Example Prompts

### Simple invoice

```
Create an invoice:
- No: INV-2026-042
- Date: 01/20/2026
- Client: ABC Woodworking Inc, 123 Oak Street, New York, NY 10001
- Service: Window installation x3, $450 each
- Tax 20%
- Payment terms: Net 30

My details:
Johnson Plumbing LLC, 456 Main Avenue, New York, NY 10002
Tax ID: 12-3456789

Save as PDF: ~/Cowork-Workspace/output/invoices/INV-2026-042.pdf
```

### Batch invoicing

```
Create 5 invoices from quotes in ~/Cowork-Workspace/input/

For each accepted quote:
- Convert to invoice
- Numbering: INV-2026-[sequential number]
- Keep same amounts
- Add due date: +30 days
- PDF format in ~/Cowork-Workspace/output/invoices/
```

---

## Troubleshooting

### Incorrect tax calculations

**Cause**: Tax rate not specified or wrong
**Solution**: Explicitly specify:

```
Applicable tax: 20% (standard rate)
OR
Applicable tax: 10% (reduced rate)
OR
Tax exempt (specify exemption reason)
```

### Duplicate numbering

**Cause**: Invoice number already used
**Solution**: Keep a manual register or ask:

```
List all invoices in ~/Cowork-Workspace/output/invoices/
Give me the next available number
```

### Missing legal mentions

**Cause**: Incomplete template
**Solution**: Provide all required mentions:

```
Add these mentions:
- Tax ID: [your number]
- Company registration: [if applicable]
- Payment terms
- Late payment penalties: [rate]
- Collection costs: [amount]
```

---

## Variations

### Deposit invoice

```
Generate deposit invoice:
- Amount: 30% of quote Q2026-015
- Note: "30% deposit - Quote Q2026-015"
- Final invoice will deduct this deposit
```

### Recurring invoice (monthly)

```
Create monthly invoice for January 2026:
- Same client as previous invoice INV-2026-035
- Same service: Monthly maintenance
- Same amount: $250
- New date and number: INV-2026-045
```

### Excel export for accounting

```
After generating the PDF invoice, also create:
- Excel file: ~/Cowork-Workspace/output/invoices/INV-2026-042.xlsx
- With columns: Date, No, Client, Subtotal, Tax, Total, Due Date
```

---

## Best Practices

1. **Sequential numbering** — No gaps in numbering (legal requirement in many jurisdictions)
2. **Systematic backup** — Keep all invoices for required retention period (often 7-10 years)
3. **Double verification** — Always review before sending to client
4. **Validated template** — Have your template reviewed by an accountant
5. **Updated legal mentions** — Verify legal requirements annually
6. **Organized archiving** — Consistent naming (year/number or by client)

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
