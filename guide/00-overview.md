# Claude Cowork: Overview

🌐 **Languages**: [English](00-overview.md) | [Français](00-overview.fr.md)

> **Reading time**: ~5 minutes

---

## What is Cowork?

**Cowork** is Claude's agentic way of working: you describe a task, and Claude plans it, works on your files and documents, and reports back. Instead of terminal commands, you work in plain language, and Cowork reaches the folders you choose to connect.

Since September 16, 2026, Cowork is no longer a separate mode: Anthropic's own words are "Claude Cowork is now just Claude". You open a conversation, and Claude decides whether a quick answer is enough or whether the request is a task to carry out. Since October 6, 2026, new tasks on Pro and Max plans run in the cloud by default (details in [Where Cowork Runs](#where-cowork-runs-local-folders-cloud-execution)).

### Key Facts

| Aspect | Details |
|--------|---------|
| **Availability** | Pro, Max, Team and Enterprise plans; not the Free plan ([official guidance](https://support.claude.com/en/articles/13345190-get-started-with-claude-cowork)). One Anthropic install page still ticks Cowork under Free: treat that as an inconsistency on Anthropic's side, not as availability |
| **Surfaces** | Claude Desktop (macOS, Windows, Linux in beta), web, mobile, and the Claude in Chrome side panel ([surface guidance](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile)) |
| **Desktop requirements** | macOS 13 Ventura or later (since Claude Desktop v1.49585.0 on September 8, 2026, per the Claude Desktop changelog); Windows; Linux in beta on Ubuntu 22.04+ or Debian 12+ ([installation guidance](https://support.claude.com/en/articles/10065433-install-claude-desktop)). One support page still shows macOS 11: use macOS 13 |
| **Where tasks run** | Pro and Max: new tasks run in the cloud since October 6, 2026. Team: cloud in beta, on by default. Enterprise: cloud in beta, off by default until an owner turns it on |
| **Computer use** | Beta on Pro and Max, macOS 14+ and Windows; not on Team, Enterprise or Linux ([official guidance](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork)) |
| **Models** | Claude 5.5 family: Opus 5.5, Sonnet 5.5, Haiku 5.5, next to Fable 5.1, Mythos 5.1 and Opus 5. Effort levels: Low, Medium, High, Extra high, Max. Anthropic publishes no default model per plan |
| **Pricing** | Pro $20/month ($200/year), Max from $100/month, Team and Enterprise per seat. US dollars, excluding tax, per claude.com/pricing on October 11, 2026. No euro price is published |
| **Focus** | File manipulation, organization, document generation |
| **Usage limits** | A rolling 5-hour limit plus weekly limits on paid plans; "usage credits" let you continue at API rates on Pro and Max. Check the current plan information before relying on a quota |

> **What changed in September and October 2026**
>
> - **September 8, 2026**: Claude Desktop requires macOS 13 Ventura or later.
> - **September 16, 2026**: Unified Claude. No more choice between Chat and Cowork; Claude decides how to handle your request (gradual rollout on Pro and Max, web, desktop and mobile).
> - **September and October 2026**: the Claude 5.5 models arrive (Opus 5.5 on September 22, Sonnet 5.5 on September 28, Haiku 5.5 on October 7).
> - **October 6, 2026**: on Pro and Max, new Cowork tasks run in the cloud. The option "Only on your computer" is removed from Settings > General, with no way back. Your folders stay on your computer.
> - **September 2026**: Cowork gets a built-in browser in Claude Desktop (gradual rollout). As of October 11, 2026, opening the Claude in Chrome side panel also starts a Cowork session, and approval modes are named Manual, Auto and Skip all approvals.
>
> What this means for you in practice: your folders stay on your computer, but Claude Desktop must be open for a cloud session to reach them. Scheduled tasks created from now on run in the cloud, so they no longer need your computer to be switched on. Details: [Where Cowork Runs](#where-cowork-runs-local-folders-cloud-execution) and [Getting Started](01-getting-started.md).


### One App for the Whole Team

Since July 7, 2026, Chat and Cowork no longer live in separate tabs. Anthropic merged them into a single view on web and desktop. Since September 16, 2026 ("Unified Claude", gradual rollout on Pro and Max across web, desktop and mobile), you no longer choose a mode at all: you converse with Claude as usual, and Claude decides whether a quick answer is enough or whether the request is a task to carry out. Your existing chats, Cowork tasks, projects, connectors and skills are kept. If your copy of Claude Desktop still shows three tabs labeled Chat, Cowork, and Code, you're on a build from before July 2026; nothing below changes, only the tab click becomes unnecessary.

For organizations that manage their own deployments, a separate setting (`desktopHome`) controls the unified view. Without it, the current separation stays until November 10, 2026, when the unified view turns on for all organizations.

Code is not affected by this merge and keeps running as its own space for developers.

| Space | For who | What it does |
|-------|---------|--------------|
| **Chat + Cowork** (single view since July 7, 2026, no mode choice since September 16, 2026) | Everyone | Conversational Claude that shifts into autonomous file work when the task calls for it |
| **Code** | Developers | Full Claude Code with graphical interface |

Both run under the same subscription (Pro, Max, Team, or Enterprise). **Your developers use Code; you use the merged Chat/Cowork workspace. Same app, same invoice.**

**Collaboration pattern**: a developer uses Code to build a feature and update the technical spec → you turn that spec into a client-ready presentation from the same Chat/Cowork workspace. You can share context between both via a shared `CLAUDE.md` file in a common folder.

> **For developers on your team**: Code is Claude Code with visual diff review, live app preview, GitHub PR monitoring, and parallel sessions (no terminal required). Full reference: [code.claude.com/docs/en/desktop](https://code.claude.com/docs/en/desktop)

### Relationship to Claude Code

Cowork shares the same backend architecture as Claude Code:

| Shared | Different |
|--------|-----------|
| Same model capabilities | Desktop app vs Terminal |
| Extended thinking | Desktop workspace vs developer-oriented terminal workflow |
| Agentic loops | Knowledge workers vs developers |
| Task execution | Isolated task environment vs developer shell |

**Key difference**: Cowork can run code in an isolated task environment. That does not grant arbitrary shell access to the user's host computer. Use Claude Code when you need a developer-controlled terminal workflow.

---

## Who Should Use Cowork?

### Good Fit

| Persona | Use Case | Why Cowork |
|---------|----------|------------|
| **Project Manager** | File organization + status reports | Multi-step automation without coding |
| **Data Analyst** | Local CSV/Excel → formatted reports | Native Excel formulas output |
| **Writer/Editor** | Research notes → structured documents | Synthesis across many sources |
| **Operations** | Receipt screenshots → expense reports | Multi-format input processing |
| **Consultant** | Client docs → deliverables | Cross-reference and synthesis |
| **Researcher** | Papers + notes → literature review | Source organization and citation |

### Poor Fit (For Now)

| Persona | Limitation | Alternative |
|---------|------------|-------------|
| **Compliance-heavy workflows** | Audit Logs don't capture Cowork activity (confirmed Anthropic limitation) | Review [Enterprise Considerations](03-security.md#enterprise-considerations) before use |
| **Tasks that need your local folders while Desktop is closed** | A cloud session reaches your folders only for connected folders, and only while Claude Desktop is open | Keep Desktop open, or put the files in a connector you have granted |
| **Host-shell needs** | Isolated task code is not unrestricted host shell access | Use Claude Code when a terminal workflow is required |
| **Linux users** | Linux is in beta (Ubuntu 22.04+ or Debian 12+): no auto-update, no computer use, no dictation | Check the current desktop installation guidance |
| **Heavy daily users** | Usage varies by plan and task | Check plan limits and split work into reviewable batches |

---

## Architecture

### Where Cowork Runs: Local Folders, Cloud Execution

Your files stay in folders on your computer, and you decide which ones Cowork may use. Where the work itself runs depends on your plan:

| Plan | Where new tasks run |
|------|---------------------|
| **Pro, Max** | In the cloud since October 6, 2026: a temporary, isolated environment on Anthropic's servers. The "Only on your computer" option no longer exists |
| **Team** | Cloud in beta, on by default |
| **Enterprise** | Cloud in beta, off by default; an owner must turn it on |

What this changes for you:

- **Your folders stay on your computer.** A cloud session reaches them only for the folders you connected, and only while Claude Desktop is open. The files Claude reads are then processed on Anthropic's servers.
- **Scheduled tasks created from now on run in the cloud**, so they no longer need your computer to be on.
- **Tasks started on your computer before October 6, 2026** stay local until they finish.
- **Local Cowork sessions do not use memory.** Memory is available in cloud sessions.

The diagram below shows the roles in a task, not the physical location: for a cloud session, the orchestrator and sub-agents run in the isolated cloud environment, and the folder box is your folder on your computer.

```
┌─────────────────────────────────────────────────────────────┐
│                    CLAUDE DESKTOP APP                        │
│  ┌─────────────────────────────────────────────────────────┐│
│  │                     COWORK                               ││
│  │  ┌─────────────────────────────────────────────────────┐││
│  │  │              ORCHESTRATOR                            │││
│  │  │  • Receives user request                            │││
│  │  │  • Creates execution plan                           │││
│  │  │  • Coordinates sub-agents                           │││
│  │  └──────────────────────┬──────────────────────────────┘││
│  │                         ↓                                ││
│  │  ┌─────────────┐  ┌─────────────┐  ┌─────────────────┐  ││
│  │  │ Sub-Agent 1 │  │ Sub-Agent 2 │  │ Sub-Agent 3     │  ││
│  │  │ (Analysis)  │  │ (Transform) │  │ (Organize)      │  ││
│  │  │             │  │             │  │                 │  ││
│  │  │ • Read files│  │ • Convert   │  │ • Move files    │  ││
│  │  │ • Extract   │  │ • Format    │  │ • Create dirs   │  ││
│  │  │ • Summarize │  │ • Generate  │  │ • Rename        │  ││
│  │  └──────┬──────┘  └──────┬──────┘  └───────┬─────────┘  ││
│  │         └────────────────┴─────────────────┘            ││
│  │                          ↓                               ││
│  │  ┌─────────────────────────────────────────────────────┐││
│  │  │              LOCAL FOLDER SANDBOX                    │││
│  │  │  ~/Cowork-Workspace/                                 │││
│  │  │    ├── input/  (your files)                         │││
│  │  │    └── output/ (generated files)                    │││
│  │  └─────────────────────────────────────────────────────┘││
│  └─────────────────────────────────────────────────────────┘│
│                                                              │
│  ┌─────────────────┐                                        │
│  │ CHROME INTEGRATION │ ← Web tasks (with explicit action)  │
│  └─────────────────┘                                        │
└─────────────────────────────────────────────────────────────┘
```

### Technical Specifications

| Aspect | Details |
|--------|---------|
| **Access model** | Folders on your computer that you connect (you grant permission); cloud sessions reach them while Desktop is open |
| **Connectors and plugins** | Include Microsoft 365 (write tools since July 7, 2026; Teams read-only), Google Docs, Sheets and Slides (beta since October 6, 2026), Salesforce in Claude (beta, approved organizations). Order of preference: connector first, then browser, then screen control |
| **Sub-agents** | Parallel execution with fresh context per agent |
| **Code execution** | In an isolated environment only: in the cloud for new Pro and Max tasks since October 6, 2026, or in a local virtual machine for older local sessions and third-party deployments. Never directly in your computer's own shell |
| **Browser** | Built-in browser in Claude Desktop (macOS, Windows, Linux beta), separate from your personal browser, Desktop open required. Claude in Chrome: opening its side panel starts a Cowork session (Max, Team; Pro rolling out; Enterprise if enabled) |
| **Context limit** | ~200K tokens (~150-500 pages per session) |
| **Output formats** | Excel (.xlsx with formulas), PowerPoint, Word, PDF, text, images |

### How Sub-Agents Work

1. **Fresh context** : Each sub-agent starts clean (no memory from other agents)
2. **Parallel execution** : Multiple agents can work simultaneously
3. **Orchestrator coordination** : Main agent assembles results
4. **Scope isolation** : Each agent sees only what it needs

This architecture enables complex multi-step workflows while maintaining security boundaries.

---

## What Cowork Cannot Do

Knowing what Cowork cannot do shapes how you use it effectively:

| Limitation | Implication |
|------------|-------------|
| Execute shell commands on your computer | No `mkdir`, `mv`, `cp` via your terminal |
| Run scripts on your computer | Task code runs only in the isolated task environment |
| Reach any cloud storage | Only through a connector you have set up (for example Google Docs, Sheets and Slides in beta); no direct Dropbox or iCloud access |
| Browse on its own without a permission | Web access goes through the built-in browser, Claude in Chrome or a connector |
| Remember in every situation | Memory exists (Settings > Memory), but local Cowork sessions do not use it; a file you reload remains a reliable fallback |
| Access arbitrary folders | Only folders you grant; Claude's own configuration and some credential locations (SSH keys, AWS/GCP credentials, shell profiles) stay out of reach |

### Workarounds

| Need | Workaround |
|------|------------|
| Cloud files | Use a connector, or download to a connected folder first |
| Code execution on your computer | Use Claude Code instead |
| Memory in a local session | Save context to a file, reload next session, or work in a cloud session |
| Web data | Use the built-in browser or Claude in Chrome |

---

## Mental Model

Think of Cowork as a **highly capable assistant with physical access to one folder**:

- Can read any file you put there
- Can create new files in any format
- Can reorganize, rename, transform
- Cannot leave that folder without permission
- Works in the cloud by default on Pro and Max, while your folders stay on your computer
- Can run task code in an isolated environment, not an unrestricted host shell
- Can use supported browser and connector capabilities when available and permitted

This constraint is a **feature, not a bug**: it creates a safe sandbox for autonomous operation.

---

## Enterprise Validation (Claude Adoption)

The following figures concern Claude in general, not Cowork. They do not prove a Cowork-specific product status or enterprise-control claim:

| Company | Results | Context |
|---------|---------|---------|
| **TELUS** | $90M value, 500K hours saved | Document processing at scale |
| **Rakuten** | 87.5% reduction in processing time | Knowledge work automation |
| **Zapier** | 89% employee adoption | Workflow integration |

**Relevance to Cowork**: These stats are for Claude in general, not Cowork specifically. However, they validate the core AI capabilities that power Cowork's document processing and autonomous workflows.

**What this means for you**:
- The AI model works reliably at enterprise scale
- Document understanding and generation are production-ready
- Verify plan-specific enterprise controls in current Anthropic documentation before a regulated deployment

---

## Next Steps

- [Getting Started](01-getting-started.md) : Setup and first workflow
- [Capabilities](02-capabilities.md) : Detailed feature breakdown
- [Security](03-security.md) : Safe usage practices

---

*[← Back to Cowork Documentation](../README.md) | [Getting Started →](01-getting-started.md)*
