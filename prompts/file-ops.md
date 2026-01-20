# File Operations Prompts

> **15+ ready-to-use prompts for file organization, renaming, and cleanup**

---

## Organization Prompts

### 1. Organize by File Type

```
Organize all files in ~/Cowork-Workspace/input/ by file type.

Create these folders:
- Documents (pdf, doc, docx, txt, md)
- Spreadsheets (xls, xlsx, csv)
- Images (jpg, jpeg, png, gif, svg)
- Archives (zip, tar, gz, rar)
- Other (everything else)

Move files to appropriate folders. Don't copy.
Create a summary in ~/Cowork-Workspace/output/organization-report.txt showing:
- Total files processed
- Files per category
- Any files that couldn't be categorized
```

### 2. Organize by Date

```
Organize files in ~/Cowork-Workspace/input/ by date.

Create year/month folder structure:
- 2024/
  - 01-January/
  - 02-February/
  - ...
- 2025/
  - ...

Use file modification date for sorting.
Move files to appropriate folders.
Save summary to ~/Cowork-Workspace/output/date-organization.txt
```

### 3. Organize by Project

```
Organize files in ~/Cowork-Workspace/input/ by project.

Analyze filenames and content to identify projects.
Create a folder for each project identified.
Put unclassifiable files in "Uncategorized/" folder.

Save a project index to ~/Cowork-Workspace/output/project-index.md with:
- Project name
- Number of files
- File types present
- Date range of files
```

### 4. Organize Downloads Folder

```
Organize my downloaded files in ~/Cowork-Workspace/input/downloads/

Create structure:
- Applications/ (dmg, pkg, exe, app)
- Documents/ (pdf, doc, docx, txt)
- Images/ (jpg, png, gif, svg)
- Videos/ (mp4, mov, avi, mkv)
- Music/ (mp3, wav, flac, m4a)
- Archives/ (zip, rar, tar, gz)
- Code/ (js, py, html, css, json)
- Other/

Move files appropriately. Delete empty source folders after.
Report to ~/Cowork-Workspace/output/downloads-cleanup.txt
```

---

## Renaming Prompts

### 5. Standardize Filenames

```
Rename files in ~/Cowork-Workspace/input/ to follow this pattern:
YYYY-MM-DD_descriptive-name.ext

Rules:
- Use file date for YYYY-MM-DD
- Convert spaces to hyphens
- Remove special characters
- Convert to lowercase
- Keep original extension

Create a rename log in ~/Cowork-Workspace/output/rename-log.csv with:
Original Name, New Name, Date
```

### 6. Add Prefix to Files

```
Add prefix "[PROJECT-X]_" to all files in ~/Cowork-Workspace/input/

Keep original filename after prefix.
Example: document.pdf → [PROJECT-X]_document.pdf

Log changes to ~/Cowork-Workspace/output/prefix-log.txt
```

### 7. Sequential Numbering

```
Rename files in ~/Cowork-Workspace/input/ with sequential numbers.

Pattern: 001_original-name.ext, 002_original-name.ext, etc.

Sort by: [file date / alphabetically / file size]
Start numbering at: 001

Save mapping to ~/Cowork-Workspace/output/number-mapping.csv
```

### 8. Remove Dates from Filenames

```
Remove date patterns from filenames in ~/Cowork-Workspace/input/

Patterns to remove:
- YYYY-MM-DD
- YYYYMMDD
- DD-MM-YYYY
- MM-DD-YYYY

Keep the rest of the filename intact.
Log changes to ~/Cowork-Workspace/output/date-removal-log.txt
```

---

## Cleanup Prompts

### 9. Find Duplicates

```
Find duplicate files in ~/Cowork-Workspace/input/

Check for:
- Exact duplicates (same content)
- Similar filenames
- Same size files

DO NOT DELETE ANYTHING.
Create a report in ~/Cowork-Workspace/output/duplicates-report.md with:
- Groups of potential duplicates
- File sizes
- Locations
- Recommendation (which to keep)
```

### 10. Archive Old Files

```
Identify files older than [6 months / 1 year] in ~/Cowork-Workspace/input/

Create an archive folder: ~/Cowork-Workspace/input/archive-[date]/
Move old files there (don't delete).

Create manifest in ~/Cowork-Workspace/output/archive-manifest.txt with:
- Files archived
- Original locations
- File dates
- Total size archived
```

### 11. Find Large Files

```
Find files larger than [100MB / 500MB / 1GB] in ~/Cowork-Workspace/input/

Create a report in ~/Cowork-Workspace/output/large-files.md with:
- File path
- Size
- Type
- Last modified date

Sort by size, largest first.
Include total size of all large files.
```

### 12. Empty Folder Cleanup

```
Find empty folders in ~/Cowork-Workspace/input/

List all empty folders found.
DO NOT DELETE without my confirmation.

Report to ~/Cowork-Workspace/output/empty-folders.txt with:
- Folder path
- Parent folder
```

---

## Filtering Prompts

### 13. Extract by File Type

```
Copy all [PDF / image / spreadsheet] files from ~/Cowork-Workspace/input/
to ~/Cowork-Workspace/output/extracted-[type]/

Include files in subfolders.
Maintain original subfolder structure in destination.
Create a list of extracted files in ~/Cowork-Workspace/output/extracted-files.txt
```

### 14. Filter by Filename Pattern

```
Find all files matching pattern "*[pattern]*" in ~/Cowork-Workspace/input/

Copy matching files to ~/Cowork-Workspace/output/matching-files/
Create a list with full paths in ~/Cowork-Workspace/output/pattern-matches.txt
```

### 15. Filter by Content

```
Find all text files in ~/Cowork-Workspace/input/ containing "[search term]"

Create a report in ~/Cowork-Workspace/output/content-search.md with:
- File path
- Line numbers containing the term
- Context (line before and after)

Copy matching files to ~/Cowork-Workspace/output/matching-content/
```

---

## Utility Prompts

### 16. Create Folder Structure

```
Create this folder structure in ~/Cowork-Workspace/input/:

Projects/
├── Active/
│   ├── project-a/
│   │   ├── docs/
│   │   ├── assets/
│   │   └── deliverables/
│   └── project-b/
│       ├── docs/
│       ├── assets/
│       └── deliverables/
├── Completed/
└── Templates/

Confirm structure created.
```

### 17. File Inventory

```
Create a complete inventory of ~/Cowork-Workspace/input/

Output to ~/Cowork-Workspace/output/inventory.xlsx with columns:
- Filename
- Path
- Extension
- Size (KB)
- Date Modified
- Type Category

Include summary sheet with:
- Total files
- Total size
- Files by type
- Files by year
```

---

## Power User: Rule-Based Organization

From real-world usage—complex sorting with explicit rules:

### 18. Multi-Rule Sorting System

```
CONTEXT: My ~/Cowork-Workspace/input/downloads/ has 200+ files accumulated over months.
I need them organized for a project handoff.

TASK: Organize files following these rules in priority order:

RULES:
1. Client files (containing "ClientX" or "ProjectY") → Clients/[ClientName]/
2. Financial (invoices, receipts, quotes) → Finance/[Year]/
3. Design assets (.psd, .ai, .fig, .sketch) → Design/
4. Documentation (.doc, .pdf, .md) → Docs/[Topic]/
5. Code/scripts → Code/
6. Everything else → Archive/[Month-Year]/

OUTPUT:
- Move files according to rules
- Create ~/Cowork-Workspace/output/organization-manifest.xlsx with:
  - Original path, New path, Rule applied, Date moved
- Summary counts per category

CONSTRAINTS:
- Process in batches of 20 files (for token efficiency)
- Ask confirmation before each batch
- Never delete, only move
- Report any ambiguous files for manual decision
```

---

## Token Optimization for Large Operations

File organization consumes tokens rapidly. Optimize with these patterns:

### Batching Strategy

| File Count | Approach | Why |
|------------|----------|-----|
| 1-20 | Single request | Fits easily |
| 20-50 | 2-3 batched requests | Optimal efficiency |
| 50-100 | Checkpoint every 20 | Recovery on failure |
| 100+ | Sub-folder batches | Prevent context overflow |

### 19. Optimized Large Batch Processing

```
CONTEXT: ~/Cowork-Workspace/input/ contains 80+ files to organize.

TASK: Organize by type, but work efficiently:

APPROACH:
1. First: List all files and create a sorting plan (don't move yet)
2. Save plan to ~/Cowork-Workspace/output/sorting-plan.md
3. Wait for my approval
4. Then process in batches of 20 files
5. After each batch, report progress and wait for "continue"

CONSTRAINTS:
- Checkpoint progress after each batch
- If interrupted, the plan file shows what's done vs remaining
- Estimated total: 4-5 batches
```

### 20. Resume After Interruption

```
CONTEXT: File organization was interrupted.
~/Cowork-Workspace/output/sorting-plan.md shows progress.
Files marked [DONE] are already processed.

TASK: Continue from where we stopped.
Process only items NOT marked [DONE] in the plan.

OUTPUT: Update sorting-plan.md as you process.
Mark completed items with [DONE].
```

---

## Customization Notes

**Replace placeholders:**
- `~/Cowork-Workspace/input/` → Your actual input folder
- `~/Cowork-Workspace/output/` → Your actual output folder
- `[brackets]` → Your specific values

**Add constraints as needed:**
- "Exclude hidden files"
- "Process only top-level, not subfolders"
- "Skip files larger than X"
- "Only process files from last 30 days"

**Token budget awareness:**
- Simple inventory: ~20K-30K tokens
- Small organization (10-20 files): ~30K-50K tokens
- Large organization (50+ files): ~80K-150K tokens
- Pro tier: Plan for 1-2 large operations per 5-hour window

---

*[Back to Prompts Index](README.md) | [Cowork Documentation](../README.md)*
