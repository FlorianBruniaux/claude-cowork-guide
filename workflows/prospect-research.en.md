# Workflow: Prospect Research

> **Estimated time**: 20 minutes
> **Difficulty**: Intermediate
> **Category**: 💼 Commercial
> **Professions**: Merchants, Business Owners

🌐 **Disponible aussi en [Français](prospect-research.md)**

---

## Use Case

You have a prospect and need to gather information before a sales meeting or proposal. This workflow helps you:

- Collect business data (activity, size, financial health)
- Identify decision makers and key contacts
- Understand potential needs
- Prepare personalized approach

> ⚠️ **Performance**: Well-qualified prospects = +40% conversion rate vs. cold outreach.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Company name or Tax ID
- [ ] Industry sector (if known)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Company legal information

```bash
mkdir -p ~/Cowork-Workspace/prospects/[company-name]
```

Official research:

```
Research legal information for: [Company name]

PUBLIC SOURCES:
1. Secretary of State Business Search (free business registry):
   - Exact legal name
   - Business structure (LLC, Corporation, Partnership, etc.)
   - Tax ID / EIN
   - Registered address
   - Formation date
   - Officers/directors (names, roles)
   - Business classification (NAICS code)

2. Business databases (D&B, Bloomberg, etc.):
   - Annual revenue (if publicly available)
   - Employee count
   - Financial health score
   - Revenue trend (3-year growth/decline)

3. Company registries/aggregators:
   - Business health score (/100)
   - History (address changes, structure changes)
   - Related companies (subsidiaries, parent company)

DATA TO COLLECT:
- Legal name: [Full official name]
- Tax ID/EIN: [XX-XXXXXXX]
- Business structure: [Type]
- Officer: [Name] ([Title])
- Activity: [NAICS description]
- Revenue 2023: $[Amount]
- Employees: [Number] employees
- Health: [Score/100 or Good/Average/Poor]
- Formation date: [Date]
- Address: [Full address]

Format: Prospect file
Save: ~/Cowork-Workspace/prospects/[name]/legal-info.txt
```

### Step 2: Digital presence

Analyze online communication:

```
Research web presence for: [Company name]

WEBSITE:
URL: [https://...]
Analysis:
- Modern or outdated design?
- Contact info visible?
- Services/products clear?
- Blog/news active? (last update date)
- Contact/quote form?
- Customer references mentioned?

Commercial interest points:
- "Careers" page (growth signal?)
- Recent news (new service, expansion?)
- Current projects (opportunities)

SOCIAL MEDIA:
LinkedIn company page:
- Followers: [X]
- Post frequency: [Active/Inactive]
- Content type: [Hiring/Product comm/Expertise]
- Latest news: [Date + topic]

Facebook (if B2C):
- Customer reviews: [X] reviews ([Rating]/5)
- Engagement: [Strong/Weak]

Google My Business:
- Rating: [X]/5 ([Y] reviews)
- Recent reviews: [Positive/Negative themes]
- Location photos (quality, modernity)

ATTENTION POINTS:
- Recurring negative reviews (quality/service issues?)
- Recent expansion (equipment needs?)
- Hiring activity (growth = available budget?)

Save: ~/Cowork-Workspace/prospects/[name]/digital-presence.txt
```

### Step 3: Contacts and decision makers

Identify stakeholders:

```
Identify decision makers at: [Company name]

EXECUTIVES (from registry):
- President/Owner: [Name]
- CEO: [Name if different]

OPERATIONAL DECISION MAKERS (LinkedIn):
LinkedIn search "[Company name]":
- Technical/operations director
- Purchasing manager
- Facilities/maintenance manager
- Project manager

For each key contact:
NAME: [First Last]
TITLE: [Position]
TENURE: [X years at company]
BACKGROUND: [Education, experience]
INTERESTS: [If visible on LinkedIn profile]

DECISION HIERARCHY (for B2B sales):
- User: [Who uses product/service]
- Influencer: [Who recommends]
- Decision maker: [Who signs purchase order]
- Buyer: [Who negotiates terms]

May be same person (small business) or 4 different people (large company)

RECOMMENDED APPROACH:
If small (<10 employees): Contact owner directly
If SMB (10-250 employees): Identify relevant department head
If enterprise: Formal procurement process (likely RFP)

Save: ~/Cowork-Workspace/prospects/[name]/contacts-decision-makers.txt
```

### Step 4: Potential needs

Qualify opportunities:

```
Analyze potential needs for: [Company name]

MY OFFER:
[Describe your services/products]

BUYING SIGNALS DETECTED:

1. GROWTH SIGNALS:
   - Revenue +15% last fiscal year → Available budget
   - Hired 5 people (LinkedIn) → Expansion
   - New location (Google Maps Street View) → New equipment needs?

2. PROJECT SIGNALS:
   - Website news: "New branch in [City]" → Fit-out needs
   - LinkedIn post: "Seeking vendor for X" → Direct opportunity
   - Building permit filed (municipality) → Upcoming work

3. DISSATISFACTION SIGNALS:
   - Recurring negative customer reviews on theme X → Improvement needed
   - Recent vendor change (ex-employee LinkedIn) → Open to competition

OPPORTUNITY QUALIFICATION:

PROBABLE NEEDS:
- Need 1: [Description]
  Justification: [Why]
  Estimated budget: $[Budget range]
  Timing: [When]
  Probability: [High/Medium/Low]

- Need 2: [...]

TOTAL ESTIMATED BUDGET: $[X-Y]
URGENCY: [Immediate / 3-6 months / >6 months]
COMPETITION: [Who else are they considering?]

QUALIFICATION SCORE (/100):
- Company size fit: [/20]
- Budget available: [/20]
- Need identified: [/25]
- Favorable timing: [/15]
- Decision maker accessible: [/20]

TOTAL: [X]/100
> 70: Hot prospect (contact quickly)
50-70: Warm prospect (nurture)
< 50: Cold prospect (long-term newsletter)

Save: ~/Cowork-Workspace/prospects/[name]/needs-qualification.txt
```

### Step 5: Consolidated prospect file

Consolidate information:

```
Generate complete prospect file for: [Company name]

PROSPECT SHEET (1 page):

┌─────────────────────────────────────────┐
│ PROSPECT: [Company Name]                │
│ Research date: [Date]                   │
└─────────────────────────────────────────┘

📊 COMPANY DATA
• Activity: [Sector]
• Revenue: $[X]M | Employees: [Y] people
• Health: [Score] | Trend: [↗ Growth / → Stable / ↘ Decline]
• Founded: [Year]

👤 IDENTIFIED DECISION MAKER
• Name: [First Last]
• Title: [Position]
• Contact: [Email / Phone if obtained]
• LinkedIn: [Profile URL]

🎯 DETECTED NEEDS
• Primary need: [Description]
• Estimated budget: $[X-Y]
• Timing: [When]
• Buying signals: [Growth/Project/Dissatisfaction]

💡 RECOMMENDED APPROACH
• Hook: [Personalized angle]
• References to cite: [Similar clients]
• Likely objections: [Anticipate]

📈 QUALIFICATION
Score: [X]/100 - Priority: [High/Medium/Low]

NEXT ACTIONS:
□ Personalized introduction email
□ Phone call
□ LinkedIn connection
□ Send targeted documentation

Format: 1-page printable PDF
Save: ~/Cowork-Workspace/prospects/[name]/PROSPECT-SHEET-[name].pdf
```

---

## Example Prompts

### Quick small business research

```
Quick research for: Martin Bakery (6th District)

QUICK SOURCES:
1. Google Maps: "Martin Bakery 6th District"
   - Exact address, phone, hours
   - Photos (storefront, interior)
   - Reviews: [X]/5 ([Y] reviews) - Read last 5

2. Google "Martin Bakery Tax ID"
   - Find EIN
   - Business database: Quick info (revenue, employees)

3. Facebook/Instagram:
   - Presence? Active?
   - Customer type (photos)

OBJECTIVE: Sell commercial oven

QUALIFICATION (5 min):
- Size: [X] employees → Oven size Y fits
- Age: [X years] → Equipment replacement likely?
- Customer reviews: [Positive] → Healthy business = creditworthy

Decision: Prospect to contact YES/NO
If YES: Prepare email with oven photo + pricing for their size

Quick save: ~/Cowork-Workspace/prospects/martin-bakery/quick-research.txt
```

### Deep investigation (large account)

```
Complete file for: [Company 500 employees, $50M revenue]

PHASE 1: Legal and financial (30 min)
- Business registry: Complete record
- Financial databases: Last 5 years financials
- Analyze revenue trend, profitability, debt
- Check payment incidents (credit bureaus if accessible)

PHASE 2: Organization (30 min)
- Org chart (LinkedIn + website)
- Identify ALL decision makers in procurement chain
- Executive history (recent changes?)
- Subsidiaries/secondary locations

PHASE 3: Company strategy (30 min)
- Read press releases (site + Google news)
- Analyze annual reports if published
- Identify strategic projects (expansion, innovation)
- Find public RFPs (if government sector)

PHASE 4: Network and reputation (30 min)
- Who are their clients? (website references)
- Who are their current suppliers? (public records if government)
- Industry press: Articles about company
- Professional forums: Industry reputation

PHASE 5: Commercial approach (30 min)
- Opportunities summary ($50K-500K budget probable)
- Entry strategy (partner? referral? RFP?)
- Prepare custom commercial dossier
- Anticipate 3 decision levels (user, buyer, financial)

Complete file (20-30 pages):
~/Cowork-Workspace/prospects/[name]/COMPLETE-FILE-[name].pdf

Investment: 2.5h research
ROI: If $100K contract → Obviously profitable
```

---

## Troubleshooting

### Contradictory information

**Cause**: Multiple sources, outdated data
**Solution**: Source hierarchy:

```
RELIABILITY HIERARCHY (most to least reliable):

1. OFFICIAL LEGAL (100% reliable):
   - State business registry
   - Official business announcements
   → Source of truth for: Tax ID, official address, officers

2. SEMI-OFFICIAL (95% reliable):
   - Commercial databases (D&B, Bloomberg)
   - Verified LinkedIn company page
   → Reliable for: Revenue, employee count, contacts

3. SELF-DECLARED (70% reliable):
   - Company website (self-reported)
   - Individual LinkedIn profiles
   → May be outdated or embellished

4. EXTERNAL (50% reliable):
   - Customer reviews (subjective)
   - Press articles (sometimes sponsored)
   → Useful for trends, not factual data

EXAMPLE CONFLICT:
- Official registry: 25 employees
- LinkedIn: "50-100 employees"
- Website: "Over 100 team members"

→ Trust registry (25) as official
→ Marketing may exaggerate (website)
```

### Prospect not found

**Cause**: Small business, no web presence
**Solution**: Alternative sources:

```
Prospect "Martin Plumbing" → No website, no LinkedIn

ALTERNATIVE SOURCES:

1. Professional directories:
   - Yellow Pages
   - Chamber of Commerce (business directory)
   - Trade association directories

2. Local social networks:
   - Local Facebook groups
   - Nextdoor (neighborhood network)

3. Field research:
   - Google Street View (see storefront, location size)
   - Drive by (discreet)

4. Network:
   - Ask colleagues who know them
   - Common potential clients

5. Direct contact:
   - Phone call (Yellow Pages)
   - Direct qualification by phone:
     "Hello, I'm looking to see if you have project X
      to propose solution Y. How many employees?
      What budget range?"

For small businesses without web: Direct contact often more effective than research
```

---

## Variations

### Automated competitive intelligence

```
Set up Google Alerts for target prospects:

ALERT 1: "[Company name]"
Frequency: Weekly
→ Detects: Press articles, announcements, news

ALERT 2: "[Company name] + hiring"
→ Detects: Job postings = growth signal

ALERT 3: "[Company name] + RFP"
→ Detects: Public tenders, opportunities

Alert compilation:
Every Monday, check Google Alert emails
If interesting info: Update prospect file + sales follow-up
```

### CRM integration

```
Structure prospect data for CRM import:

CSV compatible format:
| Company | Tax ID | Contact | Email | Phone | Revenue | Employees | Score | Status | Notes |
|---------|--------|---------|-------|-------|---------|-----------|-------|--------|-------|

Import into:
- HubSpot (free up to 1000 contacts)
- Pipedrive
- Zoho CRM

Advantages vs. Excel:
- Automated follow-ups
- Interaction history
- Statistical reporting
```

---

## Best Practices

1. **Qualify BEFORE contact** : 15 min research saves 2h useless outreach
2. **Official sources priority** : Use government registries for legal data
3. **Regular updates** : Re-qualify prospects every 6 months
4. **GDPR/privacy compliance** : Only store public professional data
5. **Systematic personalization** : Use research in commercial approach
6. **Objective scoring** : Scoring grid avoids emotional bias
7. **Traceable documentation** : Archive sources and research dates
8. **Time ROI** : Deepen research proportionally to potential deal size

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
