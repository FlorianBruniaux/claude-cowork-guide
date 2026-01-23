# Workflow: Email Template Library

> **Estimated time**: 15 minutes setup + 2 min per email after
> **Difficulty**: Beginner
> **Category**: 📣 Communication
> **Professions**: All businesses

🌐 **Disponible aussi en [Français](email-templates.md)**

---

## Use Case

You send similar emails repeatedly (quotes, confirmations, follow-ups). This workflow helps you:

- Create reusable email templates
- Maintain professional consistency
- Save time with variable substitution
- Organize templates by type

> ⚠️ **Efficiency**: Templates reduce email writing time by 70% and eliminate inconsistencies.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Common email types identified
- [ ] Brand voice guidelines (optional)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Identify email types

```bash
mkdir -p ~/Cowork-Workspace/email-templates
```

List recurring emails:

```
Email template needs for: [Business name]

COMMON EMAIL CATEGORIES:

SALES/COMMERCIAL:
- Initial contact (introduction)
- Quote/estimate follow-up
- Thank you (after meeting/purchase)
- Referral request
- Newsletter/update

OPERATIONS:
- Appointment confirmation
- Appointment reminder (day before)
- Delay/reschedule notification
- Project completion notice
- Request for review/testimonial

FINANCE:
- Invoice sent
- Payment reminder (friendly)
- Payment reminder (firm)
- Payment received (thank you)
- Receipt confirmation

CUSTOMER SERVICE:
- Answer to common question
- Complaint response
- Issue resolution confirmation
- Request for more information
- Follow-up check-in

PRIORITIZE:
Rank by frequency (create most-used templates first):
1. Appointment confirmation (send 5-10× per week)
2. Quote follow-up (3-5× per week)
3. Payment reminder (2-3× per week)
4. [Continue...]

Save list: ~/Cowork-Workspace/email-templates/template-priorities.txt
```

### Step 2: Create template library

Build reusable templates:

```
Email template library:

TEMPLATE STRUCTURE:

Each template includes:
- Template name
- Subject line (with variables)
- Email body (with variables)
- Variables to customize ([VARIABLE_NAME])
- Tone/style notes

══════════════════════════════════════
TEMPLATE 1: APPOINTMENT CONFIRMATION
══════════════════════════════════════

Subject: Confirmed: [SERVICE] appointment on [DATE] at [TIME]

Body:

Hi [CLIENT_NAME],

This confirms your appointment for [SERVICE] on [DATE] at [TIME].

Location: [ADDRESS]
Estimated duration: [DURATION]

What to expect:
- [PREPARATION_STEP_1]
- [PREPARATION_STEP_2]
- [PREPARATION_STEP_3]

If you need to reschedule, please call us at least 24 hours in advance: [PHONE]

Looking forward to serving you!

Best regards,
[YOUR_NAME]
[BUSINESS_NAME]
[PHONE] | [EMAIL]
[WEBSITE]

---

Variables:
[CLIENT_NAME] - Customer first name
[SERVICE] - Type of service (electrical repair, plumbing, consultation)
[DATE] - Full date (Monday, January 22, 2026)
[TIME] - Time slot (2:00 PM)
[ADDRESS] - Service location
[DURATION] - Estimated time (1-2 hours)
[PREPARATION_STEP_1] - What client should do before (ex: clear access to panel)
[YOUR_NAME] - Your name
[BUSINESS_NAME] - Company name
[PHONE] - Contact phone
[EMAIL] - Contact email
[WEBSITE] - Website URL

Tone: Professional, helpful, clear

══════════════════════════════════════
TEMPLATE 2: QUOTE FOLLOW-UP (Friendly)
══════════════════════════════════════

Subject: Following up on your [SERVICE] quote

Body:

Hi [CLIENT_NAME],

I wanted to follow up on the quote I sent on [QUOTE_DATE] for [SERVICE].

Have you had a chance to review it? I'm happy to answer any questions or adjust the scope if needed.

Quick recap:
- Service: [SERVICE]
- Price: $[AMOUNT]
- Timeline: [TIMELINE]
- Quote valid until: [EXPIRATION_DATE]

Would you like to schedule a time to discuss? I have availability [AVAILABILITY].

No pressure - just wanted to make sure you have everything you need to make a decision!

Best,
[YOUR_NAME]
[PHONE] | [EMAIL]

---

Variables:
[CLIENT_NAME]
[QUOTE_DATE] - When quote was sent
[SERVICE]
[AMOUNT] - Total price
[TIMELINE] - How long work will take
[EXPIRATION_DATE] - Quote validity
[AVAILABILITY] - Your open slots (this week, next Tuesday/Wednesday)

Tone: Friendly, non-pushy, helpful

══════════════════════════════════════
TEMPLATE 3: PAYMENT REMINDER (Gentle)
══════════════════════════════════════

Subject: Friendly reminder: Invoice #[INVOICE_NUMBER] due [DATE]

Body:

Hi [CLIENT_NAME],

This is a friendly reminder that invoice #[INVOICE_NUMBER] for [SERVICE] is due on [DUE_DATE].

Invoice details:
- Amount: $[AMOUNT]
- Service date: [SERVICE_DATE]
- Payment methods: [PAYMENT_METHODS]

You can view and pay the invoice here: [PAYMENT_LINK]

If you've already sent payment, please disregard this message!

Questions? Feel free to reach out.

Thank you,
[YOUR_NAME]
[BUSINESS_NAME]

---

Variables:
[INVOICE_NUMBER]
[DUE_DATE]
[SERVICE]
[AMOUNT]
[SERVICE_DATE]
[PAYMENT_METHODS] - Check, ACH, credit card, etc.
[PAYMENT_LINK] - Online payment portal

Tone: Polite, assuming good intent, non-confrontational

══════════════════════════════════════
TEMPLATE 4: THANK YOU (After Service)
══════════════════════════════════════

Subject: Thank you, [CLIENT_NAME]!

Body:

Hi [CLIENT_NAME],

Thank you for choosing [BUSINESS_NAME] for your [SERVICE]!

We hope you're happy with the results. If you have any questions or need anything adjusted, please don't hesitate to reach out within the next [WARRANTY_PERIOD].

We'd love to hear about your experience! If you have a moment, a review on Google would mean the world to us: [REVIEW_LINK]

And if you know anyone who could use our services, we'd appreciate the referral! [REFERRAL_INCENTIVE]

Thanks again for your business!

Best regards,
[YOUR_NAME]
[BUSINESS_NAME]
[PHONE] | [EMAIL]

---

Variables:
[CLIENT_NAME]
[SERVICE]
[WARRANTY_PERIOD] - 30 days, 90 days, 1 year
[REVIEW_LINK] - Google My Business review link
[REFERRAL_INCENTIVE] - Ex: "Refer a friend, get $50 off your next service"

Tone: Warm, appreciative, relationship-building

══════════════════════════════════════
TEMPLATE 5: APPOINTMENT REMINDER
══════════════════════════════════════

Subject: Reminder: Your appointment tomorrow at [TIME]

Body:

Hi [CLIENT_NAME],

Just a friendly reminder that we're scheduled to come by tomorrow:

📅 Date: [DATE]
🕐 Time: [TIME]
📍 Location: [ADDRESS]
⏱️ Duration: Approximately [DURATION]

What we'll be doing:
[SERVICE_DESCRIPTION]

Please ensure:
- [PREPARATION_1]
- [PREPARATION_2]

Need to reschedule? Call us ASAP: [PHONE]

See you tomorrow!

[YOUR_NAME]
[BUSINESS_NAME]

---

Variables:
[CLIENT_NAME]
[DATE] - Tomorrow's date
[TIME]
[ADDRESS]
[DURATION]
[SERVICE_DESCRIPTION]
[PREPARATION_1] - ex: Clear access to work area
[PREPARATION_2] - ex: Pets secured

Tone: Friendly reminder, practical information

══════════════════════════════════════

[Continue with additional templates...]

ADDITIONAL TEMPLATES TO CREATE:

6. Delay/Reschedule Notification
7. Request for Review
8. Invoice Sent
9. Project Completion
10. Referral Thank You
11. Answer to Common Question (FAQ)
12. Complaint Response
13. Welcome New Customer
14. Seasonal Promotion
15. Newsletter Update

Save all: ~/Cowork-Workspace/email-templates/library.txt
```

### Step 3: Use templates efficiently

Quick customization workflow:

```
How to use templates (30 seconds per email):

METHOD 1: MANUAL (Copy-Paste)

1. Open template file
2. Copy template text
3. Paste into email
4. Find-Replace all variables:
   - [CLIENT_NAME] → John Smith
   - [SERVICE] → Electrical panel upgrade
   - [DATE] → Monday, January 22, 2026
   - [TIME] → 2:00 PM
   - etc.
5. Review, adjust tone if needed
6. Send

Time: 1-2 minutes

METHOD 2: AUTOMATED (Email Client)

Gmail:
- Use "Templates" feature (Settings → Advanced → Enable Templates)
- Save each template
- Insert with 3 clicks
- Still need to customize variables manually

Outlook:
- Save as "Quick Parts"
- Insert from ribbon
- Customize variables

Time: 30 seconds

METHOD 3: COWORK GENERATION (Fastest for complex)

Prompt:
\"\"\"
Generate email using template \"Appointment Confirmation\"

Variables:
- CLIENT_NAME: John Smith
- SERVICE: Electrical panel upgrade
- DATE: Monday, January 22, 2026
- TIME: 2:00 PM
- ADDRESS: 123 Oak Street
- DURATION: 2-3 hours
- PREPARATION_STEP_1: Clear access to electrical panel
- PREPARATION_STEP_2: Secure pets
- PREPARATION_STEP_3: Be available for questions

Generate complete email ready to send.
\"\"\"

Time: 20 seconds + review

Save method: ~/Cowork-Workspace/email-templates/usage-guide.txt
```

### Step 4: Track template effectiveness

Monitor performance:

```
Email template performance tracking:

METRICS TO TRACK:

Template: Appointment Confirmation
- Sent: 45 times (January)
- Response rate: N/A (confirmation, not expecting reply)
- Cancellations after sending: 2 (4%)
- Goal: <5% cancellations ✓

Template: Quote Follow-Up
- Sent: 23 times
- Response rate: 15 replies (65%)
- Converted to jobs: 8 (35% conversion)
- Goal: 30%+ conversion ✓
- Observation: Follow-up increases conversion by 25% vs no follow-up

Template: Payment Reminder (Gentle)
- Sent: 18 times
- Paid within 7 days: 14 (78%)
- Needed 2nd reminder: 4 (22%)
- Goal: >75% pay after first reminder ✓

Template: Thank You (After Service)
- Sent: 38 times
- Reviews received: 12 (32%)
- Goal: 25%+ review rate ✓
- Observation: Including review link essential

OPTIMIZATION:

If response rate low:
- Test different subject lines (A/B test)
- Adjust tone (more casual vs formal)
- Change timing (send morning vs afternoon)

If conversion low:
- Add urgency ("Quote expires in 7 days")
- Include social proof ("Join 500+ satisfied customers")
- Clarify next steps ("Reply YES to schedule")

If template not used:
- Too complex (simplify)
- Situation too rare (archive, don't maintain)
- Better handled by phone call

Save metrics: ~/Cowork-Workspace/email-templates/performance-jan-2026.xlsx
```

### Step 5: Maintain and improve

Regular updates:

```
Template maintenance schedule:

MONTHLY REVIEW (15 minutes):

1. Check template usage:
   - Which templates used most? (keep optimized)
   - Which templates never used? (archive or delete)

2. Update outdated info:
   - Phone numbers changed?
   - Pricing updated?
   - Service offerings changed?
   - Seasonal promotions expired?

3. Refine based on feedback:
   - Client confused by email? (clarify wording)
   - Client asked same question repeatedly? (add to template)
   - Tone off? (adjust)

QUARTERLY DEEP DIVE (1 hour):

1. Analyze metrics:
   - Which templates have best conversion?
   - Where are clients dropping off?

2. Create new templates:
   - New service added? (create introduction email)
   - New common scenario? (template it)

3. A/B test variations:
   - Try 2 versions of same template
   - Track which performs better
   - Keep winner

Example A/B test:

Subject A: "Your quote for [SERVICE]"
Subject B: "Here's your custom [SERVICE] quote"

Send A to 50% of clients, B to 50%
Track open rates over 2 weeks
Winner: Subject B (38% open vs 24% for A)

Update template with winning version

VERSION CONTROL:

Template: Quote Follow-Up
Version 1.0 (Jan 2026): Original
Version 1.1 (Feb 2026): Added urgency ("Quote expires in...")
Version 1.2 (Mar 2026): Changed subject line (A/B test winner)

Keep changelog: ~/Cowork-Workspace/email-templates/changelog.txt

Save: ~/Cowork-Workspace/email-templates/maintenance-log.txt
```

---

## Example Prompts

### Generate specific email from template

```
Prompt to Cowork:

Use template "Payment Reminder (Gentle)" to create email:

Variables:
- CLIENT_NAME: Sarah Johnson
- INVOICE_NUMBER: INV-2026-042
- DUE_DATE: January 25, 2026
- SERVICE: Kitchen electrical upgrade
- AMOUNT: $1,850
- SERVICE_DATE: January 10, 2026
- PAYMENT_METHODS: Check, ACH transfer, credit card
- PAYMENT_LINK: https://pay.example.com/INV-2026-042

Generate complete email.

Result: Ready-to-send email in 10 seconds
```

### Create new template from scratch

```
Prompt to Cowork:

Create email template: "Seasonal Maintenance Reminder"

Purpose: Remind clients about annual HVAC/electrical/plumbing maintenance

Include:
- Last service date
- Recommended next service date
- Benefits of regular maintenance
- Booking incentive (10% off if booked this month)
- Call-to-action

Tone: Helpful, not pushy

Variables: [CLIENT_NAME], [LAST_SERVICE_DATE], [SYSTEM_TYPE], [DISCOUNT_DEADLINE]

Generate template structure.

Save result to library
```

---

## Automated Sequences

### Quote Follow-Up Sequence (4 emails)

The highest-ROI sequence for small businesses: systematically follow up on unanswered quotes.

**Reality check**: An unfollowed quote = 60-80% lost opportunity. A structured sequence recovers 20-30% of "lost" quotes.

```
Create complete quote follow-up sequence:

CONTEXT: Small business/tradesperson sending quotes and wanting to maximize conversion

4-EMAIL SEQUENCE:

EMAIL 1 - Day 0 (Initial send)
Objective: Accompany the quote, create soft urgency
Tone: Professional, enthusiastic
Structure:
- Thank them for the inquiry
- Quote attached (summary: [amount], [validity])
- Available for questions
- CTA: "Reply to this email to confirm"

EMAIL 2 - Day 3 (Soft follow-up)
Objective: Verify receipt, address objections
Tone: Helpful, not salesy
Structure:
- "Did you receive my quote?"
- Offer to clarify any points
- CTA: "Questions? I'll call you back"

EMAIL 3 - Day 7 (Deadline reminder)
Objective: Create urgency, offer alternative
Tone: Direct but friendly
Structure:
- Reminder quote expires [date]
- Calendar filling up ("limited slots this month")
- Option B if budget is tight
- CTA: "Confirm by [date] to lock in the schedule"

EMAIL 4 - Day 14 (Final follow-up)
Objective: Close professionally, keep door open
Tone: Professional, no resentment
Structure:
- "I'm closing this file unless I hear back"
- No reproach
- Invitation to reconnect later
- CTA: "Feel free to reach out anytime"

Variables for all:
- [client_name]
- [project_description]
- [quote_amount]
- [quote_number]
- [expiration_date]
- [your_name]

Format: 4 separate files
Save: ~/Cowork-Workspace/email-templates/quote-followup-sequence/
```

### Using the sequence

**Option 1: Manual (calendar reminders)**

```
I sent a quote to [client name] on [date].

Set up reminders for me:
- Day 3: Soft follow-up
- Day 7: Deadline reminder
- Day 14: Final close

For each reminder, prepare personalized email ready to copy
based on templates in ~/Cowork-Workspace/email-templates/quote-followup-sequence/
```

**Option 2: Tracking spreadsheet**

```
Create Excel quote follow-up tracker:

Columns:
- Quote number
- Client
- Amount
- Date sent
- Status (Pending / Followed D+3 / Followed D+7 / Closed / Accepted / Declined)
- Next action
- Next action date
- Notes

Formulas:
- Red conditional formatting if date overdue
- Conversion rate calculation

Save: ~/Cowork-Workspace/output/quote-followup-tracker.xlsx
```

### Dormant Client Reactivation Sequence

For clients with no order in 6+ months:

```
Create dormant client reactivation sequence (3 emails):

EMAIL 1 - "Checking in"
Objective: Reconnect without selling
Tone: Personal, genuine
- "It's been a while..."
- Ask about their projects
- No commercial CTA

EMAIL 2 (Day 7) - "News/offer"
Objective: Give reason to return
Tone: Informative
- New service/equipment/capability
- "Loyal customer" promo if applicable
- CTA: "Interested? Reply to this email"

EMAIL 3 (Day 14) - "Last chance"
Objective: Limited offer + close
Tone: Direct
- Recap offer
- Limited validity
- "If I don't hear back, I'll assume timing isn't right"

Variables:
- [client_first_name]
- [last_service] (description + date)
- [special_offer]
- [deadline]

Save: ~/Cowork-Workspace/email-templates/reactivation-sequence/
```

---

## Troubleshooting

### Templates feel impersonal (robotic)

**Cause**: Too generic, obvious copy-paste
**Solution**: Add personal touches:

```
MAKE TEMPLATES FEEL PERSONAL:

1. REFERENCE SPECIFIC DETAILS:

Generic:
"Thank you for choosing us for your project."

Personal:
"Thank you for trusting us with your beautiful kitchen renovation. The new backsplash tile you picked really ties the room together!"

2. USE CLIENT'S WORDS:

If client said "Our panel is ancient":
"Following up on the panel upgrade you mentioned was 'ancient' :)"

3. ADD CUSTOM LINE:

Template body (standardized)
+
1-2 sentence custom note at top:
"Sarah, great meeting you last week! Here's the quote we discussed..."

4. VARY GREETINGS:

Don't always use "Hi [NAME],"

Options:
- "Hope you're doing well, [NAME]!"
- "[NAME], thanks for reaching out!"
- "Great to hear from you, [NAME]!"

Rotate based on relationship/context
```

### Too many templates to manage

**Cause**: Over-created, too specific
**Solution**: Consolidate and simplify:

```
TEMPLATE CONSOLIDATION:

Before (8 separate templates):
- Quote follow-up (1 week after)
- Quote follow-up (2 weeks after)
- Quote follow-up (3 weeks after)
- Quote follow-up (before expiration)

After (1 flexible template):
- Quote follow-up (adjust timeline variable)

Use one template with conditional sections:

Template: Quote Follow-Up
Timeline: [DAYS_SINCE_QUOTE]

If 1 week: "Just wanted to check in..."
If 2 weeks: "Wanted to follow up again..."
If 3 weeks: "Your quote expires soon..."

Keep templates <20 total for manageability
```

### Variables confusing to fill

**Cause**: Too many variables, unclear names
**Solution**: Simplify and clarify:

```
VARIABLE BEST PRACTICES:

Bad variable names:
[VAR1], [VAR2], [XXX], [PLACEHOLDER]

Good variable names:
[CLIENT_FIRST_NAME], [SERVICE_TYPE], [APPOINTMENT_DATE]

Reduce variables:

Before (10 variables):
[CLIENT_FIRST_NAME], [CLIENT_LAST_NAME], [COMPANY_NAME], [STREET], [CITY], [STATE], [ZIP], ...

After (3 variables):
[CLIENT_NAME] - Use first name only
[ADDRESS] - Full address as one field
[CONTACT_INFO] - Phone/email together

Trade-off: Less customization, more usability

Provide variable list at top:

---
Required variables:
[CLIENT_NAME] = Client first name
[SERVICE] = What you're providing
[DATE] = Appointment/service date
[AMOUNT] = Price (with $ symbol)
---

Copy-paste helper sheet:
~/Cowork-Workspace/email-templates/variable-sheet-blank.txt

Fill it out once, copy-paste values into template
```

---

## Variations

### Multi-language templates

```
Create templates in multiple languages:

Structure:
/email-templates/
  /english/
    appointment-confirmation.txt
    quote-followup.txt
  /spanish/
    appointment-confirmation.txt
    quote-followup.txt

Spanish example:

Subject: Confirmación: Cita de [SERVICIO] el [FECHA] a las [HORA]

Hola [NOMBRE_CLIENTE],

Esto confirma su cita para [SERVICIO] el [FECHA] a las [HORA].

[...continue in Spanish]

Use for: Areas with bilingual clientele
```

### Template chains (automated sequences)

```
Sequence of related templates:

SEQUENCE: New Customer Onboarding

Email 1 (Day 0): Welcome email
Email 2 (Day 3): How to get the most from our service
Email 3 (Day 7): Check-in (any questions?)
Email 4 (Day 30): Request review

Each builds on previous, guides customer journey

Track where they are in sequence:
~/Cowork-Workspace/email-templates/sequences/tracking.xlsx

Customer: John Smith
Sequence: Onboarding
Current step: Email 2 (sent 01/18)
Next: Email 3 (send 01/22)
```

---

## Best Practices

1. **Start with 5-10 templates** — Cover most common emails, expand as needed
2. **One template per file** — Easier to find and update
3. **Version templates** — Track changes, know what's current
4. **Test before mass use** — Send to yourself first, check formatting
5. **Mobile-friendly** — Keep paragraphs short (reads well on phone)
6. **Clear subject lines** — Recipient should know what email is about before opening
7. **Review quarterly** — Delete unused, update outdated
8. **Back up library** — Cloud storage so you never lose templates

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
