# Cowork FAQ

🌐 **Langues** : [Français](faq.fr.md) | [English](faq.md)

> **20+ frequently asked questions** about Claude Cowork

---

## Getting Started

### Q: What is Cowork?
**A:** Cowork is Claude's agentic desktop feature that lets you manipulate local files, create documents, and organize your workspace, without writing code. It runs in the Claude Desktop app and can autonomously execute multi-step file operations.

### Q: How do I get access to Cowork?
**A:** You need:
1. An eligible paid Claude plan. Eligibility varies by plan and surface.
2. Claude Desktop on macOS or Windows, or Linux beta. Web and mobile are beta on eligible plans.
3. The current Claude app or web/mobile surface for your plan.

Check Anthropic's current [Cowork availability guidance](https://support.claude.com/en/articles/13345190-get-started-with-cowork) and [surface guidance](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile) before changing a subscription.

### Q: What are the usage limits?
**A:** Usage depends on the plan, surface and task. Anthropic can change limits, so consult the current plan information in Claude rather than relying on a fixed message count or reset schedule.

### Q: Is Claude Cowork available on Windows?
**A:** Yes. Claude Desktop supports macOS and Windows, and Linux is beta. Cowork is also beta on the web and mobile for eligible plans. See Anthropic's [desktop installation](https://support.claude.com/en/articles/10065433-install-claude-desktop) and [surface availability](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile) guidance.

### Q: Is Cowork the same as Claude Code?
**A:** They share architecture but differ in interface and capabilities:
- **Claude Code**: Terminal interface, full shell access, for developers
- **Cowork**: task workspace for knowledge work, with local, browser and connector capabilities that depend on surface and permission

See [full comparison](comparison.md).

---

## Capabilities

### Q: What can Cowork do?
**A:** Core capabilities:
- Read and write local files
- Create Word, Excel, PowerPoint, PDF documents
- Organize and rename folders/files
- Extract data from images (OCR)
- Process PDFs
- Web research via Chrome

### Q: What can't Cowork do?
**A:** Cowork cannot:
- Grant itself unrestricted host-shell access
- Bypass the permissions, plan eligibility or surface availability of a capability
- Treat a configured connector as universal access to every cloud service

Cowork can run code in an isolated task environment. Supported browser and connector capabilities are available only when the relevant surface and permissions allow them.

### Q: Can Cowork browse the web?
**A:** Yes, through Chrome integration. You grant Chrome access for specific tasks, and Cowork can search, read pages, and extract information. Form filling is limited and requires explicit user approval for each action. Purchases and logins are prohibited for security reasons.

### Q: Can Cowork access Google Drive or Dropbox?
**A:** Connector availability depends on the surface, the connector and the permissions you grant. Confirm the connection in Claude before a critical workflow. Downloading a copy into a dedicated local workspace remains a useful fallback when a connector is unavailable.

### Q: Can Cowork run Python or shell scripts?
**A:** Cowork can execute code in an isolated task environment. It is not arbitrary shell access to your computer. Use Claude Code when your task needs a developer-controlled terminal or repository workflow.

### Q: What file formats can Cowork create?
**A:**
- Office: .docx, .xlsx, .pptx
- Document: .pdf, .txt, .md
- Data: .csv, .json
- Web: .html

### Q: Can Cowork create Excel formulas?
**A:** Yes! Cowork can create Excel files with working formulas, multiple sheets, and formatting. Specify your regional setting (US comma vs EU semicolon syntax) in your prompt.

### Q: Is Claude in Excel the same as Cowork?
**A:** No. These are two separate products:

**Claude in Excel** (add-in launched Jan 24, 2026):
- Microsoft Excel add-in
- Works inside Excel application
- Helps write formulas, analyze data in existing sheets
- Windows + macOS (Excel 2016+)

**Cowork's Excel capabilities**:
- Part of Claude Desktop app (macOS and Windows)
- Creates Excel files from scratch
- Generates spreadsheets from unstructured data (receipts, images, text)

**Rule of thumb**: If you're already in Excel and need formula help → use Claude in Excel add-in. If you need to generate a new spreadsheet from raw data → use Cowork.

See [detailed comparison](comparison.md#common-confusion).

### Q: What is Claude Legal?
**A:** Claude Legal is the first official Cowork extension (announced Feb 3, 2026) for automated legal document review. It helps identify key contract terms, detect compliance risks, and triage legal documents. Use it for contract verification, NDA review, and compliance tracking. **Important**: Claude Legal does NOT provide legal advice. All findings should be reviewed by a qualified legal professional. See [Capabilities: Extensions & Plugins](../guide/02-capabilities.md#extensions--plugins) for details.

### Q: What is the Customize tab?
**A:** The Customize tab in Claude Desktop is where you manage Skills, Connectors, and personalizations. Access it from the main app navigation. From there, install skills (like `/pdf` or `/xlsx`), configure external tool connectors with per-tool permissions, and adjust default behaviors.

### Q: What are Skills?
**A:** Skills are add-on capabilities installed via the Customize tab. Each skill adds a specific power invoked via slash commands: `/pdf` for advanced PDF processing, `/xlsx` for Excel work, `/docx` for Word documents, `/canvas-design` for visual layouts. Skills can also be chained, for example using `/pdf` to extract content then `/xlsx` to format it as a spreadsheet. Official skills are at `github.com/anthropics/skills`. Community skills at `claudemarketplaces.com`, `skills.sh`, `remoteopenclaw.com/skills/claude`, and `skillhub.club`.

### Q: What is Desktop Commander?
**A:** Desktop Commander is an official Cowork extension (installed from the Customize tab) that expands file access beyond the workspace folder, enables cross-session memory via a `memory.md` file, and provides one-click MCP server installation. Installing it is the recommended next step after basic Cowork setup. See [Getting Started Step 8](../guide/01-getting-started.md#step-8-install-desktop-commander-recommended).

### Q: What are MCP Connectors?
**A:** MCP (Model Context Protocol) connectors let Cowork interact with external tools and services. Three types: web search connectors, desktop/local file connectors (via Desktop Commander), and custom JSON connectors for advanced integrations. You can set permissions per tool: Allow (automatic), Ask (confirm each time), or Block (never use). No coding required, just a few clicks in the Customize tab.

### Q: Where can I find community skills?
**A:** Beyond Anthropic's official skills at `github.com/anthropics/skills`, community-built skills are available at `claudemarketplaces.com`, `skills.sh`, `remoteopenclaw.com/skills/claude`, and `skillhub.club`. Install any skill from the Customize tab by searching by name or pasting the skill URL.

### Q: What are Cowork Plugins?
**A:** Cowork Plugins are official third-party integrations announced January 30, 2026. There are currently 11 plugins: Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry, and Slack. They allow Cowork to interact directly with these services without browser automation.

### Q: What is the difference between Dispatch and Channels?

**A:** These are two different features that are often confused in tech press:

| Feature | Product | What it does | Channels |
|---|---|---|---|
| **Dispatch** | Cowork (desktop app) | Send tasks from your phone to your desktop Cowork session via QR code pairing | iOS/Android app only |
| **Channels** | Claude Code (CLI) | Connect a running Claude Code terminal session to Telegram or Discord | Telegram, Discord |

**Practical rule**: If you're using Claude Desktop (Cowork), you use **Dispatch** : pair your phone via QR code in Settings, then send tasks from the mobile app while your Mac runs them. Telegram and Discord integration belongs to **Claude Code Channels**, a separate developer tool.

If you're seeing articles about "Claude on Telegram" or "Claude on Discord", that's Claude Code Channels, not Cowork.

### Q: What is Opus 4.7's context window?
**A:** `UNKNOWN` for Cowork as a fixed value. Context capacity depends on the model, plan and surface available to you. Check the current Claude interface or Anthropic documentation before planning a large task.

### Q: What are scheduled tasks?
**A:** Scheduled tasks automate recurring Cowork operations. Two types: **recurring** (run automatically on a set cadence) and **on-demand** (triggered manually, run once).

Set them up in **Claude Desktop → left sidebar → Scheduled section → New Task**. Available cadences: hourly, daily, weekly, weekdays-only, or custom. After the first run, Cowork automatically rewrites your prompt to optimize it.

Important: on desktop, Claude Desktop must be open and your device awake when a task fires. If the device is asleep, the task is skipped and runs when the device wakes. Since July 2026, the Cowork web and mobile beta (Max plan, gradual rollout) runs scheduled tasks in the cloud even with no device connected, so this constraint no longer applies once you're on that beta.

See [Scheduled Automation workflow](../workflows/scheduled-automation.md) for copy-paste prompts and patterns.

### Q: Can I build custom plugins for Cowork?
**A:** Yes, with no coding required. Open the Plugins panel in Cowork, click Create Plugin, define your skills (reusable AI tasks), assign slash commands (e.g., `/invoice`, `/followup`), and bundle with connectors. Anthropic's 11 official plugins are open-sourced and serve as templates to adapt. Custom plugins can be shared across your team. Admin users can also create private plugin marketplaces with organization-specific catalogs.

### Q: What new connectors were added in February 2026?
**A:** On February 24, 2026, Anthropic added 12+ new MCP connectors. Key ones for SMBs: **Google Calendar** (scheduling), **Gmail** (email without Chrome), **DocuSign** (contract signing), **WordPress** (content management), and sales tools (Apollo, Clay, Outreach). Finance connectors (FactSet, MSCI, LSEG) target institutional workflows. All connectors are managed from the Customize tab with per-tool Allow/Ask/Block permissions.

### Q: What is context compaction?
**A:** Context compaction (beta) automatically compresses conversation history during long sessions. This allows much longer effective sessions by keeping relevant context while removing redundant information. It partially addresses the previous limitation of no session persistence.

### Q: What are Agent Teams?
**A:** Agent Teams (research preview) enable multi-agent coordination where multiple Claude agents work together on complex tasks. One agent can orchestrate others, each handling a specialized sub-task. This extends the existing sub-agent architecture with more sophisticated coordination.

---

## Security

### Q: Is Cowork secure?
**A:** Security and administration controls depend on your plan and current Anthropic product documentation. This guide does not treat a historical GA claim as evidence that a particular control is available. See the [Security Guide](../guide/03-security.md) and verify current official documentation before a regulated deployment.

### Q: Can Cowork access all my files?
**A:** Only folders you explicitly grant access to. Best practice: create a dedicated `~/Cowork-Workspace/` folder and only grant access there.

### Q: What is prompt injection and should I worry?
**A:** Prompt injection is when malicious content in files tries to manipulate AI behavior. Mitigation:
- Only process files from trusted sources
- Avoid files with instruction-like content
- Review Cowork's plan before approval

### Q: Is my data sent to Anthropic's servers?
**A:** File content is processed by Claude's API, similar to pasting text in chat. No official data retention policy specific to Cowork yet. For sensitive data, consider if cloud AI processing is appropriate.

### Q: Can I use Cowork for confidential business documents?
**A:** **Use with caution for sensitive data.** Enterprise controls are live (role-based access, spend limits, usage analytics, OpenTelemetry). However, two blockers remain for compliance-heavy workflows: (1) Audit Logs don't capture Cowork activity (confirmed Anthropic limitation); (2) No compliance certifications yet. For regulated industries (finance, health, legal, public sector), review the [Enterprise Considerations](../guide/03-security.md#enterprise-considerations) section before using Cowork with confidential data.

---

## Troubleshooting

### Q: Cowork stopped mid-task. What do I do?
**A:**
1. Check output folder for partial results
2. Break the task into smaller pieces
3. Resume with explicit state: "Continue from X, remaining items are Y"

Common causes: context limit, timeout, network issues.

### Q: Can I use Cowork with a VPN?
**A:** `UNKNOWN` as a universal limitation. A connection failure may have several causes, and this guide does not instruct users to disable a VPN by default. Check current Anthropic guidance and your organization's network policy, then collect the exact error before changing connectivity settings. See [VM and connection troubleshooting](../guide/04-troubleshooting.md#vm--connection-issues).

### Q: My Excel formulas show as text or errors.
**A:** Regional syntax issue. Specify in your prompt:
- US/UK: "Use comma separators in formulas"
- EU: "Use semicolon separators in formulas"

### Q: Cowork can't access my folder.
**A:**
1. System Preferences → Security & Privacy → Files and Folders
2. Find Claude Desktop
3. Enable your workspace folder
4. Restart the app if needed

### Q: Chrome integration isn't working.
**A:** Grant additional permissions:
- System Preferences → Security & Privacy → Accessibility → Add Claude
- Ensure Chrome is installed (not Chromium)

### Q: How do I stop a running task?
**A:** Type "Stop" in the chat or close the conversation window.

### Q: My task failed when my computer went to sleep.
**A:** On desktop, Cowork requires the app to remain open and active. Outside the Cowork web/mobile beta, there is:
- No offline mode
- No cross-device sync
- No memory persistence between sessions

Since July 2026, the Cowork web and mobile beta (Max plan, gradual rollout) removes this dependency: sessions and files are saved to your Claude account and tasks can run in the cloud with no device connected.

**Prevention**: Disable sleep during long tasks. For critical work, break into smaller checkpointed batches that can be resumed.

### Q: What happens during an Anthropic outage?
**A:** Cowork sessions may:
- Show elevated error rates
- Fail tasks that previously worked
- Become unresponsive

**Action**: Check [status.anthropic.com](https://status.anthropic.com), wait for resolution, don't retry repeatedly (wastes quota).

---

## Pricing & Access

### Q: How much does Cowork cost?
**A:** Cowork is available on paid Claude plans, with eligibility varying by plan and surface. Consult Anthropic's current plan and availability information for pricing and access.

### Q: Pro or Max: which should I choose?
**A:** Choose a plan from Anthropic's current plan information based on the surface and usage you need. Do not use the historical prices or quota ratios previously published in this guide as a purchase decision.

### Q: Is there a usage limit with Cowork?
**A:** Yes, but the limit is plan- and task-dependent. Confirm the current limit in Claude or Anthropic's plan documentation before scheduling a large batch.

---

## Technical

### Q: How does Cowork handle multiple files?
**A:** Cowork can spawn sub-agents that work in parallel. Each sub-agent has fresh context and works on part of the task. The main orchestrator assembles results.

### Q: What's the context limit?
**A:** It varies by model, plan and surface. Start with a representative batch, verify the output, and split subsequent work into reviewable groups rather than relying on a fixed document or token count.

### Q: Does Cowork remember across sessions?
**A:** Not by default, each session starts fresh. With **Desktop Commander** installed, you can create a `memory.md` file that persists context across sessions. Start each session with "Read ~/Cowork-Workspace/memory.md first." Without Desktop Commander, the workaround remains saving context to a file and loading it next session. See [Memory Setup workflow](../workflows/memory-setup.md) for details.

### Q: Can I automate Cowork with scripts?
**A:** Not currently. Cowork has no API or automation interface (January 2026). For automation, use Claude Code.

---

## Comparison

### Q: When should I use Cowork vs Claude Code?
**A:**
- **Cowork**: File organization, document creation, data extraction, no coding required
- **Claude Code**: Software development, shell access, code execution

### Q: When should I use Cowork vs Projects?
**A:**
- **Cowork**: Need to create files, organize folders, batch process
- **Projects**: Just want to chat about documents, brainstorm, write

### Q: When should I just use Chat instead of Cowork?
**A:** Chat (Projects/web) is better for:
- **Reasoning & strategy**: Iterative dialogue, hypothesis testing, nuanced thinking
- **Code development**: Claude Code integration, rapid test cycles
- **Writing & drafting**: Live artifacts, inline iteration
- **Exploratory tasks**: When requirements aren't clear yet
- **Collaboration**: Shareable links, team visibility
- **Mobile/any device**: Zero-install access

**Rule of thumb**: Is the challenge *intellectual* (reason/write/code) or *operational* (organize/automate/batch)? Chat for the first, Cowork for the second. Most users: ~80% Chat, ~20% Cowork.

### Q: Can developers benefit from Cowork?
**A:** Yes, for non-code tasks:
- Organizing documentation
- Creating reports from logs
- Research compilation
- File management

---

## Future

### Q: Is Cowork still in beta?
**A:** Do not apply one global beta or GA label to every Cowork capability. Availability varies by surface and plan; computer use remains a research preview on eligible plans. Check the current [Cowork availability](https://support.claude.com/en/articles/13345190-get-started-with-cowork) and [computer-use guidance](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork).

### Q: What features are coming?
**A:** Product availability changes. Linux is currently beta for Claude Desktop. Use Anthropic's release and support documentation rather than this FAQ for future-feature announcements.

### Q: Will there be an API for Cowork?
**A:** UNKNOWN. This guide does not make a roadmap commitment for a Cowork API. Cowork is not desktop-only: web and mobile access are beta on eligible plans.

### Q: Should I expect breaking changes?
**A:** Yes. Anthropic's research previews have low stability patterns:
- Models deprecated ~6-12 months post-release (60+ day notice)
- UI features get backend changes that may affect workflows
- Behavior may change between updates

**Mitigation**: Don't build critical workflows that depend on Cowork's exact behavior. Have fallback plans. Check r/ClaudeAI and status.anthropic.com for change announcements.

---

## Still Have Questions?

- **Support**: support.anthropic.com
- **Community**: Reddit r/ClaudeAI
- **Feedback**: Claude Desktop app → Feedback option

---

*[Back to Cowork Documentation](../README.md)*
