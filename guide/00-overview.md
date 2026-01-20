# Claude Cowork: Overview

> **Reading time**: ~5 minutes

---

## What is Cowork?

**Cowork** is Claude's agentic desktop feature that extends autonomous AI capabilities to non-technical users through the Claude Desktop app. Instead of terminal commands, Cowork accesses local folders and files directly.

### Key Facts

| Aspect | Details |
|--------|---------|
| **Release** | Research preview, January 2026 |
| **Availability** | Pro ($20/mo) or Max ($100-200/mo) subscribers |
| **Platform** | macOS only (Windows planned, Linux not announced) |
| **Built by** | ~90% written by Claude itself ([Anthropic blog]) |
| **Focus** | File manipulation, organization, document generation |
| **Usage limits** | Resets every 5 hours; heavy tasks consume quota rapidly |

### Relationship to Claude Code

Cowork shares the same backend architecture as Claude Code:

| Shared | Different |
|--------|-----------|
| Same model capabilities | Desktop app vs Terminal |
| Extended thinking | Files only vs full shell |
| Agentic loops | Knowledge workers vs developers |
| Sub-agent architecture | No code execution |

**Key difference**: Cowork cannot execute arbitrary code—it manipulates files only.

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
| **Security-conscious enterprises** | No audit trail, no access controls | Wait for enterprise features |
| **Heavy cloud users** | No Google Drive/Dropbox confirmed | Use native cloud apps |
| **Anyone needing reliability** | Preview = bugs, unexpected behavior | Wait for stable release |
| **Code execution needs** | Files only, no scripts | Use Claude Code |
| **Windows/Linux users** | macOS only (Windows planned, Linux not announced) | Wait for platform expansion |
| **Heavy daily users** | Usage limits reset every 5h; Pro exhausts in ~1-1.5h intensive use | Consider Max tier or batch work |
| **VPN users** | **Cannot work with VPN active** (VM routing conflict) | Disconnect VPN or use Claude Code |

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
| **Cloud connectors** | Not confirmed (no Drive, Dropbox, etc. yet) |
| **Sub-agents** | Parallel execution with fresh context per agent |
| **Code execution** | **None** — Files only (no scripts, no commands) |
| **Browser** | Chrome integration for web research tasks |
| **Context limit** | ~200K tokens (~150-500 pages per session) |
| **Output formats** | Excel (.xlsx with formulas), PowerPoint, Word, PDF, text, images |

### How Sub-Agents Work

1. **Fresh context** — Each sub-agent starts clean (no memory from other agents)
2. **Parallel execution** — Multiple agents can work simultaneously
3. **Orchestrator coordination** — Main agent assembles results
4. **Scope isolation** — Each agent sees only what it needs

This architecture enables complex multi-step workflows while maintaining security boundaries.

---

## What Cowork Cannot Do

Understanding limitations is crucial for effective use:

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
- Cannot run programs or scripts
- Cannot make network connections directly

This constraint is a **feature, not a bug** — it creates a safe sandbox for autonomous operation.

---

## Enterprise Validation (Claude Adoption)

While Cowork is in research preview, Claude's underlying capabilities are validated at enterprise scale:

| Company | Results | Context |
|---------|---------|---------|
| **TELUS** | $90M value, 500K hours saved | Document processing at scale |
| **Rakuten** | 87.5% reduction in processing time | Knowledge work automation |
| **Zapier** | 89% employee adoption | Workflow integration |

**Relevance to Cowork**: These stats are for Claude in general, not Cowork specifically. However, they validate the core AI capabilities that power Cowork's document processing and autonomous workflows.

**What this means for you**:
- The AI model works reliably at enterprise scale
- Document understanding and generation are production-ready
- The "research preview" label applies to the Cowork interface, not the underlying Claude capabilities

---

## Next Steps

- [Getting Started](01-getting-started.md) — Setup and first workflow
- [Capabilities](02-capabilities.md) — Detailed feature breakdown
- [Security](03-security.md) — Safe usage practices

---

*[← Back to Cowork Documentation](../README.md) | [Getting Started →](01-getting-started.md)*
