# Cowork Cheatsheet

> **One-page quick reference** — Print-friendly

**Requires**: Pro ($20/mo) or Max ($100-200/mo) subscription, macOS

---

## Quick Start

```bash
# 1. Create workspace
mkdir -p ~/Cowork-Workspace/{input,output}

# 2. Enable Cowork in Claude Desktop → Settings → Features

# 3. Grant folder access when prompted
```

---

## Essential Prompt Pattern

```
Task: [clear single objective]
Input: ~/Cowork-Workspace/input/
Output: ~/Cowork-Workspace/output/[filename.ext]
Format: [specific format requirements]
```

---

## Can Do / Cannot Do

| ✅ CAN DO | ❌ CANNOT DO |
|-----------|--------------|
| Read/write files | Execute code |
| Create Office docs | Run scripts |
| Extract data from images | Access cloud storage |
| Organize folders | Make API calls |
| Web research (Chrome) | Process audio/video |
| Generate PDFs | Decrypt files |

---

## Output Formats

| Format | Extension | Notes |
|--------|-----------|-------|
| Word | .docx | Headers, tables, formatting |
| Excel | .xlsx | Formulas, multiple sheets |
| PowerPoint | .pptx | Slides, basic formatting |
| PDF | .pdf | Generated from content |
| Text | .txt, .md | Any text format |
| Data | .csv, .json | Structured data |

---

## Prompt Examples

### File Organization
```
Organize files in ~/Cowork-Workspace/input/ by type.
Create folders: Documents, Images, Spreadsheets, Other.
Save summary to ~/Cowork-Workspace/output/organization-report.txt
```

### Data Extraction
```
Extract expenses from receipt images in ~/Cowork-Workspace/input/receipts/
Create Excel file with: Date, Vendor, Amount, Category
Add totals row. Save to ~/Cowork-Workspace/output/expenses.xlsx
```
> ⚠️ OCR: 97% field accuracy, 63% line-items. Always verify totals.

### Document Synthesis
```
Combine notes in ~/Cowork-Workspace/input/notes/ into a status report.
Structure: Executive Summary, Progress, Risks, Next Steps.
Save as ~/Cowork-Workspace/output/status-report.docx
```

### Web Research
```
Research top 5 project management tools.
Create comparison table with: Name, Price, Key Features, Pros, Cons.
Save to ~/Cowork-Workspace/output/pm-tools.md
```

---

## Security Quick Rules

| 🔴 CRITICAL | 🟠 HIGH |
|-------------|---------|
| Dedicated workspace only | Review every plan |
| No credentials in workspace | Backup before destructive ops |
| Verify file sources | Manage Chrome permissions |

---

## Common Issues → Quick Fixes

| Issue | Fix |
|-------|-----|
| Can't see Cowork | Update app + restart |
| Permission denied | System Preferences → Privacy → re-grant |
| Task stops | Break into smaller batches |
| Excel formulas broken | Specify regional syntax |
| Chrome not working | Grant Accessibility permission |

---

## Dangerous Patterns to Avoid

```
❌ "Process all files in ~/"
❌ "You have access to Documents"
❌ "Here's my password file"
❌ "Delete all duplicates" (without backup)
❌ Skip plan review
```

---

## Decision Flow

```
Need code execution? → Use Claude Code
Need file manipulation? → Use Cowork
Just conversation? → Use Projects
```

---

## Regional Excel Settings

| Region | Formula Syntax |
|--------|---------------|
| US/UK | `=SUM(A1,A2)` (comma) |
| EU | `=SUM(A1;A2)` (semicolon) |

Specify in prompt: "Use European/US formula syntax"

---

## Workflow Cycle

```
Request → Analysis → Plan → ⚠️ Review → Approve → Execute → Verify
                            ↑
                     READ THIS CAREFULLY
```

---

## Context Limits

| Content | Approximate Capacity |
|---------|---------------------|
| Text pages | 150-500 pages |
| Documents | 50-100 docs |
| Images (OCR) | 50-100 images |

Hit limit? → Break into smaller batches

---

## Usage Limits

| Tier | Intensive Use | Reset |
|------|---------------|-------|
| Pro | ~1-1.5 hours | Every 5 hours |
| Max | 5x-20x Pro | Every 5 hours |

⚠️ File/document tasks consume quota rapidly. Plan large batches accordingly.

---

## Token Budget by Task

| Task Type | Typical Tokens | Pro Sessions |
|-----------|----------------|--------------|
| Simple Q&A | 5K-10K | Many |
| File inventory | 20K-30K | 6-8 |
| Small file org (10-20 files) | 30K-50K | 3-5 |
| Large file org (50+ files) | 80K-150K | 1-2 |
| Multi-doc synthesis | 50K-100K | 2-3 |
| OCR batch (10+ receipts) | 60K-100K | 2-3 |

**Agentic overhead**: Plan→Execute→Check cycles add 15-30% tokens.

### Optimization Tips

| Strategy | Savings |
|----------|---------|
| Batch 10-20 files per request | Optimal efficiency |
| Checkpoint after each batch | Enables recovery |
| Clear context for new tasks | Fresh 200K window |
| Reuse previous outputs | Avoids re-processing |

---

## Keyboard Shortcuts

| Action | Method |
|--------|--------|
| Stop execution | Type "Stop" |
| New conversation | Cmd+N |
| Clear context | Start new conversation |

---

## Links

| Resource | URL |
|----------|-----|
| Full Docs | `cowork/README.md` |
| Security Guide | `cowork/guide/03-security.md` |
| Prompt Library | `cowork/prompts/` |
| Troubleshooting | `cowork/guide/04-troubleshooting.md` |

---

*Cowork v1.0 (Research Preview) | Part of Claude Code Ultimate Guide*
