# Workflow: Inventory Tracking

> **Estimated time**: 20 minutes
> **Difficulty**: Intermediate
> **Category**: 🔧 Production
> **Professions**: Merchants, Contractors

🌐 **Disponible aussi en [Français](inventory-tracking.md)**

---

## Use Case

You need to track inventory and avoid stockouts or overstocking. This workflow helps you:

- Create inventory tracking system
- Set reorder alerts
- Analyze rotation rates
- Optimize stock levels

> ⚠️ **ROI**: Good inventory management reduces tied-up capital by 20-30% and stockouts by 40%.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Current inventory list
- [ ] Sales history (last 3-6 months if available)
- [ ] Storage space information
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Create inventory database

```bash
mkdir -p ~/Cowork-Workspace/inventory
```

Initial inventory:

```
Create inventory tracking system for: [Business name]

BUSINESS TYPE: [Ex: Hardware store, Construction materials, Auto parts]
STORAGE: [Location, capacity, organization]

INVENTORY STRUCTURE:

ITEM TEMPLATE:
---
SKU: [Unique code]
Name: [Product name]
Category: [Group]
Supplier: [Primary supplier]

STOCK INFO:
- Current quantity: [X units]
- Unit: [pieces, boxes, lbs, gallons, etc.]
- Location: [Aisle/Shelf/Bin]

COSTS:
- Unit cost: $[Purchase price]
- Selling price: $[Retail price]
- Margin: [%]

THRESHOLDS:
- Minimum stock: [Reorder point]
- Maximum stock: [Storage limit]
- Reorder quantity: [Standard order size]

USAGE:
- Avg monthly sales: [X units]
- Last purchase: [Date]
- Last sale: [Date]
- Supplier lead time: [Days]

---

EXAMPLE ENTRIES:

SKU: HW-001
Name: 3" Wood Screws (Box of 100)
Category: Fasteners

Stock: 25 boxes
Location: Aisle 3, Shelf B

Costs:
- Unit cost: $4.50
- Selling price: $8.99
- Margin: 50%

Thresholds:
- Minimum: 10 boxes
- Maximum: 50 boxes
- Reorder qty: 20 boxes

Usage:
- Avg sales: 8 boxes/month
- Last purchase: 01/10/2026
- Last sale: 01/18/2026
- Lead time: 7 days

---

SKU: PAINT-042
Name: Interior White Paint (1 gallon)
Category: Paint

Stock: 45 gallons
Location: Paint section, Row 2

Costs:
- Unit cost: $18.00
- Selling price: $39.99
- Margin: 55%

Thresholds:
- Minimum: 20 gallons
- Maximum: 100 gallons
- Reorder qty: 40 gallons

Usage:
- Avg sales: 30 gallons/month
- Last purchase: 01/05/2026
- Last sale: 01/19/2026
- Lead time: 3 days

---

[Continue for all inventory items]

Format: Excel table
Columns: SKU | Name | Category | Qty | Unit | Location | Cost | Price | Margin | Min | Max | Reorder | Avg Sales | Lead Time | Last Purchase | Last Sale

Save: ~/Cowork-Workspace/inventory/master-inventory.xlsx
```

### Step 2: Calculate reorder points

Determine optimal thresholds:

```
Reorder point calculation for inventory items:

FORMULA:
Reorder Point = (Average Daily Sales × Lead Time) + Safety Stock

SAFETY STOCK CALCULATION:
Safety Stock = (Max Daily Sales - Avg Daily Sales) × Lead Time

EXAMPLE 1: Wood Screws

Average sales: 8 boxes/month = 0.27 boxes/day
Lead time: 7 days
Max daily sales (peak): 2 boxes/day

Safety stock = (2 - 0.27) × 7 = 12 boxes
Reorder point = (0.27 × 7) + 12 = 14 boxes

RECOMMENDATION: Set minimum stock at 15 boxes
When inventory drops to 15 → Trigger reorder

EXAMPLE 2: White Paint

Average sales: 30 gallons/month = 1 gallon/day
Lead time: 3 days
Max daily sales: 5 gallons/day

Safety stock = (5 - 1) × 3 = 12 gallons
Reorder point = (1 × 3) + 12 = 15 gallons

RECOMMENDATION: Set minimum stock at 20 gallons (rounded up)

REORDER QUANTITY CALCULATION:

Economic Order Quantity (EOQ) - Optional advanced calculation:
EOQ = √((2 × Annual Demand × Order Cost) / Holding Cost per Unit)

SIMPLIFIED METHOD:
Reorder Quantity = Average Monthly Sales × Reorder Period

Example: Wood Screws
Monthly sales: 8 boxes
Reorder monthly → Reorder quantity: 10 boxes (rounded up for supplier minimums)

GENERATE REORDER TABLE:

| Item | Current | Min | Reorder Qty | Lead Time | Status |
|------|---------|-----|-------------|-----------|--------|
| HW-001 Screws | 25 | 15 | 20 | 7d | ✓ OK |
| PAINT-042 White | 45 | 20 | 40 | 3d | ✓ OK |
| PIPE-015 PVC | 8 | 12 | 25 | 10d | ⚠️ REORDER |
| TILE-030 Ceramic | 120 | 50 | 100 | 14d | ✓ OK |

ALERT SYSTEM:
✓ Green: Stock > Minimum (OK)
⚠️ Yellow: Stock ≤ Minimum (REORDER NOW)
🔴 Red: Stock ≤ 50% of Minimum (URGENT - expedite order)

Save: ~/Cowork-Workspace/inventory/reorder-points.xlsx
```

### Step 3: Track inventory movements

Daily/weekly tracking:

```
Inventory movement log for [Week/Month]:

MOVEMENT TYPES:
- IN: Purchase, returns from customers
- OUT: Sales, returns to suppliers, waste/damage

DAILY LOG TEMPLATE:

DATE: 01/20/2026

RECEIPTS (IN):
| Time | SKU | Name | Qty | Supplier | PO# | Location |
|------|-----|------|-----|----------|-----|----------|
| 9:15am | HW-001 | 3" Screws | +20 | ABC Supply | PO-1234 | A3-B |
| 10:30am | PAINT-042 | White Paint | +40 | XYZ Paint | PO-1235 | Paint-R2 |

SALES (OUT):
| Time | SKU | Name | Qty | Customer | Invoice# |
|------|-----|------|-----|----------|----------|
| 11:00am | HW-001 | 3" Screws | -2 | John Smith | INV-5001 |
| 2:30pm | PAINT-042 | White Paint | -3 | ABC Contractors | INV-5002 |
| 4:15pm | HW-001 | 3" Screws | -1 | Retail walk-in | INV-5003 |

ADJUSTMENTS:
| SKU | Name | Qty | Reason | Notes |
|-----|------|-----|--------|-------|
| PIPE-015 | PVC Pipe | -2 | Damaged | Water damage, discarded |

END OF DAY COUNTS (spot check):
| SKU | System Qty | Physical Count | Variance |
|-----|-----------|----------------|----------|
| HW-001 | 42 | 42 | ✓ Match |
| PAINT-042 | 82 | 80 | -2 (investigate) |

VARIANCE RESOLUTION:
PAINT-042: Found 2 gallons in wrong location (Paint-R3)
Corrected location → System now accurate

CURRENT ALERTS:
⚠️ PIPE-015 PVC: 6 remaining (min: 12) → Reorder placed PO-1236
✓ All other items: OK

Save daily: ~/Cowork-Workspace/inventory/movements/log-2026-01-20.xlsx
```

### Step 4: Analyze inventory performance

Monthly review:

```
Inventory analysis for [Month/Quarter]:

ABC CLASSIFICATION (Pareto analysis):

Sort all items by annual revenue (Qty sold × Price)

CLASS A (Top 20% items = 80% of revenue):
High value, high priority

| SKU | Name | Annual Revenue | % Total | Classification |
|-----|------|----------------|---------|----------------|
| PAINT-042 | White Paint | $14,400 | 18% | A |
| TILE-030 | Ceramic Tile | $12,800 | 16% | A |
| LUMBER-101 | 2x4 Studs | $11,200 | 14% | A |
[...continue until cumulative = 80% of revenue]

Strategy: Tight inventory control, frequent monitoring, never stockout

CLASS B (Next 30% items = 15% of revenue):
Moderate value, standard control

| SKU | Name | Annual Revenue | % Total | Classification |
|-----|------|----------------|---------|----------------|
| HW-001 | 3" Screws | $3,200 | 4% | B |
[...continue]

Strategy: Regular monitoring, standard reorder points

CLASS C (Remaining 50% items = 5% of revenue):
Low value, minimal control

| SKU | Name | Annual Revenue | % Total | Classification |
|-----|------|----------------|---------|----------------|
| MISC-450 | Small hardware | $200 | 0.25% | C |
[...continue]

Strategy: Simple reorder systems, can tolerate occasional stockouts

INVENTORY TURNOVER RATE:

Formula: Turnover = Cost of Goods Sold / Average Inventory Value

Example:
Annual COGS: $240,000
Average inventory value: $40,000
Turnover: 240,000 / 40,000 = 6× per year

Interpretation:
- 6× = Inventory turns over every 2 months
- Higher = Better (less capital tied up)
- Industry benchmark: [Varies - hardware ~4-6×, grocery ~12-15×]

BY CATEGORY:

| Category | Turnover | Days Supply | Assessment |
|----------|----------|-------------|------------|
| Fasteners | 8× | 45 days | ✓ Good |
| Paint | 12× | 30 days | ✓ Excellent |
| Lumber | 6× | 60 days | ✓ Good |
| Specialty items | 2× | 180 days | ⚠️ Slow-moving |

SLOW-MOVING ANALYSIS:

Items with no sales in last 90 days:

| SKU | Name | Qty | Value | Last Sale | Action |
|-----|------|-----|-------|-----------|--------|
| SPEC-220 | Antique hinge | 15 | $225 | 10/15/2025 | Clearance sale |
| TOOL-450 | Old model saw | 3 | $450 | 09/01/2025 | Return to supplier |

Recommended actions:
- Discount to clear (20-50% off)
- Return to supplier if possible
- Don't reorder

DEAD STOCK (No sales > 180 days):

| SKU | Name | Qty | Value | Action |
|-----|------|-----|-------|--------|
| OLD-100 | Discontinued item | 8 | $120 | Write off / Donate |

Total dead stock value: $[X] (target: <2% of inventory value)

STOCKOUT ANALYSIS:

Instances of zero inventory (lost sales):

| Date | SKU | Name | Days Out | Est. Lost Sales |
|------|-----|------|----------|-----------------|
| 01/05 | PAINT-042 | White Paint | 2 days | $240 |
| 01/12 | PIPE-015 | PVC Pipe | 3 days | $180 |

Total lost sales: $420 (month)
Root cause: Late supplier deliveries
Action: Add safety stock or find backup supplier

OVERSTOCK ANALYSIS:

Items with >6 months supply:

| SKU | Name | Qty | Months Supply | Excess Qty | Tied Capital |
|-----|------|-----|---------------|------------|--------------|
| TILE-055 | Blue tile | 200 | 10 months | 140 | $2,800 |

Action: Stop reordering, use existing stock first

INVENTORY HEALTH SCORE:

Metrics:
- Turnover rate: 6× (Target: 5-8×) ✓
- Stockout rate: 2% (Target: <3%) ✓
- Dead stock: 1.5% (Target: <2%) ✓
- Carrying cost: 22% (Target: 20-25%) ✓

Overall: HEALTHY ✓

Save: ~/Cowork-Workspace/inventory/analysis-jan-2026.pdf
```

### Step 5: Automated reorder system

Set up automatic alerts:

```
Automated inventory alert system:

METHOD 1: EXCEL WITH CONDITIONAL FORMATTING

In master-inventory.xlsx:

Column: "Status"
Formula: =IF(Qty<=Minimum,"REORDER",IF(Qty<=Minimum*0.5,"URGENT","OK"))

Conditional formatting:
- URGENT: Red cell background
- REORDER: Yellow cell background
- OK: Green cell background

Daily review: Sort by Status, process all REORDER/URGENT items

METHOD 2: EMAIL ALERTS (Advanced - requires scripting)

Daily automated email:
- Subject: "Inventory Alerts - [Date]"
- Body: List of items below minimum
- Trigger reorder process

METHOD 3: BARCODE SYSTEM (Professional)

Equipment needed:
- Barcode scanner (~$50-200)
- Barcode labels for all items
- Inventory software (free options: inFlow, Zoho Inventory)

Workflow:
1. Scan item when received → Qty +1
2. Scan item when sold → Qty -1
3. Real-time inventory updates
4. Automatic reorder alerts

Cost: $200-500 setup, minimal ongoing cost
ROI: Pays back in 2-3 months for >200 SKUs

REORDER AUTOMATION TEMPLATE:

DAILY ROUTINE (10 minutes):
1. Open master-inventory.xlsx
2. Filter for "REORDER" or "URGENT" status
3. For each item:
   a. Verify current stock (spot check if possible)
   b. Generate purchase order
   c. Send to supplier
   d. Update "Last Order Date" in system
   e. Mark status "On Order"
4. Track expected delivery dates

WEEKLY ROUTINE (30 minutes):
- Verify all orders received
- Update inventory for any untracked movements
- Review slow-movers and dead stock
- Spot-check 10 random items (physical vs system)

MONTHLY ROUTINE (2 hours):
- Full inventory analysis (ABC, turnover, etc.)
- Adjust reorder points based on trends
- Review supplier performance
- Identify optimization opportunities

Save: ~/Cowork-Workspace/inventory/reorder-process.txt
```

---

## Example Prompts

### Seasonal inventory planning

```
Prepare for seasonal demand spike:

BUSINESS: Landscaping supplies
SEASON: Spring (March-May) - 3× normal demand

CURRENT INVENTORY (February):
- Mulch: 20 bags (normal)
- Seeds: 50 packets
- Fertilizer: 30 bags

SPRING FORECAST:
- Mulch: 60 bags/month (vs 20 normal) → Need 180 bags (3 months)
- Seeds: 150 packets/month → Need 450 packets
- Fertilizer: 90 bags/month → Need 270 bags

STRATEGY:
Build inventory in late February:
- Order mulch: +140 bags (to reach 160)
- Order seeds: +400 packets
- Order fertilizer: +240 bags

Storage planning: Rent temporary storage unit for 3 months ($300/mo)

Total investment: $8,500 + $900 storage = $9,400
Expected revenue: $28,000 (spring season)
Margin after costs: $18,600 (65% margin)

ROI: Build inventory early or miss sales window

Save: ~/Cowork-Workspace/inventory/spring-2026-plan.xlsx
```

### Multi-location inventory

```
Track inventory across 2 stores:

STORE A (Main): 5,000 sq ft
STORE B (Branch): 2,500 sq ft

INVENTORY ALLOCATION:

| Item | Total Qty | Store A | Store B | Notes |
|------|-----------|---------|---------|-------|
| Paint (popular) | 100 | 60 | 40 | Split by sales |
| Specialty tile | 50 | 50 | 0 | Keep at main only |
| Basic hardware | 200 | 100 | 100 | Equal split |

TRANSFER TRACKING:
Date: 01/20/2026
Transfer from Store A to Store B:
- Paint: 10 gallons (Store B low stock)

Update both locations in system:
Store A: 60 → 50 gallons
Store B: 40 → 50 gallons

CENTRALIZED DASHBOARD:
Total company inventory visible
Flag low stock at any location
Coordinate transfers instead of new purchases

Save: ~/Cowork-Workspace/inventory/multi-location-tracking.xlsx
```

---

## Troubleshooting

### Inventory discrepancies (physical vs system)

**Cause**: Theft, data entry errors, damaged goods not logged
**Solution**: Cycle counting:

```
CYCLE COUNTING PROCESS:

Instead of annual full inventory, count subset regularly:

SCHEDULE:
- Class A items: Count monthly
- Class B items: Count quarterly
- Class C items: Count semi-annually

METHOD:
Week 1: Count 25% of A items (10 items if 40 total A)
Week 2: Count next 25%
Week 3: Continue...

VARIANCE THRESHOLD:
- If physical count differs by <5% → Adjust system to match physical
- If differs by >5% → Investigate before adjusting

INVESTIGATION:
Check recent transactions:
- Mis-scans at POS?
- Unreported damage/returns?
- Data entry error?
- Theft pattern?

Resolution → Update system → Improve process
```

### Stockouts despite reorder alerts

**Cause**: Supplier delays, safety stock insufficient
**Solution**: Improve buffer and suppliers:

```
SAFETY STOCK ADJUSTMENT:

If repeated stockouts:

Current safety stock: (Max daily sales - Avg) × Lead time
Problem: Not accounting for lead time variability

NEW FORMULA:
Safety Stock = Z-score × √(Avg Lead Time × Variance of Demand + Avg Demand² × Variance of Lead Time)

SIMPLER APPROACH:
Double safety stock for critical items (Class A)
Monitor for 1 month, adjust if still problems

SUPPLIER DIVERSIFICATION:
Primary supplier unreliable → Add backup

Example:
Primary: ABC Supply (7-day lead, sometimes 10)
Backup: XYZ Wholesale (5-day lead, premium price)

When primary late → Order from backup for critical items
```

### Excess capital tied in slow-movers

**Cause**: Over-ordering, declining demand
**Solution**: Liquidation strategy:

```
SLOW-MOVER CLEARANCE PLAN:

Items with <2 turns per year:

TIER 1 (Still saleable, good condition):
- 20% discount for 30 days
- 40% discount for next 30 days
- 60% discount final 30 days
- Goal: Recover 50-70% of cost

TIER 2 (Obsolete, hard to sell):
- Bulk sale to liquidators (20-30% of cost)
- Donation (tax write-off)
- Disposal if no value

PREVENTION:
- Review slow-movers monthly
- Don't reorder items with declining sales
- Accept smaller margins on low-volume specialty items
- Vendor return policies for unsold seasonal items
```

---

## Variations

### Just-in-time (JIT) inventory

```
Minimal inventory, order as needed:

SUITABLE FOR:
- Made-to-order businesses
- Items with 1-2 day supplier lead time
- High carrying costs (bulky, perishable)

EXAMPLE: Custom window shop
Don't stock windows, order after customer order
Lead time: 2 weeks
Customer accepts wait

BENEFITS:
- Minimal capital tied up
- No storage costs
- No obsolescence risk

RISKS:
- Supplier reliability critical
- Lost sales if customer wants immediate delivery
- Higher unit costs (small orders)
```

### Consignment inventory

```
Supplier owns inventory until sold:

EXAMPLE: Art gallery
Artists place work on consignment
Gallery pays 60% of sale price to artist after sale
No upfront investment by gallery

BENEFITS:
- Zero capital investment
- Only pay for what sells
- Larger variety possible

DISADVANTAGES:
- Lower margins (artist takes share)
- Supplier controls terms
- Must track consignment vs owned inventory separately
```

---

## Best Practices

1. **Count Regularly** : Physical counts prevent system drift, monthly for high-value items
2. **ABC Prioritization** : Focus attention on high-value items (80/20 rule)
3. **Lead Time Accuracy** : Track actual supplier lead times, update reorder points accordingly
4. **Single Source of Truth** : One master inventory file/system, all updates go there
5. **First-In-First-Out (FIFO)** : Sell oldest stock first, especially for dated/perishable items
6. **Visibility** : Stock should be organized, labeled, easy to count
7. **Review Monthly** : Analyze turnover, slow-movers, dead stock every month
8. **Supplier Relationships** : Good relationships = flexible terms, rush orders when needed

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
