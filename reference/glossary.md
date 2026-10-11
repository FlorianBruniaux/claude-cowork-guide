# Cowork Glossary

🌐 **Languages**: [English](glossary.md) | [Français](glossary.fr.md)

> **Terminology specific to Claude Cowork and related concepts**

---

## A

### Agentic
Describes AI systems that can autonomously plan and execute multi-step tasks with minimal human intervention. Cowork is "agentic" because it analyzes your request, creates a plan, and executes it (with your approval).

### Agent Teams
A research preview feature enabling multi-agent coordination where multiple Claude agents work together on complex tasks. One agent orchestrates others, each handling a specialized sub-task with sophisticated coordination.

### Approval Gate
The checkpoint where Cowork shows its planned actions and waits for your confirmation before executing. **Critical security measure**: always review before approving. Since the approval modes were renamed (observed October 11, 2026), how often the gate stops you depends on the mode you choose: see [Approval Modes](#approval-modes).

### Approval Modes
The three levels of supervision you choose for Cowork: **Manual** (formerly "Ask before acting"), **Auto**, and **Skip all approvals** (formerly "Act without asking"). See the three entries below. Source: support.claude.com/en/articles/13345190.

### Auto (approval mode)
Claude moves forward without asking at each step, but every action is checked first. An action judged dangerous is blocked, Claude looks for another way or asks you, and it falls back to asking if it is blocked repeatedly. Auto uses more of your usage limit. On Team and Enterprise, Auto is offered by default unless an owner turns it off. Source: support.claude.com/en/articles/13345190 and 13455879.

### Artifact
A file created by Claude (document, spreadsheet, image, etc.) during a Cowork session. Artifacts appear in Claude's interface where you can preview, edit, or download them. Examples: generated PDFs, organized spreadsheets, extracted data files.

---

## B

### Built-in Browser
A browser inside Claude Desktop (macOS, Windows, Linux in beta) that Cowork can use for web tasks. It is separate from your personal browser: Claude does not see your saved passwords unless you import them on purpose. Claude Desktop must stay open and online for Claude to use it. Order of preference for Claude: a connector first, then a browser (built-in or Claude in Chrome), then screen control. Source: support.claude.com/en/articles/16607400 and 13455879.

---

## C

### Claude Code
Anthropic's CLI tool for developers. Shares architecture with Cowork but provides full shell access and code execution. Terminal-based interface.

### Claude Dashboards
A beta feature (observed October 8, 2026) that builds dashboards from data warehouses (Amazon Redshift, BigQuery, ClickHouse, Databricks, Snowflake) or connected apps such as Salesforce. Claude writes one SQL query per chart and displays it. Available on Pro, Max, Team and Enterprise (off by default on Enterprise). It uses your plan's usage limits and is private by default. Source: support.claude.com release notes and article 17454700.

### Claude Desktop
Claude's desktop application for macOS, Windows, and Linux (beta). Since September 8, 2026 (v1.49585.0), the Mac app needs macOS 13 Ventura or later. The Linux beta covers Ubuntu 22.04+ and Debian 12+, has no automatic update, and has no computer use or dictation. Cowork is also available on the web and mobile for eligible plans. See Anthropic's current [surface guidance](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile).

### Claude Docs
A format for living documents that you create from any conversation and share with your team. It leaves beta on October 8, 2026, and exports to Word, PDF, Markdown and Google Docs. Available on all plans, Free included. On Enterprise it is on by default from October 15, 2026. Source: support.claude.com release notes and article 16923645.

### Context Compaction
A beta feature that automatically compresses conversation history during long sessions. This allows much longer effective sessions by keeping relevant context while removing redundant information.

### Claude in Excel
Microsoft Excel add-in (launched January 24, 2026) that provides AI assistance inside Excel. **Not the same as Cowork**. The add-in helps with formula writing, data analysis, and chart creation within existing Excel files. Cowork's Excel capabilities generate new spreadsheets from unstructured data. See [comparison](comparison.md#common-confusion).

### Claude Motion
A beta feature (Team and Enterprise only) that produces coded animations, exportable as MP4. It does not generate realistic video. It is on by default on Team and off by default on Enterprise, and it uses your plan's usage limits. Source: support.claude.com release notes and article 17454997.

### Claude Slides
Claude's presentation format, available from any conversation on all plans (Free included) since September 16, 2026, and out of beta since October 8, 2026. You edit the slides with Claude or directly. Source: support.claude.com release notes.

### Customize Tab
The settings area in Claude Desktop for managing Skills, Connectors, and personalizations. Access it from the main app navigation to install skills, configure external tool connections, and set per-tool permissions.

### Context Limit
The amount of text or data Claude can process in a session. It varies by model, plan and surface; verify the current limit in Claude before a large task.

### Context Window
The "memory" space where Claude holds your conversation and file contents during a session. Measured in tokens.

### Cowork
Claude's task workspace for knowledge work. It can use your files (for connected folders) and, where available and permitted, browser or connector capabilities. Task code runs in an isolated environment, not through unrestricted host-shell access. Since September 16, 2026, Cowork is no longer a separate mode: see [Unified Claude](#unified-claude).

### Cowork in the cloud
Where new Cowork tasks run. Since October 6, 2026, new tasks on Pro and Max run on Anthropic's servers, in a temporary isolated environment. The "Only on your computer" option in Settings > General is removed, with no way back. Your folders stay on your computer: a cloud session reaches only the folders you connected, and only while Claude Desktop is open (files it reads are processed on Anthropic's servers). Tasks started locally before October 6 stay local until finished. New scheduled tasks run in the cloud, even with your computer off. On Team it is a beta, on by default. On Enterprise it is a beta, off by default until an owner turns it on. Local Cowork sessions do not use memory. Source: support.claude.com/en/articles/15520349.

### Desktop Commander
An official Cowork extension installed from the Customize tab. Enables: (1) file system access beyond the workspace folder, (2) cross-session memory via a `memory.md` file, (3) one-click MCP server installation. Recommended for all regular Cowork users.

---

## E

### Execution Plan
The detailed list of actions Cowork proposes before starting work. Shows what files will be affected and how. **Review this carefully.**

### Extended Thinking
Claude's ability to reason through complex problems step-by-step. Shared capability between Claude Code and Cowork.

---

## F

### Folder Sandbox
The restricted area where Cowork can operate. You grant access to specific folders; Cowork cannot access anything outside this boundary.

---

## K

### Knowledge Worker
Non-technical professionals who work primarily with information and documents (project managers, analysts, writers, consultants). Cowork's target audience.

---

## L

### Local workspace
A folder or desktop context that you explicitly make available to Cowork. Local access does not imply access to every file, and Cowork capabilities can also depend on the connected desktop, browser or connector permission.

---

## M

### Max plan
A paid Claude plan. Cowork eligibility, price and usage limits can vary by plan and surface; verify the current Anthropic plan information before deciding.

### Pro plan
A paid Claude plan. Cowork eligibility, price and usage limits can vary by plan and surface; verify the current Anthropic plan information before deciding.

### MCP Connector
A Model Context Protocol integration allowing Cowork to interact with external tools and services. Three types: web search, desktop/local files, and custom JSON. Each connector's tools can be set to Allow (automatic), Ask (prompt each time), or Block. No coding required for setup.

### Manual (approval mode)
Claude waits for your Allow or Deny at every request (formerly "Ask before acting"). The safest mode, and the slowest. Source: support.claude.com/en/articles/13345190.

### Memory File
A markdown file (typically `memory.md`) used with Desktop Commander to persist context across Cowork sessions. Contains business context, client preferences, and recurring task information. Reference it at the start of each session: "Read ~/Cowork-Workspace/memory.md first."

### Multi-Step Task
An operation requiring multiple sequential actions. Example: "read files → analyze → create report → organize output." Cowork excels at these.

---

## O

### OCR (Optical Character Recognition)
Technology that extracts text from images. Cowork uses OCR to read receipts, screenshots, and scanned documents.

### Orchestrator
The main Cowork agent that receives your request, creates the plan, coordinates sub-agents, and assembles results.

---

## P

### Plugin (Cowork Plugin)
An official third-party integration that extends Cowork's capabilities. 11 plugins were announced January 30, 2026: Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry, and Slack. Plugins allow Cowork to interact directly with these services without browser automation.

### Prompt
The instructions you give to Claude. Can be simple ("organize these files alphabetically") or complex multi-step workflows ("read invoices → extract data → create spreadsheet → categorize by date"). Clear prompts yield better results.

### Prompt Injection
A security attack where malicious instructions are hidden in files, attempting to manipulate AI behavior. Mitigation: only process trusted files.

### Projects
Claude's conversation interface on claude.ai. Allows document uploads but no local file access or creation.

---

## R

### Research Preview
Anthropic's label for an early-access capability. Do not infer a global Cowork beta or GA status from one feature. Computer use was a research preview when it launched on March 23, 2026; as of October 11, 2026, Anthropic's help page describes it as "in beta for Pro and Max plans" (macOS and Windows only, not Team, Enterprise or Linux). Check Anthropic's current [computer-use guidance](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork).

---

## S

### Skip all approvals (approval mode)
Claude acts without pausing and without filtering its actions (formerly "Act without asking"). Use it only on non-sensitive work. On Team and Enterprise, a connector tool that the organization set to "Restrict to Ask" still asks for approval, even in this mode. Source: support.claude.com/en/articles/13345190 and 13455879.

### Skill
An add-on capability for Cowork, installed via the Customize tab. Invoked via slash commands (e.g., `/pdf`, `/docx`, `/xlsx`, `/canvas-design`). Skills extend what Cowork can do beyond its defaults. Official skills: `github.com/anthropics/skills`.

### Skill Chaining
Combining multiple skills in a single workflow. Example: `/pdf` to extract content from a document, then `/xlsx` to organize it into a spreadsheet. Skills execute sequentially.

### Slash Command
A shortcut for invoking a skill in Cowork (e.g., `/pdf`, `/docx`, `/xlsx`). Type the slash command at the start of your message in the Cowork chat interface.

### Scheduled Tasks
A feature allowing automated recurring Cowork operations on a set schedule (e.g., daily report compilation, weekly file organization). Removes the need to manually trigger repetitive tasks each time.

### Smart Reports
A beta Enterprise feature (September 10, 2026) that analyzes how a team uses Claude: work done, cost, friction points in sessions, and repeated patterns worth turning into shared skills. Source: support.claude.com release notes.

### Sub-Agent
Specialized workers spawned by the orchestrator to handle specific parts of a task. Each sub-agent has fresh context and can work in parallel with others.

### Sandbox
See [Folder Sandbox](#folder-sandbox).

---

## T

### Token
The unit Claude uses to measure text. Roughly 4 characters or 0.75 words. Used to calculate context limits.

---

## U

### Unified Claude
Since September 16, 2026 (gradual rollout on Pro and Max, web, desktop and mobile), there is no Chat or Cowork mode to choose: Claude decides whether your request is a quick answer or a task. Anthropic's words: "Claude Cowork is now just Claude". The separate Chat and Cowork tabs had already merged on July 7, 2026. Chats, tasks, projects, connectors and skills are kept. For administered third-party deployments, the unified view applies to all organizations on November 10, 2026. Source: support.claude.com release notes.

---

## W

### Workflow
A repeatable sequence of actions that transforms input into output. Example: "read files → process → create output." Like a recipe you can reuse for similar tasks. Cowork excels at automating repetitive workflows.

### Workspace
The dedicated folder structure for Cowork operations. Best practice: `~/Cowork-Workspace/` with `input/` and `output/` subfolders.

---

## Common Acronyms

| Acronym | Meaning |
|---------|---------|
| CLI | Command Line Interface |
| OCR | Optical Character Recognition |
| PDF | Portable Document Format |
| API | Application Programming Interface |
| SSO | Single Sign-On |

---

## Related Terms from Claude Code

| Term | In Code Context | In Cowork Context |
|------|-----------------|-------------------|
| **CLAUDE.md** | Project context file | Can use for shared team context |
| **Sub-agents** | Task-specific workers | Same concept, file-focused |
| **Hooks** | Event handlers | Not available in Cowork |
| **MCP** | Model Context Protocol | Supported via Claude Desktop configuration |

---

*[Back to Cowork Documentation](../README.md)*
