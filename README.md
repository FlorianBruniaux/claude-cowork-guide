# Claude Cowork Documentation

> **Complete guide for Claude's agentic desktop feature for knowledge workers**

<p align="center">
  <a href="https://github.com/FlorianBruniaux/claude-cowork-guide/stargazers"><img src="https://img.shields.io/github/stars/FlorianBruniaux/claude-cowork-guide?style=for-the-badge" alt="Stars"/></a>
  <a href="./prompts/"><img src="https://img.shields.io/badge/Prompts-60+-green?style=for-the-badge" alt="Prompts"/></a>
  <a href="./workflows/"><img src="https://img.shields.io/badge/Workflows-5-blue?style=for-the-badge" alt="Workflows"/></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Research%20Preview-yellow" alt="Status"/>
  <img src="https://img.shields.io/badge/Platform-macOS-blue" alt="Platform"/>
  <img src="https://img.shields.io/badge/Subscription-Pro%20%26%20Max-purple" alt="Subscription"/>
  <img src="https://img.shields.io/badge/Version-1.0.0-orange" alt="Version"/>
</p>

---

## What is Cowork?

**Cowork** is Claude's desktop-native autonomous assistant that manipulates local files, generates documents, and organizes your digital workspace—without writing code.

Think of it as **Claude Code for everyone**: same agentic capabilities, but through a visual interface with file-only operations.

```
┌─────────────────────────────────────────────────┐
│              CLAUDE DESKTOP APP                 │
│  ┌───────────────────────────────────────────┐  │
│  │              COWORK                       │  │
│  │   "Organize my Downloads folder by type"  │  │
│  │                    ↓                      │  │
│  │   [Analysis] → [Planning] → [Execution]   │  │
│  │                    ↓                      │  │
│  │   ~/Downloads/ → Organized structure      │  │
│  └───────────────────────────────────────────┘  │
└─────────────────────────────────────────────────┘
```

---

## ⚡ Quick Start

### Prerequisites

| Requirement | Details |
|-------------|---------|
| **Subscription** | Pro ($20/mo) or Max ($100-200/mo) |
| **Platform** | macOS only (Windows planned, no ETA) |
| **App** | Claude Desktop (latest version) |

### Enable Cowork

1. Open **Claude Desktop** app
2. Go to **Settings** → **Features**
3. Enable **Cowork** toggle
4. Grant folder access when prompted

### Your First Task

```bash
# Create workspace
mkdir -p ~/Cowork-Workspace/{input,output}

# Add sample files to organize
# Then in Claude Desktop:
"Organize the files in ~/Cowork-Workspace/input/ by type"
```

<details>
<summary><strong>Interactive Onboarding</strong> (personalized learning)</summary>

**Run this in Claude Desktop** for a guided tour adapted to your use case:

```
Follow the Cowork onboarding instructions from:
https://raw.githubusercontent.com/FlorianBruniaux/claude-cowork-guide/main/cowork/tools/cowork-onboarding.md
```

Cowork will analyze your needs and create a personalized learning path.

</details>

→ [Complete Getting Started Guide](guide/01-getting-started.md)

---

## 🎯 Learning Paths

<details>
<summary><strong>Knowledge Worker</strong> — Foundation path (5 steps)</summary>

1. [Overview](guide/00-overview.md) — What is Cowork, architecture
2. [Getting Started](guide/01-getting-started.md) — First workflow, CTOC framework
3. [File Organization Workflow](workflows/file-organization.md) — Practical example
4. [Prompts Library](prompts/file-ops.md) — 15+ ready-to-use prompts
5. [Cheatsheet](reference/cheatsheet.md) — Print this

</details>

<details>
<summary><strong>Product Manager / Executive</strong> — Overview path (4 steps)</summary>

1. [What's Inside](#-whats-inside) — Scope & capabilities
2. [Golden Rules](#-golden-rules) — Key principles
3. [Security](guide/03-security.md) — Safe usage practices
4. [Comparison](reference/comparison.md) — Cowork vs Copilot/Gemini/ChatGPT

</details>

<details>
<summary><strong>Power User</strong> — Comprehensive path (6 steps)</summary>

1. [Complete Capabilities](guide/02-capabilities.md) — Detailed feature matrix
2. [All Workflows](workflows/) — 5 step-by-step guides
3. [Troubleshooting](guide/04-troubleshooting.md) — Error resolution
4. [FAQ](reference/faq.md) — 20+ questions
5. [Advanced Prompts](prompts/research.md) — Web research & synthesis
6. [Team Handoff](workflows/team-handoff.md) — Dev ↔ Non-dev patterns

</details>

---

## 📚 What's Inside

### Core Guides (6 files)

| Guide | Description | Reading Time |
|-------|-------------|--------------|
| [Overview](guide/00-overview.md) | What is Cowork, architecture, who should use it | 5 min |
| [Getting Started](guide/01-getting-started.md) | Installation, setup, first workflow | 10 min |
| [Capabilities](guide/02-capabilities.md) | What Cowork can and cannot do | 8 min |
| [Security](guide/03-security.md) | Best practices, risk mitigation, safe usage | 12 min |
| [Troubleshooting](guide/04-troubleshooting.md) | Common issues, decision tree, recovery | 8 min |

### Workflows (5 guides)

| Workflow | Use Case | Complexity |
|----------|----------|------------|
| [File Organization](workflows/file-organization.md) | Downloads → structured folders | Beginner |
| [Expense Tracking](workflows/expense-tracking.md) | Receipts → Excel report | Intermediate |
| [Report Synthesis](workflows/report-synthesis.md) | Multi-doc → structured report | Intermediate |
| [Meeting Prep](workflows/meeting-prep.md) | Research → briefing document | Intermediate |
| [Team Handoff](workflows/team-handoff.md) | Dev ↔ Non-dev patterns | Advanced |

<details>
<summary><strong>Ready-to-Use Prompts</strong> (60+ prompts)</summary>

| Collection | Count | Description |
|------------|-------|-------------|
| [File Operations](prompts/file-ops.md) | 20 | Organization, renaming, cleanup, deduplication |
| [Document Creation](prompts/document-creation.md) | 15 | Reports, summaries, presentations, Excel |
| [Data Extraction](prompts/data-extraction.md) | 15 | Images → data, PDF parsing, OCR |
| [Research](prompts/research.md) | 17 | Web research, synthesis, competitive analysis |

**Total**: 67 copy-paste prompts

</details>

<details>
<summary><strong>Reference Materials</strong></summary>

| Resource | Description |
|----------|-------------|
| [Cheatsheet](reference/cheatsheet.md) | 1-page printable quick reference |
| [Comparison](reference/comparison.md) | Cowork vs Copilot/Gemini/ChatGPT/Apple Intelligence |
| [FAQ](reference/faq.md) | 20+ frequently asked questions |
| [Glossary](reference/glossary.md) | Cowork-specific terminology |

</details>

<details>
<summary><strong>Templates</strong></summary>

| Template | Use Case |
|----------|----------|
| [CLAUDE.md for Cowork](examples/CLAUDE.md) | Project context file template |

</details>

---

## 🔑 Golden Rules

1. **Always review the plan** before approval — Cowork proposes, you decide
2. **Dedicated workspace only** — Never grant access to Documents/Desktop/system folders
3. **No credentials in workspace** — Keep secrets out of Cowork-accessible folders
4. **Verify file sources** — Prompt injection risk in untrusted files (PDFs, docs)
5. **Budget error correction time** — OCR accuracy ~97% fields, ~63% line items
6. **Disconnect VPN** — #1 issue: VPN breaks VM networking
7. **Backup before destructive ops** — No undo for file deletions

> See [Security Guide](guide/03-security.md) for detailed practices.

---

## Key Differences: Code vs Cowork

| Aspect | Claude Code | Cowork |
|--------|-------------|--------|
| **User** | Developers | Knowledge workers |
| **Interface** | Terminal/CLI | Desktop app |
| **Execute code** | Yes | No |
| **File access** | Full filesystem | Sandboxed folder |
| **Outputs** | Any file type | Office docs, Excel, PDF |
| **Browser automation** | Yes (Chrome) | Yes (Chrome) |
| **Maturity** | Production-ready | Research preview |

→ [Full Comparison](reference/comparison.md)

---

## 🌍 About

<details>
<summary><strong>Origins & Philosophy</strong></summary>

This Cowork documentation is part of the [Claude Code Ultimate Guide](../README.md), created after several months of AI-assisted development practice.

**Philosophy**: Practical over theoretical. Real use cases over feature lists. Understanding **why** before **how**.

**Created with Claude Code**. Community-validated through testing and feedback.

**Related**: [Claude Code Ultimate Guide](../README.md) — For developers

</details>

<details>
<summary><strong>Privacy & Data</strong></summary>

Cowork sends your prompts, file contents, and results to Anthropic servers.

- **Default**: 5 years retention (training enabled)
- **Opt-out**: 30 days retention
- **Enterprise**: 0 retention

**Action**: [Disable training](https://claude.ai/settings/data-privacy-controls) | [Data Privacy Guide](../guide/data-privacy.md)

</details>

<details>
<summary><strong>Current Limitations</strong> (January 2026)</summary>

**Platform & Access**:
- macOS only (Windows planned, Linux not announced)
- Pro ($20/mo) or Max ($100-200/mo) subscription required
- Research preview = expect bugs

**Technical Constraints**:
- VPN incompatible (VM routing conflict)
- Usage limits: resets every 5 hours
- Pro tier: ~1-1.5h intensive use before quota exhaustion
- Context limit: ~165K effective (not 200K)
- No cloud storage connectors confirmed
- No official security documentation

→ [Complete Limitations](guide/02-capabilities.md#what-cowork-cannot-do)

</details>

<details>

<details>
<summary><strong>Origin & Relationship</strong></summary>

This documentation was originally part of the [Claude Code Ultimate Guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide) but has been separated into a dedicated repository.

**Why separate repositories?**
- **Different audiences**: Cowork targets knowledge workers, Claude Code targets developers
- **Independent versioning**: Cowork follows Anthropic's release cycle
- **Focused contributions**: Specialized guidelines for non-dev workflows
- **Easier discovery**: Standalone repo for knowledge workers who don't need dev tools

**Relationship**:
- Both powered by Claude (same AI, different interfaces)
- Cowork = Claude Code for non-developers (file-only, no code execution)
- See [Claude Code Ultimate Guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide) for developer workflows

</details>

---

## 🤝 Contributing

Found an error? Have a workflow to share?


Open an issue at [claude-cowork-guide/issues](https://github.com/FlorianBruniaux/claude-cowork-guide/issues).

**Include**: Platform (macOS version), subscription tier (Pro/Max), reproduction steps.

**See**: [CONTRIBUTING.md](./CONTRIBUTING.md) for detailed contribution guidelines.
---

## 📄 License & Support

Licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). Free to share and adapt with attribution.

**Stay Updated**: [Watch releases](https://github.com/FlorianBruniaux/claude-cowork-guide/releases) | [Discussions](https://github.com/FlorianBruniaux/claude-cowork-guide/discussions) | [Connect on LinkedIn](https://www.linkedin.com/in/florian-bruniaux-43408b83/)

---

## Navigation

```
cowork/
├── README.md                    ← You are here
├── guide/                       # Core documentation (6 files)
│   ├── 00-overview.md
│   ├── 01-getting-started.md
│   ├── 02-capabilities.md
│   ├── 03-security.md
│   └── 04-troubleshooting.md
├── workflows/                   # Step-by-step guides (5 files)
│   ├── file-organization.md
│   ├── expense-tracking.md
│   ├── report-synthesis.md
│   ├── meeting-prep.md
│   └── team-handoff.md
├── prompts/                     # 60+ ready-to-use prompts (4 files)
│   ├── file-ops.md
│   ├── document-creation.md
│   ├── data-extraction.md
│   └── research.md
├── reference/                   # Quick references (4 files)
│   ├── cheatsheet.md
│   ├── comparison.md
│   ├── faq.md
│   └── glossary.md
└── examples/                    # Templates (1 file)
    └── CLAUDE.md
```

---

*Version 1.0.0 | January 2026 | Crafted with Claude*
