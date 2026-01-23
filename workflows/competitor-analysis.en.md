# Workflow: Competitive Analysis

> **Estimated time**: 30 minutes
> **Difficulty**: Intermediate
> **Category**: 💼 Commercial
> **Professions**: Merchants, Business Owners

🌐 **Disponible aussi en [Français](competitor-analysis.md)**

---

## Use Case

You need to understand your competitive environment to better position yourself. This workflow helps you:

- Identify direct and indirect competitors
- Analyze their offers, prices, strengths/weaknesses
- Spot differentiation opportunities
- Adjust your commercial strategy

> ⚠️ **Strategy**: Knowing competition = identifying untapped niches and differentiating arguments.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Your geographic area (service radius)
- [ ] Your current offering (services/products)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Map competitors

```bash
mkdir -p ~/Cowork-Workspace/intelligence/competition
```

Identify players:

```
List competitors for: [Your business] in [Geographic zone]

MY BUSINESS:
- Industry: [Ex: Electrician, Flower shop, HR Consultant]
- Area: [Ex: City and 20mi radius, State, National]
- Offering: [Services/products provided]

IDENTIFICATION SOURCES:

1. GOOGLE MAPS:
Search: "[Industry] + [City]"
Example: "electrician Chicago"

For each competitor displayed:
- Name
- Address
- Distance from my business
- Google rating (/5)
- Review count
- Website (if present)
- Phone

2. YELLOW PAGES / DIRECTORIES:
Complete list (some absent from Google Maps)

3. PROFESSIONAL DIRECTORIES:
- Chamber of Commerce
- Industry associations
- Sector-specific directories

4. SOCIAL NETWORKS:
LinkedIn search: "[Industry] + [City]"
Facebook local business pages

CATEGORIZATION:

DIRECT COMPETITORS (same offering, same area):
- Competitor A: [Name] - [Address] - [3.8]/5 (45 reviews)
- Competitor B: [Name] - [Address] - [4.2]/5 (120 reviews)
- [...]

INDIRECT COMPETITORS (partial offering or adjacent area):
- Competitor X: Specialized only in [sub-segment]
- Competitor Y: Adjacent area (may overlap)

TOTAL: [X] direct competitors | [Y] indirect competitors

Format: Excel table
Save: ~/Cowork-Workspace/intelligence/competition/competitor-map.xlsx
```

### Step 2: Analyze digital presence

Evaluate online communication:

```
Digital analysis of top 5 competitors:

For each competitor:

WEBSITE:
URL: [https://...]
Design: [Modern/Dated/Absent]
Information:
- Detailed services: [Yes/No]
- Prices displayed: [Yes/No/Quote only]
- Customer references: [Yes/No]
- Blog/news: [Active/Inactive/Absent]
- Contact form: [Yes/No]
- Responsiveness (ethical test if applicable): [Response <24h?]

LOCAL SEO:
Google "electrician Chicago":
- Competitor A position: [Rank X]
- Competitor B position: [Rank Y]
- My position: [Rank Z]

SOCIAL NETWORKS:
LinkedIn:
- Presence: [Yes/No]
- Followers: [Number]
- Activity: [Posts/month]

Facebook:
- Active page: [Yes/No]
- Followers: [Number]
- Rating: [X]/5

Instagram (if B2C):
- Presence: [Yes/No]
- Followers: [Number]
- Engagement: [Avg likes/post]

CUSTOMER REVIEWS:
Google My Business:
- Competitor A: 4.2/5 (120 reviews)
  Recent reviews: [Summary of last 5]
  Recurring positive: [Ex: "Speed", "Price"]
  Recurring negative: [Ex: "Delays", "Service"]

Thematic review analysis:
- Competitor strengths: [List]
- Competitor weaknesses: [List]
→ Opportunities for me: [Differentiation]

DIGITAL SCORE (/100):
- Website: [/30]
- Local SEO: [/20]
- Social networks: [/20]
- Customer reviews: [/30]

Format: Comparative grid
Save: ~/Cowork-Workspace/intelligence/competition/digital-analysis.xlsx
```

### Step 3: Offer and price comparison

Analyze commercial positioning:

```
Offer comparison for: [Industry]

PRICE COLLECTION METHOD:

1. MYSTERY SHOPPER (ethical):
   - Request quote for standard service
   - Example: "Replace electrical panel 2 rows"
   - Collect 3-5 competitive quotes

2. PUBLIC PRICING:
   - Websites (if displayed)
   - Brochures/catalogs
   - Posted packages

3. INDIRECT SOURCES:
   - Customer reviews mentioning prices
   - Local forums/Facebook groups

COMPARATIVE GRID:

| Service | Me | Competitor A | Competitor B | Competitor C | Average |
|---------|-----|--------------|--------------|--------------|---------|
| Emergency service | $80 | $95 | $75 | $90 | $85 |
| Outlet installation | $45 | $50 | $40 | $55 | $48 |
| Panel package | $1200 | $1500 | $1100 | $1400 | $1333 |

POSITIONING ANALYSIS:
- My price positioning: [Premium / Mid-range / Budget]
- Cheapest competitor: [Name] ([-X%] vs average)
- Most expensive competitor: [Name] ([+Y%] vs average)

NON-PRICE DIFFERENTIATION:

Competitor A (more expensive):
- Justification: "5-year warranty" / "Premium materials"
- Included services: Priority service, 24/7 emergency

Competitor B (cheaper):
- Possible lower quality?
- Check reviews: Satisfied despite low price?

ME:
- My strengths vs competition: [Ex: Certified, responsiveness, experience]
- My weaknesses: [Ex: No weekend service, limited area]

DIFFERENTIATION OPPORTUNITIES:
- Untapped niche: [Ex: Home automation specialization]
- Missing service: [Ex: No one offers preventive maintenance]
- Unique positioning: [Ex: "Only certified X within 20mi radius"]

Save: ~/Cowork-Workspace/intelligence/competition/offer-price-comparison.xlsx
```

### Step 4: Strengths/weaknesses analysis

Competitive SWOT matrix:

```
Comparative SWOT: Me vs Competition

COMPETITOR STRENGTHS:
Competitor A:
✓ Longevity (30 years) = reputation
✓ Team of 8 = volume capacity
✓ Google rating 4.5/5 = satisfaction
✓ Physical showroom = customer trust

Competitor B:
✓ Price -20% vs average = attractive
✓ Responsiveness (response <2h per reviews)
✓ Strong social media presence

COMPETITOR WEAKNESSES:
Competitor A:
✗ Outdated website (not mobile-responsive)
✗ No social networks (aging)
✗ Recent reviews mention "expensive"
✗ Delays (order backlog)

Competitor B:
✗ Variable quality (mixed reviews)
✗ No certifications
✗ Limited area (doesn't travel far)

MY STRENGTHS vs COMPETITION:
✓ [Ex: Certified (competitor B doesn't have)]
✓ [Ex: 24h responsiveness (vs 3-5d competitor A)]
✓ [Ex: Extended warranty]
✓ [Ex: Modern tools (thermal imaging)]

MY WEAKNESSES vs COMPETITION:
✗ [Ex: Recent (2 years) vs competitor longevity]
✗ [Ex: Solo (vs competitor teams)]
✗ [Ex: Few Google reviews (15 vs 120 competitor A)]
✗ [Ex: No physical showroom]

OPPORTUNITIES:
- Competitor A aging (elderly clientele) → Capture young via digital
- No competitor in [niche] → Specialize
- Competitor B negative reviews on quality → Argument "Quality guaranteed"

THREATS:
- New budget competitor arrival (price war)
- Competitor A could modernize (digital)
- Local market saturated (7 competitors)

RECOMMENDED STRATEGY:
1. Exploit weakness A: [Action]
2. Avoid confrontation B: [Action]
3. Create differentiating niche: [Action]

Format: Visual SWOT matrix
Save: ~/Cowork-Workspace/intelligence/competition/swot-comparative.pdf
```

### Step 5: Differentiation action plan

Define strategy:

```
Differentiation plan vs competition:

OBJECTIVE: Stand out on [Primary axis]

AXIS 1: EXPERTISE/SPECIALIZATION
Action: Position as expert [niche]
Example: "Energy retrofit specialist certified"
vs generalist competitors

Implementation:
- Additional training if needed
- Targeted communication (blog, networks)
- Partnerships (architects, real estate agencies)

AXIS 2: CUSTOMER SERVICE
Action: Relational excellence
Examples:
- Quote response <24h (vs 3-5d competitors)
- Post-service follow-up D+7 (satisfaction)
- Satisfaction guarantee "Redo if not satisfied"

Implementation:
- Responsiveness process (email alerts)
- Customer tracking CRM
- Customer relations training

AXIS 3: PRICE/VALUE
Choice: NOT compete on low price (race to bottom)
But: Justify price with value

Arguments:
- Premium materials (brands, warranties)
- Certifications
- Extended insurance (enhanced liability)
→ "More expensive but security + durability"

AXIS 4: INNOVATION
Action: Offer what competitors don't have
Examples:
- Video quotes (virtual site visit)
- Real-time work tracking app
- Payment plans (partner financing)
- Eco-responsibility (waste recycling, carbon footprint)

3-MONTH PLAN:
Month 1:
□ Improve website (responsive, testimonials)
□ Launch Google review campaign (satisfied clients)
□ Create blog content (expertise)

Month 2:
□ Specialization training [niche]
□ Local partnerships (referrers)
□ Optimize local SEO (Google My Business)

Month 3:
□ Differentiation campaign (flyers, local Facebook ads)
□ Measure results (contacts, conversions)
□ Adjust strategy

SUCCESS INDICATORS:
- Google position "electrician Chicago" from 8th to Top 3
- Google rating from 4.0 to 4.5
- Google reviews from 15 to 50
- Revenue +20% vs same period Y-1

Save: ~/Cowork-Workspace/intelligence/competition/differentiation-plan-2026.pdf
```

---

## Example Prompts

### Quick benchmark (new service)

```
Competitor X just launched [new service]

Quick analysis:
- Service description: [What]
- Price: [How much]
- Communication: [How promoted - site/networks/flyers]
- Market reception: [Customer reviews if available]

QUESTIONS:
- Is this a threat to me?
- Should I offer equivalent?
- OR opportunity to ignore (unprofitable niche)?

DECISION (3 options):
A. Copy quickly (if obvious success)
B. Adapt/improve (offer better)
C. Ignore (not my market)

If A or B: Quick launch plan (4 weeks)
If C: Document monitoring (watch evolution)

Save: ~/Cowork-Workspace/intelligence/competition/benchmark-[service]-[competitor].txt
```

### New market entrant analysis

```
New competitor detected: [Name] opened since [date]

THREAT ANALYSIS:

PROFILE:
- Location: [Address] (distance from me: [X mi])
- Offering: [Services proposed]
- Pricing: [Estimated positioning]
- Team: [Size]
- Resources: [Visible facilities, equipment]

LAUNCH COMMUNICATION:
- Website: [Quality]
- Local advertising: [Flyers, radio, Facebook Ads?]
- Launch promotion: [Special offers]

STATED DIFFERENTIATION:
- Arguments: [Ex: "Unbeatable prices", "20 years experience"]
- Credibility: [Verifiable?]

ESTIMATED IMPACT:
- Target market share: [X%]
- Potentially lost clients: [Profile]
- Response urgency: [High/Medium/Low]

COUNTER-MEASURES (if threat):
1. Strengthen current clients (retention)
2. Accelerate differentiation
3. Monitor first months (reviews, actual positioning)

Save: ~/Cowork-Workspace/intelligence/competition/new-competitor-[name].pdf
```

---

## Troubleshooting

### Too many competitors

**Cause**: Saturated market
**Solution**: Focus on top competitors:

```
Area with 25+ competitors → Impossible to analyze all

PRIORITIZATION (Top 5):
1. Competitor with highest estimated market share
2. Competitor with best Google rating
3. Geographically closest competitor
4. Competitor with most similar offering
5. Competitor with most aggressive communication

Analyze these 5 in depth
Monitor remaining 20 in passive watch (Google Alerts)
```

### Inaccessible competitor data

**Cause**: No web presence, opacity
**Solution**: Field sources:

```
Competitor without site/networks:

ALTERNATIVE METHODS:
1. Mystery shopper phone call:
   - Call for quote
   - Note: Reception, responsiveness, price, professionalism

2. Physical observation:
   - Visit location (size, clientele, activity)
   - Google Street View (evolution over time)

3. Professional network:
   - Ask colleagues (carefully)
   - Common suppliers (purchase volumes)

4. Word-of-mouth reviews:
   - Local forums
   - Neighborhood Facebook groups
```

---

## Variations

### Automated monitoring

```
Configure automatic competitor surveillance:

FREE TOOLS:
1. Google Alerts:
   - "[Competitor name]"
   - "[Competitor name] + reviews"
   Frequency: Weekly

2. Talkwalker Alerts (Google alternative):
   - Same keywords
   - Includes social networks

3. SEO position tracking:
   - Free tool: SERPWatcher (limited)
   - Monthly Google position tracker

MONTHLY ROUTINE (30 min):
- Review compiled alerts
- Check new competitor reviews (insights)
- Screenshot competitor websites (track changes)
- Update monitoring file

Compilation: ~/Cowork-Workspace/intelligence/competition/monthly-watch-[month].pdf
```

### Local Visibility Audit (Google My Business)

Compare your local presence against the competition:

```
Local visibility audit - Google My Business:

MY SEARCH: "[my trade] [my city]"
Example: "plumber Chicago"

ANALYZE TOP 5 RESULTS (excluding ads):

For each competitor (+ myself):
══════════════════════════════════════

COMPETITOR 1: [Name]
Google My Business:
- Average rating: ⭐ X.X/5
- Number of reviews: X reviews
- Latest review: [date]
- Photos: X photos (recent? professional?)
- Hours listed: YES/NO
- Services listed: YES/NO
- Responds to reviews: YES/NO (response ratio)
- Website linked: YES/NO
- Main category: [...]

Local Pack Position: #X (on Maps)

══════════════════════════════════════

ME: [My business]
[Same criteria]

══════════════════════════════════════

COMPARISON TABLE:

| Criteria | Me | Competitor 1 | Competitor 2 | Competitor 3 |
|----------|-----|--------------|--------------|--------------|
| Rating /5 | | | | |
| # Reviews | | | | |
| Review freshness | | | | |
| # Photos | | | | |
| Responds to reviews | | | | |
| Maps position | | | | |

DIAGNOSIS:

If lower rating:
→ Review collection plan (see Review Response workflow)

If fewer reviews:
→ Ask systematically after every job

If insufficient photos:
→ Job site photo routine (1 before/after per week)

If not responding to reviews:
→ Respond to 100% of reviews (positive AND negative)

If weak Maps position:
→ Optimize listing (categories, services, hours, photos)

LOCAL VISIBILITY ACTION PLAN:

Week 1-2: [Urgent actions]
Month 1: [Important actions]
Quarter: [Review/photo targets]

Save: ~/Cowork-Workspace/intelligence/competition/local-visibility-audit-[date].pdf
```

### Simplified Local SEO Benchmark

```
Compare Google positioning (organic search):

KEYWORDS TO TEST (Google search):
1. "[trade] + [city]" (e.g., "electrician Boston")
2. "[trade] + [neighborhood]" (e.g., "plumber Back Bay")
3. "[specific service] + [city]" (e.g., "boiler repair NYC")
4. "[trade] + emergency + [city]" (e.g., "locksmith emergency LA")

FOR EACH SEARCH:

Organic position (page 1 = top 10):
- My site: Position #X (or "Not found on page 1")
- Competitor 1: Position #X
- Competitor 2: Position #X
- Competitor 3: Position #X

SUMMARY TABLE:

| Keyword | Me | C1 | C2 | C3 | Est. Volume |
|---------|-----|----|----|----| ------------|
| [trade city] | #? | | | | High |
| [trade neighborhood] | #? | | | | Medium |
| [service city] | #? | | | | Medium |
| [emergency city] | #? | | | | Low but lucrative |

ANALYSIS:
- Keywords where I rank well: [...]
- Keywords where I'm absent: [...]
- Opportunities (low competition): [...]

BASIC SEO ACTIONS (no expert needed):
1. Page titles = "[Service] [City] - [Business name]"
2. Text = mention city/neighborhood naturally
3. Google My Business = optimize 100%
4. Google reviews = more reviews = better local ranking

Save: ~/Cowork-Workspace/intelligence/competition/local-seo-benchmark-[date].xlsx
```

### National sector benchmark

```
Compare performance vs national averages:

SECTOR STATS SOURCES:
- Government statistics (industry data)
- Professional associations
- Industry observatories
- Market research firms

INDICATORS:
- Average revenue per employee: $[X]
  → Me: $[Y] (above/below average)

- Average net margin: [Z]%
  → Me: [W]% (positioning)

- Sector growth rate: [+X%/year]
  → Me: [+Y%] (outperformance/underperformance)

OBJECTIVE: Identify if problem is local (competition) or global (skills, management)

If performance < national average despite little local competition
→ Internal problem (pricing, quality, marketing) not competition
```

---

## Best Practices

1. **Continuous monitoring** — Not one-time, track changes (quarterly minimum)
2. **Ethics** — No disparagement, illegal espionage, defamation
3. **Focus differentiation** — Objective isn't to copy but stand out
4. **Customer-centric** — Analyze competition to better serve customers (not obsession)
5. **Possible collaboration** — Some competitors = future partners (subcontracting, complementary specializations)
6. **Positive benchmarking** — Inspired by best practices (not just criticize weaknesses)
7. **Action > Analysis** — Monitoring useful IF leads to concrete actions
8. **Measure impact** — Track if differentiation actions work (KPIs)

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
