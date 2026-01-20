# Workflow: File Organization

> **Estimated time**: 15 minutes
> **Difficulty**: Beginner

---

## Use Case

You have a messy folder with mixed files—Downloads folder, project folder, or any disorganized collection. This workflow helps you:

- Sort files by type, date, or project
- Create logical folder structures
- Generate organization reports
- Clean up naming inconsistencies

> ⚠️ **Set realistic expectations**: No independent benchmarks exist for AI file organization productivity. Vendor claims of "5x time savings" are marketing, not research. AI helps most with **routine categorization**; complex or ambiguous files still need human judgment.

---

## Prerequisites

- [ ] Cowork enabled in Claude Desktop
- [ ] Files to organize (can be any number)
- [ ] Workspace folder created

---

## Step-by-Step Instructions

### Step 1: Prepare Your Workspace

```bash
# Create workspace if needed
mkdir -p ~/Cowork-Workspace/{input,output}

# Copy files to organize (don't move originals yet)
cp -R ~/Downloads/* ~/Cowork-Workspace/input/

# OR for a specific folder
cp -R ~/SomeMessyFolder/* ~/Cowork-Workspace/input/
```

**Important**: Copy first, don't move. This preserves originals until you're satisfied.

### Step 2: Survey the Files

Start a Cowork conversation and ask for an overview:

```
List all files in ~/Cowork-Workspace/input/ and show me:
- Total count
- File types present
- Approximate breakdown by type
- Any patterns in naming
```

Review this before proceeding. It helps you understand what you're working with.

### Step 3: Choose Organization Strategy

**Option A: Organize by Type**
```
Organize all files in ~/Cowork-Workspace/input/ by file type.

Create these folders:
- Documents (pdf, doc, docx, txt, md, rtf)
- Spreadsheets (xls, xlsx, csv, numbers)
- Images (jpg, jpeg, png, gif, svg, webp)
- Videos (mp4, mov, avi, mkv)
- Audio (mp3, wav, m4a, flac)
- Archives (zip, rar, tar, gz, 7z)
- Code (js, py, html, css, json, xml)
- Other (everything else)

Move files to appropriate folders.
Save organization report to ~/Cowork-Workspace/output/organization-report.txt
```

**Option B: Organize by Date**
```
Organize all files in ~/Cowork-Workspace/input/ by date.

Create year/month folder structure:
- 2024/
  - 01-January/
  - 02-February/
  - ...
- 2025/
  - 01-January/
  - ...

Use file modification date for sorting.
Move files to folders.
Create report in ~/Cowork-Workspace/output/date-organization.txt
```

**Option C: Organize by Project**
```
Analyze files in ~/Cowork-Workspace/input/ and organize by project.

Identify projects based on:
- Filename patterns
- Content (read text files)
- Related file groups

Create a folder for each project identified.
Put unclassifiable files in "Unsorted/" folder.
Create project index in ~/Cowork-Workspace/output/project-index.md
```

### Step 4: Review the Plan

Cowork will show you its planned actions. **Read carefully**:

- Does the folder structure match your expectations?
- Are file categorizations correct?
- Is the scope appropriate?

If something looks wrong, say:
```
Wait. Modify the plan:
- [Your correction]
```

### Step 5: Execute and Verify

If the plan looks good:
```
Proceed with the plan
```

After completion:
```bash
# Check the results
ls -la ~/Cowork-Workspace/input/

# Review the report
cat ~/Cowork-Workspace/output/organization-report.txt
```

### Step 6: Apply to Original (Optional)

If satisfied with the organization:
```bash
# Remove original messy folder (CAREFUL!)
rm -rf ~/Downloads/*

# Move organized files to original location
mv ~/Cowork-Workspace/input/* ~/Downloads/
```

---

## Example Session

```
USER: List all files in ~/Cowork-Workspace/input/

COWORK: Found 247 files:
- Documents: 45
- Images: 120
- Videos: 15
- Archives: 22
- Other: 45

USER: Organize by type. Create folders for Documents, Images, Videos,
Archives, and Other. Move files appropriately.
Create report in ~/Cowork-Workspace/output/organization.txt

COWORK: [Shows plan with 5 folders and file distribution]

USER: Proceed

COWORK: [Executes and reports completion]
```

---

## Troubleshooting

### "Permission denied" on some files

```bash
# Check file permissions
ls -la ~/Cowork-Workspace/input/

# Fix permissions if needed
chmod 644 ~/Cowork-Workspace/input/*
```

### Files not categorized correctly

Be more specific about rules:
```
Recategorize: Move .md files to Documents, not Code.
Move .json files with "config" in name to Configuration folder.
```

### Hidden files being ignored

```
Also process hidden files (starting with .)
Include them in the appropriate categories.
```

### Too many "Other" files

Specify additional categories:
```
Create additional folders:
- Fonts (ttf, otf, woff)
- Installers (dmg, pkg, exe)
- Data (json, xml, yaml)
```

---

## Variations

### Clean Filenames While Organizing

```
Organize by type AND standardize filenames:
- Remove special characters
- Replace spaces with hyphens
- Convert to lowercase
- Add date prefix (YYYY-MM-DD)
```

### Identify Duplicates

```
Before organizing, identify duplicate files.
Create duplicates report in ~/Cowork-Workspace/output/duplicates.txt
Group duplicates but don't delete any.
Then organize unique files by type.
```

### Archive Old Files

```
Organize recent files (last 6 months) by type.
Move older files to ~/Cowork-Workspace/input/archive/
Create manifest of archived files.
```

---

## Best Practices

1. **Always copy first** — Work on copies until satisfied
2. **Review the plan** — Don't auto-approve
3. **Check the report** — Verify categorization accuracy
4. **Start with small tests** — Test with 20 files before 2000
5. **Keep backups** — Until you're confident in results
6. **Budget for review** — Plan 30-50% of time for checking and fixing misfiles
7. **Watch your quota** — Large batches (500+ files) consume significant tokens; Pro users may hit limits

---

*[Back to Workflows](README.md) | [Cowork Documentation](../README.md)*
