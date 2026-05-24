# Short-Term Rental (STR) Property Management Prompts

🌐 **Languages**: [Français](conciergerie.fr.md) | [English](conciergerie.md)

> **4 ready-to-use prompts for prospecting long-term rental owners and converting them to short-term rental management**

These prompts are designed for short-term rental (STR/Airbnb) property management companies that prospect landlords currently renting long-term on classifieds platforms.

**Prerequisite**: Have a `~/Cowork-Workspace/CLAUDE.md` file with your local market calibration data (average nightly rate, occupancy rate, fees). See the [STR property manager CLAUDE.md template](../examples/claude-md-templates/conciergerie.md).

---

## Prospect Analysis Prompts

### 1. Listing Analysis

Use for each listing manually copied from a classifieds platform (Le Bon Coin, Craigslist, Zillow, etc.).

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my market data and positioning.

Here is the listing to analyze:

[Paste the full listing text here: title, description, rent, area, location]

TASK: Analyze this property to assess its short-term rental potential.

OUTPUT:
1. Key information extraction
   - Property type (studio, 1BR, 2BR, 3BR+)
   - Approximate size (if mentioned)
   - Precise location (street, neighborhood, city)
   - Current long-term rental asking price
   - Strengths mentioned in the listing (view, parking, terrace, etc.)

2. Neighborhood analysis
   - Nearby tourist and economic assets (hotels, train stations, attractions, business districts)
   - Potential guest profile (tourists, business travelers, families)
   - 2 to 3 specific neighborhood elements I can mention in my outreach message

3. STR potential score (1 to 5)
   - 5: Very high potential (prime location, well-suited property)
   - 4: Good potential (several major advantages)
   - 3: Average potential (worth exploring based on costs)
   - 2: Limited potential (saturated market or unsuitable property)
   - 1: Not recommended (difficult area, oversized, prohibitive costs)

4. Talking points for the outreach message
   - Main reason this owner should consider STR
   - Differentiating neighborhood element to highlight

CONSTRAINTS: If the location is vague, mark the score as "to confirm." Do not invent advantages not mentioned in the listing or verifiable.

Save to: ~/Cowork-Workspace/output/prospects/[city]-[type]-[date]-analysis.md
```

---

### 2. STR vs Long-Term Revenue Estimate

Use after the listing analysis to calculate the potential gain for the owner switching from long-term to short-term rental with your management.

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my market calibration data (nightly rate, occupancy, costs).

Property details:
- Type: [Studio / 1BR / 2BR / 3BR+]
- Location: [neighborhood, city]
- Current long-term rent: $[X]/month
- Size: [X] sqft (if known)

TASK: Calculate a comparative monthly and annual revenue estimate.

OUTPUT: STR vs Long-Term Rental comparison table

**STR gross revenue (monthly)**
- Estimated nightly rate: $[based on my zone calibration data]
- Occupancy rate: [based on season]%
- Estimated nights booked/month: [calculation]
- Monthly gross revenue: $[calculation]

**STR costs to deduct (monthly)**
- Platform fee (3% host side): $[calculation]
- Cleaning ($[X] × [nb turnovers] turnovers): $[calculation]
- Linen and consumables ($[X]/stay): $[calculation]
- Tourist/occupancy tax (estimate): $[calculation]
- My management commission ([X]%): $[calculation]
- **Total costs**: $[calculation]

**Owner net STR revenue**: $[calculation]/month
**Current long-term rent**: $[X]/month
**Monthly gain from STR**: +$[calculation]/month (+[calculation]%)
**Annual gain**: +$[calculation]/year

CONSTRAINTS:
- Always use "estimated potential revenue" (never "guaranteed" or "assured")
- Specify data source (my calibration data from CLAUDE.md)
- If zone is not in my calibration data, indicate "estimate to be refined"
- Show high/low season ranges if occupancy rates vary significantly

Save to: ~/Cowork-Workspace/output/prospects/[city]-[type]-[date]-estimate.md
```

---

## Prospect Communication Prompts

### 3. First Outreach Message

Use to write the personalized message sent to the owner after analyzing their listing.

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my communication tone and services.

Prospect data:
- Property type: [Studio / 1BR / 2BR / 3BR+], [size] sqft
- Location: [neighborhood + city]
- Long-term asking rent: $[X]/month
- Estimated STR net revenue: $[X]/month (based on my estimate)
- Neighborhood elements to mention: [the 2 points identified in the analysis]

TASK: Write a first outreach message for this property owner.

CONTENT CONSTRAINTS:
- Length: 150 to 200 words maximum
- Tone: professional but human, not aggressively salesy
- Approach: offer a free potential audit, not a direct pitch
- Mention revenue difference as "estimated potential revenue" (never "guaranteed")
- Reference at least 2 specific neighborhood or property elements
- Words to avoid: "guaranteed," "definitely," "for sure," "maximum returns"

MESSAGE STRUCTURE:
1. Opening tied to the property or neighborhood (1 sentence)
2. My positioning in one sentence (who I am, what I do)
3. Observation on the property's STR potential (with estimated gap, phrased carefully)
4. Concrete no-commitment proposal: a call or free audit
5. Brief, relaxed close

OUTPUT: The message ready to send, no generic intro or closing filler.

Save to: ~/Cowork-Workspace/output/prospects/[city]-[type]-[date]-message.txt
```

---

### 4. Property Owner Follow-Up Document

Use when an owner responds positively to the first outreach and wants to know more. Send as an attachment or share before a meeting.

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my services, fees, and positioning.

Property details:
- Owner: [First name] (if known)
- Type: [Studio / 1BR / 2BR / 3BR+], [size] sqft, [address or neighborhood]
- Current long-term rent: $[X]/month
- Estimated STR net revenue: $[X]/month (from my calculation)
- Specific elements to highlight: [property and neighborhood strengths from the analysis]

TASK: Write a 1 to 2 page follow-up document to send before or after a first call.

STRUCTURE:
1. Header
   - My company name + contact
   - "Prepared for [First name]" + date

2. Detailed STR vs Long-Term financial comparison for this property
   - Monthly and annual table (reuse the calculated estimate)
   - Explicit note: "Estimated potential revenue based on [zone] market data"

3. What I handle (services included)
   - List of services from my CLAUDE.md, reframed as owner benefits
   - Emphasize: zero management burden for the owner, monthly transparency, dynamic pricing

4. Legal framework simplified
   - STR is legal for non-primary residences without annual caps (check local regulations)
   - City/municipality registration may be required (I handle this)
   - Tax considerations (consult your accountant for your personal situation)

5. Next step
   - Proposal for a no-commitment walkthrough to finalize the estimate
   - Direct contact

CONSTRAINTS:
- Reassuring and factual tone (the owner is often new to STR)
- Zero promises of guaranteed revenue
- Maximum 2 pages
- Emphasize transparency (monthly report, reservation access)

Save to: ~/Cowork-Workspace/output/argumentaires/[city]-[type]-[date]-pitch.docx
```

---

## Batch Processing

To process multiple listings in the same session:

```
CONTEXT: Check my file ~/Cowork-Workspace/CLAUDE.md for my market data and tone.

I have [X] listings in ~/Cowork-Workspace/input/prospects/batch-[date]/.
Each file contains a listing manually copied from a classifieds platform.

TASK: For each listing, run the full analysis.

OUTPUT PER LISTING:
- Key information extracted
- STR potential score (1-5) with one-sentence justification
- Estimated owner net STR revenue vs listed long-term rent
- 2 neighborhood elements to use in the outreach message

FINAL SUMMARY:
Summary table of all listings:
File | Type | City/Neighborhood | Long-term Rent | Est. STR Revenue | Score | Priority

CONSTRAINTS:
- Sort by descending score in the summary
- Mark the top 3 prospects (score ≥4) with a star (★)
- If a file is unreadable or incomplete, mark "To verify" rather than guessing

Save:
- Analyses: ~/Cowork-Workspace/output/prospects/batch-[date]/
- Summary: ~/Cowork-Workspace/output/prospects/batch-[date]-summary.md
```

---

## Customization Notes

**Priority placeholders to fill in CLAUDE.md:**
- Market calibration by zone (nightly rate, occupancy): this is what makes estimates relevant
- Management commission: varies by positioning (15-25%)
- Cleaning costs: based on your local service providers

**Adjust tone to your positioning:**
- Premium STR management: emphasize luxury hospitality, business traveler clientele, Superhost status
- Standard STR management: emphasize simplicity, transparency, value for money

**On listing collection:**
- Use platform alert notifications (free, legal) to be notified of new listings matching your criteria
- Manually copy the listing text into a `.txt` file (one file per listing)
- Never automate collection: scraping violates platform Terms of Service and may be illegal

---

*[Back to Prompt Index](README.md) | [Cowork Documentation](../README.md)*
