# Workflow: STR Property Management Prospecting, Converting Long-Term Rentals

> **Estimated time**: 15 to 30 min per batch of 10-15 prospects
> **Difficulty**: Intermediate
> **Category**: 💼 Sales & Business Development
> **Professions**: Short-term rental (STR) property management companies

🌐 **Aussi disponible en [Français](conciergerie-lcd-prospection.md)**

---

## Use Case

You run a short-term rental (STR) property management company (Airbnb, VRBO, Booking.com, etc.). You want to grow your portfolio by convincing owners currently renting long-term to switch to short-term rental management with your company.

Your approach: identify long-term rental listings on classifieds platforms, analyze the STR potential of the property and neighborhood, estimate the revenue gap, and send a personalized, quality-first outreach message.

This workflow helps you:

- Analyze each long-term rental listing to assess its STR potential (score 1-5)
- Estimate net STR revenue for the owner based on your local calibration data
- Write a personalized first outreach message (150-200 words, consultative tone)
- Process batches of 10-15 listings with a summary table and scoring
- Prepare a follow-up pitch document for owners who respond positively

> ⚠️ **Quality over quantity**: This workflow is designed for 10-15 carefully reviewed prospects per day, not mass outreach. A message that mentions 2 specific elements about the property or neighborhood converts significantly better than a generic template.

---

## Prerequisites

- [ ] Cowork active in Claude Desktop
- [ ] `~/Cowork-Workspace/CLAUDE.md` file created with your market calibration data, see the [STR property manager CLAUDE.md template](../examples/claude-md-templates/conciergerie.md)
- [ ] Calibration data filled in: average nightly rate by zone, occupancy rate, commission, cleaning costs
- [ ] Folders created:
  ```
  ~/Cowork-Workspace/
  ├── input/prospects/
  │   └── batch-[date]/     ← manually copied listings
  ├── output/prospects/
  │   └── batch-[date]/     ← analyses and messages
  └── output/pitch-docs/    ← follow-up documents
  ```
- [ ] Platform alert notifications configured by zone to be notified of new listings (free, legal)

> 🔒 **Legal note**: Manually collecting public listings is legal. Automated scraping violates platform Terms of Service and may constitute unauthorized computer access under applicable law. Never automate collection.

---

## Step-by-Step Instructions

### Step 1: Manual Listing Collection

For each listing identified via your alerts or manual browsing:

1. Open the listing in your browser
2. Create a text file in `~/Cowork-Workspace/input/prospects/batch-[date]/`
3. Name the file: `[city]-[type]-[rent]-[date].txt`
   - Example: `miami-2br-2200-2026-04-12.txt`
4. Copy-paste into that file: listing title, full description, rent, location, contact info if visible

> Do not store personally identifiable information (name, email, phone number of the owner) without a legitimate legal basis. When in doubt, anonymize or remove those fields.

---

### Step 2: Property Analysis

For each collected listing, run the analysis in Cowork:

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my market data and positioning.

Here is the listing to analyze:

[Paste the text file content here]

TASK: Analyze this property to assess its short-term rental potential.

OUTPUT:
1. Extraction: property type, size, precise location (neighborhood), long-term rent, mentioned strengths
2. Neighborhood analysis: nearby tourist and economic assets, potential guest profile, 2-3 specific elements to cite in the message
3. STR potential score (1 to 5) with one-sentence justification
4. Talking points for the outreach message

CONSTRAINTS: Do not invent advantages. If location is vague, mark "to confirm."

Save to: ~/Cowork-Workspace/output/prospects/batch-[date]/[filename]-analysis.md
```

---

### Step 3: STR vs Long-Term Revenue Estimate

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my market calibration data.

Property: [type], [neighborhood], [city]
Current long-term rent: $[X]/month

TASK: Calculate the estimated net STR revenue for the owner and compare to long-term rent.

OUTPUT: Comparison table with STR gross revenue, deducted costs (cleaning, 3% platform fee, tourist tax, my commission, linen), owner net STR revenue, monthly and annual gap vs long-term rent.

CONSTRAINTS:
- Always phrase as "estimated potential revenue," never "guaranteed"
- Specify data source (my zone calibration data from CLAUDE.md)
- If zone is missing from my data: indicate "estimate to be refined"

Save to: ~/Cowork-Workspace/output/prospects/batch-[date]/[filename]-estimate.md
```

---

### Step 4: First Outreach Message

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my communication tone and services.

Prospect data:
- Type: [Studio / 1BR / 2BR / 3BR+], [neighborhood], [city]
- Long-term rent: $[X]/month
- Estimated net STR revenue: $[X]/month
- Neighborhood elements to reference: [the 2-3 points from Step 2]

TASK: Write a first outreach message of 150-200 words.

CONSTRAINTS:
- Tone: professional but human, not aggressively salesy
- Offer a free audit, not a direct pitch
- Reference at least 2 specific neighborhood or property elements
- Use "estimated potential revenue": never "guaranteed," "certain," or "sure thing"
- Structure: opening tied to the property → one sentence on who I am → observation on STR potential → no-commitment proposal → relaxed close

Save to: ~/Cowork-Workspace/output/prospects/batch-[date]/[filename]-message.txt
```

---

### Step 5: Batch Processing

To process 10-15 listings at once in a single session:

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my market data and tone.

I have [X] listings in ~/Cowork-Workspace/input/prospects/batch-[date]/.
Each .txt file contains a manually copied listing.

TASK: For each listing, run the full analysis (key info, STR score 1-5, estimated net STR vs long-term rent, 2 neighborhood elements to use in the message).

OUTPUT:
- One analysis per file in ~/Cowork-Workspace/output/prospects/batch-[date]/
- Final summary table:

| File | Type | Neighborhood/City | Long-term Rent | Est. STR Revenue | Score | Priority |
|------|------|-------------------|----------------|------------------|-------|----------|

CONSTRAINTS:
- Sort by descending score in the table
- Mark top 3 prospects (score ≥4) with a star (★)
- If a file is unreadable or incomplete: mark "To verify" rather than guessing

Save summary to: ~/Cowork-Workspace/output/prospects/batch-[date]-summary.md
```

---

### Step 6: Follow-Up and Re-engagement

For owners who responded positively to the first outreach:

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my services and fees.

Interested owner: [First name if known]
Property: [type], [neighborhood], [city]
Long-term rent: $[X]/month
My STR net estimate: $[X]/month (from my calculation)
Points discussed during first contact: [summary]

TASK: Write a follow-up pitch document to send before or after a first call.

STRUCTURE:
1. Header with my company name + contact, "Prepared for [First name]" + date
2. Detailed STR vs long-term financial comparison for this specific property
3. What I handle (services included, reframed as owner benefits)
4. Legal framework simplified (STR legal for investment properties, registration requirements, tax notes)
5. Next step (no-commitment walkthrough or 20-min call)

CONSTRAINTS:
- Reassuring and factual tone (owner is often new to STR)
- Zero guaranteed revenue promises
- Maximum 2 pages
- Emphasize transparency (monthly report, reservation access)

Save to: ~/Cowork-Workspace/output/pitch-docs/[city]-[type]-[date]-pitch.docx
```

For a Day 7 follow-up with no response:

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md.

I sent a first message 7 days ago with no response.
Property context: [type], [neighborhood], [city], long-term rent $[X]/month.

TASK: Write a short re-engagement (80-100 words maximum).

CONSTRAINTS:
- No guilt or pressure
- Bring something new (a local stat, a neighborhood event, an STR market update)
- Offer an alternative contact method (quick call rather than email)
- End on a light, no-pressure note

Save to: ~/Cowork-Workspace/output/prospects/[filename]-followup-d7.txt
```

---

## Prompt Examples

### Analysis of a Miami Beach 2BR Listing

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my market data and positioning.

Here is the listing:

Title: "Spacious 2BR/2BA, South Beach, $2,400/month"
Description: Bright corner apartment, 4th floor with ocean view. Open kitchen, king master bed, queen guest room. In-unit washer/dryer. Walk to Lincoln Road, Art Deco Historic District. Street parking available. Available June 1st.

TASK: Analyze this property to assess its short-term rental potential.
```

Expected output: score 5/5 (South Beach = prime STR location, beach access, Art Deco tourism, Lincoln Road shopping), opening angle on Art Deco Historic District and Lincoln Road foot traffic, estimate $4,000-5,000+/month gross STR.

---

### Batch of Monday Morning Listings

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md.

I have 11 listings in ~/Cowork-Workspace/input/prospects/batch-2026-04-15/.
Create the summary table with scoring, then write the 3 outreach messages for the ★ prospects.

Save summary: ~/Cowork-Workspace/output/prospects/batch-2026-04-15-summary.md
Messages: ~/Cowork-Workspace/output/prospects/batch-2026-04-15/
```

---

## Troubleshooting

### "Cowork doesn't know the Airbnb rates for my area"

**Cause**: Calibration data is not in your CLAUDE.md, or the requested zone is missing.

**Solution**:
1. Fill in your calibration data in `~/Cowork-Workspace/CLAUDE.md` under "Market Data"
2. Use your own managed properties as the reference (real data > estimates)
3. Supplement with AirDNA, Airbtics, or Lodgify for zones not covered
4. If truly uncertain: ask Cowork to indicate "estimate to be refined with local AirDNA data"

---

### "The outreach message sounds robotic or generic"

**Cause**: Analysis didn't find specific neighborhood elements, or elements are too generic.

**Solution**:
```
CONTEXT: [...]

The previous message was too generic. Here is an example of a message that converted well for me:

[Paste a real message that worked]

TASK: Write a new message for prospect [X] adopting this tone and structure.
Specific elements to include: [train station, local event, historic district, specific tourist attraction...]
```

Cowork adapts to a concrete example better than abstract instructions.

---

### "The STR estimate looks too optimistic"

**Cause**: Not all costs deducted, or occupancy rate is overstated.

**Solution**: Verify the estimate prompt deducts:
- Platform fee (3% host side for Airbnb)
- Cleaning (cost × estimated number of turnovers/month)
- Linen and consumables
- Tourist/occupancy tax
- Your management commission
- Property insurance if at your cost

And uses a realistic occupancy rate (low season + high season average, not peak only).

---

## Variations

### Zillow / Craigslist / Apartments.com Prospecting

Same workflow, different source. Copy the listing from any classifieds platform into the same text file format. Analysis and prompts are identical.

Advantage of Zillow/Apartments.com: listings often include more detail (HOA fees, utilities included, floor plan). This information enriches the STR potential analysis.

---

### Event-Driven Targeting

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md.

Upcoming event: [Festival / conference / sports event / concert] in [city] on [date].
Target zone: [radius around the venue].

TASK: Identify the most suitable property types for this event and refine the outreach angle to highlight the specific demand generated by the event.

OUTPUT: Customized opening angle + revenue estimate for event nights vs off-peak nights.
```

---

### Vacant Property Prospecting

Properties that have been listed for rent for several weeks without a tenant are often more receptive to the STR alternative. Note the "days listed" information if available from the platform.

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md.

This property has been listed long-term for [X weeks/months] without finding a tenant.
[Listing content]

TASK: Adapt the outreach message to incorporate the context of prolonged vacancy without being condescending.
Angle: the long-term market is competitive in this area; STR can cover carrying costs in the interim or as a permanent alternative.
```

---

### Simple CRM Tracking

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md.

Here are this week's batch results:
[Paste the summary table]

TASK: Create an Excel CRM tracking file with columns:
City | Type | Long-term Rent | Est. STR Revenue | Score | Contact Date | Status (sent / replied / meeting / declined) | Notes

Save to: ~/Cowork-Workspace/output/prospects/crm-[month].xlsx
```

---

## Best Practices

1. **Never automate listing collection** : Copy listings manually. Scraping violates platform Terms of Service and may expose you to legal liability.

2. **Calibrate with your own data first** : Your managed properties in the same zone are the best calibration source. More reliable than third-party data for your specific market.

3. **Personalize every message** : The minimum: 2 elements specific to the property or neighborhood. A message that mentions the Art Deco Historic District converts better than one that says "your great neighborhood."

4. **Respect platform anti-spam policies** : Space out your outreach. No more than one message per owner, a 7-day wait before a single follow-up, then stop.

5. **Never guarantee revenue** : Always use "estimated potential revenue," "based on our experience in this market," "subject to actual occupancy." Guaranteeing results creates legal liability.

6. **Verify your licensing** : Confirm you have the appropriate property management license required in your state/country before managing properties for third parties.

7. **Process in batches, not continuously** : 10-15 listings in a 30-minute session is more efficient than processing 2-3 listings throughout the day. Concentration improves analysis consistency.

8. **Measure to calibrate** : Track response rates by zone and message angle. A simple CRM spreadsheet is enough. After one month, you'll know which neighborhoods and which angles convert best.

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
