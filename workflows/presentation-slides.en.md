# Workflow: Client Presentation Creation

> **Estimated time**: 30 minutes
> **Difficulty**: Intermediate
> **Category**: 💼 Commercial
> **Professions**: Business Owners, Freelancers

---

## Use Case

You need to present your offer to a client or during a sales meeting. This workflow helps you:

- Structure compelling presentation
- Create professional visual slides
- Adapt pitch to client context
- Prepare arguments and objection responses

> ⚠️ **Impact**: Well-structured presentation increases conversion rate by 30-50% vs improvised pitch.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Client/prospect information
- [ ] Your commercial offering
- [ ] Customer references/testimonials
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Analyze context

```bash
mkdir -p ~/Cowork-Workspace/presentations/[client-name]
```

Prepare brief:

```
Presentation context for: [Client name]

MEETING OBJECTIVE:
- Present our [service/product] offering
- Convince to [objective: sign, agree in principle, next meeting]

AUDIENCE:
- Who: [Decision maker titles present]
- Number: [X people]
- Expertise level: [Expert/Intermediate/Beginner in domain]
- Probable objections: [Anticipate list]

CONSTRAINTS:
- Presentation duration: [15/30/45 min]
- Format: [In-person/Video/Hybrid]
- Support: [PowerPoint/PDF/Web]

CLIENT KNOWLEDGE:
- Identified needs: [List]
- Estimated budget: [Range]
- Competition: [Who else are they consulting]
- Decision timeline: [When]

ANGLE OF ATTACK:
What main message should client retain?
Example: "We are the only certified X provider in the region AND 15% cheaper"

Save: ~/Cowork-Workspace/presentations/[client-name]/brief.txt
```

### Step 2: Structure presentation (slides)

```
Create PowerPoint presentation structure:

GOLDEN RULE: 1 slide = 1 idea = 1 minute of speech

RECOMMENDED STRUCTURE (20 slides for 20 min):

═══════════════════════════════════════════
INTRO (3 slides - 3 min)
═══════════════════════════════════════════

SLIDE 1: TITLE PAGE
- Your company logo
- Title: "[Your service] Presentation for [Client]"
- Your name + title
- Date
- [Professional background image]

SLIDE 2: AGENDA
"Today's program:"
1. Your situation and needs (2 min)
2. Our solution (10 min)
3. Our references (3 min)
4. Pricing and next steps (5 min)

SLIDE 3: WHO WE ARE
- Company name
- Activity in 1 sentence
- Key figures: [X] years experience, [Y] clients, [Z] projects
- Values/differentiation: [1-2 unique strengths]

═══════════════════════════════════════════
CLIENT PROBLEM (2 slides - 2 min)
═══════════════════════════════════════════

SLIDE 4: YOUR CHALLENGES (rephrase client needs)
Title: "Your current challenges"
- Challenge 1: [Ex: "Reduce energy bill"]
- Challenge 2: [Ex: "Mandatory compliance"]
- Challenge 3: [Ex: "Tight 2-month deadline"]

SLIDE 5: CONSEQUENCES OF INACTION
"If nothing is done:"
- Risk 1: [Ex: "$X fine for non-compliance"]
- Risk 2: [Ex: "Energy cost overrun $Y/year"]
→ Create urgency (without excessive dramatization)

═══════════════════════════════════════════
SOLUTION (8 slides - 10 min)
═══════════════════════════════════════════

SLIDE 6: OUR SOLUTION (overview)
Title: "Our 3-step approach"
1. [Step 1]: Free audit
2. [Step 2]: Planned work
3. [Step 3]: Performance monitoring

SLIDES 7-9: EACH STEP DETAIL
One slide per step:
- Description
- Duration
- Deliverables
- Added value

SLIDE 10: CLIENT BENEFITS
"What you gain:"
✓ Savings: $[Amount]/year
✓ Compliance: Standards met
✓ Peace of mind: 10-year warranty
✓ Speed: Project completed in [X] weeks

SLIDE 11: DIFFERENTIATION
"Why choose us?"
| Criteria | Typical Competitor | US |
|---------|---------------------|------|
| Certifications | Basic | Premium + Qualified |
| Timeline | 3 months | 6 weeks |
| Warranty | 2 years | 10 years |
| Follow-up | No | Yes (annual) |

SLIDE 12: PROCESS & SCHEDULE
Timeline (simplified Gantt):
Week 1-2: Audit
Week 3: Quote validated
Week 4-8: Work
Week 9: Completion

SLIDE 13: TEAM
Photos + names of key stakeholders:
- Project manager: [Name]
- Lead technician: [Name]
- Customer service: [Contact]

═══════════════════════════════════════════
PROOF (3 slides - 3 min)
═══════════════════════════════════════════

SLIDE 14: CLIENT REFERENCES
"They trusted us:"
- Client logos (if B2B)
- Sectors: Industry, Commercial, etc.

SLIDE 15: CLIENT TESTIMONIAL
Satisfied client quote (with photo if possible):
"[Impactful quote]"
— [Name], [Title], [Company]

SLIDE 16: RESULTS FIGURES
Similar case study:
Project: [Name]
Results:
- Savings: [X]%
- Timeline: [Y] weeks (vs [Z] planned)
- Satisfaction: [Rating]/5

═══════════════════════════════════════════
COMMERCIAL (4 slides - 5 min)
═══════════════════════════════════════════

SLIDE 17: PRICING
3 tiers (Good/Better/Best):

ECONOMY TIER: $[Price]
- Basic service
- Standard warranty

COMFORT TIER: $[Price] ⭐ RECOMMENDED
- Complete service
- Extended warranty
- Annual follow-up

PREMIUM TIER: $[Price]
- All-inclusive
- Premium materials
- Priority service

SLIDE 18: FINANCING/PAYMENT
"Payment facilities:"
- 30% deposit
- Balance in 3 installments interest-free
- Partner financing possible
- Available incentives: [If applicable - rebates, etc.]

SLIDE 19: GUARANTEES
"Our commitments:"
✓ Quote respected (no cost overruns)
✓ Deadlines met or penalties
✓ Satisfaction guarantee (or redo)
✓ Liability insurance

SLIDE 20: NEXT STEPS
"To move forward together:"
1. Q&A (today)
2. Send detailed quote (48h)
3. Technical visit (D+7)
4. Signature (D+14)
5. Work start (D+21)

═══════════════════════════════════════════
CONCLUSION
═══════════════════════════════════════════

SLIDE 21: THANK YOU / QUESTIONS
"Thank you for your attention!"

Your questions?

[Your contact details]
Email: [xxx]
Phone: [xxx]
Website: [xxx]

Format: PowerPoint (.pptx) OR Google Slides
Design: Professional template (avoid cliparts, Comic Sans)
Save: ~/Cowork-Workspace/presentations/[client-name]/presentation-[name].pptx
```

### Step 3: Design slides (visuals)

```
Design guidelines for presentation:

BRAND GUIDELINES:
Colors: [Your company colors - max 3]
Title font: [Ex: Arial Black, Montserrat Bold]
Body font: [Ex: Arial, Open Sans]
Logo: Fixed position (top right corner)

GOLDEN DESIGN RULES:

1. TEXT/BACKGROUND CONTRAST
✓ Dark text on light background OR light text on dark background
✗ Gray on gray (unreadable)

2. FONT SIZE
Title: 32-44pt
Text: 18-24pt
(Readable from back of room)

3. TEXT LIMIT PER SLIDE
Max 6 lines
Max 6 words per line
"6x6 rule"

4. QUALITY IMAGES
- High resolution (not pixelated)
- Relevant (not decorative filler)
- Real project photos (vs generic stock photos)

5. WHITE SPACE
Don't overcrowd slides
Let content "breathe"

6. CONSISTENCY
Same structure each slide:
- Title always same position
- Aligned content
- Sober transitions (no flashy effects)

TOOLS:
- PowerPoint (Microsoft)
- Google Slides (free, collaborative)
- Canva (pre-designed templates)
- Keynote (Apple)

Recommended template: ~/Cowork-Workspace/presentations/COMPANY-TEMPLATE.pptx
```

### Step 4: Prepare oral script

```
Presentation script (speaker notes):

FOR EACH SLIDE, prepare:

SLIDE 1 (TITLE PAGE):
"Hello everyone, thank you for receiving me. I'm [Name], [Title]
at [Company]. Today, I'll present how we can address your
[domain] needs."
[Duration: 30 sec]

SLIDE 4 (CLIENT CHALLENGES):
"During our initial discussion, you mentioned 3 main challenges:
[Rephrase in their words]. Is that correct?"
→ [PAUSE - Wait for validation]
"Perfect. Let's see how we address each one."
[Duration: 1 min]

[...For each slide]

SLIDE 17 (PRICING):
"Let's now discuss investment. We offer 3 tiers adapted to
different budgets. The Comfort tier, at $[X], is what we
recommend as it offers the best value and includes [key benefit]."
[Duration: 2 min]

OBJECTION HANDLING:

OBJECTION 1: "It's too expensive"
Response: "I understand. Let's compare with the cost of inaction:
[quantify risks]. Over 5 years, our solution generates [savings].
The investment pays back in [X] months."

OBJECTION 2: "We need to compare multiple quotes"
Response: "That's normal and prudent. What differentiates us: [2-3
unique points]. What matters most in your choice: price, timeline,
or quality guarantee?"

OBJECTION 3: "I need to think about it"
Response: "Of course. Which points would you like to explore further?
Are there specific blockers I can address right now?"

CLOSING:
"To summarize: We propose [solution] that solves [needs]
in [timeline] for [budget]. Are you ready for the next step?"
→ [SILENCE - Wait for response]

Format: Word document (speaker notes)
Save: ~/Cowork-Workspace/presentations/[client-name]/oral-script.docx
```

### Step 5: Rehearsal and material preparation

```
Checklist 24h before presentation:

□ REHEARSAL:
  - Time presentation (respect timing)
  - Record with webcam (analyze posture, tics)
  - Rehearse 3x minimum (fluidity)

□ EQUIPMENT:
  - Laptop charged (+ charger)
  - USB backup of presentation
  - HDMI/VGA adapter (depending on room)
  - Presentation remote (if available)
  - Printed copies (1 per participant)
  - Business cards (x10)
  - Printed quotes (if signature possible)

□ LOGISTICS:
  - Verify meeting address
  - Calculate route (arrive 10 min early)
  - Professional attire

□ SUPPORTING DOCUMENTS:
  - Complementary technical folder
  - Customer references (complete list)
  - Certificates/qualifications

□ PLAN B:
  - PDF version of presentation (if PowerPoint crashes)
  - 2-min elevator pitch (if unable to project)
  - Prepared questions if presentation cut short

Final rehearsal: Present to colleague/friend for feedback

Save checklist: ~/Cowork-Workspace/presentations/[client-name]/day-checklist.txt
```

---

## Example Prompts

### Short pitch (5 min)

```
Express presentation 5 slides (elevator pitch):

SLIDE 1: Client problem
SLIDE 2: Our solution (1 sentence)
SLIDE 3: Main benefit (quantified)
SLIDE 4: Proof (1 testimonial)
SLIDE 5: Next step (CTA)

Duration: 1 min per slide
Objective: Secure detailed meeting

Save: ~/Cowork-Workspace/presentations/pitch-5min.pptx
```

### Technical presentation (experts)

```
Audience: Engineers, technical experts

ADAPT:
- More technical details (diagrams, specs)
- Industry jargon acceptable
- Focus performance, standards, compliance
- Less "marketing" images
- More quantified data

STRUCTURE:
- Technical problem statement
- In-depth analysis
- Detailed technical solution
- Metrics/KPIs
- Implementation roadmap

Format: 40 slides for 1h (denser)

Save: ~/Cowork-Workspace/presentations/technical-presentation-[client].pptx
```

---

## Troubleshooting

### Audience disengaging (signs)

**Signs**: Phone checking, yawning, side conversations
**Solution**: Regain attention:

```
RE-ENGAGEMENT TECHNIQUES:

1. Ask question:
"Before continuing, does this match your expectations?"

2. Interaction:
"Who among you has encountered this problem?" (raise hand)

3. Break:
"I suggest 2 min break, questions before continuing?"

4. Anecdote:
Tell concrete client case (storytelling)

5. Reduce content:
"I see we're short on time, I'll accelerate on [part]
and deepen [important part for them]"
```

### Destabilizing questions

**Cause**: Objection or misunderstanding
**Solution**: ABCD technique:

```
A - ACKNOWLEDGE:
"Excellent question, thank you for asking."

B - CLARIFY:
"If I understand correctly, you're wondering [rephrase]?"

C - RESPOND (or Defer):
Either: Immediate answer if known
Or: "I'll verify and get back to you within the hour"

D - VALIDATE:
"Does that answer your question?"

NEVER:
❌ "I don't know" (say instead "I'll verify")
❌ "It was in slide 3" (condescending)
❌ Invent answer (credibility loss)
```

---

## Variations

### Video presentation (asynchronous)

```
Record presentation for email send:

TOOLS:
- Loom (free, simple)
- PowerPoint (recording function)
- Zoom (record yourself)

STRUCTURE:
- Shorter (max 10 min)
- Chapters (allow navigation)
- Clear CTA at end

ADVANTAGES:
- Client watches when convenient
- Replayable
- Easy team sharing

Save: ~/Cowork-Workspace/presentations/video-[client].mp4
```

### Collaborative presentation (workshop)

```
Interactive format (vs monologue):

ACTIVITIES:
- Needs brainstorming (post-its)
- Product demonstration (hands-on)
- ROI simulation exercise (calculator)
- Q&A throughout

TIMING:
- 30% presentation
- 40% workshops
- 30% discussion

Increased engagement but more preparation

Save: ~/Cowork-Workspace/presentations/workshop-[client].pptx
```

---

## Best Practices

1. **Adapt to audience** — Technical vs business depending on audience
2. **Storytelling** — Concrete client cases > abstract features
3. **10/20/30 rule** — 10 slides, 20 min, 30pt font minimum
4. **Rehearsal** — 3x minimum (fluency + timing)
5. **Interaction** — Ask questions (avoid monologue)
6. **Backup** — Plan B if tech fails (PDF, USB, oral pitch)
7. **Post-presentation follow-up** — Summary email + quote within 24-48h
8. **Listen** — Adapt in real-time based on reactions

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
