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
The checkpoint where Cowork shows its planned actions and waits for your confirmation before executing. **Critical security measure**—always review before approving.

### Artifact
A file created by Claude (document, spreadsheet, image, etc.) during a Cowork session. Artifacts appear in Claude's interface where you can preview, edit, or download them. Examples: generated PDFs, organized spreadsheets, extracted data files.

---

## C

### Claude Code
Anthropic's CLI tool for developers. Shares architecture with Cowork but provides full shell access and code execution. Terminal-based interface.

### Claude Desktop
The macOS and Windows application that hosts Cowork. Different from the web interface (claude.ai).

### Context Compaction
A beta feature that automatically compresses conversation history during long sessions. This allows much longer effective sessions by keeping relevant context while removing redundant information.

### Claude in Excel
Microsoft Excel add-in (launched January 24, 2026) that provides AI assistance inside Excel. **Not the same as Cowork**. The add-in helps with formula writing, data analysis, and chart creation within existing Excel files. Cowork's Excel capabilities generate new spreadsheets from unstructured data. See [comparison](comparison.md#common-confusion).

### Customize Tab
The settings area in Claude Desktop for managing Skills, Connectors, and personalizations. Access it from the main app navigation to install skills, configure external tool connections, and set per-tool permissions.

### Context Limit
The maximum amount of text/data Claude can process in a single session (~200K tokens). When exceeded, tasks may fail or produce incomplete results.

### Context Window
The "memory" space where Claude holds your conversation and file contents during a session. Measured in tokens.

### Cowork
Claude's agentic desktop feature for knowledge workers. Manipulates files without code execution.

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

### Local-First
Design principle where data and processing stay on your computer rather than in the cloud. Cowork accesses local files only.

---

## M

### Max Tier
The highest Claude subscription level ($100-200/month, with 5x or 20x usage multipliers). Recommended for heavy Cowork usage.

### Pro Tier
The standard Claude subscription level ($20/month). Now includes Cowork access, but with tighter usage limits (~1-1.5 hours intensive use before quota resets).

### MCP Connector
A Model Context Protocol integration allowing Cowork to interact with external tools and services. Three types: web search, desktop/local files, and custom JSON. Each connector's tools can be set to Allow (automatic), Ask (prompt each time), or Block. No coding required for setup.

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
Anthropic's term for early-access features that aren't production-ready. Cowork is in research preview (January 2026). Expect bugs.

---

## S

### Skill
An add-on capability for Cowork, installed via the Customize tab. Invoked via slash commands (e.g., `/pdf`, `/docx`, `/xlsx`, `/canvas-design`). Skills extend what Cowork can do beyond its defaults. Official skills: `github.com/anthropics/skills`.

### Skill Chaining
Combining multiple skills in a single workflow. Example: `/pdf` to extract content from a document, then `/xlsx` to organize it into a spreadsheet. Skills execute sequentially.

### Slash Command
A shortcut for invoking a skill in Cowork (e.g., `/pdf`, `/docx`, `/xlsx`). Type the slash command at the start of your message in the Cowork chat interface.

### Scheduled Tasks
A feature allowing automated recurring Cowork operations on a set schedule (e.g., daily report compilation, weekly file organization). Removes the need to manually trigger repetitive tasks each time.

### Sub-Agent
Specialized workers spawned by the orchestrator to handle specific parts of a task. Each sub-agent has fresh context and can work in parallel with others.

### Sandbox
See [Folder Sandbox](#folder-sandbox).

---

## T

### Token
The unit Claude uses to measure text. Roughly 4 characters or 0.75 words. Used to calculate context limits.

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
