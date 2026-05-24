# Workflow: Customer Review Response

> **Estimated time**: 5 minutes per review
> **Difficulty**: Beginner
> **Category**: 📣 Communication
> **Professions**: Merchants, Freelancers, Small business owners

🌐 **Disponible aussi en [Français](review-response.md)**

---

## Use Case

You receive Google reviews, Facebook reviews, or direct customer feedback and need to respond professionally. This workflow helps you:

- Thank positive reviews with personalization
- Handle negative reviews without escalation
- Transform constructive criticism into opportunities
- Maintain professional public image

> ⚠️ **Reputation**: 89% of consumers read review responses before purchasing. Responding increases trust by +35%.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Customer review to address (Google/Facebook/email)
- [ ] Response policy defined (tone, timing)

---

## Step-by-Step Instructions

### Step 1: Review analysis

```
Analyze this customer review and provide response recommendation:

REVIEW:
[Copy-paste the complete review]

COMPANY CONTEXT:
Name: [Your business]
Activity: [Sector]
Values: [Ex: proximity, quality, responsiveness]

ADDITIONAL INFORMATION (if necessary):
- Situation mentioned: [What actually happened]
- Corrective actions taken: [If applicable]
- Special context: [Mitigating circumstances]

ANALYSIS REQUESTED:

1. REVIEW TYPE:
   - Positive (4-5⭐): Complete satisfaction
   - Neutral (3⭐): Mixed satisfaction, improvement areas
   - Negative (1-2⭐): Dissatisfaction, problem to resolve

2. SENTIMENT:
   - Emotions expressed (joy, disappointment, anger, frustration)
   - Appreciated points (if positive/neutral)
   - Criticized points (if neutral/negative)

3. IDENTIFIED PROBLEM (if applicable):
   - Product/service issue
   - Relational/reception issue
   - Misunderstanding/unmet expectation
   - Factual problem vs subjective perception

4. RISK LEVEL:
   - Low: Isolated criticism, moderate tone
   - Medium: Recurring problem, firm tone
   - High: Serious accusation, aggressive tone, legal threat

5. OPPORTUNITY:
   - Customer recovery possible?
   - Process improvement to implement?
   - Strength to highlight publicly?

Response format: Structured summary
```

### Step 2: Generate adapted response

```
Generate professional response for this review:

ANALYZED REVIEW:
[Results from step 1 analysis]

RESPONSE STRATEGY:

If POSITIVE (4-5⭐):
- Objective: Strengthen relationship, retention
- Tone: Warm, grateful
- Include: Personalized thanks + mention specific detail + invitation to return

If NEUTRAL (3⭐):
- Objective: Understand dissatisfaction, improvement
- Tone: Professional, proactive
- Include: Feedback thanks + acknowledge improvement point + announced corrective action

If NEGATIVE (1-2⭐):
- Objective: Defuse, recover customer
- Tone: Empathetic, responsible (without over-apologizing)
- Include: Acknowledge problem + targeted apology + concrete solution + private contact invitation

CONSTRAINTS:

Length:
- Positive: 30-50 words (short, sincere)
- Neutral: 50-80 words (explanatory)
- Negative: 80-120 words (detailed, solution-focused)

ABSOLUTELY AVOID:
❌ Generic responses like "Thanks for your feedback"
❌ Over-justifications or defensive ("But it's not our fault...")
❌ Blaming customer ("You didn't understand...")
❌ Impossible promises ("Never again!")
❌ Revealing confidential customer info
❌ Public debate (if disagreement → private contact)

RECOMMENDED STRUCTURE:

For POSITIVE:
[Customer first name], thank you for [specific appreciated detail]!
[Business value illustrated by review]
Looking forward to [future situation], [Signature]

For NEUTRAL:
Thank you [First name] for this constructive feedback.
We've noted [improvement point] and [action implemented].
Feel free to [contact invitation] for [benefit]. [Signature]

For NEGATIVE:
[First name], we're sincerely sorry for [specific problem].
Your experience doesn't reflect [violated value].
We've [corrective action] + [compensation if appropriate].
Contact us at [contact info] for [personalized resolution]. [Signature]

SIGNATURE:
[First name] - [Position] at [Business]
(Humanizes response, shows management involvement)

Generate 2 versions:
Version A (formal)
Version B (warmer)
```

### Step 3: Adaptation and publication

Personalize before publishing:

```
Before publishing generated response:

VERIFICATION CHECKLIST:

□ Customer first name used (if available)
□ Specific review detail mentioned (not generic)
□ Tone consistent with brand image
□ No spelling/grammar errors
□ Appropriate length (not overwhelming)
□ No unrealistic over-promises
□ Private contact offered if necessary (negative review)
□ Response within 24-48h (professional timeframe)

FINAL ADAPTATIONS:

If review mentions specific employee:
"We'll pass your compliments to [Employee name]"
(Publicly values team)

If regular customer:
"Thank you for your loyalty since [duration/context]"
(Acknowledge long-term relationship)

If problem resolved in meantime:
"Thank you for your patience, glad [solution] now works for you"
(Shows responsiveness publicly)

If malicious/fake review:
Stay factual, courteous, offer private contact to "clarify situation"
(Never public conflict even if customer wrong)

PUBLICATION:
Copy final version → Review platform → Publish

POST-RESPONSE FOLLOW-UP:

For negative review:
□ Add CRM reminder: Follow up with customer in 7 days
□ If private contact promised: Send email/call D+1
□ Document problem for monthly analysis

For all reviews:
□ Archive exchange for knowledge base
□ Identify trends (if 3+ reviews on same topic → corrective action)
```

---

## Example Prompts

### Positive review (5⭐) - Local shop

**Input:**
```
Analyze this review:

REVIEW:
"Great bakery! The sourdough bread is amazing and the welcome is always warm. Thanks Julie for your smile every morning!"

CONTEXT:
Name: Martin Bakery
Activity: Artisan bakery
Values: Tradition, proximity, quality

Generate warm, short response (40 words max)
```

**Claude Output:**
```
ANALYSIS:
Type: Positive (5⭐)
Sentiment: Strong satisfaction, appreciated proximity relationship
Appreciated points: Sourdough bread (product quality) + personalized welcome (Julie)
Opportunity: Retention + employee recognition

PROPOSED RESPONSE:

Version A (formal):
"Thank you so much for this feedback! We're delighted that our sourdough bread and Julie's welcome brighten your mornings. Looking forward to seeing you soon.
- Pierre Martin, Martin Bakery"

Version B (warm):
"What a pleasure to read this! 😊 Julie will be touched by your message. Our sourdough (and our smiles) await you tomorrow morning!
- Pierre, Martin Bakery"

Recommendation: Version B (better matches neighborhood bakery proximity tone)
```

### Negative review (1⭐) - Contractor

**Input:**
```
Analyze this review:

REVIEW:
"Project finished 3 weeks late, no apology. Work quality acceptable but zero communication. Very disappointed, expected better from a local contractor."

CONTEXT:
Name: Dubois Plumbing
Activity: Plumbing-Heating
Values: Responsiveness, professionalism

ADDITIONAL INFORMATION:
Situation: Project delayed by supplier failure (boiler), customer informed by SMS but few details
Actions taken: New project tracking process with weekly customer checkpoints

Generate empathetic response with solution (100 words max)
```

**Claude Output:**
```
ANALYSIS:
Type: Negative (1⭐)
Sentiment: Strong disappointment, communication frustration
Problem: Project delay (3 weeks) + lack of transparent communication
Risk level: Medium (firm tone but not aggressive, no threats)
Opportunity: Recovery possible if personalized contact + process improvement

PROPOSED RESPONSE:

Version A (formal):
"Sir, we understand your disappointment following the 3-week delay on your project. You're right: our communication wasn't up to your expectations despite supplier constraints we encountered.

Since then, we've implemented systematic weekly tracking with status updates for all our projects.

I'll contact you today at 06.XX.XX.XX.XX to discuss directly and see how to restore your confidence.

Regards,
Jean Dubois - Owner, Dubois Plumbing"

Version B (more empathetic):
"Your disappointment is completely legitimate and I apologize for the delay and especially the lack of transparent communication during the project.

Supplier issues don't justify leaving you without clear updates. We've immediately improved our process: now systematic weekly checkpoints with each customer.

I'll call you tomorrow to discuss in person and see how to regain your trust.

Jean Dubois - Dubois Plumbing
06.XX.XX.XX.XX"

Recommendation: Version B (more human, immediate concrete action, responsibility assumed without over-apologizing)

URGENT ACTION:
□ Call customer within 24h (don't wait for public response)
□ Offer goodwill gesture if appropriate (ex: free 1-year boiler maintenance)
□ Document for team meeting on communication process
```

### Neutral review (3⭐) - Service

**Input:**
```
Analyze this review:

REVIEW:
"Fast and efficient service. Too bad the quote isn't more detailed, you don't know exactly what you're paying for. Otherwise no complaints."

CONTEXT:
Name: Pro Electrical
Activity: General electrical
Values: Transparency, expertise

Generate proactive response with announced improvement (70 words max)
```

**Claude Output:**
```
ANALYSIS:
Type: Neutral (3⭐)
Sentiment: Partial satisfaction, unmet transparency expectation
Appreciated points: Speed + service efficiency
Critical point: Quote lacks details/transparency
Opportunity: Quote format improvement = competitive differentiation

PROPOSED RESPONSE:

Version A (formal):
"Thank you for this constructive feedback! We're delighted our service was fast and efficient.

Your remark about quotes is valuable: we've just implemented a new format detailing each item (materials, labor, time) for more transparency.

Feel free to contact us for any future project.

Marc Legrand - Pro Electrical"

Version B (more dynamic):
"Thanks for these 3⭐ and especially this valuable feedback! 👍

Speed and efficiency = our DNA, but you're right about quotes. We just created a new ultra-detailed model (line by line) so each customer knows exactly what they're paying.

Thanks for contributing to our improvement!

Marc - Pro Electrical"

Recommendation: Version A (more professional for contractor sector, no emoji)

INTERNAL ACTION:
□ Verify new quote template actually deployed
□ Train sales team on detailed quote presentation
□ Create "before/after" example to show improvement
```

---

## Troubleshooting

### Obviously fake/malicious review

**Cause**: Competitor, ex-employee, mistaken identity
**Solution**: Report + factual response

```
STANDARD RESPONSE:

"We have no record of this service in our files. If you are indeed our customer, please contact us at [phone/email] with your case reference so we can process your request.

Otherwise, there seems to be confusion with another provider.

[Signature]"

THEN:
□ Report fake review on platform (Google/Facebook)
□ Provide evidence if requested (no customer by this name, impossible dates)
□ NEVER publicly accuse even if certain of malice
```

### Review containing insults/defamatory statements

**Cause**: Very angry customer, emotional outburst
**Solution**: Immediate private contact + report if defamatory

```
PUBLIC RESPONSE (short):

"We regret your experience led to such frustration.

Your message contains elements we'd like to address privately and constructively.

I'll contact you directly today to discuss calmly.

[Signature with direct contact info]"

THEN:
□ Phone call (not email) to defuse emotion
□ Active listening without counter-attack
□ Friendly solution if real problem
□ If proven defamation + refusal to remove: Consult lawyer (last resort)
```

### Too many simultaneous negative reviews

**Cause**: Systemic quality/service problem
**Solution**: Crisis communication + corrective actions

```
STANDARD RESPONSE (to all reviews):

"We take very seriously the negative feedback received this week regarding [identified problem].

Immediate actions:
- [Corrective action 1]
- [Corrective action 2]
- Enhanced quality control

We're individually contacting each affected customer to propose adapted solution.

Thank you for helping us improve.

[Management signature]"

THEN:
□ Analyze root cause (defective new supplier? Problem employee?)
□ Documented corrective action plan
□ Proactive communication to future customers (transparency restores trust)
□ Monitor improvement via next reviews
```

### Customer demands public compensation

**Cause**: Aggressive negotiation strategy
**Solution**: Move negotiation private

```
STANDARD RESPONSE:

"[First name], we understand your dissatisfaction and want to find a fair solution.

To discuss options calmly, I suggest direct exchange at [phone] or by email [email].

We commit to responding within 24h with concrete proposal.

[Signature]"

THEN:
□ Private contact for negotiation
□ Evaluate legitimate compensation (partial refund, goodwill gesture, redo service)
□ Request review update if agreement reached (without contractual requirement = prohibited)
□ Document to prevent recurrence
```

---

## Variations

### Automated positive review responses (time saving)

For businesses with high positive review volume:

```
Create 5 customizable templates:

TEMPLATE 1 (Product appreciation):
"[First name], delighted [specific product] pleases you! [Business value]. See you soon, [Signature]"

TEMPLATE 2 (Service appreciation):
"Thank you [First name] for this feedback! [Mentioned employee] will be touched. [Return invitation], [Signature]"

TEMPLATE 3 (Loyal customer):
"[First name], thank you for your loyalty! [Duration/frequency]. It's a pleasure serving you, [Signature]"

TEMPLATE 4 (Recommendation):
"Thank you so much [First name] for this recommendation! [Community benefit]. Looking forward, [Signature]"

TEMPLATE 5 (Warm generic):
"[First name], your feedback warms our hearts ❤️! [Business value]. See you soon, [Signature]"

WORKFLOW:
1. Read positive review
2. Choose appropriate template
3. Personalize [fields] with review details
4. Publish within 24h

Time saving: 80% vs writing from scratch
```

### Multilingual responses (tourist areas)

For businesses in international tourist zones:

```
Generate responses in review's original language:

Prompt:
"Respond to this review in original language ([auto-detected]):

REVIEW: [text]
CONTEXT: [business]
TONE: [warm/professional]
CONSTRAINTS: [length, points to include]"

Claude auto-detects language and responds appropriately.

COMMON LANGUAGES:
- French (default)
- English (international tourism)
- German (Eastern border clientele)
- Spanish (Southwest)
- Italian (Southeast)

Note: Verify translation if rare language (cultural error risk)
```

### Responses with action invitation (marketing)

Transform positive review into commercial opportunity:

```
OBJECTIVES BY CLIENT TYPE:

First-time customer (positive review):
"[Thanks] + Did you know [other complementary service/product]? + [Discovery invitation]"

Regular customer (positive review):
"[Loyalty thanks] + Exclusively for our regulars: [offer/loyalty program] + [Sign-up CTA]"

Recommending customer (positive review):
"[Recommendation thanks] + To thank you: [referral promo code] + [Referrer benefit]"

EXAMPLE:
Review: "Excellent haircut at this salon, I recommend!"

Response:
"Thank you Sophie for this recommendation! 😊 If you talk about us, feel free to share our code REFERRAL2024: -$15 for you and your referral on next visit. Looking forward! - Julie, Trendy Hair"

Balance: Recognition + Subtle commercial value (not spam)
```

---

## Best Practices

1. **Response speed** : Within 24-48h maximum (preferably <12h for negatives)
2. **Personalization** : Always mention specific review detail (name, cited element)
3. **Brand-consistent tone** : Adapt formality to business image (bakery ≠ law firm)
4. **Problem transparency** : Own mistakes without defensive over-justifications
5. **Public action** : Announce concrete improvement to show feedback consideration
6. **Private contact if conflict** : Move negotiations/disputes out of public space
7. **Team recognition** : Cite positively mentioned employees (internal motivation)
8. **Post-response follow-up** : Follow up with dissatisfied customers privately to verify resolution

**Golden rule**: Each review response = permanent public showcase. Write as if prospects are reading (they are).

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
