# Cowork Capabilities

🌐 **Languages**: [English](02-capabilities.md) | [Français](02-capabilities.fr.md)

> **Reading time**: ~8 minutes
>
> **Purpose**: Understand exactly what Cowork can and cannot do

---

## Model selection and usage

The models, context capacity and usage limits available in Cowork can vary by plan and surface. This guide does not maintain a fixed token window, price or quota ratio. Choose from the models shown in your Claude surface, test a small representative task, then split larger work into reviewable batches.

**Plans**: Cowork is offered on Pro, Max, Team and Enterprise. Anthropic's pages disagree about the Free plan (the installation page ticks Cowork under Free), so do not count on Cowork being available on Free.

### Current models (as of October 11, 2026)

The latest family is Claude 5.5:

| Model | Release | What Anthropic says |
|-------|---------|---------------------|
| **Claude Opus 5.5** | September 22, 2026 | Reaches the level of Claude Fable 5.1 on most tasks and costs 40% less to run than Opus 5 |
| **Claude Sonnet 5.5** | September 28, 2026 | More than 30% faster than Sonnet 5 and up to 30% cheaper on most tasks |
| **Claude Haiku 5.5** | October 7, 2026 | Anthropic's smallest, cheapest and fastest model, built for high-volume tasks |

Earlier models remain in the list: Claude Fable 5.1 and Claude Mythos 5.1 (September 1, 2026) and Claude Opus 5 (July 24, 2026). Do not treat them as the newest models any more.

**Effort levels**: Low, Medium, High, Extra high and Max. What each level costs in usage limit is not documented in this guide.

The default model for each plan is `UNKNOWN`: Anthropic has not published it. Sources: support.claude.com release notes and claude.com/docs/cowork/changelog.

For product access, consult Anthropic's current [Cowork availability guidance](https://support.claude.com/en/articles/13345190-get-started-with-claude-cowork). The exact model-to-Cowork mapping is `UNKNOWN` in this guide unless Anthropic documents it for the surface you use.

---

## One Claude, cloud execution and approvals

### One conversation, no mode to choose

The separate Chat and Cowork tabs were merged on July 7, 2026. Since September 16, 2026 (gradual rollout on Pro and Max, on web, desktop and mobile), you no longer choose a mode first: Claude decides whether a message needs a quick answer or a longer task. Anthropic puts it this way: "Claude Cowork is now just Claude". Your chats, Cowork tasks, projects, connectors and skills are kept.

For managed third-party deployments, the `desktopHome` key turns the unified view on (`standard`) or switches Chat and Cowork off (`off`). Without the key, the current separation stays until November 10, 2026, when the unified view turns on for all organizations.

### Where tasks run: the cloud

Before October 6, 2026, Cowork ran on your computer by default. Since that date, new Cowork tasks on Pro and Max run in the cloud, on Anthropic servers, in a temporary isolated environment.

- The option "Only on your computer" in Settings > General is removed. An account still set that way switches at the next launch of Claude Desktop, with a notice, and cannot go back.
- Tasks launched on your computer before October 6, 2026 stay there until they finish.
- Your folders stay on your computer. A cloud session reaches them only for the folders you connected, and only while Claude Desktop is open. The files it reads are processed on Anthropic servers.
- On Team, Cowork in the cloud is in beta and on by default. On Enterprise it is in beta and off by default: an owner must turn it on.
- Cowork sessions that run locally do not use memory (see [Cross-Session Memory](#cross-session-memory-via-desktop-commander)).

Source: support.claude.com/en/articles/15520349.

### Approval modes

Claude asks before acting according to the mode you choose. The names changed (confirmed October 11, 2026):

| Mode | Formerly | Behavior |
|------|----------|----------|
| **Manual** | Ask before acting | Claude waits for Allow or Deny at every request |
| **Auto** | n/a | Claude moves on without asking at each step. Every action is filtered, a dangerous action is blocked, and Claude looks for another way or asks. After repeated blocks it goes back to asking. Uses more of your usage limit |
| **Skip all approvals** | Act without asking | No pause and no automatic filtering of actions |

On Team and Enterprise, Auto is offered by default until an owner turns it off. "Always allow" for connector tools is off by default, so "always allow" choices already saved for write tools are not applied. A connector tool set to "Restrict to Ask" by the organization asks for approval even in Skip all approvals mode. Source: support.claude.com/en/articles/13345190 and 13455879.

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
| **Video** | ❌ No | Cannot process (see playback below) |
| **Encrypted files** | ❌ No | Cannot decrypt |

**Video playback**: since September 29, 2026, videos produced in Cowork play directly in the file panel, with thumbnails in the conversation. Analysing an existing video file is still not documented: not verified.

**Wider folder access** (September 4, 2026): Cowork can attach the full user folder, Documents and AppData on Windows, the Library folder on macOS, and entire drives. Claude's own configuration and session data stay out of reach, and so do some credential locations: SSH keys, AWS and GCP credentials, and the bash, zsh and PowerShell profiles.

**"Open with" menu**: on September 2, 2026 Claude appeared in the system "Open with" menu for spreadsheets, PDFs, Word and PowerPoint files, text files and images. Since September 22, 2026 the list is shorter: Claude is no longer the default app for files such as `.md` and `.docx`, and no longer shows in the macOS "Open with" menu for Excel and PowerPoint files. "Other..." still opens them in Claude.

### Web Capabilities (via the built-in browser or Chrome)

| Action | Can Do | Notes |
|--------|--------|-------|
| **Search web** | ✅ Yes | Via Chrome integration |
| **Read pages** | ✅ Yes | Extract content |
| **Save content** | ✅ Yes | To local files |
| **Fill forms** | ⚠️ Limited | Requires explicit approval |
| **Make purchases** | ❌ No | Security restriction |
| **Login to sites** | ❌ No | Security restriction |
| **API calls** | Surface-dependent | Browser and connector capabilities require the relevant availability and permission |

**Built-in browser** (rolling out since September 2026): Claude Desktop includes a browser Cowork can use, on macOS, Windows and Linux (beta). It is available on Pro, Max and Team, and on Enterprise (on by default from September 10, 2026 unless the organization turns it off; Anthropic pages also describe an owner enabling it, so check your organization's setting).

- It is separate from your personal browser: Claude does not see your saved passwords unless you import them.
- Sites you sign in to there stay signed in for later Cowork sessions on that computer.
- Claude Desktop must stay open and online for Claude to use it, including from a cloud session started on the web or on your phone.

**Claude in Chrome side panel**: opening the side panel of Claude in Chrome starts a Cowork session directly. It is available on Max and Team, rolling out on Pro, and on Enterprise if an admin turned it on (observed October 11, 2026, launch date not found).

Sources: support.claude.com/en/articles/16607400, 13455879, 13345190 and 15520349.

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
- Context capacity varies by model, plan and surface; validate a representative batch first
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

## Context and batch limits

Context capacity is model-, plan- and surface-dependent. The guide does not claim a fixed token, document or image limit. Validate a representative batch before a large operation and preserve the source files so that a failed batch can be reviewed.

### When a task reaches a limit

**Error message**:
```
Context limit reached
```

**Responses**:
- Save intermediate output to checkpoint files.
- Reduce the next batch to a reviewable size.
- Start a new conversation for unrelated work.

### Planning by task type

| Task | Planning rule |
|------|---------------|
| File inventory | Begin with a representative folder |
| Large file organization | Split work into reviewable batches |
| OCR batch | Verify samples and totals against source files |
| Document synthesis | Keep sources and output traceable |

Do not use historical session counts, token budgets or reset schedules from this repository to estimate paid-plan usage.

---

## Claude Design (Anthropic Labs)

Claude Design started as a separate Anthropic product. Since September 16, 2026, Claude Design, Slides and Docs can be requested in any conversation, including in Claude Code and in the Artifacts tab, on all plans including Free. You then edit the result with Claude or directly. On October 8, 2026, Docs, Slides and Design left beta.

**Access**: all plans, Free included. On Enterprise, these tools are off by default until an owner turns them on (Docs turns on by default on October 15, 2026).

| Tool | What it makes | Status (October 11, 2026) |
|------|---------------|---------------------------|
| **Claude Design** | Prototypes, mockups, visuals, with editing on the canvas and design system import | Out of beta |
| **Claude Slides** | Presentations, with their own starting point | Out of beta |
| **Claude Docs** | Living documents shared by a team. Exports to Word, PDF, Markdown and Google Docs | Out of beta |
| **Claude Dashboards** | Dashboards from data warehouses (Amazon Redshift, BigQuery, ClickHouse, Databricks, Snowflake) or connected apps such as Salesforce. Claude writes one SQL query per chart and displays it | Beta, Pro, Max, Team, Enterprise (off by default on Enterprise) |
| **Claude Motion** | Coded animations, no realistic video generation, exportable as MP4 | Beta, Team (on by default) and Enterprise (off by default) only |

Dashboards and Motion use your plan's usage limits and are private by default. Sources: support.claude.com release notes, claude.com/resources/product-announcements and support articles 17454700, 17454997 and 16923645.

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

> **Enterprise**: Claude Design, Slides and Docs are off by default. An owner must turn them on in Organization settings.

### Relationship to Cowork

Claude Design handles the visual creation layer; Cowork handles the file and document automation layer. Since the September 16, 2026 change, both are reachable from the same conversation. Use Cowork to process source data (receipts, research, reports), then ask for a design, a deck or a document to turn the output into a polished deliverable.

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

#### Connector availability

The following entry is historical documentation, not evidence of current Cowork availability. Verify a connector in your Claude surface and its permissions before a production workflow:

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

**Pricing**: `UNKNOWN` in this guide. Verify current Anthropic and partner pricing before enabling a workflow.

> **To activate**: open Claude Cowork → sidebar → Claude for Small Business toggle.

#### Google Workspace, Salesforce and Microsoft 365 (July to October 2026)

| Integration | Date and status | What it does |
|-------------|-----------------|--------------|
| **Google Docs, Sheets and Slides** | October 6, 2026, beta | An add-on for Google Workspace and connectors let you work with Claude inside Google files, or create and edit those files from Claude. Since desktop v2.16120.0 (September 29, 2026), the Output selector of a new conversation creates a Google Doc, Sheet or Slides file directly when Google Drive is connected |
| **Salesforce in Claude** | September 15, 2026, beta, paid plans | A plugin that brings accounts, opportunities and pipeline into Claude, with 37 ready-made sales skills (prepare a call, review a deal, build a pipeline dashboard, send a forecast). Reserved for organizations that Salesforce approves through its beta signup |
| **Microsoft 365 write tools** | July 7, 2026 | The connector moves from read-only to writing: draft, send and file emails, manage calendar events, edit mailbox settings, create and update OneDrive and SharePoint files. Teams stays read-only. An administrator must consent before organization-wide deployment |

Sources: claude.com/resources/product-announcements, support.claude.com release notes and claude.com/docs/cowork/changelog.

#### Publish Your Own Plugin: Developer Portal

Since September 25, 2026, a developer portal lets you submit plugins to the Claude directory, follow the review, and see usage statistics once a plugin is published. Source: support.claude.com release notes.

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

> **Note**: Connector availability depends on the surface, connector and permissions. Check the current Claude settings before relying on one.

---

## New Capabilities (February 2026)

### Scheduled Tasks

Cowork can automate recurring tasks, run them at set times without manually triggering each time. Set it up once, and it handles your daily, weekly, or monthly operations.

> **Since October 6, 2026**: new scheduled tasks run in the cloud, without any device switched on. Your folders stay on your computer, so a scheduled task that reads a local folder only reaches it while Claude Desktop is open (see [Where tasks run](#where-tasks-run-the-cloud)).

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

> **Note**: Always verify automated outputs before acting on them. The "research preview" status of Scheduled Tasks, written earlier in this guide, is not confirmed by the October 2026 sources: not verified.
>
> **Approval for tasks Claude creates** (October 1, 2026): when your organization allows it, scheduled tasks created by Claude use "Automatically approve" by default. Their runs use tools without asking and stop only if something looks dangerous. Review what such a task is allowed to do before leaving it unattended.

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

#### Where scheduled tasks run

Before the cloud change, a Cowork scheduled task on the desktop needed Claude Desktop open and the computer awake. That is no longer true for new tasks.

| Case | Requirement | Works in Cowork? |
|------|-------------|------------------|
| **New scheduled task** (since October 6, 2026, Pro and Max) | None: it runs in the cloud, with no device switched on | ✅ Yes |
| **Scheduled task that reads a local folder** | Claude Desktop open, and the folder connected | ✅ Yes, while Desktop is open |
| **Task started on your computer before October 6, 2026** | It stays on your computer until it finishes | ✅ Yes. How older recurring schedules are handled: not verified |
| **Team and Enterprise** | Cowork in the cloud is in beta: on by default on Team, off by default on Enterprise until an owner turns it on | ⚠️ Depends on your organization |
| **Headless server / CI** | No Claude Desktop | ❌ No (use Claude Code) |

Since July 7, 2026 (web and mobile beta, Max first), Cowork tasks could already run in the background in the cloud without a connected device. Anthropic says the desktop remains the best place for the full experience (local files and browser).

**For a task that must run on a server**: use a system scheduler with a developer-controlled workflow, or Claude Code.

> **Decision rule**: for a routine that works only on connected tools or cloud files, scheduling now runs without your computer. For a routine that reads local folders, keep Claude Desktop open. For automation that must run on a server with no Claude Desktop, Claude Code is the right tool.

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
| **Claude for Excel** | Check current product documentation | Varies by plan and surface |
| **Claude for PowerPoint** | Check current product documentation | Varies by plan and surface |
| **Claude for Word** | Check current product documentation | Varies by plan and surface |
| **Claude for Outlook** | Check current product documentation | Varies by plan and surface |

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

**Word**
- Drafts and revises `.docx` documents from a persistent sidebar
- All changes appear as **native Word Track Changes**, reviewable and accept/reject per edit
- Preserves native document formatting throughout

**Outlook**
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

Claude now has built-in memory, and a `memory.md` file with **Desktop Commander** remains useful as a manual alternative.

#### Built-in memory (cloud)

- **Cloud memory** (August 25, 2026): memory works across Chat and Cowork in the cloud. Each remembered item appears under Settings > Memory > Topics, where you can edit or delete it individually.
- **Defaults**: on for Free, Pro and Max, off for Team and Enterprise.
- **Sensitive topics**: the setting "Include sensitive topics in memory" excludes health and belief topics by default.
- **Format** (July 10, 2026): memory is a set of categorized entries that Claude reads and updates as you talk, replacing the daily memory summary.
- **Local sessions have no memory**: Cowork sessions that run locally do not use memory. Since October 6, 2026 new tasks on Pro and Max run in the cloud; tasks launched locally before that date stay local.
- **Old memory export ended**: accounts migrated from the old memory could export it from Settings > Memory until September 9, 2026. That option is gone.
- **Import and export with other assistants** (observed October 11, 2026, date not found): Claude can transfer a memory to or from other AI assistants. Anthropic calls the feature "experimental and still in active development". Source: support.claude.com/en/articles/11817273.
- **Reflect** (July 9, 2026, beta on Free, Pro and Max, web and Claude Desktop): Settings > Reflect shows the topics you spent time on, your most active day, your peak hour and observations about how you work with Claude, over 1, 3, 6 or 12 months. Memory must be on. Settings > Time and focus sets break reminders and quiet hours.

#### Manual alternative: memory.md (via Desktop Commander)

If you prefer a memory you fully control, or work in local sessions, install **Desktop Commander** and use a `memory.md` file.

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

> **Requires**: Desktop Commander extension (see [Getting Started Step 8](01-getting-started.md#step-8-install-desktop-commander-recommended)). On managed deployments, Desktop Extensions (`.dxt` and `.mcpb`) have been off by default since July 7, 2026 until an administrator allows them.

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

**Requirements**: This workflow depends on the connected desktop and the availability of the feature. Cowork web and mobile are beta on eligible plans, and new tasks on Pro and Max now run in the cloud since October 6, 2026. How Dispatch behaves with cloud execution is not verified: check the current surface guidance before relying on it.

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

Computer Use lets Claude act through an eligible connected desktop with permission. It is now in beta (it launched as a research preview on March 23, 2026) and is not a claim that every Cowork surface can control every host application.

**How to enable**: See [Getting Started Step 9](01-getting-started.md#step-9-enable-computer-use-beta).

**Availability** (observed October 11, 2026):

- Beta on Pro and Max, on macOS and Windows.
- Not available on Team, Enterprise or Linux.
- macOS 14 or later is required (macOS 13 is no longer supported for it). Working in the background needs macOS 15 or later. If the feature is unavailable, the Computer use section of Settings now explains why.
- Since October 6, 2026, on macOS, Computer Use no longer edits or saves hidden files and folders in your home folder, such as `~/.vimrc` or `~/.aws`.

Anthropic's current [computer-use guidance](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork) is the source of truth for plans and surfaces.

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

Claude follows a 3-level access hierarchy before resorting to screen control (connector first, then browser, then screen):

| Priority | Method | When Used |
|----------|--------|-----------|
| **1 : Connectors/Plugins** | Direct API integration (Slack, Google Calendar, etc.) | Preferred (faster, more reliable) |
| **2 : Browser** | The built-in browser of Claude Desktop, or Chrome | When no connector exists but the service has a web interface |
| **3 : Screen control** | Mouse, keyboard, screenshot loop | Last resort, when neither connector nor Chrome can complete the task |

This means Computer Use activates only when the two faster methods aren't available. A task involving a legacy desktop app with no web interface or API will trigger screen control directly. A task involving a web-based tool without a connector will go through the browser first.

> **Practical implication**: Computer Use is slower than connector-based integrations because each action requires a screenshot cycle. If your workflow is time-sensitive, check whether a connector or browser automation can handle the task first.

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

> ⚠️ **Beta caveats**: Computer Use can make mistakes navigating unfamiliar interfaces. Always supervise the first runs of a new task. Stop execution immediately if Claude takes an unexpected action.

---

## Capability boundaries

### Code execution

Cowork can run code in an isolated task environment. It does not provide unrestricted host-shell access or a general promise that installed applications and command-line tools can be controlled. Use Claude Code when a developer-controlled terminal or repository workflow is required.

### Network Operations

Browser and connector access depends on the surface and permissions. Do not infer universal API, database or cloud-storage access from a configured connector. Downloading a local copy remains a useful fallback when a connection is unavailable.

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

| Boundary | Current guidance |
|----------|------------------|
| macOS | macOS 13 Ventura or later since Claude Desktop v1.49585.0 (September 8, 2026, Electron 44). The support installation page still lists macOS 11: this guide follows the changelog |
| Windows | A Windows update of September 8, 2026 (KB5124008) blocked file access for local sessions until Microsoft fixed it on September 14, 2026. Details in [Troubleshooting](04-troubleshooting.md) |
| Linux | Claude Desktop on Linux is beta (Ubuntu 22.04+ or Debian 12+, installed with apt, no automatic updates, no computer use and no dictation) |
| Web and mobile | Cowork is beta on eligible plans |
| Cloud execution | New tasks on Pro and Max run in the cloud since October 6, 2026. Local folders are reached only while Claude Desktop is open |
| VPN | `UNKNOWN` as a universal limitation; diagnose a connection issue from current product guidance rather than disabling a VPN by default |
| Background and persistence | Vary by surface and feature; verify the current behavior before an unattended workflow |

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
         ├─ Need a developer-controlled shell → Use Claude Code
         ├─ API integration → Manual or Claude Code
         ├─ System changes → Manual operation
         └─ Web research → Cowork + built-in browser or Chrome ✅
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
| Developer-controlled shell | Claude Code |
| API integration | Claude Code + scripts |
| Cloud file sync | Native cloud apps |
| Audio/video | Specialized tools |
| Real-time data | Manual process |

---

*[← Getting Started](01-getting-started.md) | [Cowork Documentation](../README.md) | [Security →](03-security.md)*
