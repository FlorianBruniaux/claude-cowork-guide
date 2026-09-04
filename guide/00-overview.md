# Claude Cowork: Overview

🌐 **Languages**: [English](00-overview.md) | [Français](00-overview.fr.md)

> **Reading time**: ~5 minutes

---

## What is Cowork?

**Cowork** is Claude's agentic desktop feature that extends autonomous AI capabilities to non-technical users through the Claude Desktop app. Instead of terminal commands, Cowork accesses local folders and files directly.

### Key Facts

| Aspect | Details |
|--------|---------|
| **Availability** | Paid Claude plans; eligibility varies by plan and surface ([official guidance](https://support.claude.com/en/articles/13345190-get-started-with-cowork)) |
| **Desktop platform** | macOS and Windows; Linux is beta ([installation guidance](https://support.claude.com/en/articles/10065433-install-claude-desktop)) |
| **Web and mobile** | Beta on eligible plans ([surface guidance](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile)) |
| **Computer use** | Research preview on eligible plans, not a product-wide status ([official guidance](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork)) |
| **Focus** | File manipulation, organization, document generation |
| **Usage limits** | Vary by plan and task; check the current plan information before relying on a quota |


### One App for the Whole Team

Since July 7, 2026, Chat and Cowork no longer live in separate tabs. Anthropic merged them into a single view on web and desktop: you converse with Claude as usual, and Cowork's autonomous file access kicks in within that same window when a task needs it. If your copy of Claude Desktop still shows three tabs labeled Chat, Cowork, and Code, you're on a build from before July 2026; nothing below changes, only the tab click becomes unnecessary.

Code is not affected by this merge and keeps running as its own space for developers.

| Space | For who | What it does |
|-------|---------|--------------|
| **Chat + Cowork** (single view since July 7, 2026) | Everyone | Conversational Claude that shifts into autonomous file work when the task calls for it |
| **Code** | Developers | Full Claude Code with graphical interface |

Both run under the same subscription (Pro, Max, Teams, or Enterprise). **Your developers use Code; you use the merged Chat/Cowork workspace. Same app, same invoice.**

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
| **Cloud or browser workflows** | Access depends on the connected desktop, permissions and configured connectors | Verify access in the current surface before starting |
| **Host-shell needs** | Isolated task code is not unrestricted host shell access | Use Claude Code when a terminal workflow is required |
| **Linux users** | Linux availability is beta | Check the current desktop installation guidance |
| **Heavy daily users** | Usage varies by plan and task | Check plan limits and split work into reviewable batches |

---

## Architecture

### Local-First Design

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
| **Access model** | Local folder sandbox (user grants permission) |
| **Cloud connectors** | Experimental, unreliable (Gmail, Drive available but inconsistent as of January 2026) |
| **Sub-agents** | Parallel execution with fresh context per agent |
| **Code execution** | **None** : Files only (no scripts, no commands) |
| **Browser** | Chrome integration for web research tasks |
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
| Execute shell commands | No `mkdir`, `mv`, `cp` via terminal |
| Run scripts | No Python, JavaScript, bash execution |
| Access cloud storage | No direct Google Drive, Dropbox, iCloud |
| Network requests | No API calls, no HTTP requests |
| Persist memory | No cross-session memory (only via files) |
| Access arbitrary folders | Only granted sandbox locations |

### Workarounds

| Need | Workaround |
|------|------------|
| Cloud files | Download to local workspace first |
| Code execution | Use Claude Code instead |
| Cross-session memory | Save context to a file, reload next session |
| Network data | Use Chrome integration for web research |

---

## Mental Model

Think of Cowork as a **highly capable assistant with physical access to one folder**:

- Can read any file you put there
- Can create new files in any format
- Can reorganize, rename, transform
- Cannot leave that folder without permission
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
