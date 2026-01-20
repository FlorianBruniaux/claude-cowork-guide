# Cowork Prompt Library

> **Ready-to-use prompts organized by category**

---

## How to Use

1. **Copy the prompt** from the relevant category
2. **Customize** the placeholders (marked with `[brackets]`)
3. **Paste into Cowork** and review the plan before approving

### Prompt Structure

All prompts follow this pattern:
```
Task: [Clear objective]
Input: [Source location]
Output: [Destination and format]
[Additional constraints or format requirements]
```

---

## Categories

| Category | Description | Prompts |
|----------|-------------|---------|
| [File Operations](file-ops.md) | Organization, renaming, cleanup | 15+ |
| [Document Creation](document-creation.md) | Reports, summaries, presentations | 15+ |
| [Data Extraction](data-extraction.md) | Images → data, PDF parsing | 15+ |
| [Research](research.md) | Web research, synthesis | 10+ |

---

## Quick Reference

### Most Used Prompts

**Organize Downloads**
```
Organize all files in ~/Cowork-Workspace/input/ by type.
Create folders: Documents, Images, Spreadsheets, Archives, Other.
Move files (don't copy). Save a summary report to ~/Cowork-Workspace/output/organization-summary.txt
```

**Receipt to Excel**
```
Extract expense data from receipt images in ~/Cowork-Workspace/input/receipts/
Create an Excel file with columns: Date, Vendor, Amount, Category, Notes.
Add a summary sheet with totals by category.
Use European formula syntax (semicolons).
Save to ~/Cowork-Workspace/output/expenses.xlsx
```

**Notes to Report**
```
Combine all notes in ~/Cowork-Workspace/input/notes/ into a project status report.
Structure: Executive Summary, Progress by Area, Key Decisions, Risks, Next Steps.
Format as Word document.
Save to ~/Cowork-Workspace/output/status-report.docx
```

**Web Research**
```
Research the top 5 [topic] tools/solutions.
Create a comparison table with: Name, Website, Key Features, Pricing, Pros, Cons.
Include a recommendation section.
Save to ~/Cowork-Workspace/output/[topic]-research.md
```

---

## Tips for Better Prompts

### Be Specific About Scope
```
❌ "Organize my files"
✅ "Organize files in ~/Cowork-Workspace/input/ into subfolders by file type"
```

### Specify Output Location
```
❌ "Create a summary"
✅ "Save summary to ~/Cowork-Workspace/output/summary.txt"
```

### Describe Expected Format
```
❌ "Make a spreadsheet"
✅ "Create Excel with columns: Date, Amount, Category. Add totals row."
```

### Handle Regional Settings
```
✅ "Use European formula syntax (semicolon separators)"
✅ "Use US date format (MM/DD/YYYY)"
```

### Request Confirmation
```
✅ "Show me the plan before executing any file moves"
```

---

## Create Your Own

### Template
```
Task: [What you want Cowork to do]
Input: ~/Cowork-Workspace/input/[subfolder or files]
Output: ~/Cowork-Workspace/output/[filename.extension]
Format: [Specific requirements]
Constraints: [Any limitations or preferences]
```

### Example Custom Prompt
```
Task: Create a client briefing document
Input: ~/Cowork-Workspace/input/client-acme/
Output: ~/Cowork-Workspace/output/acme-briefing.docx

Format:
- Company Overview (1 page)
- Key Contacts with titles
- Recent News (last 3 months)
- Talking Points (5-7 bullets)
- Questions to Ask (5-7 questions)

Constraints:
- Professional tone
- Maximum 5 pages
- Include date prepared in header
```

---

## Prompt Categories

### [File Operations →](file-ops.md)
- Organize by type, date, project
- Rename files with patterns
- Find and handle duplicates
- Clean up and archive

### [Document Creation →](document-creation.md)
- Status reports
- Meeting summaries
- Presentations
- Formatted documents

### [Data Extraction →](data-extraction.md)
- Receipts to spreadsheet
- PDF data extraction
- Image text extraction
- Structured data parsing

### [Research →](research.md)
- Competitive analysis
- Topic research
- Comparison matrices
- Trend summaries

---

*[Back to Cowork Documentation](../README.md)*
