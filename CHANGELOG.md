# Changelog

All notable changes to the Cowork Documentation will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-01-20

### Added

**Core Documentation** (6 guides):
- [00-overview.md](guide/00-overview.md) - What is Cowork, architecture, positioning
- [01-getting-started.md](guide/01-getting-started.md) - Installation, setup, CTOC framework
- [02-capabilities.md](guide/02-capabilities.md) - Detailed feature matrix, limitations
- [03-security.md](guide/03-security.md) - Best practices, risk mitigation
- [04-troubleshooting.md](guide/04-troubleshooting.md) - Error messages, decision tree

**Workflows** (5 step-by-step guides):
- [file-organization.md](workflows/file-organization.md) - Downloads → structured folders
- [expense-tracking.md](workflows/expense-tracking.md) - Receipts → Excel report
- [report-synthesis.md](workflows/report-synthesis.md) - Multi-doc → structured report
- [meeting-prep.md](workflows/meeting-prep.md) - Research → briefing document
- [team-handoff.md](workflows/team-handoff.md) - Dev ↔ Non-dev patterns

**Prompts Library** (60+ ready-to-use):
- [file-ops.md](prompts/file-ops.md) - 20 prompts for organization, renaming, cleanup
- [document-creation.md](prompts/document-creation.md) - 15 prompts for reports, Excel, presentations
- [data-extraction.md](prompts/data-extraction.md) - 15 prompts for OCR, receipts, invoices
- [research.md](prompts/research.md) - 17 prompts for web research, synthesis

**Reference Materials** (4 files):
- [cheatsheet.md](reference/cheatsheet.md) - 1-page printable reference
- [comparison.md](reference/comparison.md) - Cowork vs Copilot/Gemini/ChatGPT/Apple Intelligence
- [faq.md](reference/faq.md) - 20+ frequently asked questions
- [glossary.md](reference/glossary.md) - Cowork-specific terminology

**Research-Based Improvements**:
- Exact error messages with solutions (VM timeout, Chrome host, context limits)
- Competitive analysis matrix (5 products, 8 dimensions)
- Enterprise validation (TELUS, Rakuten, Zapier stats)
- OCR accuracy benchmarks (97% field, 63% line-item)
- Token budget planning per task type
- VPN incompatibility documentation (#1 community issue)
- Context limit reality (165K vs 200K theoretical)

**Tools**:
- [cowork-onboarding.md](tools/cowork-onboarding.md) - Interactive personalized onboarding

**Machine-Readable**:
- [cowork-reference.yaml](../machine-readable/cowork-reference.yaml) - LLM-optimized index (~1.5K tokens)

**Templates**:
- [CLAUDE.md](examples/CLAUDE.md) - Project context file template for Cowork

### Documentation Features

- **Learning Paths**: 3 user profiles (Knowledge Worker, PM/Executive, Power User)
- **Golden Rules**: 7 essential principles for safe Cowork usage
- **Interactive Onboarding**: Personalized learning experience via cowork-onboarding.md
- **Decision Trees**: Visual guides for troubleshooting and use case fit
- **CTOC Framework**: Context→Task→Output→Constraints prompting pattern

### Technical Details

- **Platform**: macOS only (Windows planned, no ETA)
- **Subscription**: Pro ($20/mo) or Max ($100-200/mo)
- **Status**: Research preview
- **Files**: 23 markdown files, ~50K words
- **Prompts**: 67 copy-paste ready prompts
- **Workflows**: 5 complete step-by-step guides

### Known Limitations Documented

- VPN incompatibility (VM routing conflict)
- Context limit: ~165K effective (not 200K theoretical)
- Usage limits: 5-hour reset cycles
- Pro tier: ~1-1.5h intensive use before exhaustion
- OCR accuracy: 97% fields, 63% line items
- No official security documentation from Anthropic

### Sources

Based on:
- Perplexity research (P0: Error Messages, P1: Competitive Analysis, P2: Enterprise Case Studies)
- Community feedback (r/ClaudeAI, Anthropic forums)
- Official Anthropic documentation
- Real-world testing and validation

---

## [Unreleased]

### Planned

- Additional workflows (email triage, invoice processing)
- Video tutorials for visual learners
- Community-contributed prompts section
- Advanced CTOC patterns library
- Cowork + MCP integration examples

---

