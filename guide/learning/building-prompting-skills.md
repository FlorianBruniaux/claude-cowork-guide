---
title: "Building Prompting Skills : From Copy-Paste to Writing Your Own"
description: "A progression guide from copying ready-made prompts to writing your own CTOC prompts from scratch, with practical exercises and a prompt library template"
tags: [learning, prompting, ctoc, skills, library]
---

# Building Prompting Skills : From Copy-Paste to Writing Your Own

Most people start by copying prompts. That's exactly right. But copying forever means you're always dependent on someone else's library, someone else's structure, someone else's context. The goal is to reach the point where you can write a prompt for any task, not just the ones already covered.

This guide maps the progression: three levels, concrete exercises, and a library structure you can use immediately.

---

## Three Skill Levels

| Level | What you do | How long it takes | Sign of progress |
|-------|-------------|-------------------|------------------|
| **Beginner** | Copies prompts from the library, fills in the variables, sends | 0 to 3 weeks | Prompt works first try, output is usable without heavy edits |
| **Intermediate** | Takes an existing prompt, modifies it for a different context or adds constraints | 3 weeks to 2 months | Can adapt any prompt in under 5 minutes, result quality stays high |
| **Advanced** | Writes a complete CTOC prompt from scratch for any task | 2+ months of regular practice | New prompts work on the first or second attempt without consulting examples |

The jumps between levels are not about intelligence. They're about repetition and deliberate practice. You log the prompts that work. You notice why they work. You apply that pattern to new situations.

---

## Level 1: Copy-Paste with Intention

Copying prompts is not passive. Done correctly, it's how you build pattern recognition before you consciously know what patterns you're looking for.

### How to use the guide's prompts correctly

Every prompt in this guide follows the CTOC structure:

- **C : Context** : who you are, what your business does, what situation you're in
- **T : Task** : the specific action Cowork needs to take
- **O : Output** : the exact format, length, tone, and structure you expect
- **C : Constraints** : what to avoid, limits on scope, anything that would make the output unusable

When you copy a prompt, do not just paste and send. Take 90 seconds to do this:

1. **Read the Context section**. Does it match your actual situation? Change company type, role, and specific details.
2. **Read the Task section**. Is the action exactly what you want? If the prompt says "write a follow-up email" but you need an introduction email, that's a different task.
3. **Read the Output section**. Is the format right? If the prompt outputs a bullet list but you need a paragraph for copy-paste into a form, change it.
4. **Read the Constraints section**. Add any constraints specific to your situation: legal, tone, length, content to avoid.

This 90-second review is the difference between a prompt that works on the first try and one that wastes three iterations.

### Identifying the variables to change

Variables in prompts are placeholders that carry no meaning without your specific information. Look for:

- Company names and types ("a plumbing company" vs your actual company name)
- Numbers ("3 employees" vs your actual headcount)
- Time references ("last quarter" vs the actual quarter)
- Industry-specific terms (if the prompt says "client" but in your industry you say "patient" or "account", change it)
- Geographic references (French legal context differs from Belgian context)

Mark these in your copy before filling them in. A prompt with generic placeholders sends generic context, and generic context produces generic output.

### Understanding the CTOC structure

Why does CTOC work? Because Cowork generates better outputs when it knows:

- **Who is asking** (Context) so it calibrates the expertise level and vocabulary
- **Exactly what to do** (Task) so it does not interpret or guess your intent
- **What the result should look like** (Output) so it does not choose its own format
- **What to avoid** (Constraints) so it does not include things you will have to manually remove

A prompt missing one of these four elements forces Cowork to fill the gap with assumptions. Sometimes those assumptions are fine. Often they are not.

### Sign you are ready for Level 2

You know you are ready to move to Level 2 when prompts from the library work on the first try at least 70% of the time, and when you can explain to a colleague why a specific part of a prompt produces the result it does.

---

## Level 2: Adaptation

Adaptation is the core skill. Most real-world situations are variations on situations that already exist in someone's prompt library. You do not need to write from scratch. You need to recognize the closest existing prompt and modify it.

### How to adapt a prompt for a new context

The process is:

1. Find the closest prompt in the library (by task type, not by exact situation)
2. Identify what is different in your situation
3. Change exactly those parts, nothing else
4. Add any new constraints your situation introduces
5. Test, log the result, update your local version

### Adding constraints

Constraints are the most underused part of CTOC. They protect you from outputs that are technically correct but practically unusable.

Common constraints to add when adapting:

- **Tone constraints**: "Do not use exclamation marks", "Write in formal French (vouvoiement)", "Avoid technical jargon"
- **Length constraints**: "Maximum 200 words", "No more than 5 bullet points", "One paragraph only"
- **Content constraints**: "Do not mention our pricing", "Do not reference competitor names", "Do not make claims we cannot verify"
- **Format constraints**: "Output as plain text, no markdown", "Use the exact column headers: Date, Client, Amount, Status"

Each constraint you add is a problem you have already encountered and solved. Build this list over time.

### Changing the output format

The Output section is where most adaptations happen. The same task can produce very different useful formats depending on where the output goes.

| Same task | Different output format | Use case |
|-----------|------------------------|----------|
| Summarize a contract | 5 bullet points | Briefing a colleague verbally |
| Summarize a contract | Full paragraph | Paste into a report |
| Summarize a contract | Table: Clause, Obligation, Deadline | Legal tracking spreadsheet |
| Summarize a contract | 3 questions to ask before signing | Pre-meeting preparation |

None of these are wrong. They are the same task with different Output sections.

### Before and after: an adaptation example

**Original prompt (from the library):**

```
Context: I run a small accounting firm with 2 employees. We handle year-end bookkeeping for SMEs.
Task: Write a reminder email to a client whose documents are 2 weeks late.
Output: Professional email, 3 short paragraphs, subject line included. Maximum 150 words.
Constraints: Polite but firm. Do not apologize for asking. Use formal French (vouvoiement).
```

**Adapted prompt (for a contractor doing renovation work):**

```
Context: I run a two-person renovation contracting business. We complete residential bathroom and kitchen renovations.
Task: Write a reminder email to a client whose signed approval for additional work is 5 days late, blocking our schedule.
Output: Professional email, 2 short paragraphs, subject line included. Maximum 120 words.
Constraints: Polite but clear about the scheduling impact. Do not apologize for following up. Use formal French (vouvoiement). Do not mention penalties in this first reminder.
```

What changed: company type, industry, the specific document type, the delay duration, the consequence of the delay, and the constraint about penalties. The structure is identical. The result is completely adapted to a different situation.

---

## Level 3: Writing From Scratch

Once you can adapt fluently, writing from scratch is the natural next step. You are already doing most of the work. You are just removing the scaffold of an existing prompt.

### How to write a complete CTOC prompt

Start with four questions, one per section:

**For Context**: Who am I, and what does Cowork need to know about my situation to give me a useful answer? Include your role, your company type, any relevant constraints on your situation (industry, size, legal context), and the specific situation that led to this request.

**For Task**: What specific action do I want Cowork to take? Use a verb. "Write," "extract," "organize," "summarize," "compare," "create," "translate." Be specific about scope: "all 12 invoices" not "the invoices," "this month's client emails" not "some emails."

**For Output**: What does the result look like when it is done correctly? Describe format, length, structure, language register. If possible, give an example structure: "Table with columns: Date, Client Name, Amount (euros), Status (paid / unpaid)."

**For Constraints**: What would make the output unusable? List everything. Missing constraints is the most common source of bad outputs at this level.

### 15-minute practical exercise

Pick a real task you have done manually at least three times in the last month. Something you already know well.

Write a CTOC prompt for it using the four questions above. Do not look at examples. Take a maximum of 15 minutes.

Send it. Look at the output. Note what worked and what you would change.

That's it. One prompt per week on a real task you know well. After 8 weeks, you will have 8 templates you actually use, plus the pattern recognition to write new ones faster.

### Checklist before sending a new prompt

Before you send a prompt you wrote from scratch, check these five points:

- [ ] **Context includes a role and company type** : not just "I" but "I run a 4-person plumbing company"
- [ ] **Task has a specific verb and clear scope** : "write a 3-email sequence" not "help me with emails"
- [ ] **Output describes the exact format** : format, length, language, structure
- [ ] **Constraints list at least 2 specific things to avoid** : not "make it good" but specific exclusions
- [ ] **The whole prompt can be read by someone unfamiliar with your situation and they would understand exactly what you want**

If the last point fails, add context. It is never too specific.

---

## Building a Prompt Library

A prompt library is a collection of prompts that have worked, organized so you can find and reuse them without rebuilding from scratch each time.

### Recommended structure for a team library

```
~/Cowork-Workspace/
├── library/
│   ├── admin/
│   │   ├── invoicing.md
│   │   ├── reminders.md
│   │   └── contracts.md
│   ├── commercial/
│   │   ├── prospecting.md
│   │   ├── proposals.md
│   │   └── follow-ups.md
│   ├── communication/
│   │   ├── social-media.md
│   │   ├── client-emails.md
│   │   └── newsletters.md
│   └── internal/
│       ├── meeting-notes.md
│       ├── reports.md
│       └── onboarding.md
```

Organize by task category, not by who created the prompt. The library is a shared tool, not a personal archive.

### Prompt card template

Use this structure for every prompt you add to the library:

```markdown
## [Short descriptive title]

**Use when**: [1-2 sentences describing the exact situation where this prompt applies]

**Last tested**: [Date]
**Tested by**: [Name or initials]
**Output quality**: [Good / Needs review / Deprecated]

### Prompt

[Full CTOC prompt here]

### Expected output

[Description of what a good result looks like : format, typical length, what to check]

### Customization required

- [Variable 1]: [What to replace it with and why]
- [Variable 2]: [What to replace it with and why]

### Notes

[Any specific situations where this prompt does not work well, edge cases, known issues]
```

Fill in every field. "Last tested" and "Output quality" are the two most important fields for a team library: they tell you whether the prompt is still working or needs an update.

### Keeping the library alive

A prompt library degrades over time. Cowork is updated. Your business context changes. Prompts that worked 6 months ago may produce worse results today.

Set a monthly 30-minute session to:

1. Review any prompt marked "Needs review"
2. Test 3 random prompts from categories you use most
3. Archive any prompt that has not been used in 3 months (do not delete, archive)
4. Add any new prompts created that month

The library is not a monument. It is a living tool.

---

## Common Mistakes at Each Level

| Level | Common mistake | What it looks like | Correction |
|-------|---------------|--------------------|------------|
| Beginner | Sending a prompt without changing the context | Output mentions a "law firm" but you're a plumber | Always read and update the Context section before sending |
| Beginner | Accepting the first result without checking | Invoice total is wrong, but you paste it into your email anyway | Run UVAL: spot-check 3 items before using any output |
| Beginner | Not logging prompts that worked | Rebuilds from scratch every time for the same task | Log every prompt that produces a usable result, same day |
| Intermediate | Over-adapting (changing things that don't need changing) | Rewrites the entire prompt when only the client name needed to change | Identify what is different, change only those parts |
| Intermediate | Forgetting to update constraints | Adapted prompt for a new industry, kept constraints from the old one | Reread all four sections when adapting, not just Task |
| Intermediate | Library folder exists but isn't used | Recreates prompts from memory instead of searching the library | Build search into the workflow: library first, then adapt |
| Advanced | Overly complex prompts | 400-word prompt for a task that needs 80 words | If the task is simple, the prompt should be simple |
| Advanced | Skipping the checklist because "you know what you're doing" | First-try results drop, more iterations needed | The checklist exists because we all miss things under time pressure |
| Advanced | Not updating the library when a better version exists | Old prompt stays in the library, new better version only lives in your notes | Update immediately, increment the version, note what changed |

---

## What Comes Next

Once you are writing prompts reliably and maintaining a library, the next step is teaching someone else on your team. Teaching is how you discover what you actually understand versus what you assume you understand.

Pick one colleague who is at Level 1. Walk them through adapting one prompt for their specific task. Watch where they get stuck. Those are the gaps in your library's documentation, not gaps in their intelligence.

The goal is a team where everyone is at Level 2 or above, the library is actively maintained, and no single task depends on one person's personal prompt collection.
