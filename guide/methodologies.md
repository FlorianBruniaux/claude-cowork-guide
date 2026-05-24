---
title: "Methodologies Cowork"
description: "Working methodologies for non-technical users: CTOC, iterative refinement, batch processing, quality verification"
tags: [methodologies, ctoc, workflow, quality, batch]
---

# Methodologies : Working with Cowork

Five core methodologies that make the difference between random results and consistent, professional outputs.

---

## 1. The CTOC Framework

CTOC is the fundamental prompt structure for Cowork. Every effective interaction follows four blocks: **C**ontext, **T**ask, **O**utput, **C**onstraints.

### Why vague prompts fail

Vague prompt: *"Help me with my invoices"*

Typical result: Cowork asks clarifying questions, generic response, 10 minutes wasted.

CTOC prompt: same task, framed correctly. Result: Cowork does exactly what you need, first try.

### The four blocks

**CONTEXT** : Situation, files involved, business background.
Answer: "What are we working with?"

> "I have 30 supplier invoices in ~/Cowork-Workspace/input/invoices-march/ from March 2026"

**TASK** : A single, precise objective.
Answer: "What exactly needs to happen?"

> "Extract supplier name, date, amount excl. tax, VAT, amount incl. tax from each invoice"

**OUTPUT** : Exact format and save location.
Answer: "What does the result look like and where does it go?"

> "Save as ~/Cowork-Workspace/output/invoices-march.xlsx, one row per invoice, one column per field"

**CONSTRAINTS** : Rules, formats, preferences, edge cases.
Answer: "What are the rules Cowork must follow?"

> "Currency EUR, dates as DD/MM/YYYY, sort by ascending date. If a field is unreadable, write 'TO VERIFY'"

### Common CTOC mistakes

| Mistake | Example | Fix |
|---------|---------|-----|
| Missing output path | "Save it somewhere" | Always give the full path |
| No format specified | "Make a report" | "Make an Excel file with columns X, Y, Z" |
| Multiple tasks at once | "Sort, rename and extract" | Split into separate prompts |
| No edge case handling | [none] | Add "if X, then Y" constraints |
| Vague constraints | "Professional tone" | "Formal French, no slang, sign with my name" |

---

## 2. Iterative Refinement

For documents and content, the right approach is never to ask for the final version in one shot. Work in stages.

### The three-stage cycle

**Draft** → get a usable first version fast, accept imperfections.

**Review** → evaluate against your actual criteria, note what needs changing.

**Polish** → give Cowork precise correction instructions.

### How to prompt at each stage

**Stage 1 : Draft**

```
CONTEXT: I need to write a client proposal for [project description].
TASK: Write a first draft, structure only, 3-4 sections.
OUTPUT: Plain text in the chat, no formatting needed.
CONSTRAINTS: 400-500 words max. I'll refine afterwards.
```

**Stage 2 : Review**

Read the draft. Note specifically:
- What works
- What's missing
- What doesn't match your tone or context

**Stage 3 : Polish**

```
CONTEXT: Here is the draft we wrote. [paste draft]
TASK: Make these specific changes:
  - Section 2: add a concrete example with numbers
  - Tone: more direct, less formal
  - Conclusion: add a clear call to action with a deadline
OUTPUT: Updated full text in the chat.
CONSTRAINTS: Keep everything else as is. Don't change the structure.
```

### Why this works better

Asking for a perfect final version in one prompt puts too much pressure on the first interpretation. Iterating lets you correct course cheaply, rather than starting over from a bad foundation.

---

## 3. Batch Processing

For operations on many files, batch processing is always faster and safer than treating files one by one.

### The core principle

Instead of: "Process invoice-001.pdf" → check → "Now process invoice-002.pdf" → check...

Do: "Process all invoices in input/invoices-march/, create one output row per file"

### When to batch

- Same operation on multiple files of the same type
- Organizing or renaming a large set of files
- Extracting the same data from multiple documents
- Generating multiple documents from the same template

### Batch size guidelines

| Volume | Approach |
|--------|----------|
| 1-20 files | Single batch, let Cowork handle it |
| 20-50 files | Single batch, plan step → validate → execute |
| 50-100 files | Split into 2 batches of ~50 |
| 100+ files | Split into batches of 20-30, process sequentially |

Large batches slow down sessions and risk hitting context limits. Smaller batches are more reliable.

### Batch prompt template

```
CONTEXT: I have [N] files in ~/Cowork-Workspace/input/[folder]/,
all [file type]. [Brief description of what they contain].

TASK: For each file, [exact operation].

OUTPUT: Save results to ~/Cowork-Workspace/output/[output-file].xlsx.
One row per source file. Columns: [list of columns].

CONSTRAINTS:
- Process all files in the folder, not just a sample
- If a file fails or is unreadable, write "ERROR" and continue
- Create a summary at the end listing: success count, error count, files to verify
```

---

## 4. Quality Verification

Never trust a Cowork output without verifying it. Not because Cowork makes mistakes often, but because catching errors before they propagate is always cheaper.

### The three-check method

**Check 1 : Completeness.** Did Cowork process all the items it was supposed to?

Open the output file. Count rows. Compare to the number of source files. If 30 invoices went in, 30 rows should come out.

**Check 2 : Spot sampling.** Pick 3-5 random items and verify manually against the source.

Compare the extracted data to the original file. This catches systematic errors (wrong column, wrong date format) before you rely on the full output.

**Check 3 : Edge cases.** Check the items that were most likely to fail.

Handwritten documents, low-quality photos, non-standard formats, documents in a foreign language. These are where errors concentrate.

### OCR-specific verification

Cowork's OCR (reading data from photos/images) achieves ~97% accuracy on standard fields (vendor name, date, totals) but drops to ~63% on line items (table rows). This means:

- For a 30-invoice batch: expect 1-2 errors in standard fields, potentially 10+ in line-item details
- Always check cells marked "TO VERIFY"
- Build in 30-50% of your "saved time" estimate as verification time for OCR tasks

### When something looks wrong

When an output doesn't match your expectations:

```
CONTEXT: You just processed [description of task].
Here is an example of output that looks incorrect: [paste the problematic row].
The source file is [filename].

TASK: Explain what happened with this specific item and reprocess it correctly.

OUTPUT: The corrected row and an explanation of what went wrong.

CONSTRAINTS: Don't reprocess the entire batch, just this item.
```

---

## 5. Progressive Complexity

Start simple, add constraints progressively. This applies to both building prompts and adopting Cowork.

### Building prompts progressively

**Week 1** : use prompts from this guide as-is. Copy, paste, change the file paths.

**Week 2-3** : adapt prompts to your specific context. Add your constraints (your currency, your naming conventions, your document format).

**Month 2** : write your own CTOC prompts from scratch for new use cases.

**Month 3+** : chain workflows, use scheduled automation, set up cross-session memory.

### Adding constraints progressively

Start with the minimal prompt that works:

```
Organize the files in ~/Cowork-Workspace/input/ by type.
```

Then add constraints as you learn what you actually need:

```
Organize by type AND by year. 
Use folder names in French.
Don't move files that are less than 7 days old.
Create a log of everything moved.
```

Each added constraint comes from a real problem you encountered. Never add constraints speculatively, only when you've seen the need.

### Adopting Cowork progressively

The biggest mistake is trying to automate everything on day one. A realistic adoption curve:

- **Day 1-7** : one workflow, mastered completely (file organization or invoice generation)
- **Day 8-30** : two or three workflows, your most repetitive tasks
- **Month 2** : add scheduling for recurring tasks
- **Month 3** : set up memory and cross-workflow continuity

Depth in one workflow beats superficial use of ten.
