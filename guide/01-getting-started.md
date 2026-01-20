# Getting Started with Cowork

> **Reading time**: ~10 minutes
>
> **Goal**: Go from zero to your first successful Cowork workflow

---

## Prerequisites

Before starting, ensure you have:

| Requirement | How to Check |
|-------------|--------------|
| **Pro or Max subscription** | claude.ai → Settings → Subscription shows "Pro" or "Max" |
| **macOS** | Apple menu → About This Mac |
| **Claude Desktop app** | Applications folder or Spotlight search |
| **Latest app version** | Claude Desktop → Check for Updates |

### Subscription Tiers

| Tier | Cost | Cowork Usage |
|------|------|--------------|
| **Pro** | $20/mo | Light use (~1-1.5h intensive before reset) |
| **Max** | $100-200/mo | Heavy use (5x-20x Pro's limit) |

### Don't Have Access?

| Situation | Action |
|-----------|--------|
| Free tier | Upgrade to Pro ($20) or Max ($100+) |
| Windows/Linux | Wait for platform expansion (Windows planned, Linux not announced) |

---

## Step 1: Enable Cowork

### 1.1 Open Settings

1. Launch **Claude Desktop** app
2. Click your **profile icon** (top right)
3. Select **Settings**

### 1.2 Enable the Feature

1. Navigate to **Features** or **Beta Features** section
2. Find **Cowork** toggle
3. Enable it

> **Note**: The exact location may vary as the app is updated during research preview.

### 1.3 Verify Activation

After enabling, you should see:
- New "Cowork" option in conversation mode selector
- Or a dedicated Cowork section/tab

---

## Step 2: Create Your Workspace

**Critical**: Never grant Cowork access to Documents, Desktop, or home folder directly.

### 2.1 Create Dedicated Folder

Open Terminal and run:

```bash
mkdir -p ~/Cowork-Workspace/{input,output}
```

This creates:
```
~/Cowork-Workspace/
├── input/    # Files you want processed
└── output/   # Where Cowork puts results
```

### 2.2 Grant Folder Access

1. Start a new Cowork conversation
2. When prompted for folder access, navigate to `~/Cowork-Workspace/`
3. Grant access **only** to this folder

### 2.3 Verify Access

Ask Cowork:
```
List the contents of my workspace folder
```

Expected response: Shows `input/` and `output/` directories.

---

## Step 3: Your First Workflow

Let's do a simple but complete workflow to verify everything works.

### 3.1 Prepare Test Files

Create some test files in your input folder:

```bash
cd ~/Cowork-Workspace/input

# Create sample files
echo "Meeting notes from Monday" > meeting-monday.txt
echo "Meeting notes from Wednesday" > meeting-wednesday.txt
echo "Project status update" > project-status.txt
echo "Random thoughts" > misc-notes.txt
```

### 3.2 Run Your First Task

In Cowork, enter:

```
Organize the files in ~/Cowork-Workspace/input/ into subfolders
by category. Create a summary of what you organized in the output folder.
```

### 3.3 What Should Happen

1. **Plan display**: Cowork shows its intended actions
2. **Your approval**: You review and approve the plan
3. **Execution**: Cowork reorganizes files
4. **Report**: Creates summary in output folder

### 3.4 Verify Results

Check the result:

```bash
ls -la ~/Cowork-Workspace/input/
ls -la ~/Cowork-Workspace/output/
```

You should see:
- Organized subfolders in `input/`
- A summary file in `output/`

---

## Step 4: Understanding the Workflow

### The Cowork Cycle

Every Cowork task follows this pattern:

```
┌─────────────────────────────────────────────────────┐
│                   YOUR REQUEST                       │
│     "Organize my files by category"                 │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   ANALYSIS                           │
│     Cowork examines your files                      │
│     Identifies patterns and categories              │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   PLAN PROPOSAL                      │
│     "I will create 3 folders and move X files..."   │
│     ⚠️ YOU REVIEW THIS BEFORE EXECUTION              │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│               YOUR APPROVAL                          │
│     "Yes, proceed" or "No, modify the plan"         │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   EXECUTION                          │
│     Cowork performs the approved actions            │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   REPORT                             │
│     Summary of what was done                        │
└─────────────────────────────────────────────────────┘
```

### Key Points

1. **Always review the plan** — This is your safety checkpoint
2. **Be specific** — Vague requests lead to unexpected results
3. **Start small** — Test with few files before large batches
4. **Check results** — Verify output before proceeding

---

## Step 5: The CTOC Framework

Power users structure every Cowork prompt with four components:

```
CONTEXT → TASK → OUTPUT → CONSTRAINTS
```

### The Framework

| Component | What it is | Example |
|-----------|------------|---------|
| **C**ontext | Background, files, situation | "I have 50 receipts from a business trip to Paris..." |
| **T**ask | Clear single objective | "Extract all expenses into a spreadsheet" |
| **O**utput | Exact format and location | "Save as ~/Cowork-Workspace/output/paris-expenses.xlsx" |
| **C**onstraints | Rules, limits, preferences | "Use EUR currency, semicolon formulas, categorize by type" |

### CTOC Example

```
CONTEXT: I have meeting notes from the past month in ~/Cowork-Workspace/input/notes/.
They're from different team members with inconsistent formatting.

TASK: Create a consolidated status report from these notes.

OUTPUT: Save as ~/Cowork-Workspace/output/team-status-january.docx
with sections: Executive Summary, Progress by Project, Blockers, Next Steps.

CONSTRAINTS: Keep under 3 pages. Focus on actionable items.
Highlight any risks mentioned.
```

### Quick Patterns

| Pattern | Example |
|---------|---------|
| **Be explicit** | ✅ "files in ~/Cowork-Workspace/input/" not ❌ "my files" |
| **Specify output** | ✅ "save to ~/output/report.docx" not ❌ "create a report" |
| **Describe format** | ✅ "columns: Date, Amount, Category" not ❌ "make a spreadsheet" |
| **Add constraints** | ✅ "use European formula syntax" |

### Break Down Complex Tasks

Instead of:
```
❌ "Process all my receipts, create expense reports, and organize by month"
```

Do this:
```
✅ Step 1: "List all receipt files in ~/Cowork-Workspace/input/"
✅ Step 2: "Extract expense data from these receipts into a single Excel file"
✅ Step 3: "Add monthly summary sheets to the Excel file"
```

This batching approach also optimizes token usage (see [Cheatsheet](../reference/cheatsheet.md) for token budgets).

---

## Step 6: Chrome Integration (Optional)

Cowork can use Chrome for web research tasks.

### Enable Chrome Access

1. When Cowork requests Chrome permission, review carefully
2. Grant only for specific research tasks
3. Revoke after task completion

### Example Web Research Task

```
Research the top 5 project management tools for small teams.
Save your findings to ~/Cowork-Workspace/output/pm-tools-research.md
with a comparison table.
```

### Security Note

- Review each web action Cowork proposes
- Don't let Cowork fill forms or make purchases
- Revoke Chrome access when not needed

---

## Troubleshooting First Run

### "Cannot access folder"

1. Go to System Preferences → Security & Privacy → Files and Folders
2. Find Claude Desktop
3. Ensure your workspace folder is listed and enabled

### "Cowork option not visible"

1. Update Claude Desktop to latest version
2. Check Settings → Features → ensure Cowork is enabled
3. Restart the app

### "Plan seems wrong"

1. **Don't approve** the plan
2. Say "Stop. Let me clarify: [your clarification]"
3. Cowork will revise its plan

### "Incomplete results"

1. Check if Cowork showed any errors
2. Try breaking the task into smaller steps
3. Verify folder permissions

---

## Next Steps

You're now ready to:

1. **[Explore Capabilities](02-capabilities.md)** — Learn what Cowork can do
2. **[Review Security](03-security.md)** — Safe usage practices
3. **[Try Workflows](../workflows/)** — Step-by-step tutorials
4. **[Use Ready Prompts](../prompts/)** — Copy-paste templates

---

## Quick Reference Card

| Action | How |
|--------|-----|
| **Start Cowork** | New conversation → Select Cowork mode |
| **Grant access** | Browse to ~/Cowork-Workspace/ when prompted |
| **Review plan** | Read each step before saying "proceed" |
| **Stop execution** | Type "Stop" or close the conversation |
| **Check results** | Always verify output folder after tasks |

---

*[← Overview](00-overview.md) | [Cowork Documentation](../README.md) | [Capabilities →](02-capabilities.md)*
