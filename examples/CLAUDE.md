# Cowork Project Context Template

> **Purpose**: Template for CLAUDE.md files in Cowork projects
>
> **Usage**: Copy this template, customize for your project, place in your shared workspace

---

## Project Information

**Project Name**: [Your Project Name]
**Last Updated**: [Date]
**Team**: [Team members and roles]

---

## Folder Structure

```
~/[Your-Workspace]/
├── input/           # Files to be processed
│   ├── raw/         # Unprocessed source files
│   ├── receipts/    # Receipt images
│   ├── documents/   # PDFs, Word docs
│   └── data/        # CSV, Excel files
│
├── output/          # Cowork-generated files
│   ├── reports/     # Generated reports
│   ├── summaries/   # Document summaries
│   └── processed/   # Processed data files
│
├── archive/         # Completed work
│   └── [YYYY-MM]/   # Archived by month
│
└── CLAUDE.md        # This file
```

---

## Current Sprint / Period

### Goals
- [Goal 1]
- [Goal 2]
- [Goal 3]

### Active Tasks
| Task | Owner | Status | Due |
|------|-------|--------|-----|
| [Task 1] | [Name] | In Progress | [Date] |
| [Task 2] | [Name] | Pending | [Date] |

---

## Conventions

### File Naming
- Dates: YYYY-MM-DD format
- Reports: `[date]-[type]-report.docx`
- Data: `[source]-[date].xlsx`
- Summaries: `[topic]-summary.md`

### Output Formats
- Reports: Word (.docx)
- Data: Excel (.xlsx)
- Summaries: Markdown (.md)
- Quick notes: Text (.txt)

### Regional Settings
- Date format: [DD/MM/YYYY or MM/DD/YYYY]
- Currency: [EUR, USD, etc.]
- Excel formulas: [comma or semicolon separators]

---

## Data Categories

### Expense Categories
- Food & Dining
- Transportation
- Office Supplies
- Software/Subscriptions
- Travel
- Professional Services
- Other

### Document Types
- Meeting Notes
- Status Reports
- Research Documents
- Financial Records
- Correspondence

---

## Common Prompts

### Weekly Expense Report
```
Process receipts in ~/[workspace]/input/receipts/
Create expense report with category totals
Save to ~/[workspace]/output/reports/expenses-[week].xlsx
```

### Document Summary
```
Summarize all documents in ~/[workspace]/input/documents/
Create consolidated summary
Save to ~/[workspace]/output/summaries/
```

### Monthly Archive
```
Move completed files from output/ to archive/[YYYY-MM]/
Create archive manifest
```

---

## Team Information

### Team Members
| Name | Role | Uses | Contact |
|------|------|------|---------|
| [Name] | [Role] | Cowork | [Email] |
| [Name] | [Role] | Claude Code | [Email] |

### Handoff Process
1. Creator places file in appropriate folder
2. Updates Active Tasks table above
3. Notifies recipient
4. Recipient processes and updates status

---

## Key Decisions Log

| Date | Decision | Context | Made By |
|------|----------|---------|---------|
| [Date] | [Decision] | [Why] | [Who] |

---

## Notes

[Any project-specific notes, warnings, or reminders]

---

## Changelog

| Date | Change | By |
|------|--------|-----|
| [Date] | Initial creation | [Name] |
