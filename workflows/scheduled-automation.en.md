# Scheduled Automation

🌐 **Languages**: [English](scheduled-automation.en.md) | [Français](scheduled-automation.md)

> **Category**: Organization | **Difficulty**: Intermediate | **Setup Time**: 30 min

---

## Goal

Automate recurring tasks, reports, compilations, weekly reviews, so they generate without manual effort. Set up once, collect results every day, week, or month.

## Prerequisites

- Cowork active (Pro or Max subscription)
- Familiarity with the CTOC framework ([Getting Started Step 5](../guide/01-getting-started.md#step-5-the-ctoc-framework))
- Organized input folders: separate by frequency (daily/, weekly/, monthly/)

## Prepare Your Folders

Before configuring scheduled tasks, organize your workspace:

```bash
mkdir -p ~/Cowork-Workspace/input/{daily,weekly,monthly}
mkdir -p ~/Cowork-Workspace/output/{reports,dashboards}
```

Drop files into the right subfolder based on how often they need processing.

---

## The 4 Essential Patterns

### Pattern 1: Daily Morning Brief

**When**: Every day at 9:00 AM
**Setup time**: 10 minutes
**Output**: A one-page brief on what needs your attention today

**Prompt to configure**:
```
CONTEXT: Files added yesterday to ~/Cowork-Workspace/input/daily/
TASK: Summarize new documents and identify actions for today
OUTPUT: ~/Cowork-Workspace/output/reports/brief-[date].md
Structure: 3 sections — "Urgent Actions", "Handle Today", "For Your Information"
CONSTRAINTS: Max 1 page. Bullet points only. Flag anything urgent or overdue.
```

**SMB use cases**:
- Tradesperson: new quote requests, client reminders, pending orders
- Retail: previous day's sales, stock alerts, supplier messages
- Services: new client requests, today's deadlines, invoicing reminders

---

### Pattern 2: Weekly Sales Compilation

**When**: Every Monday at 8:00 AM
**Setup time**: 15 minutes
**Output**: Complete summary of the past week

**Prompt to configure**:
```
CONTEXT: All files in ~/Cowork-Workspace/input/weekly/ from the past 7 days
TASK: Compile the weekly summary — achievements, key figures, pending items, follow-ups needed
OUTPUT: ~/Cowork-Workspace/output/reports/weekly-summary-[date].docx
Structure: Executive Summary (1 para), Achievements, Figures (if available), Pending, Monday actions
CONSTRAINTS: Executive format, 2 pages max. Bold the critical points.
```

---

### Pattern 3: Friday Wrap-Up

**When**: Every Friday at 5:30 PM
**Setup time**: 10 minutes
**Output**: Handover document for the following Monday

**Prompt to configure**:
```
CONTEXT: Files modified or created this week in ~/Cowork-Workspace/
TASK: Create end-of-week recap — done, in progress, waiting for Monday
OUTPUT: ~/Cowork-Workspace/output/reports/recap-[date].md
Structure: Done this week, In progress (status), Monday morning priorities (ranked)
CONSTRAINTS: Action-oriented. Short sentences. One page maximum.
```

---

### Pattern 4: Monthly Dashboard

**When**: 1st of each month at 7:00 AM
**Setup time**: 20 minutes
**Output**: Monthly overview with month-over-month comparison

**Prompt to configure**:
```
CONTEXT: Files in ~/Cowork-Workspace/input/monthly/ for the past month
TASK: Create monthly dashboard — key metrics, trends, notable points, outlook
OUTPUT: ~/Cowork-Workspace/output/dashboards/dashboard-[month-year].xlsx
Structure: "Summary" tab (executive view) + "Detail" tab (raw data)
CONSTRAINTS: US formula syntax (comma separators). Compare with previous month where data allows. Red-highlight anything below targets.
```

---

## How to Configure a Scheduled Task in Claude Desktop

### Two Task Types

**Recurring tasks** — run automatically on a set cadence. Available frequencies: hourly, daily, weekly, weekdays-only, or custom. After the first run, Cowork automatically rewrites your prompt to optimize it based on what it learned.

**On-demand tasks** — run once when you click "Run now." Useful for irregular or one-off operations without creating a permanent schedule.

### Setup Steps

1. Open **Claude Desktop → left sidebar → Scheduled section**
2. Click **New Task**
3. Choose the type (recurring or on-demand)
4. Paste your prompt
5. For recurring: set the cadence and time
6. Name your task (e.g., "Morning Brief", "Monday Summary")
7. Activate

### Managing Tasks from the Sidebar

The Scheduled section in the sidebar lets you: view upcoming runs, browse run history, edit prompt or cadence, pause/resume, delete, or trigger an immediate run at any time.

---

## Important Notes

**Reliability**: Scheduled Tasks is in research preview. Early executions may occasionally be imperfect. Check the first few outputs manually before relying on them.

**App open AND device awake**: Cowork requires Claude Desktop to be open AND your computer to be awake (not sleeping) at the scheduled time. If the device is asleep or the app is closed, the task is **skipped** and runs automatically when the device wakes. Plan accordingly for early-morning schedules — disable auto-sleep if needed.

**Automatic prompt optimization**: After a recurring task's first run, Cowork analyzes the output and rewrites your prompt to improve it. Check the updated prompt in the sidebar to confirm the changes.

**Advanced alternative**: For more sophisticated workflows with conditions and branching logic, **n8n** (open source, free) can orchestrate calls to Claude Desktop with greater flexibility.

---

## Optimization Tips

- **Start with one pattern**: Run a single task for 2 weeks before adding others
- **Review early outputs**: The first 3-4 runs deserve careful review
- **Refine your prompts**: Adjust based on what the outputs actually look like
- **Use date-stamped filenames**: Makes it easy to browse archives later

---

*[← Workflows](README.md) | [Set Up Memory →](memory-setup.en.md)*
