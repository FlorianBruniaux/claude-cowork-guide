# Cowork Cheatsheet

🌐 **Languages**: [English](cheatsheet.md) | [Français](cheatsheet.fr.md)

> **One-page quick reference** : Print-friendly

**Availability** (as of October 11, 2026): Cowork is for Pro, Max, Team and Enterprise plans (not Free). Claude Desktop runs on macOS (13 Ventura or later), Windows and Linux (beta, Ubuntu 22.04+ / Debian 12+). Since September 16, 2026, Cowork is built into every Claude conversation (rolling out on Pro and Max, web, desktop and mobile): no Chat/Cowork mode to pick. Verify the current [Cowork availability](https://support.claude.com/en/articles/13345190-get-started-with-cowork) before relying on a surface.

**Where tasks run**: since October 6, 2026, new Pro and Max tasks run in the cloud (Anthropic servers, temporary isolated environment). Your folders stay on your computer; a cloud task reaches only the folders you connected, and only while Claude Desktop is open. Scheduled tasks run in the cloud even with your computer off. Tasks started locally before October 6 stay local. Team: beta, on by default. Enterprise: beta, off until an owner turns it on.

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

| Model | Use For | Notes (Anthropic, October 2026) |
|-------|---------|---------------------------------|
| **Opus 5.5** (Sept 22) | Hard, multi-step work | Matches Fable 5.1 on most tasks, 40% cheaper to run than Opus 5 |
| **Sonnet 5.5** (Sept 28) | Everyday tasks | Over 30% faster than Sonnet 5 |
| **Haiku 5.5** (Oct 7) | High-volume, simple tasks | Anthropic's smallest, fastest, cheapest model |
| Fable 5.1, Mythos 5.1, Opus 5 | Still available | Check the model picker |

Effort levels: Low, Medium, High, Extra high, Max. The default model per plan is not published: use the options shown in Claude and test a small task before a large batch.

---

## Approval Modes

| Mode | What happens | Watch out |
|------|--------------|-----------|
| **Manual** (was "Ask before acting") | Claude waits for Allow or Deny at each request | Safest, slowest |
| **Auto** | Each action is checked, dangerous ones are blocked | Uses more of your usage limit |
| **Skip all approvals** (was "Act without asking") | No pause, no filtering | Non-sensitive work only |

Team and Enterprise: Auto is offered by default; "Always allow" for connector tools is off by default; a tool set to "Restrict to Ask" still asks even in Skip all approvals. Source: support.claude.com/en/articles/13345190 and 13455879.

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
| Computer use missing | Pro/Max only, macOS 14+ or Windows (not Team, Enterprise, Linux) |

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
| Send a message while Claude is replying | It waits in the queue; click **Send now** to stop the reply and send it |
| Interrupt and send immediately | Cmd+Enter (Mac) / Ctrl+Enter (Windows, Linux) |
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

*Claude Cowork Guide v1.14.0 | Availability varies by plan, surface and capability*
