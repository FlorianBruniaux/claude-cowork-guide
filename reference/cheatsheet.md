# Cowork Cheatsheet

🌐 **Languages**: [English](cheatsheet.md) | [Français](cheatsheet.fr.md)

> **One-page quick reference** — Print-friendly

**Requires**: Pro ($20/mo) or Max ($100-200/mo) subscription, macOS or Windows

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
| **Haiku** | Very simple tasks, quick queries | Very Fast | Standard |
| **Sonnet 4.6** ⭐ | All Cowork workflows, agentic tasks | Fast | 1M tokens (beta) |
| **Opus 4.6** | Deep reasoning, legal/scientific analysis | Slower | 1M tokens (beta) |

**Default**: Sonnet 4.6 for everything. Sonnet 4.6 = #1 for agentic/computer use tasks at 5x lower cost than Opus.
**Switch to Opus** only for: expert legal reasoning, scientific analysis, complex multi-agent coordination.
**Both models**: 1M token context window (beta), 128K output, adaptive thinking.

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
| Read/write files | Execute code |
| Create Office docs | Run scripts |
| Extract data from images | Process audio/video |
| Organize folders | Decrypt files |
| Web research (Chrome) | Access network resources (except Chrome) |
| Generate PDFs | Run on Linux |
| 11 plugins (Asana, GitHub, Notion, Slack...) | |
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

| Content | Approximate Capacity (Opus 4.6, 1M beta) |
|---------|---------------------|
| Text pages | 600-2000+ pages |
| Documents | 200-400+ docs |
| Images (OCR) | 200-400+ images |

Context compaction (beta) extends effective session length. Hit limit? → Break into smaller batches

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
| Full Docs | [README.md](../README.md) |
| Security Guide | [guide/03-security.md](../guide/03-security.md) |
| Prompt Library | [prompts/](../prompts/) |
| Troubleshooting | [guide/04-troubleshooting.md](../guide/04-troubleshooting.md) |

---

*Cowork v1.5.0 (Research Preview) | Part of Claude Cowork Guide*
