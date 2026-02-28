# Claude Cowork Guide

🌐 **Languages**: [English](README.md) | [Français](README.fr.md)

## Table of Contents

- [Quick Start](#-quick-start)
- [Why this guide?](#why-this-guide)
- [Learning Paths](#-learning-paths)
- [Content](#-content)
- [Golden Rules](#-golden-rules)
- [About](#-about)
- [Contributing](#-contributing)
- [License](#-license)

<p align="center">
  <strong><a href="https://florianbruniaux.github.io/claude-cowork-guide-landing/">🌐 Official Website</a></strong>
</p>

<p align="center">
  <a href="https://github.com/FlorianBruniaux/claude-cowork-guide/stargazers"><img src="https://img.shields.io/github/stars/FlorianBruniaux/claude-cowork-guide?style=social" alt="Stars"/></a>
  <a href="./workflows/"><img src="https://img.shields.io/badge/Workflows-28-green" alt="Workflows"/></a>
  <a href="./prompts/"><img src="https://img.shields.io/badge/Prompts-70-blue" alt="Prompts"/></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Research%20Preview-yellow" alt="Status"/>
  <img src="https://img.shields.io/badge/Platform-macOS%20%26%20Windows-blue" alt="Platform"/>
  <img src="https://img.shields.io/badge/Subscription-Pro%20%26%20Max-purple" alt="Subscription"/>
  <img src="https://img.shields.io/badge/Version-1.5.0-orange" alt="Version"/>
</p>

> Complete guide to Claude's desktop assistant for knowledge workers and small businesses.
> Invoices, quotes, follow-ups, prospecting — automated without coding.

---

## ⚡ Quick Start

### 1. Enable Cowork
Settings → Features → Enable Cowork → Grant folder access

### 2. First workflow
```bash
mkdir -p ~/Cowork-Workspace/{input,output}
# Add files to input/, then:
```
> "Organize the files in ~/Cowork-Workspace/input/ by type"

### 3. Go further
- 📋 [Cheatsheet](reference/cheatsheet.md) — Print this
- 📖 [Complete guide](guide/01-getting-started.md) — 10 min

<details>
<summary><strong>Prerequisites</strong></summary>

- **Subscription**: Pro ($20/mo) or Max ($100-200/mo)
- **Platform**: macOS and Windows
- **App**: Claude Desktop (latest version)

</details>

---

## Why this guide?

**The problem**: Official docs are dense. Tutorials get outdated quickly.
You need ready-to-use workflows, not feature lists.

**This guide**: 28 business workflows, 70 copy-paste prompts, 11 official plugins documented, Desktop Commander guide, Skills/Customize Tab documentation, practical examples.

**Reading time**: Getting started 5 min | Complete guide 45 min

---

## 👨‍💻 Are you a developer?

**Claude Code** is the guide for developers — same AI, terminal interface, code execution.

→ [Claude Code Guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide)

---

## 🎯 Learning Paths

<details>
<summary><strong>Beginner</strong> — First week (5 steps)</summary>

1. [Overview](guide/00-overview.md) — What Cowork can do
2. [Getting Started](guide/01-getting-started.md) — Installation and first workflow
3. [File Organization](workflows/file-organization.md) — Practical example
4. [Prompts Library](prompts/file-ops.md) — 20 ready prompts
5. [Cheatsheet](reference/cheatsheet.md) — Print this

</details>

<details>
<summary><strong>Decision Maker</strong> — Overview (4 steps)</summary>

1. [Content](#-content) — Capabilities and resources
2. [Golden Rules](#-golden-rules) — Essential principles
3. [Security](guide/03-security.md) — Best practices
4. [Comparison](reference/comparison.md) — vs Copilot/Gemini/ChatGPT

</details>

<details>
<summary><strong>Power User</strong> — Deep dive (6 steps)</summary>

1. [Complete Capabilities](guide/02-capabilities.md) — Feature matrix
2. [All Workflows](workflows/) — 28 step-by-step guides

3. [Troubleshooting](guide/04-troubleshooting.md) — Error resolution
4. [FAQ](reference/faq.md) — 20+ questions
5. [Advanced Prompts](prompts/research.md) — Research and synthesis
6. [Glossary](reference/glossary.md) — Terminology

</details>

---

## 📚 Content

### Guides (5 files)

| Guide | What you'll learn | Time |
|-------|-------------------|------|
| [Overview](guide/00-overview.md) | What Cowork can do | 5 min |
| [Getting Started](guide/01-getting-started.md) | Installation, first workflow | 10 min |
| [Capabilities](guide/02-capabilities.md) | What works, what doesn't | 8 min |
| [Security](guide/03-security.md) | Best practices | 12 min |
| [Troubleshooting](guide/04-troubleshooting.md) | Common issues | 8 min |

### Plugins (11 official)

Claude Cowork supports 11 official plugins: Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry, Slack. Plugins extend Cowork's capabilities by connecting to external tools directly.

### Workflows (28 guides)

**📋 Administrative** (6)
- [Invoice Generation](workflows/invoice-generation.md) — Professional templates
- [Quote → Invoice](workflows/quote-to-invoice.md) — Automatic transformation
- [Payment Reminders](workflows/payment-reminders.md) — R1, R2, R3, legal notice
- [Compliance Checklist](workflows/compliance-checklist.md) — Required documents
- [Client Follow-up Tracker](workflows/client-followup-tracker.md) — Excel dashboard
- [Price Comparison](workflows/price-comparison.md) — Multi-supplier with scoring

**💼 Sales & Marketing** (5)
- [Prospect Research](workflows/prospect-research.md) — Company data, decision makers
- [Quote Creation](workflows/quote-creation.md) — Detailed with variants
- [Competitor Analysis](workflows/competitor-analysis.md) — Pricing, offers, reviews
- [Presentation Slides](workflows/presentation-slides.md) — PowerPoint/Keynote
- [Newsletter Creation](workflows/newsletter-creation.md) — Responsive HTML

**🔧 Operations** (5)
- [Project Planning](workflows/project-planning.md) — Gantt, milestones, dependencies
- [Inventory Tracking](workflows/inventory-tracking.md) — Restocking alerts
- [Work Log](workflows/work-log.md) — Compliant documentation
- [Quality Checklist](workflows/quality-checklist.md) — Standardized lists
- [Supplier Orders](workflows/supplier-order.md) — Optimized procurement

**📣 Communication** (6)
- [Social Media Posts](workflows/social-media-posts.md) — LinkedIn/Facebook/Instagram
- [Email Templates](workflows/email-templates.md) — Reusable library
- [Review Responses](workflows/review-response.md) — Google/Facebook
- [Website Audit](workflows/website-audit.md) — Site diagnosis and action plan
- [Knowledge Transfer](workflows/knowledge-transfer.md) — Training, succession

**🗂️ Organization** (6)
- [File Organization](workflows/file-organization.md) — Automatic folder sorting
- [Expense Tracking](workflows/expense-tracking.md) — Receipts to Excel
- [Meeting Prep](workflows/meeting-prep.md) — Client/supplier briefings
- [Scheduled Automation](workflows/scheduled-automation.md) — Recurring task automation
- [Memory Setup](workflows/memory-setup.md) — Cross-session memory with Desktop Commander

→ [All workflows](workflows/README.md)

<details>
<summary><strong>Ready-to-use prompts</strong> (70)</summary>

| Collection | Count | Examples |
|------------|-------|----------|
| [Files](prompts/file-ops.md) | 20 | Organize, rename, deduplicate |
| [Documents](prompts/document-creation.md) | 15 | Reports, summaries, Excel |
| [Extraction](prompts/data-extraction.md) | 15 | PDF, OCR, images |
| [Research](prompts/research.md) | 17 | Web, synthesis |

</details>

<details>
<summary><strong>References</strong></summary>

| Resource | Description |
|----------|-------------|
| [Cheatsheet](reference/cheatsheet.md) | 1-page printable |
| [Comparison](reference/comparison.md) | vs Copilot, Gemini, ChatGPT |
| [FAQ](reference/faq.md) | 20+ questions |
| [Glossary](reference/glossary.md) | Cowork terminology |

</details>

---

## 🔑 Golden Rules

1. **Always review the plan** before approval — Cowork proposes, you decide
2. **Dedicated folder only** — Never grant access to Documents/Desktop/system
3. **No credentials** — Keep passwords and API keys elsewhere
4. **Verify sources** — Downloaded files may contain malicious prompts
5. **Disconnect VPN** — Issue #1, breaks VM networking
6. **Backup before deletion** — No undo possible

> See [Security Guide](guide/03-security.md) for detailed practices.

---

## 🌍 About

<details>
<summary><strong>Origins & Philosophy</strong></summary>

This guide exists because official docs are dense and tutorials get outdated quickly.

**Philosophy**: Practical over theoretical. Real workflows, not feature lists.

**Focus v1.1**: Small businesses and knowledge workers worldwide.

**Created with Claude Code**. Maintained by [Florian BRUNIAUX](https://github.com/FlorianBruniaux).

**Related**: [Claude Code Guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide) — For developers

</details>

<details>
<summary><strong>Privacy</strong></summary>

Cowork sends prompts, files, and results to Anthropic servers.

| Plan | Retention | Training |
|------|-----------|----------|
| Default | 5 years | Yes |
| Opt-out | 30 days | No |
| Enterprise | 0 | No |

**Action**: [Disable training](https://claude.ai/settings/data-privacy-controls)

</details>

<details>
<summary><strong>Current Limitations</strong> (February 2026)</summary>

**Platform**: macOS and Windows

**Known issues**:
- VPN incompatible (VM routing conflict)
- Usage resets every 5 hours
- Pro: ~1-1.5h intensive use before limit
- OCR: ~97% fields, ~63% line items accuracy

**Status**: Research preview — expect bugs

</details>

---

## 🤝 Contributing

Found an error? Have a workflow to share?

**How to help**: ⭐ Star the repo • 🐛 Report issues • 📝 Submit workflows

→ [CONTRIBUTING.md](./CONTRIBUTING.md) | [Open an issue](https://github.com/FlorianBruniaux/claude-cowork-guide/issues)

---

## 📄 License

Licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**Follow**: [Releases](https://github.com/FlorianBruniaux/claude-cowork-guide/releases) | [Discussions](https://github.com/FlorianBruniaux/claude-cowork-guide/discussions) | [LinkedIn](https://www.linkedin.com/in/florian-bruniaux-43408b83/)

---

*Version 1.5.0 | February 2026 | Part of [Claude Code Ultimate Guide](../README.md) | Crafted with Claude*
