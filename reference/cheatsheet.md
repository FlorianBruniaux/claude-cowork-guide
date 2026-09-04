# Cowork Cheatsheet

🌐 **Languages**: [English](cheatsheet.md) | [Français](cheatsheet.fr.md)

> **One-page quick reference** : Print-friendly

**Availability**: An eligible paid Claude plan. Claude Desktop supports macOS and Windows, with Linux in beta; web and mobile Cowork are beta on eligible plans. Verify the current [Cowork availability](https://support.claude.com/en/articles/13345190-get-started-with-cowork) before relying on a surface.

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

## Model Selection

| Model | Use For | Speed | Context |
|-------|---------|-------|---------|
| Available model | Task fit | Verification | Context |
|-----------------|----------|--------------|---------|
| **Model shown in Claude** | Match the task's complexity | Check the current surface | Varies by model and plan |

Model availability, context and usage are product settings, not stable guide constants. Use the options shown in Claude and test a small task before a large batch.

---

## Personalize Your Profile

Create `my-profile.md` in your workspace:

```markdown
## Tone & Style
- Formal / Casual
- Concise bullet points

## Things I NEVER Do
- Use exclamation marks
- Promise specific deadlines
```

**Usage**: "Read my-profile.md first. Then [your request]"

---

## Can Do / Cannot Do

| ✅ CAN DO | ❌ CANNOT DO |
|-----------|--------------|
| Read/write files | Use an unrestricted host shell |
| Run code in an isolated task environment | Bypass plan, surface or permission controls |
| Create Office docs | Run unrestricted host scripts |
| Extract data from images | Process audio/video |
| Organize folders | Decrypt files |
| Browser and connector tasks, when available and permitted | Treat a configured connector as universal cloud access |
| Generate PDFs | Assume a capability is on every surface |
| Configured skills and connectors | |
| Scheduled tasks | |
| Direct Excel/PowerPoint integrations | |

---

## Customize Tab & Skills

| Feature | How to Access | Example Usage |
|---------|--------------|---------------|
| **Skills** | Customize tab → Skills | `/pdf`, `/docx`, `/xlsx` |
| **Skill chaining** | Chain two skills in a prompt | `/pdf` then `/xlsx` in sequence |
| **Connectors** | Customize tab → Connectors | Web search, local files, custom JSON |
| **Permissions** | Per-tool: Allow / Ask / Block | Set web search to "Ask" |
| **Memory** | Desktop Commander + memory.md | "Read memory.md first, then..." |
| **Scheduled tasks** | Settings → Scheduled Tasks | Daily brief, weekly report |

### Skills Ecosystem
- Official skills: `github.com/anthropics/skills`
- Community: `claudemarketplaces.com` | `skills.sh` | `skillhub.club`
- Install via: Customize tab → search by name or paste URL

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
Need a developer-controlled shell? → Use Claude Code
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

## Context and batch limits

Context capacity and compaction vary by model, plan and surface. Do not plan a workflow around a fixed token or document count from this guide. Start with a small batch, verify the output, then continue in reviewable groups.

---

## Usage limits

Usage limits vary by plan, model, surface and task. Check the current plan information in Claude before a large batch; do not use historical prices, reset schedules or quota ratios from this guide to make a purchase decision.

---

## Token Budget by Task

| Task Type | Planning rule |
|-----------|---------------|
| File inventory | Begin with a representative folder |
| Small file organization | Verify a sample before continuing |
| Large file organization | Split work into reviewable batches |
| Multi-document synthesis | Keep source files and output traceable |
| OCR batch | Check source samples and totals |

### Optimization Tips

| Strategy | Savings |
|----------|---------|
| Batch 10-20 files per request | Optimal efficiency |
| Checkpoint after each batch | Enables recovery |
| Start a new task when the context is no longer relevant | Avoid carrying unrelated instructions |
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
| Full Docs | [README.md](../README.md) |
| Security Guide | [guide/03-security.md](../guide/03-security.md) |
| Prompt Library | [prompts/](../prompts/) |
| Troubleshooting | [guide/04-troubleshooting.md](../guide/04-troubleshooting.md) |

---

*Claude Cowork Guide v1.12.0 | Availability varies by plan, surface and capability*
