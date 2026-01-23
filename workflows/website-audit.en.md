# Workflow: Website Audit

> **Estimated time**: 20 minutes
> **Difficulty**: Beginner
> **Category**: 📣 Communication
> **Professions**: All (tradespeople, retailers, freelancers)

🌐 **Disponible aussi en [Français](website-audit.md)**

---

## Use Case

Your website is often a prospect's first impression. This workflow helps you:

- Identify critical issues on your business website
- Verify essential information is visible
- Improve conversion (visitor → contact)
- Benchmark against local competition

> ⚠️ **Cowork limitation**: Cowork can browse your site via the built-in browser, but cannot truly test mobile. Mobile audit is based on visual analysis.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Your website URL
- [ ] 2-3 competitor URLs (optional)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Prepare the audit

```bash
mkdir -p ~/Cowork-Workspace/output/website-audit
```

### Step 2: Complete site audit

```
Open my website: [your URL]

Perform a complete audit based on these criteria:

══════════════════════════════════════
1. CONTACT INFORMATION (Critical)
══════════════════════════════════════
□ Phone number visible in 1 click (header or sticky)
□ Physical address (if applicable)
□ Contact email
□ Working contact form
□ Business hours

Score: /5

══════════════════════════════════════
2. MESSAGE CLARITY (Critical)
══════════════════════════════════════
□ Within 5 seconds, I understand what you do
□ Clear main headline (no jargon)
□ Service area mentioned (city, region)
□ Main services listed
□ Customer promise visible

Score: /5

══════════════════════════════════════
3. TRUST SIGNALS
══════════════════════════════════════
□ Customer reviews visible (Google, testimonials)
□ Real project photos
□ Complete legal notices
□ Certifications/licenses displayed
□ Years of experience mentioned

Score: /5

══════════════════════════════════════
4. CALLS TO ACTION (CTAs)
══════════════════════════════════════
□ "Get a Quote" button visible
□ CTA above the fold
□ CTA repeated at page bottom
□ Phone number clickable (click-to-call)
□ No more than 2 main actions

Score: /5

══════════════════════════════════════
5. TECHNICAL ASPECTS
══════════════════════════════════════
□ Site is secure (HTTPS)
□ Fast loading (<3 seconds)
□ No broken links
□ Readable text (contrast, size)
□ Simple navigation (max 5 menu items)

Score: /5

══════════════════════════════════════
SUMMARY
══════════════════════════════════════

Total score: /25

TOP 3 URGENT ISSUES:
1. [Critical issue #1]
2. [Critical issue #2]
3. [Critical issue #3]

STRENGTHS:
- [What works well]

Save: ~/Cowork-Workspace/output/website-audit/audit-[date].txt
```

### Step 3: Generate recommendations

```
Based on the previous audit, generate a prioritized action plan:

FORMAT:

══════════════════════════════════════
URGENT FIXES (this week)
══════════════════════════════════════

Action 1: [Title]
- Problem: [Description]
- Solution: [Specific instructions]
- Impact: [Why it matters]
- Difficulty: Easy / Medium / Needs webmaster

Action 2: ...

══════════════════════════════════════
IMPORTANT IMPROVEMENTS (this month)
══════════════════════════════════════

[Medium priority actions]

══════════════════════════════════════
FUTURE OPTIMIZATIONS (to plan)
══════════════════════════════════════

[Non-urgent but useful actions]

Save: ~/Cowork-Workspace/output/website-audit/action-plan-[date].txt
```

### Step 4: Compare with competition (optional)

```
Compare my site [your URL] with these local competitors:
- [Competitor URL 1]
- [Competitor URL 2]
- [Competitor URL 3]

Comparison criteria:

| Criteria | My site | Competitor 1 | Competitor 2 | Competitor 3 |
|----------|---------|--------------|--------------|--------------|
| Message clarity | | | | |
| Contact visible | | | | |
| Customer reviews | | | | |
| Real photos | | | | |
| Effective CTA | | | | |
| Speed | | | | |

ANALYSIS:
- What competitors do better: [...]
- What I do better: [...]
- Differentiation opportunities: [...]

Save: ~/Cowork-Workspace/output/website-audit/competitor-benchmark-[date].txt
```

---

## Example Prompts

### Express audit (5 minutes)

```
Open [URL] and answer in 30 seconds:

1. Is phone number visible without scrolling? YES/NO
2. Do I understand the business in 5 seconds? YES/NO
3. Is there a visible "Quote" button? YES/NO
4. Are there customer reviews? YES/NO
5. Is the site secure (HTTPS)? YES/NO

Quick score: /5
Verdict: ✅ OK | ⚠️ Needs work | 🚨 Urgent
```

### Homepage audit

```
Open [URL] and analyze only the homepage:

ABOVE THE FOLD (visible without scrolling):
- Main headline: [transcribe the text]
- Subheadline: [transcribe]
- Main CTA: [button text]
- Phone visible: YES/NO
- Photo: [description]

CRITIQUE:
- Is the headline clear? [analysis]
- Is the CTA compelling? [analysis]
- What's missing? [suggestions]

SUGGESTED REWRITE:
- New headline: [proposal]
- New subheadline: [proposal]
- New CTA: [proposal]
```

### Basic local SEO audit

```
Open [URL] and check local SEO:

IN THE CODE (if accessible):
- Title: [transcribe title tag]
- Meta description: [transcribe]
- City/region mentioned: YES/NO

ON THE PAGE:
- Full physical address: YES/NO
- Embedded Google Map: YES/NO
- Service areas mentioned: YES/NO
- Link to Google My Business: YES/NO

LOCAL SEO VERDICT:
- Score: /10
- Priority action: [...]
```

---

## Troubleshooting

### Cowork cannot access the site

**Cause**: Blocked site, SSL issue, or site offline
**Solution**: Verify site is accessible in a normal browser:

```
The site [URL] seems inaccessible.

Check:
1. Is the URL correct? (no spaces, https://)
2. Does the site respond? (test in browser)
3. Is there a redirect? (www vs non-www)

If the site works in your browser but not in Cowork,
it's probably a temporary block. Try again in a few minutes.
```

### Audit too superficial

**Cause**: Prompt too vague
**Solution**: Request specific points:

```
Analyze the "Contact" section of [URL] in more detail:

- Is the form functional? (fields, submit button)
- Are required fields clear?
- Is there a confirmation message after submission?
- Is response time mentioned?
- Is the phone number in clickable format (tel:)?
```

### How to compare with competitors without knowing their URLs

```
Find my 3 main local competitors:

My business: [your trade]
My city: [city]

Google search: "[trade] [city]"

List the first 3 results (excluding ads):
1. [Name] - [URL]
2. [Name] - [URL]
3. [Name] - [URL]

Then run the comparative benchmark.
```

---

## Variations

### Complete online reputation audit

```
Online reputation audit for [Business name]:

SEARCHES TO PERFORM:
1. "[Business name]" on Google (first results)
2. "[Business name] reviews" on Google
3. Google My Business listing (if exists)
4. Facebook page (if exists)
5. Directory mentions (Yelp, etc.)

FOR EACH SOURCE:
- Average rating: /5
- Number of reviews: X
- Latest review: [date]
- Unanswered negative reviews: YES/NO
- Information up to date: YES/NO

SUMMARY:
- Overall reputation score: /10
- Urgent actions: [...]
- Opportunities: [...]

Save: ~/Cowork-Workspace/output/website-audit/reputation-[date].txt
```

### Pre-redesign audit

```
Before rebuilding my site, audit the existing [URL]:

WHAT WORKS (keep):
- [positive elements]

WHAT DOESN'T WORK (change):
- [identified problems]

CONTENT TO SALVAGE:
- Text: [list of pages with good content]
- Photos: [photos to reuse]
- Testimonials: [customer quotes]

SUGGESTED REQUIREMENTS:
- Essential pages: [list]
- Required features: [list]
- Elements to add: [list]

Save: ~/Cowork-Workspace/output/website-audit/redesign-requirements.txt
```

### Multi-site audit (franchise, network)

```
Audit consistency across [X] network sites:

URLs:
- [Site 1 URL]
- [Site 2 URL]
- [Site 3 URL]

CONSISTENCY CRITERIA:
□ Logo identical
□ Brand guidelines followed
□ Key messages aligned
□ Legal information complete
□ Local contact visible

COMPARISON TABLE:
[Generate table with scores per site]

ANOMALIES DETECTED:
- [Site X]: [problem]

Save: ~/Cowork-Workspace/output/website-audit/network-audit-[date].xlsx
```

---

## Best Practices

1. **Audit regularly** — At least once per quarter
2. **Test on mobile** — 60%+ of visits are mobile (ask someone to test)
3. **Verify your info** — Phone, hours, address must be current
4. **Respond to reviews** — Google favors businesses that respond
5. **Benchmark yourself** — Your competitors improve, so should you
6. **Prioritize** — Fix what blocks contact first (phone, form)
7. **Measure** — Before/after each improvement, note results
8. **Get feedback** — Your customers are the best testers

---

## Limitations

| What Cowork can do | What Cowork cannot do |
|--------------------|-----------------------|
| Browse the site | Actually test on mobile |
| Read visible content | Access complete source code |
| Analyze structure | Measure real performance (exact load time) |
| Compare visually | Test forms (actual submission) |
| Identify obvious issues | Deep technical SEO audit |

**For a complete technical audit**, use specialized tools:
- PageSpeed Insights (Google) — performance
- GTmetrix — speed
- Google Search Console — SEO
- Mobile-Friendly Test (Google) — mobile compatibility

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
