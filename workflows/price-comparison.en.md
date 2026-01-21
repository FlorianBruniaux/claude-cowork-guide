# Workflow: Supplier Price Comparison

> **Estimated time**: 20 minutes
> **Difficulty**: Beginner
> **Category**: 📋 Administrative
> **Professions**: Contractors, Merchants, Small businesses

🌐 **Disponible aussi en [Français](price-comparison.md)**

---

## Use Case

You need to compare prices from multiple suppliers to make the best purchasing decision. This workflow helps you:

- Compare quotes across multiple suppliers
- Evaluate total cost (not just unit price)
- Apply weighted scoring for multiple criteria
- Make data-driven purchasing decisions
- Maintain supplier performance history

> ⚠️ **Important**: Price is just one factor. Consider quality, reliability, delivery time, and payment terms in your decision.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Quotes from 2+ suppliers (PDF, email, or screenshots)
- [ ] List of items/materials to purchase
- [ ] Evaluation criteria (price, delivery, quality, etc.)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Gather supplier quotes

```bash
mkdir -p ~/Cowork-Workspace/{input/quotes,output/comparisons}

# Copy all supplier quotes
cp ~/Documents/Quotes/Supplier*.pdf ~/Cowork-Workspace/input/quotes/
```

### Step 2: Create comparison spreadsheet

```
Compare quotes for [Purchase Description]:

INPUT QUOTES:
- Supplier A: ~/Cowork-Workspace/input/quotes/supplier-a-quote.pdf
- Supplier B: ~/Cowork-Workspace/input/quotes/supplier-b-quote.pdf
- Supplier C: ~/Cowork-Workspace/input/quotes/supplier-c-quote.pdf

Extract from each quote:
- Supplier name and contact
- Quote date and validity period
- Items, quantities, unit prices
- Subtotal
- Shipping/delivery costs
- Taxes
- Total
- Payment terms
- Delivery timeframe
- Special conditions/notes

CREATE COMPARISON TABLE:
~/Cowork-Workspace/output/comparisons/price-comparison-[item]-[date].xlsx

SHEET 1: ITEM-BY-ITEM COMPARISON
Format:
| Item Description | Qty | Unit | Supplier A | Supplier B | Supplier C | Best Price | Savings vs. Avg |
|------------------|-----|------|------------|------------|------------|------------|-----------------|
| [Item 1]         | 10  | ea   | $15.50     | $14.80     | $16.20     | $14.80 (B) | -$0.90         |
| [Item 2]         | 5   | box  | $45.00     | $48.00     | $44.00     | $44.00 (C) | -$2.33         |
| [...]

TOTALS:
- Subtotal per supplier
- Shipping costs
- Taxes
- TOTAL COST
- Cost per unit (for bulk items)

ADDITIONAL INFO:
- Payment terms (Net 30, COD, etc.)
- Delivery time (days)
- Minimum order requirements
- Bulk discounts available
- Warranty/return policy

Conditional formatting:
- Highlight lowest price per row (green)
- Highlight highest price per row (red)
- Calculate total savings if buying best price per item
```

### Step 3: Apply weighted scoring

```
WEIGHTED EVALUATION MATRIX

Beyond price, evaluate on multiple criteria:

CRITERIA & WEIGHTS:
1. Price (40%): Total cost competitiveness
2. Delivery Time (20%): How quickly can they deliver
3. Quality/Reliability (20%): Past experience or reputation
4. Payment Terms (10%): Flexibility (Net 30 better than COD)
5. Service/Support (10%): Responsiveness, return policy

SCORING SCALE (1-10):
1-3: Poor
4-6: Acceptable
7-8: Good
9-10: Excellent

SHEET 2: WEIGHTED SCORING
| Criteria | Weight | Supplier A | Score A | Supplier B | Score B | Supplier C | Score C |
|----------|--------|------------|---------|------------|---------|------------|---------|
| Price | 40% | $1,250 | 8/10 | $1,180 | 10/10 | $1,220 | 9/10 |
| Delivery | 20% | 5 days | 9/10 | 7 days | 7/10 | 3 days | 10/10 |
| Quality | 20% | Good history | 8/10 | New supplier | 6/10 | Excellent | 10/10 |
| Payment Terms | 10% | Net 30 | 10/10 | COD | 5/10 | Net 15 | 8/10 |
| Service | 10% | Responsive | 9/10 | Average | 7/10 | Very good | 9/10 |

WEIGHTED SCORES:
- Supplier A: (8×0.4) + (9×0.2) + (8×0.2) + (10×0.1) + (9×0.1) = 8.5/10
- Supplier B: (10×0.4) + (7×0.2) + (6×0.2) + (5×0.1) + (7×0.1) = 7.8/10
- Supplier C: (9×0.4) + (10×0.2) + (10×0.2) + (8×0.1) + (9×0.1) = 9.3/10

RECOMMENDATION: Supplier C (highest weighted score)
- Not cheapest ($1,220 vs. $1,180 from B)
- But best overall value (fastest delivery, best quality, good payment terms)
- Premium of $40 justified by superior service

Calculate formulas automatically in Excel
```

### Step 4: Consider total cost of ownership

```
TOTAL COST ANALYSIS (beyond quoted price):

SCENARIO: Purchasing office supplies from 3 suppliers

SUPPLIER A - Cheapest Quote ($1,180):
+ Product cost: $1,180
+ Shipping: $25 (slow, 7-10 days)
+ Rush fee if needed: $75 (common issue)
+ Returns: $15 restocking fee per return
+ Payment: COD (no cash flow benefit)
= Estimated true cost: $1,180-1,295 (depending on issues)

SUPPLIER B - Mid-range Quote ($1,220):
+ Product cost: $1,220
+ Shipping: FREE (over $1,000)
+ Rush available: FREE upgrade if needed
+ Returns: FREE, prepaid label
+ Payment: Net 30 (cash flow benefit)
+ Loyalty program: 2% back = -$24
= Estimated true cost: $1,196

SUPPLIER C - Higher Quote ($1,250):
+ Product cost: $1,250
+ Shipping: Included in price
+ Rush: Always ships next day (standard)
+ Returns: Hassle-free, no fees
+ Payment: Net 45 (better cash flow)
+ Bulk discount applies: -5% = -$62.50
= Estimated true cost: $1,187.50

INSIGHT: Supplier C appears most expensive but is actually comparable
when factoring total costs + intangibles (time saved, reliability)

RECOMMENDATION: Supplier C for recurring purchases, Supplier A for one-time

Add this analysis to comparison spreadsheet (SHEET 3: TOTAL COST ANALYSIS)
```

### Step 5: Make decision and document

```
DECISION SUMMARY REPORT:

Purchase: [Description]
Decision date: [Today]
Quotes evaluated: 3
Decision maker: [Name]

SELECTED SUPPLIER: [Supplier Name]

JUSTIFICATION:
- Best price: YES/NO (if no, explain why chosen despite higher price)
- Weighted score: X.X/10 (highest among options)
- Total cost advantage: $XXX (or $XXX premium justified by [reason])
- Key factors: [e.g., "Fastest delivery critical for project timeline"]

REJECTED SUPPLIERS & REASONS:
- Supplier X: Price competitive but [concern: quality issues, slow delivery, poor terms]
- Supplier Y: [reason]

ACTION ITEMS:
☐ Place order with [Selected Supplier] by [date]
☐ Negotiate [specific term] if possible
☐ Set up Net 30 account (if not existing)
☐ Schedule delivery for [date]
☐ Update supplier performance log after delivery

SAVINGS REALIZED: $XXX (compared to baseline/previous supplier)

Save report: ~/Cowork-Workspace/output/comparisons/decision-report-[item]-[date].pdf
```

### Step 6: Track supplier performance

```
SUPPLIER PERFORMANCE LOG

After purchase completion, rate actual performance:

SUPPLIER: [Name]
PURCHASE ORDER: [Number/Reference]
DATE: [Order date]
DELIVERY DATE: [Actual delivery]

PERFORMANCE RATINGS (1-5 stars):
- On-time delivery: ⭐⭐⭐⭐⭐ (delivered 1 day early)
- Product quality: ⭐⭐⭐⭐ (as expected, minor packaging issue)
- Order accuracy: ⭐⭐⭐⭐⭐ (100% correct)
- Customer service: ⭐⭐⭐⭐⭐ (responsive, resolved question quickly)
- Value for money: ⭐⭐⭐⭐ (good value, would buy again)

OVERALL: 4.8/5 ⭐⭐⭐⭐⭐

NOTES:
- Excellent communication throughout
- Minor: Box was dented but contents fine
- Would use again for similar purchases

FUTURE CONSIDERATION: Preferred supplier for [category]

Maintain supplier log: ~/Cowork-Workspace/output/tracking/supplier-performance.xlsx
Use this data for future comparison scoring (Quality/Reliability criterion)
```

---

## Example Prompts

### Quick 3-supplier comparison

```
Compare quotes for [Item]:

Quote files:
- ~/Cowork-Workspace/input/quotes/quote-a.pdf
- ~/Cowork-Workspace/input/quotes/quote-b.pdf
- ~/Cowork-Workspace/input/quotes/quote-c.pdf

Extract and compare:
- Item prices
- Shipping
- Total cost
- Payment terms
- Delivery time

Create Excel comparison with:
- Side-by-side table
- Lowest price highlighted
- Recommendation based on total cost
- Savings calculation

Excel: ~/Cowork-Workspace/output/comparisons/comparison-[date].xlsx
```

### Bulk purchase optimization

```
Bulk purchase analysis: 100 units of [Item]

SUPPLIERS:
- Supplier A: $10/unit, $50 shipping, MOQ: 50, 5 days delivery
- Supplier B: $9.50/unit, FREE shipping, MOQ: 100, 10 days delivery
- Supplier C: $11/unit, $25 shipping, MOQ: 20, 3 days delivery

SCENARIOS:
1. Buy all from one supplier
2. Split order (if quantities allow)
3. Buy more to meet MOQ (if worth it)

Calculate:
- Total cost per scenario
- Unit cost (including shipping)
- Inventory cost (if buying more than needed)
- Time to delivery

Recommendation with justification

Excel: ~/Cowork-Workspace/output/comparisons/bulk-optimization-[item].xlsx
```

### Multi-item order comparison

```
Complex order: 25 different items from 3 suppliers

Some suppliers don't carry all items:
- Supplier A: 20/25 items available
- Supplier B: 25/25 items available
- Supplier C: 18/25 items available

Scenarios:
1. All from Supplier B (one-stop, simpler)
2. Split: Best price per item from A/B/C (complex, multiple shipments)
3. Hybrid: Most from B, supplement missing items from others

Calculate:
- Total cost per scenario
- Number of orders/shipments
- Total delivery time (waiting for all items)
- Administrative complexity (POs, invoices, receiving)

Factor "simplicity value" - is splitting worth $X savings?

Recommendation: Balance cost vs. complexity

Excel: ~/Cowork-Workspace/output/comparisons/multi-item-[date].xlsx
```

---

## Troubleshooting

### Quotes in different formats/units

**Cause**: Suppliers quote using different units or packaging
**Solution**: Normalize to common unit:

```
NORMALIZATION EXAMPLE:

ITEM: Paint

Supplier A: $45 per gallon
Supplier B: $180 per 5-gallon bucket
Supplier C: $540 per case (12 gallons)

NORMALIZE TO: $ per gallon
- Supplier A: $45/gal
- Supplier B: $180 ÷ 5 = $36/gal ✅ BEST
- Supplier C: $540 ÷ 12 = $45/gal

ALSO CONSIDER:
- Can you buy in Supplier B's packaging? (Do you need 5+ gallons?)
- Storage: Can you store bulk purchases?
- Shelf life: Will product expire before use?

If need exactly 3 gallons:
- Supplier A: 3 × $45 = $135 ✅ BEST (no waste)
- Supplier B: 1 bucket (5 gal) = $180 (2 gal waste)

RECOMMENDATION: Depends on quantity needed and storage capacity
```

### Apples-to-oranges comparison

**Cause**: Quoted items not exactly equivalent (different quality/specs)
**Solution**: Adjust for quality differences:

```
EXAMPLE: Commercial-grade vs. Consumer-grade equipment

Supplier A: Consumer model - $500
- Warranty: 1 year
- Expected life: 3-5 years
- Maintenance: User-responsible

Supplier B: Commercial model - $800
- Warranty: 3 years
- Expected life: 8-10 years
- Maintenance: Included service plan

APPLES-TO-APPLES ADJUSTMENT:

Consumer model total cost over 10 years:
- Purchase: $500 × 2 (replace after 5 years) = $1,000
- Maintenance: ~$200 (avg)
- Downtime cost: ~$150 (estimated)
= $1,350 over 10 years = $135/year

Commercial model total cost over 10 years:
- Purchase: $800 × 1 = $800
- Maintenance: $0 (included)
- Downtime: Minimal due to better reliability
= $800 over 10 years = $80/year

ADJUSTED COMPARISON: Commercial is 41% cheaper over life
RECOMMENDATION: Commercial model (Supplier B) despite higher upfront cost
```

### Inconsistent supplier information

**Cause**: Some suppliers didn't provide complete quote details
**Solution**: Follow up for missing info:

```
FOLLOW-UP REQUEST TEMPLATE:

To: [Supplier contact]
Subject: Additional Information Needed - Quote [Number]

Hello [Name],

Thank you for your quote dated [date] for [items].

To complete our evaluation, could you please provide:

☐ Delivery timeframe (days from order)
☐ Shipping costs to [Your Address/Zip]
☐ Payment terms available (Net 30, COD, etc.)
☐ Minimum order quantity (if any)
☐ Bulk discount tiers (if applicable)
☐ Warranty/return policy
☐ Quote validity period

We're planning to make a decision by [date] and would like to include
your complete offer in our comparison.

Please reply by [date] if you'd like to be considered.

Thank you,
[Your name]

This ensures fair comparison with complete data for all suppliers
```

---

## Variations

### Subscription/recurring purchase

```
RECURRING PURCHASE COMPARISON (monthly supplies):

SUPPLIER A - Pay-per-order:
- Unit price: $10
- Monthly need: 50 units = $500/month
- Total annual: $6,000
- Flexibility: High (order as needed)

SUPPLIER B - Monthly subscription:
- Fixed monthly fee: $450/month (up to 60 units)
- Overage: $8/unit
- Total annual: $5,400 (if within limit)
- Flexibility: Medium (committed to monthly payment)

SUPPLIER C - Annual contract:
- Prepay annual: $4,800 ($400/month equivalent)
- Locked in for 12 months
- Total annual: $4,800
- Flexibility: Low (upfront payment, commitment)

ANALYSIS:
- Savings: C ($1,200/yr) > B ($600/yr) > A (baseline)
- Risk: C highest (what if needs change?), A lowest
- Cash flow: A best (pay as needed), C worst (upfront)

RECOMMENDATION:
- If certain about quantities: Supplier C (best savings)
- If variable needs: Supplier A (flexibility)
- Middle ground: Supplier B (moderate savings + flexibility)

Consider: Start with B, move to C after 6 months if usage confirms
```

### Emergency/rush purchase

```
RUSH PURCHASE SCENARIO:

Need [Item] urgently for project starting [Date] (3 days)

SUPPLIER A:
- Price: $800 (regular)
- Standard delivery: 7 days ❌ TOO SLOW
- Rush available: 2 days, +$150 rush fee
- TOTAL: $950, arrives in time ✅

SUPPLIER B:
- Price: $900 (regular)
- Standard delivery: 3 days ✅ Just in time
- No rush fee needed
- TOTAL: $900, arrives on deadline ⚠️ RISKY (no buffer)

SUPPLIER C:
- Price: $950 (regular)
- Standard delivery: Next day ✅✅
- No rush fee
- TOTAL: $950, arrives with 2-day buffer ✅

ANALYSIS:
- A & C tied at $950, but C is simpler (no rush arrangement)
- B cheapest but risky (no buffer if delay)
- Recommendation: Supplier C
  * Not cheapest but eliminates rush fee hassle
  * Built-in buffer for safety
  * Standard service (more reliable than "rush")

DECISION RULE: When time-critical, pay for reliability not just speed
```

---

## Best Practices

1. **Get 3+ Quotes** — Minimum 3 suppliers for meaningful comparison
2. **Normalize Units** — Convert all prices to same unit for fair comparison
3. **Include All Costs** — Shipping, taxes, fees, not just unit price
4. **Weight Criteria** — Price isn't everything; consider delivery, quality, service
5. **Document Decisions** — Record why you chose a supplier (useful for future)
6. **Track Performance** — Rate suppliers after delivery to inform future decisions
7. **Build Relationships** — Preferred suppliers often offer better terms over time
8. **Negotiate** — Use competitive quotes as leverage ("Supplier B offered $X...")
9. **Consider Total Cost** — Factor in long-term costs, not just purchase price
10. **Review Annually** — Re-evaluate preferred suppliers yearly (market changes)

---

## Key Metrics to Track

- **Average savings per comparison**: [Goal: 10-15%]
- **Supplier performance ratings**: [Maintain >4/5 stars average]
- **On-time delivery rate**: [Goal: >95%]
- **Order accuracy**: [Goal: 100%]
- **Cost per purchase order**: [Administrative cost]

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
