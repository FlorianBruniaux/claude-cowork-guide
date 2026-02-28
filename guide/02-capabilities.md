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
| **Haiku** | Very simple tasks, quick queries | Very Fast | Standard | Low |
| **Sonnet 4.6** ⭐ | Agentic tasks, file automation, daily Cowork workflows | Fast | 1M tokens (beta), 128K output | Standard |
| **Opus 4.6** | Deep reasoning, scientific analysis, complex multi-agent tasks | Slower | 1M tokens (beta), 128K output | Higher (5x Sonnet) |

**Model Notes** (February 2026):
- **Sonnet 4.6** (released February 17, 2026): Now the recommended default for Cowork. Achieves 72.5% on OSWorld-Verified (computer use benchmark) vs Opus 4.6's 72.7% — essentially identical performance on agentic tasks, at 5x lower cost. Also includes the 1M token context window (beta), 128K output, and adaptive thinking.
- **Opus 4.6** (released February 5, 2026): Retains advantages for deep scientific reasoning (91.3% on GPQA Diamond) and complex multi-agent coordination. For standard Cowork file operations and automation, the performance gap with Sonnet 4.6 is negligible.
- **Context compaction (beta)**: Cowork now uses automatic compaction to compress conversation history, enabling longer sessions without losing important context.

### When to Use Each

| Task Type | Recommended Model | Why |
|-----------|-------------------|-----|
| File organization, renaming | **Sonnet 4.6** | Agentic tasks — Sonnet's strength |
| Receipt extraction, OCR batches | **Sonnet 4.6** | Tool-calling — Sonnet's #1 ranking |
| Email drafts, document creation | **Sonnet 4.6** | Fast, sufficient quality |
| Daily automations, scheduled tasks | **Sonnet 4.6** | Same agentic performance, 5x cheaper |
| Multi-source research synthesis | **Sonnet 4.6** | 1M context handles large volumes |
| Contract review, legal analysis | **Opus 4.6** | Deep reasoning advantage |
| Complex scientific/technical reports | **Opus 4.6** | GPQA-level reasoning needed |
| Multi-agent coordination | **Opus 4.6** | Coordination logic benefits from Opus |

### Selection Tips

1. **Default to Sonnet 4.6** — Handles 90%+ of Cowork tasks with near-identical agentic performance to Opus
2. **Switch to Opus 4.6** only when:
   - Results require expert-level reasoning (legal, scientific, regulatory)
   - Task involves complex multi-agent coordination
   - Output quality from Sonnet falls consistently short despite good prompts
3. **Avoid Opus for file operations** — No measurable benefit over Sonnet for organizing files, extracting data, or running scheduled automations
4. **Mind your quota** — Opus consumes 5x more quota per token. On Pro plan, this compounds quickly.

> **Pro plan users**: Sonnet 4.6 is your default for everything. Reserve Opus for the rare task where reasoning depth genuinely matters.
>
> **Max plan users**: Still start with Sonnet 4.6. Switch to Opus for contract review, strategic analysis, or when Sonnet's output needs more depth.

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

Finance/institutional connectors also added (FactSet, MSCI, LSEG, S&P Global) — primarily enterprise/investment workflows.

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

> **Note**: Plugin availability and connector functionality may evolve during research preview. Google Calendar, Gmail, and DocuSign connectors were announced February 24, 2026 — check current availability in your Cowork settings.

---

## New Capabilities (February 2026)

### Scheduled Tasks

Cowork can automate recurring tasks, run them at set times without manually triggering each time. Set it up once, and it handles your daily, weekly, or monthly operations.

#### Two Task Types

**Recurring tasks** — Run automatically at set intervals without any manual action:
- Hourly, daily, weekly, weekdays-only, or custom schedules
- Cowork rewrites your prompt after the first run, optimizing it based on what it learned

**On-demand tasks** — Run once when you trigger them manually:
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

### Improved Browser Automation

Browser automation capabilities have been enhanced for more reliable web research, form interaction, and content extraction.

### Direct Excel and PowerPoint Integrations

Beyond generating `.xlsx` and `.pptx` files from scratch, Cowork can now directly edit existing Excel and PowerPoint files — modifying content, adding sheets/slides, and updating formulas in place.

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
# Memory — [Your name], [Trade]

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
# Memory — [Shop name]

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
# Memory — [Your name], [Profession]

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

### Skills — Extra Capabilities

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

#### Community Skills

Beyond official skills, the community builds and shares skills:

| Resource | What You'll Find |
|----------|-----------------|
| **github.com/anthropics/skills** | Official Anthropic skill repository |
| **claudemarketplaces.com** | Community-contributed skills |
| **skills.sh** | Skills with one-line install |
| **skillhub.club** | Curated skill collections |

Install any skill from the Customize tab: search by name or paste the skill URL.

### Connectors — Connect External Tools

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

Example: Set web search to **Ask** so Cowork confirms before going online. Set local file reading to **Allow** for seamless file access.

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

> **Note**: The Customize tab UI may evolve as Cowork exits research preview. Feature locations described here reflect the February 2026 interface.

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
