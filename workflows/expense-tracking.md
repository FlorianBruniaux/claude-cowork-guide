# Workflow: Expense Tracking

> **Estimated time**: 20 minutes
> **Difficulty**: Intermediate

---

## Use Case

You have receipt photos, screenshots, or scanned documents and need to:

- Extract expense data into a spreadsheet
- Categorize expenses
- Create totals and summaries
- Track for reimbursement or accounting

> ⚠️ **Important**: Claude excels at reading receipt **fields** (vendor, date, totals) but is weaker at **line-item extraction** from tables (63% accuracy vs 97% for fields). Always verify totals manually. Budget 30-50% of time saved for validation and error correction.

---

## Prerequisites

- [ ] Cowork enabled with Chrome access (for receipt photos)
- [ ] Receipt images (JPG, PNG) or PDFs
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Prepare Receipts

```bash
# Create workspace structure
mkdir -p ~/Cowork-Workspace/{input/receipts,output}

# Copy receipts to workspace
cp ~/Downloads/*.jpg ~/Cowork-Workspace/input/receipts/
cp ~/Downloads/*.png ~/Cowork-Workspace/input/receipts/
cp ~/Downloads/*.pdf ~/Cowork-Workspace/input/receipts/
```

**Tip**: Name files descriptively if possible (e.g., `2024-01-15-uber.jpg`)

### Step 2: Review Receipt Quality

Check image quality—Cowork uses OCR and works best with:
- Clear, in-focus photos
- Good lighting
- Full receipt visible
- Minimal glare/shadows

### Step 3: Initial Extraction

Start with a basic extraction:

```
Extract expense data from receipt images in ~/Cowork-Workspace/input/receipts/

Create an Excel file with columns:
- Date (YYYY-MM-DD format)
- Vendor/Store
- Amount (number only, no currency symbol)
- Currency (3-letter code: USD, EUR, etc.)
- Category
- Payment Method (if visible: Cash, Credit, Debit)
- Receipt Filename (for reference)

Save to: ~/Cowork-Workspace/output/expenses.xlsx
```

### Step 4: Review Initial Results

Open the Excel file and check:
- Are dates correct?
- Are amounts accurate?
- Are vendors recognized correctly?
- Any missing or garbled data?

### Step 5: Request Corrections

If there are issues:

```
Review the expense file you created.

Corrections needed:
- Row 3: Amount should be 45.99, not 4599
- Row 7: Date should be 2024-01-15
- Row 12: Vendor is "Starbucks" not "Slarbucks"

Make these corrections and save.
```

### Step 6: Add Summaries

Enhance the spreadsheet with analysis:

```
Enhance ~/Cowork-Workspace/output/expenses.xlsx with:

Sheet 2 - "Category Summary":
- Category
- Total Amount
- Number of Transactions
- Percentage of Total

Sheet 3 - "Monthly Summary":
- Month
- Total Amount
- Transaction Count
- Top Category

Sheet 4 - "Vendor Summary":
- Vendor
- Total Spent
- Number of Visits
- Average Transaction

Add formulas so summaries update automatically.
Use [European/US] formula syntax.
```

### Step 7: Final Review

```
Create a final summary of the expense data:
- Total expenses
- Date range covered
- Number of receipts processed
- Any receipts that couldn't be fully extracted

Save summary to ~/Cowork-Workspace/output/expense-summary.txt
```

---

## Example Prompts

### Basic Extraction
```
Extract expenses from receipts in ~/Cowork-Workspace/input/receipts/
Columns: Date, Vendor, Amount, Category
Save to ~/Cowork-Workspace/output/expenses.xlsx
```

### With Auto-Categorization
```
Extract expenses and auto-categorize:
- Food & Dining: restaurants, cafes, grocery
- Transportation: uber, lyft, gas, parking
- Office: supplies, software, subscriptions
- Travel: hotels, flights, rental cars
- Other: everything else

Save with categories to ~/Cowork-Workspace/output/categorized-expenses.xlsx
```

### With Tax Separation
```
Extract expenses with tax breakdown:
Columns: Date, Vendor, Subtotal, Tax, Total, Category

For receipts that show tax separately, extract it.
For receipts without tax breakdown, put total in Total column, leave Tax blank.

Add a summary showing total tax paid.
```

### Reimbursement Report
```
Create a reimbursement report from expenses in ~/Cowork-Workspace/output/expenses.xlsx

Format as Word document with:
- Employee Name: [Your Name]
- Report Period: [Auto-detect from dates]
- Itemized expenses table
- Category subtotals
- Grand total
- Certification statement line for signature

Save to ~/Cowork-Workspace/output/reimbursement-report.docx
```

---

## Troubleshooting

### OCR Can't Read Receipt

**Cause**: Poor image quality, unusual font, or receipt damage

**Solutions**:
- Retake photo with better lighting
- Try scanning instead of photographing
- Manually enter data for problematic receipts

```
For receipts you couldn't read, add placeholder rows:
- Date: MANUAL ENTRY NEEDED
- Filename: [receipt filename]
I'll fill in the details manually.
```

### Wrong Amounts Extracted

**Common issues**:
- Decimal point confusion (1500 vs 15.00)
- Currency symbol included in number
- Total vs subtotal confusion

```
Review all amounts in the expense file.
Ensure:
- Amounts are numbers only (no $ or € symbols)
- Decimal places are correct (15.99 not 1599)
- Use the TOTAL amount, not subtotal

Show me any rows where you're uncertain about the amount.
```

### Categories Are Wrong

```
Recategorize expenses using these rules:
- "Amazon" → Check item: Office if supplies, Personal if other
- "Uber"/"Lyft" → Transportation (not Travel)
- Coffee shops → Food & Dining (not Office)

Update the spreadsheet with correct categories.
```

### Duplicate Entries

```
Check for duplicate expenses (same date, vendor, amount).
Mark potential duplicates but don't delete.
Add "Possible Duplicate" flag column.
```

---

## Regional Settings

### US/Canada
```
Use US format:
- Dates: MM/DD/YYYY
- Currency: USD/CAD
- Formula separators: comma (,)
```

### Europe
```
Use European format:
- Dates: DD/MM/YYYY
- Currency: EUR
- Formula separators: semicolon (;)
```

### Mixed Currencies
```
Handle multiple currencies:
- Keep original currency column
- Add "Amount USD" column with conversion
- Use exchange rate as of receipt date
- Note conversion rate in summary
```

---

## Variations

### Credit Card Statement Reconciliation
```
Compare extracted receipts to credit card statement in ~/Cowork-Workspace/input/statement.pdf

Create reconciliation report showing:
- Matched transactions
- Statement entries without receipts
- Receipts without statement entries
- Amount discrepancies
```

### Monthly Expense Report
```
From expenses in ~/Cowork-Workspace/output/expenses.xlsx, create monthly report:

Include:
- Spending by category (pie chart data)
- Comparison to previous month
- Highest expense categories
- Unusual transactions
- Budget tracking (if budget provided)

Save to ~/Cowork-Workspace/output/monthly-report.docx
```

### Team Expense Consolidation
```
Consolidate expense files from ~/Cowork-Workspace/input/team-expenses/
(Multiple expense files from different team members)

Create master spreadsheet with:
- All expenses from all files
- "Submitted By" column
- Team totals
- Per-person totals

Save to ~/Cowork-Workspace/output/team-expenses.xlsx
```

---

## Best Practices

1. **Name receipt files well** — `YYYY-MM-DD-vendor.jpg` helps Cowork
2. **Process in batches** — Don't do 200 receipts at once; do 20-30
3. **Verify ALL totals** — OCR line-item accuracy is ~63%; always manually verify sums
4. **Keep originals** — Don't delete receipt images until verified
5. **Note uncertainties** — Ask Cowork to flag uncertain extractions
6. **Budget for validation** — Plan 30-50% of "saved" time for error correction
7. **Use Max for large batches** — Pro quota (~1.5h intensive) may not cover 50+ receipts

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
