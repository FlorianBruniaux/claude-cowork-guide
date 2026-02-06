# Cowork Capabilities

🌐 **Languages**: [English](02-capabilities.md) | [Français](02-capabilities.fr.md)

> **Reading time**: ~8 minutes
>
> **Purpose**: Understand exactly what Cowork can and cannot do

---

## Model Selection

Cowork supports different Claude models. Choose based on your task complexity.

### Available Models

| Model | Best For | Speed | Usage Cost |
|-------|----------|-------|------------|
| **Haiku** | Very simple tasks, quick queries | Very Fast | Low |
| **Sonnet** | Daily tasks, emails, organization | Fast | Standard |
| **Opus** | Complex analysis, multi-document synthesis | Slower | Higher |

**Model Notes** (February 2026):
- **Opus versions**: Opus 4.5 and Opus 4.6 are available. Opus 4.0 and 4.1 have been retired.
- **Opus 4.6 capabilities**: Opus 4.6 achieved 90.2% on BigLaw Bench, making it particularly effective for legal document review, contract analysis, and compliance-related tasks.
- **Context window**: Cowork now uses automatic compaction to extend conversations beyond the standard context window, enabling longer sessions without losing important context.

### When to Use Each

| Task Type | Recommended Model |
|-----------|-------------------|
| Quick emails, simple edits | Sonnet |
| File organization | Sonnet |
| Receipt data extraction | Sonnet |
| Complex document synthesis | Opus |
| Multi-source research reports | Opus |
| Strategic analysis | Opus |

### Selection Tips

1. **Start with Sonnet** — Sufficient for 80% of tasks
2. **Switch to Opus** when:
   - Results lack depth or nuance
   - Task involves 10+ source documents
   - You need detailed analysis, not just summarization
3. **Mind your limits** — Opus consumes quota faster than Sonnet

> **Pro plan users**: Sonnet is your best default. Use Opus sparingly to maximize your 5-hour usage window.

---

## Capability Matrix

### File Operations

| Operation | Can Do | Notes |
|-----------|--------|-------|
| **Read files** | ✅ Yes | Any format in granted folder |
| **Create files** | ✅ Yes | Any text-based format |
| **Move files** | ✅ Yes | Within granted folders |
| **Copy files** | ✅ Yes | Within granted folders |
| **Rename files** | ✅ Yes | Bulk renaming supported |
| **Delete files** | ✅ Yes | ⚠️ Permanent, no trash |
| **Create folders** | ✅ Yes | Nested structures supported |
| **Extract archives** | ❌ No | Cannot run unzip/tar |
| **Compress files** | ❌ No | Cannot create archives |

### Document Generation

| Format | Can Create | Features |
|--------|------------|----------|
| **Plain text** (.txt) | ✅ Yes | Any content |
| **Markdown** (.md) | ✅ Yes | Full formatting |
| **Word** (.docx) | ✅ Yes | Headers, tables, formatting |
| **Excel** (.xlsx) | ✅ Yes | Formulas, multiple sheets, formatting |
| **PowerPoint** (.pptx) | ✅ Yes | Slides, basic formatting |
| **PDF** | ✅ Yes | Generated from content |
| **HTML** | ✅ Yes | Full HTML/CSS |
| **CSV** | ✅ Yes | Data export |
| **JSON** | ✅ Yes | Structured data |

### Input Processing

| Input Type | Can Process | Notes |
|------------|-------------|-------|
| **Text files** | ✅ Yes | Any encoding |
| **Office docs** | ✅ Yes | Word, Excel, PowerPoint |
| **PDFs** | ✅ Yes | Text extraction |
| **Images** | ✅ Yes | OCR for text extraction |
| **Screenshots** | ✅ Yes | Receipt/document scanning |
| **Markdown** | ✅ Yes | Full parsing |
| **CSV/JSON** | ✅ Yes | Structured data parsing |
| **Audio** | ❌ No | Cannot process |
| **Video** | ❌ No | Cannot process |
| **Encrypted files** | ❌ No | Cannot decrypt |

### Web Capabilities (via Chrome)

| Action | Can Do | Notes |
|--------|--------|-------|
| **Search web** | ✅ Yes | Via Chrome integration |
| **Read pages** | ✅ Yes | Extract content |
| **Save content** | ✅ Yes | To local files |
| **Fill forms** | ⚠️ Limited | Requires explicit approval |
| **Make purchases** | ❌ No | Security restriction |
| **Login to sites** | ❌ No | Security restriction |
| **API calls** | ❌ No | No direct network access |

---

## Detailed Capabilities

### 1. File Organization

Cowork excels at organizing large numbers of files:

```
INPUT:  500 files in Downloads folder
OUTPUT: Organized structure by type/date/project
```

**What Cowork Does**:
- Analyzes file names, types, content
- Proposes organizational schema
- Creates folder structure
- Moves files (with your approval)
- Generates organization report

**Limitations**:
- Cannot access file metadata (creation date, etc.) reliably
- Cannot read file content for some binary formats
- Relies on file names/extensions for categorization

### 2. Document Synthesis

Combine multiple sources into structured outputs:

```
INPUT:  15 meeting notes, 3 reports, 5 emails (as text files)
OUTPUT: Executive summary with key decisions and action items
```

**What Cowork Does**:
- Reads all source documents
- Identifies key themes and information
- Structures into requested format
- Generates polished output document

**Limitations**:
- Context window limits (~200K tokens)
- Cannot access original email/calendar systems
- Synthesis quality depends on source clarity

### 3. Data Extraction

Extract structured data from unstructured sources:

```
INPUT:  20 receipt images (photos, screenshots)
OUTPUT: Excel spreadsheet with Date, Vendor, Amount, Category
```

**What Cowork Does**:
- OCR on images
- Identifies relevant fields
- Normalizes data format
- Creates Excel with formulas

**Limitations**:
- **Field extraction**: ~97% accuracy (vendor, date, totals)
- **Line-item extraction**: ~63% accuracy (table rows) — verify manually
- Handwritten text is challenging
- Some receipt formats may not parse correctly
- Budget 30-50% of "saved" time for error correction

> ⚠️ **No independent benchmarks exist** for AI file organization tools. Productivity claims are vendor marketing, not peer-reviewed research. Set realistic expectations.

### 4. Report Generation

Create formatted reports from raw data:

```
INPUT:  CSV with sales data
OUTPUT: Formatted report with charts and analysis
```

**What Cowork Does**:
- Analyzes data patterns
- Creates summary statistics
- Generates visual representations
- Formats for specified output

**Limitations**:
- Chart capabilities limited in Excel output
- Complex visualizations need manual refinement
- Statistical analysis is basic

### 5. Research Compilation

Gather and organize research from multiple sources:

```
INPUT:  Topic: "Remote work productivity tools"
OUTPUT: Research document with comparison matrix
```

**What Cowork Does**:
- Uses Chrome for web research
- Extracts relevant information
- Organizes into structured format
- Cites sources

**Limitations**:
- Cannot access paywalled content
- Web research is slower than direct API
- Quality depends on available public information

---

## Excel Capabilities (Detailed)

Since Excel output is a major Cowork strength:

### Supported Features

| Feature | Supported | Example |
|---------|-----------|---------|
| **Basic formulas** | ✅ Yes | `=SUM(A1:A10)` |
| **Conditional formulas** | ✅ Yes | `=IF(A1>100, "High", "Low")` |
| **VLOOKUP/HLOOKUP** | ✅ Yes | Cross-reference sheets |
| **Multiple sheets** | ✅ Yes | Summary + detail sheets |
| **Cell formatting** | ✅ Yes | Bold, colors, borders |
| **Number formatting** | ✅ Yes | Currency, percentages |
| **Data validation** | ⚠️ Limited | Basic dropdown lists |
| **Pivot tables** | ❌ No | Must create manually |
| **Macros/VBA** | ❌ No | Security restriction |
| **Charts** | ⚠️ Limited | Basic chart types |

### Not to Be Confused With: Claude in Excel Add-in

> ⚠️ **Important Distinction**: This section describes **Cowork's Excel generation capabilities** (creating `.xlsx` files from data). This is NOT the same as the **Claude in Excel add-in** (Microsoft Excel add-in for formula assistance, launched Jan 24, 2026).
>
> **Key differences**:
> - **Cowork Excel**: Generates new Excel files from unstructured data (receipts, images, text)
> - **Claude in Excel**: Helps with formulas/analysis inside existing Excel files
>
> See [full comparison](../reference/comparison.md#common-confusion).

### Regional Considerations

Excel formula syntax varies by region:
- **US/UK**: `=SUM(A1,A2)` (comma separator)
- **EU**: `=SUM(A1;A2)` (semicolon separator)

**Tip**: Specify your regional setting in prompts:
```
Create an Excel file using European formula syntax (semicolon separators)
```

---

## Context Window Usage

Cowork shares Claude's ~200K token context limit, but **effective capacity is ~165K**.

### Why 165K, Not 200K?

System overhead consumes tokens before your task starts:
- Tool definitions: ~10K tokens
- Safety instructions: ~10K tokens
- Execution logs: ~5-15K tokens (varies)

**Effective limit**: ~165-175K usable tokens

### Practical Limits

| Content Type | Approximate Capacity |
|--------------|---------------------|
| Plain text pages | 100-400 pages |
| Documents | 40-80 typical docs |
| Spreadsheet rows | 8,000-40,000 rows |
| Images (OCR) | 40-80 images |

### When You Hit Limits

**Error message**:
```
Context limit reached
```

**Symptoms**:
- Cowork stops mid-task (often around 165K, not 200K)
- Results are incomplete
- Silent failure without clear message

**Solutions**:
- Break work into batches of 10-20 files
- Process files in groups
- Save intermediate results to checkpoint files
- Start fresh conversation for new tasks

### Token Budget by Task Type

| Task | Tokens | Pro Sessions |
|------|--------|--------------|
| Simple Q&A | 5K-10K | Many |
| File inventory | 20K-30K | 6-8 |
| Small file org (10-20 files) | 30K-50K | 3-5 |
| Large file org (50+ files) | 80K-150K | 1-2 |
| OCR batch (10+ images) | 60K-100K | 2-3 |

**Agentic overhead**: Plan→Execute→Check cycles add 15-30% tokens.

---

## Extensions & Plugins

Cowork supports official extensions that extend its capabilities for specialized workflows. Extensions are provided by Anthropic and integrate seamlessly with the Cowork interface.

### Available Extensions

**Claude Legal** (announced February 3, 2026):
- **Purpose**: Automate legal document review and risk detection
- **Key capabilities**:
  - Automated contract review and key term extraction
  - Risk and compliance issue identification
  - NDA and agreement triage
  - Regulatory compliance tracking
- **Use cases for SMBs**:
  - Automated contract verification before signing
  - Detection of problematic clauses in vendor agreements
  - Compliance checklist generation for sector-specific regulations
  - Invoice and agreement term cross-checking

> ⚠️ **Legal Disclaimer**: Claude Legal does NOT provide legal advice. It assists with document analysis and risk identification. All findings should be reviewed by a qualified legal professional before making decisions.

**How to use**: Claude Legal capabilities are accessible through standard Cowork prompts when processing legal documents. No separate installation required—simply reference legal analysis needs in your task description.

**Example prompt**:
```
Review the contract in ~/Cowork-Workspace/contracts/vendor-agreement.pdf
Identify key terms, obligations, and potential risks.
Generate a summary with flagged issues for legal review.
```

### Future Extensions

Anthropic may release additional specialized extensions for other domains (accounting, technical documentation, etc.). Check the official Anthropic announcements for updates.

---

## What Cowork CANNOT Do

### Code Execution

```
❌ Cannot run: Python, JavaScript, shell scripts
❌ Cannot execute: Installed applications
❌ Cannot use: Command-line tools
```

**Workaround**: Use Claude Code for code execution tasks.

### Network Operations

```
❌ Cannot make: API calls, HTTP requests
❌ Cannot access: Remote databases
❌ Cannot sync: Cloud storage directly
```

**Workaround**: Download cloud files locally first, or use Chrome for web access.

### System Operations

```
❌ Cannot change: System settings
❌ Cannot install: Software
❌ Cannot access: Other applications' data
```

**Workaround**: These operations must be done manually.

### Security-Sensitive Operations

```
❌ Cannot handle: Passwords, credentials
❌ Cannot process: Encrypted files
❌ Cannot access: Protected system folders
```

**Workaround**: Keep sensitive data out of Cowork workspace.

### Environment Constraints

```
❌ Cannot work: With VPN active (VM routing conflict)
❌ Cannot run: On Windows or Linux (macOS only)
❌ Cannot operate: In background (requires app foreground)
❌ Cannot persist: Sessions across app restarts
```

**VPN Issue**: Cowork's VM conflicts with VPN network routing. This is the #1 reported issue. Solution: Disconnect VPN before using Cowork. See [Troubleshooting](04-troubleshooting.md#vm-connection-issues) for details.

---

## Capability Decision Tree

```
Need to do something with files?
├─ Yes → Is it within your granted folder?
│        ├─ Yes → Can Cowork read the file type?
│        │        ├─ Yes → Cowork can help ✅
│        │        └─ No (audio/video/encrypted) → Manual process needed
│        └─ No → Grant access or move files first
│
└─ No → What do you need?
         ├─ Execute code → Use Claude Code
         ├─ API integration → Manual or Claude Code
         ├─ System changes → Manual operation
         └─ Web research → Cowork + Chrome ✅
```

---

## Best Practices for Capabilities

### Maximize Success

1. **Match task to capability** — Check matrix before starting
2. **Prepare inputs** — Ensure files are in readable formats
3. **Specify formats** — Be explicit about output requirements
4. **Test small first** — Verify with few files before batch

### When to Choose Alternatives

| If You Need | Use Instead |
|-------------|-------------|
| Code execution | Claude Code |
| API integration | Claude Code + scripts |
| Cloud file sync | Native cloud apps |
| Audio/video | Specialized tools |
| Real-time data | Manual process |

---

*[← Getting Started](01-getting-started.md) | [Cowork Documentation](../README.md) | [Security →](03-security.md)*
