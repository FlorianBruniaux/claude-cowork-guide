# Cowork Capabilities

🌐 **Languages**: [English](02-capabilities.md) | [Français](02-capabilities.fr.md)

> **Reading time**: ~8 minutes
>
> **Purpose**: Understand exactly what Cowork can and cannot do

---

## Model Selection

Cowork supports different Claude models. Since Sonnet 4.6 launched (February 17, 2026), the model selection calculus has changed significantly.

### Available Models

| Model | Best For | Speed | Context Window | Usage Cost |
|-------|----------|-------|----------------|------------|
| **Haiku 4.5** | Very simple tasks, quick queries | Very Fast | Standard | Low |
| **Sonnet 4.6** ⭐ | Agentic tasks, file automation, daily Cowork workflows | Fast | 1M tokens, 128K output | Standard |
| **Opus 4.6** | Deep reasoning, scientific analysis, complex multi-agent tasks | Slower | 1M tokens, 128K output | Higher (5x Sonnet) |
| **Opus 4.7** | Hardest tasks, vision-heavy work, long multi-session projects | Slower | 1M tokens, 128K output | Higher (5x Sonnet) |

**Model Notes** (updated May 2026):
- **Sonnet 4.6** (released February 17, 2026): Recommended default for Cowork. Achieves 72.5% on OSWorld-Verified (computer use benchmark) vs Opus 4.6's 72.7%, essentially identical agentic performance at 5x lower cost. 1M token context window, 128K output, adaptive thinking.
- **Opus 4.6** (released February 5, 2026): Deep scientific reasoning (91.3% on GPQA Diamond) and complex multi-agent coordination. For standard Cowork file operations, the performance gap with Sonnet 4.6 is negligible.
- **Opus 4.7** (released April 16, 2026): Notable improvement over Opus 4.6 on the hardest tasks. Self-corrects logic errors during planning, better instruction following, stronger vision (images up to 2,576px / ~3.75 megapixels, 3× previous resolution). More tasteful output on slides, docs, and interfaces. Better filesystem memory across sessions. New `xhigh` effort level available. Same pricing as Opus 4.6. Use for complex multi-step workflows where quality matters most.
- **Context compaction**: Cowork uses automatic compaction to compress conversation history, enabling longer sessions without losing important context.

### When to Use Each

| Task Type | Recommended Model | Why |
|-----------|-------------------|-----|
| File organization, renaming | **Sonnet 4.6** | Agentic tasks (Sonnet's strength) |
| Receipt extraction, OCR batches | **Sonnet 4.6** | Tool-calling (Sonnet's #1 ranking) |
| Email drafts, document creation | **Sonnet 4.6** | Fast, sufficient quality |
| Daily automations, scheduled tasks | **Sonnet 4.6** | Same agentic performance, 5x cheaper |
| Multi-source research synthesis | **Sonnet 4.6** | 1M context handles large volumes |
| Contract review, legal analysis | **Opus 4.6 / 4.7** | Deep reasoning advantage |
| Complex scientific/technical reports | **Opus 4.6 / 4.7** | GPQA-level reasoning needed |
| Multi-agent coordination | **Opus 4.7** | Better self-correction and planning |
| Long multi-session projects | **Opus 4.7** | Superior cross-session memory |
| Dense image/diagram analysis | **Opus 4.7** | 3× resolution improvement |
| Claude Design (slides, decks) | **Opus 4.7** | More tasteful visual output |

### Selection Tips

1. **Default to Sonnet 4.6** : Handles 90%+ of Cowork tasks with near-identical agentic performance to Opus
2. **Switch to Opus 4.7** when:
   - Results require expert-level reasoning (legal, scientific, regulatory)
   - Task spans multiple sessions and needs persistent context
   - You're processing dense images, screenshots, or diagrams
   - Output quality on slides/docs consistently needs more depth
3. **Opus 4.7 vs 4.6**: 4.7 catches its own logic errors during planning, follows instructions more precisely, produces better visual output. For pure file operations, the difference is marginal.
4. **Mind your quota** : Opus consumes 5x more quota per token than Sonnet. On Pro plan, this compounds quickly.

> **Pro plan users**: Sonnet 4.6 is your default for everything. Reserve Opus 4.7 for the rare task where reasoning depth or visual quality genuinely matters.
>
> **Max plan users**: Start with Sonnet 4.6. Switch to Opus 4.7 for contract review, multi-day projects, vision-heavy tasks, or when Sonnet's output falls short.

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
| **PowerPoint** (.pptx) | ✅ Yes | Slides, basic formatting (see [reusable template workflow →](../workflows/presentation-slides.en.md#reusable-template-from-existing-file)) |
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
- Context window limits (up to 1M tokens with Opus 4.7 or Sonnet 4.6)
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
- **Line-item extraction**: ~63% accuracy (table rows), verify manually
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

With Opus 4.7, Cowork supports up to **1M tokens of context** (generally available, no longer in beta). In practice, effective capacity depends on which model you select.

### Context by Model

| Model | Context Window | Effective Usable |
|-------|---------------|-----------------|
| **Haiku 4.5** | Standard | Standard minus overhead |
| **Sonnet 4.6** | 1M tokens | ~950K (system overhead ~50K) |
| **Opus 4.7** | 1M tokens | ~950K (system overhead ~50K) |

System overhead (tool definitions, safety instructions, execution logs) consumes roughly 30-50K tokens regardless of model. This is negligible at 1M scale but still matters for session planning.

### Practical Limits

| Content Type | Approximate Capacity (1M window) |
|--------------|----------------------------------|
| Plain text pages | 500-2,000+ pages |
| Documents | 200-400 typical docs |
| Spreadsheet rows | 40,000-200,000 rows |
| Images (OCR) | 200-400 images |

### When You Hit Limits

**Error message**:
```
Context limit reached
```

**Symptoms**:
- Cowork stops mid-task
- Results are incomplete
- Silent failure without clear message

**Solutions**:
- Break very large batches into groups of 50-100 files
- Save intermediate results to checkpoint files
- Start fresh conversation for unrelated tasks

### Token Budget by Task Type

| Task | Tokens | Pro Sessions |
|------|--------|--------------|
| Simple Q&A | 5K-10K | Many |
| File inventory | 20K-30K | Many |
| Small file org (10-20 files) | 30K-50K | Many |
| Large file org (50+ files) | 80K-150K | Many |
| OCR batch (10+ images) | 60K-100K | Many |

**Agentic overhead**: Plan→Execute→Check cycles add 15-30% tokens.

---

## Claude Design (Anthropic Labs)

Claude Design is a separate Anthropic product, not part of Cowork itself, but closely integrated and highly relevant for non-technical users who need to produce visual work.

**Access**: `claude.ai/design`, available in research preview for Claude Pro, Max, Team, and Enterprise subscribers. No extra cost; uses existing subscription limits. Powered by **Claude Opus 4.7**.

### What It Does

Describe what you need, and Claude builds a first version. Refine through conversation, inline comments on specific elements, direct text edits, or custom adjustment sliders (generated by Claude) for spacing, color, and layout.

**Use cases**:
- Realistic prototypes for user testing, shareable without code review
- Product wireframes and mockups for feature planning
- Pitch decks and presentations (from outline to on-brand deck, exportable as PPTX)
- Marketing collateral: landing pages, social assets, campaign visuals
- Design explorations: quickly generate a range of visual directions

### How It Works

| Step | What Happens |
|------|-------------|
| **Brand setup** | During onboarding, Claude reads your codebase and design files and builds a design system (colors, typography, components), applied automatically to every project |
| **Import** | Start from text, upload DOCX/PPTX/XLSX, point to your codebase, or use the web capture tool to grab elements from an existing site |
| **Refine** | Inline comments, direct edits, adjustment sliders. Ask Claude to apply changes across the whole design. |
| **Collaborate** | Org-scoped sharing: keep private, share as view-only link, or grant edit access with group conversation |
| **Export** | Internal URL, folder, Canva, PDF, PPTX, standalone HTML |

> **Enterprise**: Claude Design is off by default. Admins must enable it in Organization settings.

### Relationship to Cowork

Claude Design handles the visual creation layer; Cowork handles the file and document automation layer. The two complement each other: use Cowork to process source data (receipts, research, reports), then use Claude Design to turn the output into a polished visual deliverable.

---

## Extensions & Plugins

Cowork supports official extensions that extend its capabilities for specialized workflows. Extensions are provided by Anthropic and integrate directly with the Cowork interface.

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

**How to use**: Claude Legal capabilities are accessible through standard Cowork prompts when processing legal documents. No separate installation required. Simply reference legal analysis needs in your task description.

**Example prompt**:
```
Review the contract in ~/Cowork-Workspace/contracts/vendor-agreement.pdf
Identify key terms, obligations, and potential risks.
Generate a summary with flagged issues for legal review.
```

### Official Plugins (January 30, 2026) + Expanded Ecosystem (February 24, 2026)

The plugin ecosystem has grown significantly. Starting from 11 core plugins (January 30), Anthropic expanded with enterprise connectors and functional plugins on February 24.

#### Core Plugins (all users)

| Plugin | Category | SMB Use Cases |
|--------|----------|---------------|
| **Asana** | Project Management | Task tracking, project status |
| **Canva** | Design | Create visuals, social posts |
| **Cloudflare** | Infrastructure | Site management, analytics |
| **Figma** | Design | Design file access, review |
| **GitHub** | Development | Repository management, issues |
| **Google Drive** | Cloud Storage | File access, document management |
| **Jira** | Project Management | Issue tracking, sprint management |
| **Linear** | Project Management | Issue tracking, project planning |
| **Notion** | Knowledge Base | Pages, databases, documentation |
| **Sentry** | Monitoring | Error tracking, performance |
| **Slack** | Communication | Messages, channel management |

#### New Connectors (February 24, 2026)

Key additions relevant for SMBs:

| Connector | Category | Use Cases |
|-----------|----------|-----------|
| **Google Calendar** | Productivity | Meeting scheduling, availability checks |
| **Gmail** | Communication | Email workflows without Chrome |
| **DocuSign** | Documents | Contract signing, document workflows |
| **WordPress** | Publishing | Post management, content updates |
| **Apollo** | Sales | Contact research, prospecting |
| **Clay** | Sales | Lead enrichment, CRM data |
| **Outreach** | Sales | Sales sequences, follow-ups |
| **Similarweb** | Research | Competitor web traffic analysis |
| **Harvey** | Legal | Legal document analysis |
| **LegalZoom** | Legal | Document templates, compliance |

Finance/institutional connectors also added (FactSet, MSCI, LSEG, S&P Global), primarily for enterprise and investment workflows.

#### GA Connectors (April 9, 2026)

Launched alongside Cowork's general availability:

| Connector | Category | Use Cases |
|-----------|----------|-----------|
| **Zoom** | Communication | Meeting management, transcript retrieval, workflow automation from Cowork |

#### Creative Connectors : Claude for Creative Work (April 28, 2026)

Nine new MCP connectors targeting creative professionals. All are based on the open Model Context Protocol, interoperable with other LLMs.

| Connector | What Claude Can Do |
|-----------|-------------------|
| **Ableton** | Q&A on official Live and Push documentation |
| **Adobe Creative Cloud** | 50+ tools across Photoshop, Premiere, Express, Illustrator, Lightroom, InDesign, Firefly (~40 available on the free plan without an Adobe account) |
| **Affinity by Canva** | Automate repetitive production tasks (batch image adjustments, layer renaming, export), generate custom features |
| **Autodesk Fusion** | Create and modify 3D models through conversation (Fusion subscription required) |
| **Blender** | Natural-language interface to Blender's Python API: analyze and debug scenes, build batch scripts, add tools to the Blender interface |
| **Resolume Arena** | VJ/live visual performance: control Resolume Arena via natural language for live shows |
| **Resolume Wire** | Visual programming for Resolume: automate patch creation and routing |
| **SketchUp** | Describe a room, piece of furniture, or building concept → Claude generates a 3D model starting point to open in SketchUp |
| **Splice** | Search royalty-free sample catalogs from within Claude |

> For SMBs: the most directly useful connectors are **Adobe** (design assets, social visuals), **Canva via Affinity** (batch production), and **SketchUp** (architecture, interior design, construction).

#### Claude for Small Business (May 13, 2026)

A pre-packaged bundle inside Claude Cowork, activated with a single toggle. Connects Claude to the tools small businesses already use and ships ready-to-run workflows for the most time-consuming tasks.

**Included connectors (pre-installed)**:

| Tool | Role |
|------|------|
| **QuickBooks** | Payroll planning, month-end close, cash flow, tax prep |
| **PayPal** | Settlements, invoicing, dispute and refund management |
| **HubSpot** | Lead triage, customer pulse, campaign attribution |
| **Canva** | Campaign asset generation and multi-channel publishing |
| **Docusign** | Contract sending, status tracking, executed copy filing |
| **Google Workspace** | Docs, Drive, Calendar, Gmail workflows |
| **Microsoft 365** | Office document workflows |

**15 ready-to-run agentic workflows + 15 reusable skills for recurring tasks** covering finance, operations, sales, marketing, HR, and customer service, including:
- **Payroll planning**: reconcile QuickBooks + PayPal settlements, build a 30-day forecast, queue reminders
- **Month-end close**: reconcile books, flag mismatches, write a plain-English P&L, export a close packet for your accountant
- **Business pulse**: cash position, sales trend, pipeline movement, weekly commitments, all on one page on a schedule
- **Campaign launch**: identify slow revenue periods, analyze HubSpot performance, draft strategy, generate assets in Canva
- Invoice chaser, margin analyzer, lead triager, contract reviewer, and more

**How it works**: toggle on inside Cowork → connect your tools → pick a workflow → Claude does the work → you approve before anything sends, posts, or pays. Existing tool permissions are respected. Claude can only access what your linked account is already allowed to see.

**Pricing**: no additional fee beyond your Claude subscription and the partner tools you already use.

> **To activate**: open Claude Cowork → sidebar → Claude for Small Business toggle.

#### Functional Plugins by Department

Beyond individual app connectors, Anthropic launched pre-built plugins that combine connectors and skills for specific job functions:

| Function | Covers |
|----------|--------|
| **HR** | Full employee lifecycle: job descriptions, onboarding docs, offer letters, offboarding |
| **Legal & Design** | UX copy, accessibility audits, design critiques |
| **Operations** | Process documentation, vendor evaluations, change request tracking, brand voice |
| **Engineering** | Development workflows, code review processes |
| **Finance** | Financial analysis workflows (enterprise-focused) |

#### Build Your Own Plugin (No Code Required)

You can create custom plugins tailored to your specific workflow:

1. Open Cowork's **Plugins panel** in the interface
2. Click **Create Plugin**
3. Define your skills (reusable AI tasks) with descriptions
4. Assign slash commands to each skill (e.g., `/quote`, `/followup`)
5. Bundle skills with relevant connectors
6. Share across your team

Starting point: Anthropic's 11 official plugins are open-sourced and available as templates to adapt.

#### Admin: Private Plugin Marketplace

Organizations can create a private catalog of approved plugins:
- Admins control which plugins and connectors are available to users
- Plugins can be bundled with pre-configured connector permissions
- Organization-wide sharing tools in development

> **Note**: Google Calendar, Gmail, and DocuSign connectors were announced February 24, 2026. Zoom was added at GA (April 9, 2026). Check current availability in your Cowork settings.

---

## New Capabilities (February 2026)

### Scheduled Tasks

Cowork can automate recurring tasks, run them at set times without manually triggering each time. Set it up once, and it handles your daily, weekly, or monthly operations.

#### Two Task Types

**Recurring tasks** : Run automatically at set intervals without any manual action:
- Hourly, daily, weekly, weekdays-only, or custom schedules
- Cowork rewrites your prompt after the first run, optimizing it based on what it learned

**On-demand tasks** : Run once when you trigger them manually:
- Useful for irregular or one-off operations
- Same setup process, just triggered via "Run now" instead of a schedule

#### How to Set Up a Task

1. Open **Claude Desktop → left sidebar → Scheduled** section
2. Click **New Task**
3. Write your task prompt (CTOC format recommended)
4. Choose task type:
   - Recurring: set cadence (hourly / daily / weekly / weekdays / custom)
   - On-demand: will run when you click "Run now"
5. Activate

**Managing tasks from the sidebar**: view upcoming runs, see past run history, edit prompt or cadence, pause, resume, delete, or trigger an on-demand run at any time.

> **Note**: Scheduled Tasks is in research preview. Reliability may vary. Always verify automated outputs before acting on them.
>
> ⚠️ **Device must be awake**: If your computer is asleep or Claude Desktop is closed when a task fires, it will be skipped and re-run once the device wakes and the app reopens. Plan accordingly for overnight or early-morning schedules.

#### 4 Essential Patterns

**Pattern 1: Daily Morning Brief**
Triggers every day at 9am. Consolidates overnight inputs into a usable brief.

```
CONTEXT: Files added yesterday to ~/Cowork-Workspace/input/daily/
TASK: Summarize new documents, key information, items requiring action today
OUTPUT: ~/Cowork-Workspace/output/brief-[date].md with sections: Actions Today, Key Info, Nothing Urgent
CONSTRAINTS: Max 1 page. Bullet points only. Flag anything time-sensitive.
```

**Pattern 2: Weekly Sales Compilation**
Triggers every Monday at 8am. Pulls together the past week's data.

```
CONTEXT: Files in ~/Cowork-Workspace/input/weekly/ from the past 7 days
TASK: Compile into a weekly summary, totals, notable items, open follow-ups
OUTPUT: ~/Cowork-Workspace/output/weekly-[date].docx
CONSTRAINTS: One-page executive format. Include totals. Flag overdue items.
```

**Pattern 3: Friday Wrap-Up**
Triggers every Friday at 5pm. Documents what happened this week.

```
CONTEXT: All files modified this week in ~/Cowork-Workspace/
TASK: Create end-of-week recap, work done, pending items, notes for next Monday
OUTPUT: ~/Cowork-Workspace/output/recap-[date].md
CONSTRAINTS: Focus on what's actionable next week. Brief format.
```

**Pattern 4: Monthly Dashboard**
Triggers on the 1st of each month. Creates your monthly overview.

```
CONTEXT: ~/Cowork-Workspace/input/monthly/ for the past month
TASK: Monthly summary, key metrics, trends, outstanding issues
OUTPUT: ~/Cowork-Workspace/output/dashboard-[month].xlsx with Summary and Details tabs
CONSTRAINTS: Use EU formula syntax. Month-over-month comparison where data allows.
```

#### Reliability Notes

Scheduled tasks work well for straightforward, repeatable operations. For complex multi-step workflows or tasks that depend on external data availability, check outputs manually the first few runs to validate behavior.

Alternative for advanced automation: **n8n** (open source) can trigger Cowork Desktop via the n8n-nodes-claude-desktop community node, enabling more sophisticated scheduling and conditional logic.

#### 3 Methods: What Cowork Can and Can't Schedule

Not all scheduled automation works the same way depending on your setup:

| Method | How It Works | Requirement | Works in Cowork? |
|--------|-------------|-------------|-----------------|
| **Cowork native UI** | Sidebar → Scheduled → New Task | Claude Desktop open, machine awake | ✅ Yes |
| **Machine off / you're away** | Task fires while Mac is sleeping or closed | Remote execution | ❌ No (use Dispatch or Claude Code) |
| **Headless server / CI** | Automated server without a display | No Claude Desktop | ❌ No (use Claude Code) |

**The honest answer**: Cowork's scheduled tasks require Claude Desktop to be running and your Mac to be awake. If the Mac sleeps or the app closes when a task fires, it skips and re-runs once the device wakes.

**For the two unsupported cases:**

- **You're away but Mac is on** → use [Dispatch](#dispatch--control-cowork-from-your-phone): send the task from your phone, runs on your desktop
- **Fully headless, machine off, or server** → switch to Claude Code with a system cron job. Example: every Monday at 7am, Claude Code summarizes last week's tickets and posts to Slack. No machine, no UI, no babysitting.

> **Decision rule**: Cowork scheduling is best for "while I'm working" routines (morning brief, weekly compilation). For automation that must run reliably regardless of whether you're at your desk, Claude Code is the right tool.

### Improved Browser Automation

Browser automation capabilities have been enhanced for more reliable web research, form interaction, and content extraction.

### Direct Excel and PowerPoint Integrations

Beyond generating `.xlsx` and `.pptx` files from scratch, Cowork can now directly edit existing Excel and PowerPoint files, modifying content, adding sheets/slides, and updating formulas in place.

> **Practical use case**: Build a reusable PPTX template from your existing company presentation (brand colors, house structure), then generate each new presentation from notes in 3 steps. See the [reusable template workflow](../workflows/presentation-slides.en.md#reusable-template-from-existing-file).

### Claude Add-ins for Microsoft Office (Word, Excel, PowerPoint, Outlook)

Beyond Cowork's file generation, Claude is also available as a **persistent sidebar directly inside Office apps**, installed once from Microsoft AppSource and present every time you open a file.

> **Install**: In any Office app, go to Insert > Get Add-ins, then search "Claude by Anthropic".

#### Availability

| App | Status | Plans |
|-----|--------|-------|
| **Claude for Excel** | ✅ Available | Pro, Team, Enterprise |
| **Claude for PowerPoint** | ✅ Available | Pro, Team, Enterprise |
| **Claude for Word** | ✅ Generally available (since May 7, 2026) | Pro, Team, Enterprise |
| **Claude for Outlook** | 🔵 Public beta (since May 7, 2026) | Pro, Team, Enterprise |

> Free plan access is very limited. A paid plan is required for regular use.

#### What Each Add-in Does

**Excel**
- Analyze complex datasets without leaving the spreadsheet
- Generate formulas with cell-by-cell explanations
- Build pivot tables, charts, and financial models on demand

**PowerPoint**
- Reads your existing template (layouts, fonts, colors, slide masters)
- Generates and edits slides while respecting your brand guidelines
- Rewrites and reorganizes content within existing presentations

**Word** (generally available since May 7, 2026)
- Drafts and revises `.docx` documents from a persistent sidebar
- All changes appear as **native Word Track Changes**, reviewable and accept/reject per edit
- Preserves native document formatting throughout

**Outlook** (public beta since May 7, 2026)
- Assists with drafting, summarizing, and responding to emails
- Accessible from the sidebar inside Outlook desktop and web
- Shares the same conversation context as Excel, Word, and PowerPoint

#### Shared Context Across Apps (since March 2026, extended May 2026)

The four add-ins share a common conversation context. Load an Excel file in the sidebar, switch to PowerPoint, Word, or Outlook: Claude still has your data available, no copy-pasting required.

**Practical workflow: Q1 board report from a single dataset**

1. Open your sales Excel file with the Claude sidebar active
2. Ask: *"Summarize the key trends from this data"*
3. Switch to PowerPoint (Claude keeps the context) → *"Build 5 slides from the Excel data, match this brand template"*
4. Switch to Word (still in context) → *"Write a 1-page executive summary from the same data"*
5. Switch to Outlook → *"Draft an email to the board sharing the report highlights"*

Four files and an email produced from one data load, without leaving Office.

#### How This Differs from Cowork

| | Cowork | Claude Office Add-ins |
|---|--------|----------------------|
| **Starting point** | Raw data (emails, PDFs, notes, images) | An Office file already open |
| **Output** | Generates a new `.xlsx` / `.pptx` / `.docx` | Edits or extends the current document |
| **Interface** | Standalone Claude Desktop app | Sidebar inside Word, Excel, PowerPoint, or Outlook |
| **Best for** | "Create this file from scratch" | "Help me work on this file right now" |

> For formula generation specifically, also see: [Not to Be Confused With: Claude in Excel Add-in](#not-to-be-confused-with-claude-in-excel-add-in).

> **Enterprise note**: All four Office add-ins support LLM Gateway connections. Use Claude through Amazon Bedrock, Google Cloud Vertex AI, or Microsoft Azure Foundry without direct API exposure.

### Agent Teams (Research Preview)

Agent Teams lets multiple Claude agents work on a task simultaneously. Instead of one agent processing 50 documents sequentially, you can split the work across several agents, each handling a portion, and get results faster.

#### When to Use Agent Teams

| Situation | Example |
|-----------|---------|
| **Large document batches** | Analyze 50 supplier invoices at once |
| **Multi-source research** | Research 10 competitors simultaneously |
| **Parallel categorization** | Sort 200 files by type and date at the same time |
| **Complex synthesis** | Combine data from multiple file types into one report |

For tasks with 5-10 files or simple sequential operations, standard Cowork without Agent Teams is usually sufficient.

#### How to Invoke Agent Teams

Ask Cowork to use multiple agents explicitly:

```
Process all PDF invoices in ~/Cowork-Workspace/input/invoices/
Use parallel agents to analyze each invoice simultaneously.
Extract: Date, Supplier, Amount, Payment Terms, VAT
Compile into a single Excel at ~/Cowork-Workspace/output/invoice-analysis.xlsx
```

Or for research:
```
Research these 8 competitors: [list]
Use separate agents for each company.
For each: products, pricing, target market, main differentiators.
Compile into ~/Cowork-Workspace/output/competitor-analysis.docx
```

#### SMB Use Cases

- **Accounting**: Process a month's receipts in a fraction of the time
- **Procurement**: Compare quotes from multiple suppliers simultaneously
- **Compliance**: Check multiple contracts against a compliance checklist in parallel
- **Content**: Generate variations of a document for different client types at once

#### Limitations

Agent Teams is in research preview. Coordination between agents can occasionally be imperfect, one agent may not correctly pass context to another. For critical work, verify the assembled output carefully. The feature works most reliably with clearly scoped, parallel tasks rather than tightly interdependent workflows.

### Cross-Session Memory (via Desktop Commander)

By default, each Cowork session starts fresh, Cowork doesn't remember preferences, client names, or context from previous sessions. With **Desktop Commander** installed, you can solve this with a `memory.md` file.

#### How It Works

1. Create `~/Cowork-Workspace/memory.md` with your recurring context
2. At the start of each session: "Read ~/Cowork-Workspace/memory.md first. Then [your request]"
3. Cowork loads your preferences and context before starting work

#### Recommended memory.md Structure

```markdown
# My Cowork Memory

## Business Context
- Business type: [your type]
- Main clients: [names and key info]
- Preferred document formats: [list]

## Communication Preferences
- Tone with clients: [formal/casual]
- Language: [French/English/both]
- Things to never do: [list]

## Recurring Tasks
- Weekly: [what you do each week]
- Monthly: [what you do each month]

## Important Details
- VAT number: [if relevant for invoices]
- Standard payment terms: [your terms]
```

#### Templates by Business Type

**Tradesperson (plumber, electrician, builder)**
```markdown
# Memory : [Your name], [Trade]

## Clients
- Client Dupont: apartment at [address], prefers afternoon calls, always requests itemized quotes
- Client Martin: villa renovation ongoing, needs formal invoices

## Standards
- Quote format: always include labor and materials separately
- Payment terms: 30 days net
- Default VAT rate: 20%
```

**Retail (shop, boutique)**
```markdown
# Memory : [Shop name]

## Inventory Priorities
- Fast movers: [top 5 products]
- Seasonal: [periods and categories]
- Reorder threshold: [quantity]

## Supplier Preferences
- Primary supplier: [name, contact, lead time]
- Backup: [name]
```

**Professional Services (consultant, accountant, coach)**
```markdown
# Memory : [Your name], [Profession]

## Active Clients
- Client A: monthly strategic consulting, formal reports in Word
- Client B: needs bilingual documents (FR/EN)

## Document Templates
- Proposal: see ~/Cowork-Workspace/templates/proposal-template.docx
- Report: [structure preferences]
```

> **Requires**: Desktop Commander extension (see [Getting Started Step 8](01-getting-started.md#step-8-install-desktop-commander-recommended)).

---

## Customize Cowork

The **Customize tab** in Claude Desktop is where you extend and personalize Cowork. You'll find it in the main app navigation. Three main areas: Skills, Connectors, and personalizations.

### Skills : Extra Capabilities

Skills add specific powers to Cowork, invoked via slash commands. Think of them as specialized tools you activate when needed.

#### Official Skills (Anthropic)

| Skill | Slash Command | What It Does |
|-------|--------------|--------------|
| **PDF** | `/pdf` | Advanced PDF processing and extraction |
| **Word** | `/docx` | Enhanced Word document creation and editing |
| **PowerPoint** | `/pptx` | Richer slide generation and formatting |
| **Excel** | `/xlsx` | Advanced spreadsheet operations |
| **Canvas Design** | `/canvas-design` | Visual layout and design creation |
| **Algorithmic Art** | `/algorithmic-art` | Pattern and visual generation |
| **Skill Creator** | `/skill-creator` | Create custom skills for your specific needs |

#### How to Use Skills

```
/pdf Extract all tables from the contracts in ~/Cowork-Workspace/input/contracts/
     Save each table as a separate CSV in ~/Cowork-Workspace/output/
```

#### Skill Chaining

Combine skills in sequence for multi-step operations:

```
/pdf Extract the data from these receipts
/xlsx Organize it into a monthly expense tracker with totals and categories
Input: ~/Cowork-Workspace/input/receipts/
Output: ~/Cowork-Workspace/output/expenses-[month].xlsx
```

#### Smart Skills Loading

Skills no longer consume your entire context window. Claude loads only the skills it needs for the current task, when it needs them. On long sessions with many installed skills, this significantly extends effective working capacity.

**Practical impact**: You can install 20+ skills without worrying about context overhead on every task.

#### Community Skills

Beyond official skills, the community builds and shares skills:

| Resource | What You'll Find |
|----------|-----------------|
| **github.com/anthropics/skills** | Official Anthropic skill repository |
| **claudemarketplaces.com** | Community-contributed skills |
| **skills.sh** | Skills with one-line install |
| **[remoteopenclaw.com/skills/claude](https://www.remoteopenclaw.com/skills/claude)** | Claude-focused community skills directory with category pages, install guides, and related workflow resources |
| **skillhub.club** | Curated skill collections |

Install any skill from the Customize tab: search by name or paste the skill URL.

### Connectors : Connect External Tools

Connectors let Cowork interact with tools beyond your local files. Three connector types:

| Type | What It Does | Setup |
|------|-------------|-------|
| **Web Search** | Searches the web (alternative to Chrome) | Toggle in Customize tab |
| **Desktop (local files)** | Access files outside your workspace | Via Desktop Commander |
| **Custom JSON** | Connect to any service with a JSON definition | Advanced users |

#### Permission Levels Per Tool

Each connector tool can be set independently:

| Permission | Behavior |
|-----------|----------|
| **Allow** | Cowork uses this tool automatically without asking |
| **Ask** | Cowork asks your permission each time before using |
| **Block** | Cowork never uses this tool |

Example: Set web search to **Ask** so Cowork confirms before going online. Set local file reading to **Allow** for direct file access without interruption.

#### Setting Up Connectors (No Coding Required)

1. Go to **Customize tab → Connectors**
2. Browse available connectors
3. Click a connector → set individual tool permissions
4. Save, connector is active immediately

> **Note**: Desktop Commander (a connector) is covered separately in [Getting Started Step 8](01-getting-started.md#step-8-install-desktop-commander-recommended). It's the recommended first connector for most users.

### The Customize Tab Ecosystem

| Area | Find It In | Key Action |
|------|-----------|-----------|
| **Skills** | Customize → Skills | Install, manage slash commands |
| **Connectors** | Customize → Connectors | Add tools, set permissions |
| **Desktop Commander** | Customize → Extensions | Enable cross-session memory |
| **Personalizations** | Customize → Profile | Default behaviors, language settings |

> **Note**: Feature locations described here reflect the April 2026 interface.

---

## New Capabilities (March 2026)

### Dispatch : Control Cowork from Your Phone

Dispatch lets you manage Cowork tasks remotely from your iOS or Android app while your desktop runs the work.

**How it works**:
1. Open Claude for iOS/Android
2. A persistent Cowork thread is available in the mobile app
3. Pair your phone to your desktop by scanning a QR code in Claude Desktop settings
4. Send tasks, check progress, or add instructions from anywhere. Claude works on your Mac while you're away.

**Requirements**: Mac must stay awake, Claude Desktop must remain open.

**Known limitations (research preview)**:
- Tasks run in a single thread, so complex tasks may queue and delay by a minute or two
- Claude cannot open native Mac apps like Photos through Dispatch
- Task completion notifications require manual checking

### Interactive Visualizations

Claude can now generate fully interactive charts, diagrams, and visual assets directly inline in responses, with no export or third-party tool needed.

| Surface | Available | Examples |
|---------|-----------|---------|
| **Claude Desktop** | ✅ Yes | Interactive charts, sliders, decision trees, weather widgets, recipe cards |
| **Claude for iOS/Android** | ✅ Yes (March 25, 2026) | Live charts, sketches, shareable interactive assets |

Visualizations are rendered in HTML/CSS/JS (Chart.js and similar). Users can interact with sliders, inputs, and clickable elements directly in the chat.

> **Practical use cases for SMBs**: Price calculators with sliders, project timeline visualizers, multi-choice decision trees for client onboarding, interactive quote summaries.

### Computer Use : Direct Desktop Control

Computer Use lets Claude control your Mac directly: open applications, navigate the screen, click, type, and fill forms, without custom API integrations or setup.

**How to enable**: See [Getting Started Step 9](01-getting-started.md#step-9-enable-computer-use-macos-optional).

**Available on**: Pro and Max plans, macOS (March 23, 2026, research preview).

#### What Claude Can Do

| Action | Example |
|--------|---------|
| Open applications | Launch Excel, Word, Finder, browser |
| Navigate and click | Click buttons, menus, checkboxes |
| Fill forms | Enter data in any app or web form |
| Transfer data | Copy content between applications without an API |
| Browse the web | Navigate sites that lack integrations |
| Work with legacy software | Any GUI app, even without API access |

#### How Claude Decides When to Use It

Claude follows a 3-level access hierarchy before resorting to screen control:

| Priority | Method | When Used |
|----------|--------|-----------|
| **1 : Connectors/Plugins** | Direct API integration (Slack, Google Calendar, etc.) | Preferred (faster, more reliable) |
| **2 : Chrome** | Browser automation via Chrome integration | When no connector exists but the service has a web interface |
| **3 : Screen control** | Mouse, keyboard, screenshot loop | Last resort, when neither connector nor Chrome can complete the task |

This means Computer Use activates only when the two faster methods aren't available. A task involving a legacy desktop app with no web interface or API will trigger screen control directly. A task involving a web-based tool without a connector will go through Chrome first.

> **Practical implication**: Computer Use is slower than connector-based integrations because each action requires a screenshot cycle. If your workflow is time-sensitive, check whether a connector or Chrome automation can handle the task first.

#### Security Behavior

- **Explicit permission per task**: Claude requests access before interacting with each new application
- **Trained refusals**: Claude will not perform stock trading, save sensitive credentials, or scrape facial images
- **Token cost**: Higher than standard Cowork (each action cycle captures a screenshot)

> ⚠️ **Official Anthropic guidance**: Do not use Computer Use with applications that have access to healthcare data, financial accounts, or personal records. Anthropic explicitly acknowledges Computer Use is "still early" and recommends against granting access to sensitive systems until the feature matures. Start with low-stakes, reversible tasks on apps that don't hold critical data.

#### Practical SMB Use Cases

- Fill in supplier portals that have no API
- Update legacy ERP or accounting software
- Cross-copy data between apps that don't connect
- Automate repetitive GUI operations (form entry, status updates)
- Test user flows on your own products

> ⚠️ **Research preview caveats**: Computer Use can make mistakes navigating unfamiliar interfaces. Always supervise the first runs of a new task. Stop execution immediately if Claude takes an unexpected action.

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
❌ Cannot run: On Linux (macOS and Windows only)
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

1. **Match task to capability** : Check matrix before starting
2. **Prepare inputs** : Ensure files are in readable formats
3. **Specify formats** : Be explicit about output requirements
4. **Test small first** : Verify with few files before batch

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
