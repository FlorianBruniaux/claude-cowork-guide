# Workflow: Supplier Order Management

> **Estimated time**: 15 minutes per order
> **Difficulty**: Intermediate
> **Category**: 🔧 Production
> **Professions**: Merchants, Contractors

🌐 **Disponible aussi en [Français](supplier-order.md)**

---

## Use Case

You need to efficiently prepare supplier orders and verify deliveries. This workflow helps you:

- Consolidate purchasing needs
- Optimize supplier selection
- Generate professional purchase orders
- Verify delivery accuracy

> ⚠️ **Savings**: Optimized ordering reduces costs by 10-15% through bulk discounts and reduced shipping.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Current inventory or project needs list
- [ ] Supplier contact information and pricing
- [ ] Budget approval (if required)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Consolidate purchasing needs

```bash
mkdir -p ~/Cowork-Workspace/purchasing/{orders,deliveries,suppliers}
```

List requirements:

```
Purchasing needs consolidation for: [Week/Month/Project]

PERIOD: [Date range]
PURPOSE: [Ex: Weekly restock, Project materials, Seasonal prep]

NEEDS COLLECTION SOURCES:

1. INVENTORY ALERTS:
Review inventory system for items below minimum:
- Item A: 5 units (min: 15) → Need: 20 units
- Item B: 8 units (min: 10) → Need: 15 units

2. PROJECT REQUIREMENTS:
Review project plans for upcoming materials:
- Johnson renovation: Needs tile, grout, adhesive (Week 4)
- Smith addition: Needs lumber, fasteners (Week 5)

3. FORECAST DEMAND:
Based on sales history:
- Paint (white): Avg 30 gal/month → Order 35 gal (buffer)
- 2×4 lumber: Avg 100 pcs/month → Order 120 pcs

4. OPPORTUNISTIC:
Supplier promotions/bulk discounts:
- Supplier X: 20% off paint this week → Stock up if using soon

CONSOLIDATED NEEDS LIST:

| Item | SKU | Qty Needed | Current Stock | Order Qty | Unit | Priority |
|------|-----|------------|---------------|-----------|------|----------|
| White paint | PAINT-042 | 35 | 10 | 40 | gal | High |
| Ceramic tile | TILE-030 | 200 | 50 | 200 | sq ft | High |
| 2×4 Studs | LUMBER-101 | 120 | 30 | 100 | pcs | Medium |
| Drywall screws | HW-015 | 500 | 200 | 500 | pcs | Medium |
| Grout | TILE-035 | 20 | 5 | 20 | bags | High |
| Paint rollers | TOOL-220 | 50 | 10 | 50 | units | Low |

PRIORITIZATION:
- High: Needed <1 week (project critical or stockout risk)
- Medium: Needed 1-2 weeks
- Low: Opportunistic or nice-to-have

Save: ~/Cowork-Workspace/purchasing/needs-[date].xlsx
```

### Step 2: Select suppliers and compare

Optimize vendor selection:

```
Supplier comparison for consolidated order:

ITEMS TO ORDER: [List from Step 1]

SUPPLIER OPTIONS:

SUPPLIER A: ABC Building Supply
- Relationship: Primary supplier (3 years)
- Terms: Net 30, 2% discount if paid within 10 days
- Minimum order: $500
- Delivery: Free >$1000, otherwise $75 fee
- Lead time: 2-3 days
- Strengths: Reliable, good service
- Weaknesses: Prices 5-10% higher than competitors

SUPPLIER B: XYZ Wholesale
- Relationship: Secondary (use occasionally)
- Terms: Net 15, no early-pay discount
- Minimum order: $1000
- Delivery: Free >$2000, otherwise $100 fee
- Lead time: 5-7 days
- Strengths: 10% cheaper, bulk discounts
- Weaknesses: Slower, occasional stockouts

SUPPLIER C: DEF Specialty Materials
- Relationship: Specialty only
- Terms: COD or Net 7
- Minimum order: None
- Delivery: $50 flat fee
- Lead time: 1-2 days
- Strengths: Hard-to-find items, fast
- Weaknesses: Expensive for common items

ITEM-BY-ITEM PRICING:

| Item | Qty | Supplier A | Supplier B | Supplier C | Best Price |
|------|-----|------------|------------|------------|------------|
| White paint (gal) | 40 | $22/gal = $880 | $19/gal = $760 | $25/gal = $1000 | B ($760) |
| Ceramic tile (sq ft) | 200 | $4/sf = $800 | $3.60/sf = $720 | $5/sf = $1000 | B ($720) |
| 2×4 Studs (pcs) | 100 | $4.50 = $450 | $4.20 = $420 | Not carried | B ($420) |
| Drywall screws | 500 | $0.08 = $40 | $0.07 = $35 | $0.10 = $50 | B ($35) |
| Grout (bags) | 20 | $18 = $360 | $16 = $320 | $20 = $400 | B ($320) |
| Paint rollers | 50 | $3 = $150 | $2.50 = $125 | $4 = $200 | B ($125) |

TOTALS:
- Supplier A: $2,680
- Supplier B: $2,380 (11% cheaper)
- Supplier C: N/A (doesn't carry all items)

DELIVERY COSTS:
- Supplier A: Order >$1000 → Free delivery ✓
- Supplier B: Order $2,380 >$2000 → Free delivery ✓

DECISION FACTORS:

Option 1: All from Supplier B
- Total: $2,380 + $0 delivery = $2,380
- Lead time: 5-7 days
- Savings: $300 vs Supplier A
- Risk: May not have all in stock

Option 2: Split order (urgent from A, rest from B)
- Urgent items (tile, grout) from A: $1,160 + $75 delivery = $1,235 (arrives 2-3 days)
- Rest from B: $1,220 (arrives 5-7 days, free delivery)
- Total: $2,455
- Extra cost: $75 but gets critical items faster

Option 3: All from Supplier A (reliability)
- Total: $2,680
- Lead time: 2-3 days
- Premium: $300 for speed + reliability

RECOMMENDED DECISION:

For this order: Option 2 (split)
- Tile + grout urgent for Johnson project starting in 3 days
- Other items can wait
- Cost: $2,455 (only $75 more than cheapest option)
- Best balance of speed + cost

FUTURE OPTIMIZATION:
- If Supplier B consistently stocks items, switch more to them (save $300/order)
- If timing not critical, consolidate to B entirely
- Keep A for emergencies/rush orders

Save decision: ~/Cowork-Workspace/purchasing/supplier-comparison-[date].xlsx
```

### Step 3: Generate purchase order

Create formal PO:

```
Purchase Order Generation:

PURCHASE ORDER NO.: PO-2026-015
DATE: 01/20/2026
SUPPLIER: ABC Building Supply
DELIVERY DATE REQUESTED: 01/23/2026

──────────────────────────────────────

VENDOR INFORMATION:
ABC Building Supply
123 Industrial Way
City, State 12345
Phone: (555) 123-4567
Contact: John Smith (Sales)
Email: john@abcsupply.com
Account #: CUST-7890

SHIP TO:
[Your business name]
[Your address]
[City, State ZIP]
Phone: [Your phone]

BILL TO:
[Same as above OR accounting address]

──────────────────────────────────────

ORDER DETAILS:

| Line | Item Description | SKU/Part # | Qty | Unit | Unit Price | Total |
|------|------------------|------------|-----|------|------------|-------|
| 1 | Ceramic Tile (Beige 12×12) | TILE-030 | 200 | sq ft | $4.00 | $800.00 |
| 2 | Tile Grout (Sandstone) | TILE-035 | 20 | bags | $18.00 | $360.00 |

SUBTOTAL: $1,160.00
TAX (if applicable): $0.00 (resale certificate on file)
SHIPPING: $0.00 (Free delivery >$1000)

TOTAL: $1,160.00

──────────────────────────────────────

PAYMENT TERMS:
Net 30 days (2% discount if paid within 10 days)
Payment due: 02/19/2026
Early payment discount date: 01/30/2026 (save $23.20)

DELIVERY INSTRUCTIONS:
- Deliver to job site: 456 Oak Street, City, State
- Contact on arrival: [Foreman name] (555) 987-6543
- Delivery window: 7:00 AM - 3:00 PM
- Special instructions: Call 30 min before arrival, deliver to garage

NOTES/SPECIAL REQUESTS:
- Verify tile color matches sample #B-302 (on file)
- Grout: Unsanded type required
- Inspection on delivery: Will verify quantities and check for damage

──────────────────────────────────────

AUTHORIZATION:
Ordered by: [Your name]
Signature: ________________
Date: 01/20/2026

Budget approved by: [If required]
Project/account code: [If tracking]

──────────────────────────────────────

VENDOR COPY: Please confirm order by return email
Expected delivery date: ___________
Order confirmation #: ___________

──────────────────────────────────────

Format: PDF
Send to: john@abcsupply.com
CC: [Your accounting, project manager if applicable]
Save: ~/Cowork-Workspace/purchasing/orders/PO-2026-015-ABC-Supply.pdf
```

### Step 4: Track order status

Monitor until delivery:

```
Purchase Order Tracking Log:

PO NUMBER: PO-2026-015
SUPPLIER: ABC Building Supply
ORDER DATE: 01/20/2026
EXPECTED DELIVERY: 01/23/2026

──────────────────────────────────────

ORDER STATUS TIMELINE:

01/20/2026 10:00 AM: PO sent to supplier (email)
01/20/2026 2:30 PM: Supplier confirmed receipt (email from John)
   - Confirmation #: ABC-54321
   - All items in stock ✓
   - Delivery scheduled: 01/23/2026, 10:00 AM
   - Driver: Mike (truck #7)

01/22/2026: Reminder sent to supplier (verify still on track)
01/22/2026 4:00 PM: Supplier confirmed delivery still scheduled

01/23/2026 9:30 AM: Driver called (30 min out)
01/23/2026 10:05 AM: DELIVERED ✓

──────────────────────────────────────

DELIVERY VERIFICATION (checked on arrival):

Receiving checklist:
□ Verify PO number matches delivery slip ✓
□ Count all items (verify quantities) ✓
□ Inspect for damage ✓
□ Check item descriptions match PO ✓
□ Sign delivery receipt (keep copy) ✓

DELIVERY SLIP VERIFICATION:

Delivery slip #: ABC-DLV-9876
Date received: 01/23/2026
Received by: [Your name/foreman]

ITEMS RECEIVED:

| Line | Item | Ordered Qty | Received Qty | Condition | Match? |
|------|------|-------------|--------------|-----------|--------|
| 1 | Ceramic tile | 200 sq ft | 200 sq ft | Good | ✓ Yes |
| 2 | Tile grout | 20 bags | 20 bags | Good | ✓ Yes |

DISCREPANCIES: None ✓

DAMAGE INSPECTION:
□ Tile: 10 boxes inspected, no broken tiles found ✓
□ Grout: Bags intact, no leaks ✓

PHOTOS:
- Overall delivery (truck, pallet)
- Close-up tile boxes (show quantity labels)
- Grout bags (show condition)

Photos saved: ~/Cowork-Workspace/purchasing/deliveries/PO-2026-015-delivery-photos/

──────────────────────────────────────

ACCEPTANCE:

Status: □ ACCEPTED ✓ / □ REJECTED / □ PARTIAL (with discrepancies)

Delivery receipt signed: Yes
Copy retained: Yes (filed with PO)
Supplier notified of acceptance: Yes (email 01/23 10:30 AM)

INVOICE TRACKING:

Invoice received: 01/23/2026 (included with delivery)
Invoice #: ABC-INV-12345
Invoice amount: $1,160.00 ✓ Matches PO
Payment due: 02/19/2026
Early discount deadline: 01/30/2026 (2% = $23.20 savings)

Payment scheduled: 01/29/2026 (to capture discount)
Payment method: Check #1234 / ACH / Credit card
Payment made: [Date]
Payment amount: $1,136.80 (with 2% discount)

──────────────────────────────────────

CLOSE-OUT:

PO status: COMPLETE ✓
Date closed: 01/23/2026
Items added to inventory: 01/23/2026 (updated master inventory file)
Invoice filed: Accounting folder
Delivery receipt filed: With PO

Save: ~/Cowork-Workspace/purchasing/orders/PO-2026-015-COMPLETE.pdf
```

### Step 5: Supplier performance tracking

Monthly review:

```
Supplier performance scorecard for: [Month/Quarter]

PERIOD: January 2026
ORDERS PLACED: 12

──────────────────────────────────────

SUPPLIER A: ABC Building Supply

Orders: 8 (67% of total purchases)
Total spend: $18,500

PERFORMANCE METRICS:

On-time delivery:
- Ordered: 8 deliveries
- On-time: 7 (87.5%)
- Late: 1 (2 days late - weather related)
- Target: >90% → ⚠️ Just below target

Order accuracy:
- Orders correct: 8 (100%)
- Wrong items: 0
- Quantity errors: 0
- Target: 98%+ → ✓ Excellent

Damage rate:
- Items damaged: 2 boxes of tile (1 order)
- Damage rate: 0.5%
- Supplier credited immediately
- Target: <2% → ✓ Good

Pricing:
- Avg cost vs budget: +5% (premium pricing but reliable)
- Discounts captured: 6/8 orders (early payment discount)
- Target: Capture all discounts → ⚠️ Missed 2

Customer service:
- Response time: <4 hours average
- Issue resolution: Excellent (tile damage credited same day)
- Sales rep helpfulness: 5/5 rating

OVERALL SCORE: 88/100 (B+)

Strengths: Reliable, accurate, great service
Weaknesses: Slightly expensive, missed discount on 2 orders

──────────────────────────────────────

SUPPLIER B: XYZ Wholesale

Orders: 4 (33% of purchases)
Total spend: $9,200

PERFORMANCE METRICS:

On-time delivery:
- Ordered: 4
- On-time: 3 (75%)
- Late: 1 (4 days late - stockout)
- Target: >90% → ❌ Below target

Order accuracy:
- Orders correct: 3 (75%)
- Wrong items: 1 (sent wrong color paint)
- Returned and replaced (3-day delay)
- Target: 98%+ → ❌ Below target

Damage rate:
- No damage: 0%
- Target: <2% → ✓ Excellent

Pricing:
- Avg cost vs budget: -10% (cheapest option)
- Bulk discounts: Good savings
- Target: Best price → ✓ Excellent

Customer service:
- Response time: 1-2 days (slower)
- Issue resolution: OK (paint color issue took 1 week to resolve)
- Sales rep helpfulness: 3/5 rating

OVERALL SCORE: 68/100 (D+)

Strengths: Cheapest prices, good bulk discounts
Weaknesses: Reliability issues (stockouts, wrong items, slow service)

──────────────────────────────────────

RECOMMENDATIONS:

SUPPLIER A (ABC):
- Keep as primary supplier for critical items
- Set up auto-payment to never miss early discount
- Negotiate pricing: "Loyalty discount for 67% of our business?"

SUPPLIER B (XYZ):
- Use only for non-critical, bulk items where timing flexible
- Double-check orders (verify SKUs before accepting delivery)
- Consider reducing usage if reliability doesn't improve

NEW SUPPLIER EXPLORATION:
- Get quotes from 2 additional suppliers
- Test with small orders
- Compare: pricing, reliability, service

SUPPLIER DIVERSIFICATION STRATEGY:
- Don't rely 100% on one supplier (risk if they have stockout)
- But don't spread too thin (lose volume discounts, relationship leverage)
- Target: 60% primary, 30% secondary, 10% specialty/backup

──────────────────────────────────────

Save: ~/Cowork-Workspace/purchasing/suppliers/performance-review-2026-01.pdf
```

---

## Example Prompts

### Emergency rush order

```
Urgent same-day order:

SITUATION: Project Johnson - discovered broken tiles, need 50 sq ft ASAP

NORMAL PROCESS: Would consolidate with other needs, order from cheapest supplier
EMERGENCY PROCESS: Speed > cost

SUPPLIER SELECTION:
Call suppliers with "Do you have in stock RIGHT NOW?":
- Supplier A: Yes, 50 sq ft in stock
- Supplier B: No, 3-day lead time
- Supplier C: Yes, 60 sq ft in stock (premium price)

DECISION: Supplier A (in stock + good relationship)

RUSH PO:

PO#: PO-2026-016-RUSH
Item: Tile (match previous order SKU TILE-030)
Qty: 50 sq ft
Urgency: SAME DAY PICKUP
Pickup time: 2:00 PM today
Picker: [Employee name]
Payment: Credit card on pickup (faster than invoice)

Cost: $200 (vs $180 normal) - $20 premium for rush acceptable

Call supplier: "Confirm in stock, reserved, ready for pickup at 2 PM"

Save: ~/Cowork-Workspace/purchasing/orders/PO-2026-016-RUSH.pdf
```

### Blanket purchase order (ongoing needs)

```
Blanket PO for recurring purchases:

USE CASE: Weekly paint orders (predictable, repetitive)

BLANKET PO #: BPO-2026-001
Supplier: ABC Building Supply
Period: 01/01/2026 - 12/31/2026
Total value: $15,000 (estimated annual spend)

ITEMS COVERED:
- White paint (interior): Up to 500 gallons
- Primer: Up to 200 gallons
- Paint supplies (brushes, rollers, tape)

ORDERING PROCESS:
Weekly: Email release against blanket PO
- "Release #12 against BPO-2026-001"
- Item: White paint, 40 gallons
- Delivery: [Date]

BENEFITS:
- Pre-negotiated pricing (locked for year)
- Faster ordering (no full PO each time)
- Volume discount applied (10% off)
- Supplier reserves inventory capacity

TRACKING:
| Release # | Date | Item | Qty | Value | Remaining Budget |
|-----------|------|------|-----|-------|------------------|
| 1 | 01/07 | White paint | 35 gal | $700 | $14,300 |
| 2 | 01/14 | Primer | 20 gal | $400 | $13,900 |
[...continue]

Save: ~/Cowork-Workspace/purchasing/blanket-orders/BPO-2026-001-tracking.xlsx
```

---

## Troubleshooting

### Delivery discrepancies (wrong items/quantities)

**Cause**: Supplier error, picker mistake, damage in transit
**Solution**: Verify immediately and document:

```
DELIVERY DISCREPANCY PROTOCOL:

AT DELIVERY (before driver leaves):
1. Count all items vs delivery slip
2. If discrepancy found:
   - Take photo of items + delivery slip
   - Note on delivery slip: "Received X, ordered Y"
   - Driver signs acknowledgment
   - DO NOT accept delivery as "complete"

3. Mark delivery receipt: "PARTIAL - Missing items: [list]"

SAME DAY:
4. Call supplier immediately
   - Report discrepancy
   - Reference PO # and delivery slip #
   - Request: Missing items shipped ASAP OR credit/refund

5. Email confirmation:
   - Detail discrepancy
   - Attach photos
   - Request written confirmation of resolution

RESOLUTION OPTIONS:
- Short ship: Send missing items next delivery (if not urgent)
- Rush ship: Send missing items immediately (if project-critical)
- Credit: Refund for missing items (if no longer needed)
- Return: Send back wrong items, ship correct ones

DOCUMENTATION:
Save all correspondence in: ~/Cowork-Workspace/purchasing/discrepancies/PO-[number]-issue.pdf
```

### Price increases (supplier raised prices)

**Cause**: Inflation, supplier costs up, market conditions
**Solution**: Negotiation and alternatives:

```
PRICE INCREASE RESPONSE:

Supplier notifies: "Price increasing 15% effective 02/01"

ANALYSIS:
1. Verify market conditions:
   - Are competitors raising prices too?
   - Is this industry-wide or supplier-specific?

2. Calculate impact:
   - Current annual spend with supplier: $20,000
   - 15% increase = +$3,000/year

OPTIONS:

A. NEGOTIATE:
Call supplier: "We've been loyal customers for 3 years, spending $20K/year. Can you reduce increase to 10% or grandfather us for 6 months?"

Possible outcomes:
- Partial reduction (10% instead of 15%)
- Delayed implementation (effective 04/01 instead of 02/01)
- Volume discount to offset

B. SHOP COMPETITORS:
- Get quotes from 2-3 alternative suppliers
- If better pricing available → leverage or switch

C. STOCK UP (if non-perishable):
- Pre-buy 2-3 months supply at old price before effective date
- Requires: Cash flow + storage space

D. PASS TO CUSTOMERS:
- Adjust your pricing to maintain margins
- Communicate: "Supplier costs increased, reflected in new pricing"

DECISION:
Document in supplier performance file
Adjust budget forecasts for remainder of year

Save: ~/Cowork-Workspace/purchasing/suppliers/price-change-[supplier]-[date].txt
```

### Late deliveries (impacts project schedule)

**Cause**: Supplier delays, shipping issues, stockouts
**Solution**: Proactive tracking and mitigation:

```
LATE DELIVERY MANAGEMENT:

EARLY WARNING SYSTEM:
2 days before expected delivery:
- Call supplier: "Confirming delivery still on track for [date]?"
- If delayed → activate backup plan immediately

BACKUP PLANS:

Plan A: Source from alternate supplier
- Keep list of 2-3 backup suppliers for critical items
- Call immediately: "Do you have [item] in stock? Can deliver today/tomorrow?"
- Premium pricing acceptable if prevents project delay

Plan B: Adjust project schedule
- If item not critical path → work on other tasks
- Re-sequence work to work around delay
- Example: Tile delayed → do electrical rough-in first

Plan C: Client communication
- If delay unavoidable → inform client immediately
- Honesty: "Supplier delayed, project pushed 2 days"
- Better to communicate early than surprise them

SUPPLIER ACCOUNTABILITY:
- Document all delays in supplier performance tracking
- Chronic late deliveries → reduce/eliminate usage
- Consider penalty clauses: "Late delivery = 5% discount"

Save incidents: ~/Cowork-Workspace/purchasing/delivery-delays/[date]-[supplier].txt
```

---

## Variations

### Drop-shipping (direct to customer)

```
Order placed by customer, shipped by supplier directly:

WORKFLOW:
1. Customer orders from you
2. You order from supplier with customer shipping address
3. Supplier ships directly to customer
4. You pay supplier, customer pays you

BENEFITS:
- No inventory (supplier holds stock)
- No shipping logistics (supplier handles)

PO MODIFICATIONS:
SHIP TO: [Customer address] (NOT your address)
BILL TO: [Your address]

Special instructions: "Include packing slip, NO pricing info visible"

Tracking: Provide customer with tracking # from supplier
```

### Consignment ordering (supplier retains ownership until sold)

```
Supplier stocks inventory at your location, you pay only for what sells:

CONSIGNMENT AGREEMENT:
- Supplier places 50 units in your store
- You display and sell
- Monthly: Count remaining, pay for units sold
- Supplier owns unsold inventory

BENEFITS:
- Zero capital tied up
- Larger variety possible

PO STRUCTURE:
Instead of purchasing → "Consignment stock request"
Monthly reconciliation: "Sold 20 units, pay for 20"

Inventory tracking: Separate "Consigned inventory" from owned
```

---

## Best Practices

1. **Consolidate orders** — Combine needs to hit free shipping thresholds and bulk discounts
2. **Early payment discounts** — 2% discount for 10-day payment = 36% annual return (take it!)
3. **Verify on delivery** — Check quantities and condition before driver leaves
4. **Track supplier performance** — Monthly scorecards identify best/worst suppliers
5. **Diversify suppliers** — Don't rely 100% on one supplier (risk mitigation)
6. **Build relationships** — Good supplier relationships = priority service, flexibility
7. **Document everything** — POs, delivery receipts, discrepancies in writing (legal protection)
8. **Forecast ahead** — Order based on upcoming needs + lead time + safety buffer

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
