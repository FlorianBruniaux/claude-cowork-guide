# Workflow: Newsletter Creation

> **Estimated time**: 25 minutes
> **Difficulty**: Intermediate
> **Category**: 💼 Commercial
> **Professions**: Merchants, Business Owners

---

## Use Case

You need to create a regular newsletter to maintain contact with clients/prospects. This workflow helps you:

- Structure effective newsletter content
- Generate texts adapted to your audience
- Plan editorial calendar
- Measure engagement

> ⚠️ **Performance**: Regular newsletters (1x/month minimum) maintain +25% repeat purchase rate vs no communication.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Email distribution list (clients/prospects)
- [ ] News/topics to share
- [ ] Sending tool (Mailchimp, Sendinblue, Brevo, etc.)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Define editorial line

```bash
mkdir -p ~/Cowork-Workspace/newsletters
```

Establish framework:

```
Define newsletter editorial line for: [Company name]

MY BUSINESS: [Ex: Electrician, Fashion retail, Consultant]
MY AUDIENCE: [B2B clients / Consumers / Mixed]
NEWSLETTER OBJECTIVE: [Retention / Sales / Expertise / Mixed]

FREQUENCY:
- Monthly (recommended minimum)
- Bi-weekly (if lots of content)
- Quarterly (if few updates)

TYPICAL STRUCTURE (Rule of thirds):

1/3 EDUCATIONAL CONTENT (Value-add):
- Industry tips
- Practical guides
- Sector trends
- Customer FAQs

Electrician examples:
- "5 signs your electrical system is dangerous"
- "How to reduce your electric bill by 20%"
- "New building codes: What changes for you"

2/3 COMPANY NEWS (Engagement):
- New projects (before/after)
- New services
- Team (hires, anniversaries)
- Events (trade shows, open houses)

Examples:
- "We renovated [client]'s electrical system (photos)"
- "New service: Free energy audit until March 31"
- "Our team is growing: Welcome Lucas, apprentice electrician"

3/3 PROMOTIONS/CTA (Conversion):
- Time-limited offers
- Exclusive newsletter promo code
- Event invitation
- Review/testimonial request

Examples:
- "Subscriber special: -10% on service calls this month (code: NEWS10)"
- "Refer a friend, get $50 discount"

TONE:
- Professional but accessible
- Formal or informal depending on audience
- Human (avoid excessive technical jargon)

NEWSLETTER NAME:
[Create catchy name]
Examples:
- "The Current" (electrician)
- "Fashion Letter" (clothing retail)
- "HR Insights" (HR consultant)

Save: ~/Cowork-Workspace/newsletters/editorial-line.txt
```

### Step 2: Plan content (editorial calendar)

```
Create 2026 newsletter editorial calendar:

JANUARY:
Theme: New year resolutions / Year kickoff
Educational content: "Electrical safety checklist for new year"
News: "Our wishes + 2025 recap"
Promotion: "Free January audit"

FEBRUARY:
Theme: Spring preparation
Content: "Preparing electrified garden (lighting, outdoor outlets)"
News: "New partnership with [brand]"
Promotion: "Free quote for outdoor projects"

MARCH:
Theme: Renovation / Daylight saving time
Content: "Use time change to check installations"
News: "Project of the month: [project]"
Promotion: "Spring offer: Smoke detectors -20%"

[...Continue for 12 months]

EVENTS TO INTEGRATE:
- Business seasonality (ex: heating winter, AC summer)
- Holidays (Christmas, Mother's Day if B2C)
- Trade shows
- Company anniversary
- Slow periods (stimulate activity)

Format: Excel table
Columns: Month | Theme | Educational | News | Promotion | Send Date | Status
Save: ~/Cowork-Workspace/newsletters/editorial-calendar-2026.xlsx
```

### Step 3: Write newsletter

```
Generate [Month] newsletter for: [Company name]

HEADER:
NAME: [Newsletter name]
ISSUE: #[X]
DATE: [Month Year]

PRE-HEADER (email preview text):
"[50-character hook summarizing main content]"
Example: "5 safety tips + Special service call offer this month"

EMAIL SUBJECT (crucial open rate):
Effective formulas:
- "[First name], your 5 electrical tips of the month"
- "Your [topic] guide + -10% this month"
- "New: [service] available now"

Avoid:
- ❌ "January 2026 Newsletter" (boring)
- ❌ ALL CAPS (spam)
- ❌ Too many symbols (🔥💰🎁🎁🎁)

NEWSLETTER BODY:

┌─────────────────────────────────────────┐
│ [LOGO]            THE CURRENT #12       │
│                   January 2026          │
└─────────────────────────────────────────┘

Hello [First name],

[Editorial 2-3 sentences: Warm intro + content preview]

Example:
"Happy 2026! To start the year right, we've prepared
a practical guide on electrical safety. Also discover
our new free audit offer valid all month."

───────────────────────────────────────────

📚 TIP OF THE MONTH
Title: 5 signs your electrical system is dangerous

1. Frequent circuit breaker trips
   → Cause: Overload or short circuit
   → Action: Get professional check

2. Hot or noisy outlets
   → Danger: Fire risk
   → Action: Stop using + urgent inspection

3. Burning smell near panel
   → Cause: Defective connection
   → Action: Cut power + call electrician

4. System >25 years without revision
   → Risk: Non-compliant with current standards
   → Action: Safety audit recommended

5. No GFCI breaker
   → Danger: No electrocution protection
   → Action: Code upgrade mandatory

[CTA Button: "Free audit →"]

───────────────────────────────────────────

🏗️ OUR PROJECTS
Project of the month: Complete electrical renovation Mrs. Johnson

Before: Outdated installation (40 years), dangerous panel
After: Full code compliance, home automation, -25% bill savings

📸 [Before/after photos]
💬 Client review: "Impeccable work, professional team..."

[Link: "See all our projects →"]

───────────────────────────────────────────

🎉 SUBSCRIBER SPECIAL
January only: FREE electrical audit (value $150)

Have our expert check your installation:
✓ Code compliance check
✓ Anomaly detection
✓ Detailed quote if work needed
✓ Energy saving tips

[CTA Button: "Book my free audit →"]
Code to mention: NEWS-JAN26

───────────────────────────────────────────

🔔 BRIEFS
• Our team is growing: Welcome Lucas, apprentice electrician
• New Legrand partnership for premium equipment
• Next trade show: [Name] March 15-17 (visit us booth B12)

───────────────────────────────────────────

📞 NEED EMERGENCY SERVICE?
Available 7 days: (555) 123-4567
Email: contact@company.com

Follow us:
[Facebook] [LinkedIn] [Instagram]

---

You receive this email because you're a client or requested our updates.
[Unsubscribe] | [Update preferences]

[Company Name] - [Address] - Tax ID [xxx]

Format: Responsive HTML (mobile-friendly)
Length: 400-600 words max (readable in 2-3 min)
Save: ~/Cowork-Workspace/newsletters/newsletter-january-2026.html
```

### Step 4: Send and track

```
Send newsletter via [Mailchimp/Sendinblue/Brevo]:

PRE-SEND (checklist):
□ Test send to your email (verify rendering)
□ Check links (all clickable)
□ Test mobile version (70% opens on mobile)
□ Proofread (errors = credibility loss)
□ Segment if needed (B2B vs B2C, geographic zones)

SEND:
Best time (optimized open rate):
- Day: Tuesday-Thursday (avoid Monday/Friday)
- Time: 10-11am OR 2-3pm
- Avoid: Weekends, holidays, school vacations

TRACK INDICATORS (48h after send):

OPEN RATE:
Formula: (Emails opened / Emails delivered) × 100
Goal: >20% (B2B) / >15% (B2C)
If <10%: Review email subject (not catchy enough)

CLICK RATE (CTR):
Formula: (Clicks / Emails opened) × 100
Goal: >3%
If <2%: Content not engaging or weak CTA

UNSUBSCRIBE RATE:
Formula: (Unsubs / Emails sent) × 100
Acceptable: <0.5%
If >2%: Frequency too high OR content not relevant

CONVERSIONS:
Actions completed: Audits booked, quotes requested, purchases
ROI: Revenue generated / Newsletter cost

Tracking table:
| Newsletter | Date | Sent | Opened | Rate | Clicks | CTR | Unsubs | Conversions | Revenue |
|------------|------|------|--------|------|--------|-----|--------|-------------|---------|
| #12 Jan | 01/15 | 450 | 108 | 24% | 12 | 11% | 2 | 3 audits | $1800 |

Save: ~/Cowork-Workspace/newsletters/stats-newsletters-2026.xlsx
```

### Step 5: Continuous optimization

```
Improvement based on data:

MONTHLY ANALYSIS:

A/B TESTS (on part of list):
Test email subject:
- Version A: "5 electrical safety tips"
- Version B: "[First name], your safety checklist of the month"
→ Keep version with better open rate

Test CTA:
- Version A: "Learn more"
- Version B: "Book my free audit"
→ Keep version with more clicks

Test length:
- Version A: Short newsletter (300 words)
- Version B: Long newsletter (600 words)
→ Analyze engagement

EVOLUTIONS:
- If open rate ↘: Vary subjects, send times
- If CTR ↘: Improve CTA, more engaging images
- If unsubs ↑: Reduce frequency or review content relevance

COLLECT FEEDBACK:
Add mini-survey to newsletter (1 click):
"Was this newsletter useful?"
[😊 Yes] [😐 So-so] [😞 No]

Analyze topics that work best (most clicks):
→ Create more similar content

Save insights: ~/Cowork-Workspace/newsletters/optimizations-2026.txt
```

---

## Example Prompts

### Special event newsletter

```
Exceptional newsletter: Open house

URGENCY: Send in 7 days

Subject: "[First name], come meet us Saturday January 25!"

Content:
- Open house invitation (date, time, address)
- Program: Demos, free advice, raffle
- Exclusive day-only offer: -20% on quotes signed
- RSVP button (count participants)
- Access map + parking

Send: D-7 + Reminder D-1

Save: ~/Cowork-Workspace/newsletters/newsletter-open-house-2026.html
```

### Reactivation newsletter (inactive clients)

```
Reactivation campaign clients >1 year no purchase:

Segment: Clients last order 2024

Subject: "We haven't seen you in a while, [First name]..."

Tone: Warm, not pushy

Content:
- "We miss you!" (authentic)
- "Here are our new offerings since your last visit"
- Special return offer: -15% code RETURN15
- "Questions? Reply to this email"

Avoid:
- Guilt-tripping ("Why don't you order anymore?")
- Excessive pressure

Objective: Re-engagement + positive sentiment

Save: ~/Cowork-Workspace/newsletters/reactivation-inactive-clients.html
```

---

## Troubleshooting

### Low open rate

**Cause**: Unattractive email subject
**Solution**: Proven formulas:

```
HIGH OPEN RATE SUBJECTS:

✓ Personalization: "[First name], your [benefit]"
✓ Curiosity: "The trend everyone is ignoring"
✓ Urgency (authentic): "Last days for [offer]"
✓ Question: "Did you know [surprising fact]?"
✓ Direct benefit: "Save $200 with this tip"

✗ Avoid:
- Spam words: "Free!!!", "URGENT", "Easy money"
- Too long (>50 characters)
- Generic: "January newsletter"
- All caps

Test: Send 10% of list with subject A, 10% with subject B
Measure open rate after 6h
Send rest of list with better subject
```

### Spam flagging

**Cause**: Bad sending practices
**Solution**: Strict compliance:

```
ANTI-SPAM RULES:

LEGAL (GDPR/CAN-SPAM):
✓ Opt-in consent (voluntarily checked box)
✓ Visible unsubscribe link (footer)
✓ Clear sender identity (no no-reply)
✓ Company postal address in footer

TECHNICAL:
✓ SPF/DKIM/DMARC authentication (DNS)
✓ Balanced text/image ratio (not just images)
✓ Avoid too many links (max 3-5)
✓ No attachments (link to download)
✓ Test with Mail-Tester.com (score >8/10)

LIST HYGIENE:
✓ Clean bounce emails
✓ Remove inactive >2 years
✓ Double opt-in (email confirmation)
```

---

## Variations

### Automated newsletter (drip campaign)

```
Automatic sequence for new subscribers:

EMAIL 1 (Immediate): Welcome
- Thank you for subscribing
- Company introduction
- Welcome promo code -10%

EMAIL 2 (D+3): Education
- Beginner guide [your domain]
- Free resources

EMAIL 3 (D+7): Testimonials
- Customer reviews
- Case studies
- Social proof

EMAIL 4 (D+14): Offer
- Limited promotion
- First purchase incentive

Configuration: Email automation tool (Mailchimp Automation, Brevo Workflows)
Save workflow: ~/Cowork-Workspace/newsletters/drip-campaign-welcome.txt
```

### Multilingual newsletter

```
International clientele:

LANGUAGES: English (primary) + Spanish

STRATEGY:
1. Complete English version
2. Translated Spanish version (culturally adapt)
3. Segment list by preferred language
4. Separate send same content, different languages

Translation tools:
- DeepL (superior quality)
- Google Translate (basic)
- Professional translator (critical marketing content)

Save: ~/Cowork-Workspace/newsletters/[month]-EN.html + [month]-ES.html
```

---

## Best Practices

1. **Regularity** — Same frequency each month (predictability)
2. **Value first** — 70% value-add / 30% promotion
3. **Mobile-first** — Test mobile rendering (70% reads)
4. **Easy unsubscribe** — Visible link (GDPR + positive image)
5. **Personalization** — Use first name, segment if possible
6. **Clear CTA** — 1 primary objective per newsletter
7. **Clean list** — Remove bounces and inactive (improves deliverability)
8. **Measure ROI** — Track conversions (not just vanity metrics)

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
