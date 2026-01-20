# Cowork Workflows

> **Step-by-step tutorials for common Cowork tasks**

---

## Available Workflows

| Workflow | Description | Time | Difficulty |
|----------|-------------|------|------------|
| [File Organization](file-organization.md) | Clean up messy folders | 15 min | Beginner |
| [Expense Tracking](expense-tracking.md) | Receipts → Excel report | 20 min | Intermediate |
| [Report Synthesis](report-synthesis.md) | Multi-doc → report | 25 min | Intermediate |
| [Meeting Prep](meeting-prep.md) | Create briefing docs | 20 min | Intermediate |
| [Team Handoff](team-handoff.md) | Dev ↔ Non-dev patterns | 30 min | Advanced |

---

## Workflow Structure

Each workflow includes:

1. **Use Case** — When to use this workflow
2. **Prerequisites** — What you need before starting
3. **Step-by-Step Instructions** — Detailed walkthrough
4. **Example Prompts** — Copy-paste ready commands
5. **Troubleshooting** — Common issues and solutions
6. **Variations** — Adapting for different scenarios

---

## Quick Start

### Before Any Workflow

```bash
# 1. Ensure workspace exists
mkdir -p ~/Cowork-Workspace/{input,output}

# 2. Backup important files
cp -R ~/Cowork-Workspace/ ~/Cowork-Backup-$(date +%Y%m%d)/

# 3. Clear previous work (optional)
rm -rf ~/Cowork-Workspace/input/*
rm -rf ~/Cowork-Workspace/output/*
```

### Workflow Checklist

- [ ] Workspace folder ready
- [ ] Input files in place
- [ ] Backup if doing destructive operations
- [ ] Cowork enabled in Claude Desktop
- [ ] Folder access granted

---

## Choosing a Workflow

```
What do you need to do?
│
├─ Organize messy files?
│   └─ → File Organization workflow
│
├─ Process receipts or expenses?
│   └─ → Expense Tracking workflow
│
├─ Combine documents into a report?
│   └─ → Report Synthesis workflow
│
├─ Prepare for a meeting?
│   └─ → Meeting Prep workflow
│
└─ Work between technical and non-technical team members?
    └─ → Team Handoff workflow
```

---

## Tips for All Workflows

### Be Explicit
```
❌ "Organize my files"
✅ "Organize files in ~/Cowork-Workspace/input/ by type into subfolders"
```

### Review Before Approving
Always read Cowork's execution plan before saying "proceed."

### Start Small
Test with a few files before processing hundreds.

### Check Results
Verify output before considering the task complete.

---

*[Back to Cowork Documentation](../README.md)*
