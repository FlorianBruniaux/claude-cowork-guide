# Changelog

All notable changes to the Cowork Documentation will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.6.0] - 2026-03-04

### Added
- **Claude in Chrome** (bêta, tous plans payants) : extension Chrome intégrée à l'écosystème Cowork — gestion multi-onglets, tâches navigateur planifiées, /slash commands réutilisables. Disponible Pro/Max/Team/Enterprise. Listé comme produit officiel Anthropic sur anthropic.com.
- **Import Memory** (2-3 mars 2026) : nouvel outil permettant d'importer ses préférences et contexte depuis ChatGPT, Gemini, Copilot ou tout autre service IA via un prompt dédié fourni par Anthropic. Facilite la migration vers Claude.
- **Acquisition Vercept + Computer Use 72.5%** (25 fév 2026) : Anthropic acquiert Vercept (Allen Institute for AI), spécialisée en perception d'interfaces UI. Leur modèle VyUI améliore le grounding écran. Résultat : benchmark OSWorld passe de 15% (fin 2024) à 72.5% (fév 2026). Documenter dans guide/02-capabilities.md section Computer Use.
- **Instructions globales et par dossier dans Cowork** : possibilité de définir des instructions persistantes s'appliquant à toutes les sessions Cowork (global) ou à des dossiers spécifiques. Complément aux tâches planifiées (v1.5.0).
- **Desktop Extensions — interface graphique d'installation MCP** : nouveau UI graphique pour installer les extensions/MCP servers directement depuis Claude Desktop — validation des inputs, stockage sécurisé des credentials. Rend l'installation accessible aux non-développeurs.

### Changed
- **Memory disponible pour tous** (2 mars 2026) : la fonctionnalité Memory, auparavant réservée aux plans payants (Pro/Max/Team/Enterprise), est désormais accessible à tous les utilisateurs y compris le tier gratuit. Mettre à jour la comparison matrix et la FAQ.
- **Claude in Excel × PowerPoint — workflows cross-app** : nouvelle capacité de travail simultané Excel + PowerPoint dans le même contexte de tâche (ex : analyser un tableau Excel et générer automatiquement la présentation PowerPoint associée). Enrichir la section intégrations Office dans guide/02-capabilities.md.

## [1.5.1] - 2026-03-04

### Added
- `audit-prompt.md` : prompt réutilisable pour auditer l'accessibilité linguistique des fichiers FR (3 axes : passages non traduits, anglicismes, jargon technique)

### Changed
- Traduction EN→FR de ~70 prompts dans `prompts/file-ops.fr.md`, `prompts/document-creation.fr.md`, `prompts/research.fr.md`, `prompts/data-extraction.fr.md`
- Corrections terminologiques dans `guide/00-overview.fr.md` : anglicismes remplacés (knowledge workers → travailleurs du savoir, Setup → Configuration, Scaling → Mise à l'échelle, shell complet → ligne de commande complète)
- Ajout d'explications parenthétiques à la première occurrence des termes techniques incontournables : prompt, workflow, token, script, Markdown
- Remplacement des anglicismes évitables : template → modèle, screenshot → capture d'écran, Power User → Utilisation avancée, scope → périmètre

## [1.5.0] - 2026-02-28

### Added
- Step 8: Desktop Commander installation guide in Getting Started (EN + FR)
- Cross-Session Memory documentation via Desktop Commander + memory.md
- Customize Tab complete documentation: Skills, Connectors, permissions system
- Skills system: slash commands (/pdf, /docx, /xlsx, etc.), skill chaining, community registries
- MCP Connectors: 3 types (web, desktop, custom JSON), per-tool permissions (Allow/Ask/Block)
- Expanded Scheduled Tasks guide: 4 patterns with copy-paste prompts (daily brief, weekly compilation, Friday recap, monthly dashboard)
- Expanded Agent Teams guide: setup, SMB use cases, limitations
- New workflow: Scheduled Automation (`scheduled-automation.md` + `.en.md`)
- New workflow: Memory Setup (`memory-setup.md` + `.en.md`)
- 5 new FAQ entries (Customize tab, Skills, Desktop Commander, MCP Connectors, community skills)
- Updated FAQ: cross-session memory (Desktop Commander approach), scheduled tasks (expanded)
- Glossary: Customize Tab, Desktop Commander, Memory File, MCP Connector, Skill, Skill Chaining, Slash Command
- Sonnet 4.6 as recommended default model for Cowork (replaces Opus recommendation for agentic tasks)
- Scheduled tasks: on-demand task type, full cadence options (hourly to weekdays), sidebar management UI, prompt auto-optimization, device sleep behavior documented
- Plugin ecosystem expansion (Feb 24): 12 new MCP connectors (Google Calendar, Gmail, DocuSign, WordPress, Apollo, Clay, Outreach, Similarweb, Harvey, LegalZoom + finance connectors)
- Functional plugins by department: HR, Legal & Design, Operations, Engineering
- Custom plugin creation guide (no-code, Plugins panel)
- Admin private plugin marketplace documentation

### Updated
- Workflow count: 26 → 28
- Reference cheatsheet: Customize Tab & Skills section (EN + FR)
- Version: 1.4.0 → 1.5.0
- Model selection: Sonnet 4.6 recommended as Cowork default (agentic performance = Opus at 5x lower cost)
- FAQ: scheduled tasks answer expanded, 2 new Q&As (custom plugins, Feb 24 connectors)

## [1.4.0] - 2026-02-18

### Added

- **Windows support** (February 10, 2026) — Claude Cowork now available on macOS and Windows
- **11 official Cowork Plugins** (January 30, 2026): Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry, Slack
- **Opus 4.6 capabilities**: 1M token context window (beta), 128K output tokens, adaptive thinking with 4 effort levels
- **Scheduled tasks**: automate recurring Claude tasks
- **Agent Teams** (research preview): coordinate multiple Claude agents
- **Context compaction** (beta): automatic conversation history compression for longer sessions
- Direct Excel and PowerPoint integrations
- Improved browser automation capabilities
- Windows troubleshooting guide in guide/04-troubleshooting.md
- New reference entries: Plugins, Agent Teams, Context Compaction, Scheduled Tasks in glossary and FAQ

### Changed

- Platform designation updated from "macOS only" to "macOS and Windows" across all documentation
- Opus 4.6 context window updated: 200K → 1M tokens (beta)
- Opus 4.6 output tokens updated: 64K → 128K
- Pro plan pricing documented: $17/month (annual billing)
- Workflow count corrected and synchronized across all files
- Updated comparison matrix with new capabilities and platform support

### Fixed

- VERSION and MANIFEST.yaml version inconsistency (both now at 1.4.0)
- Workflow count discrepancy between README and actual workflow files
- Removed deprecated workflows (report_synthesis, team_handoff) from machine-readable/reference.yaml

## [1.3.1] - 2026-02-06

### Added

**Claude Legal Extension Documentation**

- **First Official Cowork Plugin**: Documented Claude Legal (announced Feb 3, 2026)
  - guide/02-capabilities.md/.fr.md: Added Opus 4.6 model note (BigLaw Bench 90.2%)
  - guide/02-capabilities.md/.fr.md: New "Extensions & Plugins" section (~35 lines each)
  - Capabilities: contract review, risk detection, NDA triage, compliance tracking
  - Use cases: automated contract verification, problematic clause detection, compliance checklists
  - Legal disclaimer: does NOT provide legal advice, professional review required

- **FAQ Integration**: Added "What is Claude Legal?" Q&A in Capabilities section
  - reference/faq.md/.fr.md: New entry with cross-reference to full documentation
  - 10-line factual explanation with link to detailed capabilities guide

- **Workflow Enhancement**: Enriched compliance-checklist.md
  - Added informational box about Claude Legal automation potential
  - Positioned in "Cas d'usage" section for discoverability

- **Prompts Library**: Enhanced data-extraction prompts
  - prompts/data-extraction.md/.fr.md: Note under prompt #6 "Contract Key Terms"
  - Explains Claude Legal can automate extraction with additional risk detection

- **Machine-Readable Index**: Extended reference.yaml
  - New `extensions` section with `claude_legal` entry
  - Includes announced date, status, purpose, capabilities, use cases, disclaimer, model support

- **Competitive Positioning**: Updated comparison matrices
  - reference/comparison.md/.fr.md: Added "Legal document review" capability line
  - Positioned in Document Processing section for clarity

**Impact**: 10 files modified (+111 lines, -2 lines), 15 "Claude Legal" mentions across documentation, full FR/EN synchronization maintained.

## [1.3.0] - 2026-02-03

### Changed

**Documentation Updates & Corrections**

- **Version Synchronization**: Updated all version references from 1.1.0/1.2.0/1.2.1 → 1.3.0
  - README.md / README.fr.md: version badges and footers updated to February 2026, workflow count (24)
  - reference/cheatsheet.md / .fr.md: version footers updated
  - workflows/README.md / .en.md: version references updated (24 workflows)
  - CLAUDE.md: version and workflow count updated (24)
  - MANIFEST.yaml: version, audience, last_updated, complete workflow list (24 entries)
  - machine-readable/reference.yaml: version, prompts count (67), complete workflow list (24)
  - machine-readable/llms.txt: workflow count corrected (5 → 24), prompts count (67)

- **Model Documentation**: Enhanced model selection guidance
  - Added Haiku model to all model tables (simple tasks, very fast, low cost)
  - Clarified Opus versions: Only Opus 4.5 available (4.0/4.1 retired from selector)
  - Added context window compaction note (longer conversations via automatic summary)
  - Updated in: guide/02-capabilities.md/.fr.md, reference/cheatsheet.md/.fr.md

- **macOS Terminology**: Updated for macOS 13+ Ventura
  - "System Preferences" → "System Settings" throughout troubleshooting
  - Added backward compatibility note for macOS 12 and earlier
  - Updated in: guide/04-troubleshooting.md/.fr.md (4 occurrences each)

- **Cloud Connectors**: Aligned documentation on experimental status
  - Updated from "Not confirmed" → "Experimental, unreliable (January 2026)"
  - Clarified Gmail/Drive connectors exist but have inconsistent behavior
  - Updated in: guide/00-overview.md/.fr.md, reference/faq.md/.fr.md

- **Form Filling**: Fixed capability inconsistency
  - FAQ corrected from "cannot fill forms" → "Limited, requires explicit approval"
  - Aligned with capabilities matrix (⚠️ Limited status)
  - Updated in: reference/faq.md/.fr.md

- **MCP Support**: Corrected glossary entry
  - Changed from "Not exposed in Cowork" → "Supported via Claude Desktop configuration"
  - Updated in: reference/glossary.md/.fr.md

- **Competitor Comparison**: Updated with latest information
  - Added "Updated February 2026" timestamp
  - Claude Code: Updated from "Usage-based" → "Included in Team plan"
  - Opus versions: Clarified only 4.5 available (4.0/4.1 retired)
  - ChatGPT pricing: Updated to include Pro tier ($200/mo)
  - Updated in: reference/comparison.md/.fr.md

- **Copilot Disambiguation**: Added clarity on Microsoft products
  - Added note distinguishing M365 Copilot (Office integration) from GitHub Copilot (dev tool)
  - Prevents confusion between two separate Microsoft products
  - Updated in: reference/comparison.md/.fr.md

### Fixed

**Workflow Categorization**: Corrected 5 misclassified workflows
- Moved knowledge-transfer: Communication → Organisation (metadata: 🗂️ Organisation)
- Moved price-comparison: Administratif → Commercial (metadata: 💼 Commercial)
- Moved client-followup-tracker: Administratif → Commercial (metadata: 💼 Commercial)
- Moved presentation-slides: Commercial → Communication (metadata: 📣 Communication)
- Moved newsletter-creation: Commercial → Communication (metadata: 📣 Communication)
- Removed knowledge-transfer duplication in README.en.md (was in both Communication and Organisation)
- Final category counts: Administratif (4), Commercial (5), Production (5), Communication (6), Organisation (5)
- Updated in: workflows/README.md, workflows/README.en.md

**File Cleanup**: Removed deprecated and empty files
- Deleted workflows/report-synthesis.md + .en.md (deprecated since v1.1.0)
- Deleted workflows/team-handoff.md + .en.md (deprecated since v1.1.0)
- Deleted tools/cowork-onboarding.md (empty file, no content)
- Removed references to onboarding from: MANIFEST.yaml, README.md, README.fr.md

**Script Corrections**: Fixed paths and counting logic
- scripts/sync-version.sh: Corrected path `cowork-reference.yaml` → `reference.yaml`
- scripts/check-version-sync.sh: Corrected same path reference
- scripts/update-stats.sh: Fixed workflow double-counting (now excludes .en.md files)

## [1.2.1] - 2026-01-27

### Added

**Workflow Enhancements: Reporting & Client Onboarding**

**Work Log Enhancement (work-log.md/.en.md)**
- New section: "Weekly/Monthly Progress Reporting" for long projects (>2 weeks)
  - Template for periodic progress reports (team, materials, schedule adherence, forecast)
  - Recommended frequency per project duration
  - Automated email delivery template
  - Benefits: client reassurance, early alerts, progress visibility, justification tracking
- Adapted from Claude Cowork Playbook insights (recurring reporting concept)
- Bilingual implementation (FR/EN) maintained

**Client Follow-up Tracker Enhancement (client-followup-tracker.md/.en.md)**
- New section: "Client Onboarding Checklist" for standardized new client process
  - Complete checklist: information collection, documents, kickoff communication, project organization, quality tracking, closeout, long-term relationship
  - Practical usage guide (copy template, check boxes, archive)
  - Industry adaptations (construction, retail, services)
  - Welcome pack personalization for high-value clients (>$10K/€10K)
- Adapted from Claude Cowork Playbook insights (standardized onboarding concept)
- Bilingual implementation (FR/EN) maintained

**Value Added**
- Fills gap: recurring reporting formalized (5% value)
- Fills gap: standardized client onboarding (3% value)
- Format: enrichment of existing workflows (no new files)
- Effort: ~8h adaptation vs 54h full integration (85% efficiency gain)
- Maintains editorial consistency (SME/artisan vocabulary, not corporate)

### Fixed

- README.md: Corrected workflow count inconsistencies
  - "25 business workflows" → "26 business workflows" (line 71)
  - "25 step-by-step guides" → "26 step-by-step guides" (line 112)
  - Added missing Organization category (4 workflows) in Content section
- README.fr.md: Same corrections for French version

## [1.2.0] - 2026-01-23

### Added

**New Workflow: Website Audit**
- **website-audit.md / .en.md**: Audit site vitrine TPE/PME
  - Grille d'évaluation 25 points (contact, clarté, confiance, CTA, technique)
  - Plan d'action priorisé (urgences, améliorations, optimisations)
  - Benchmark concurrentiel
  - Variations: audit express, e-reputation, pré-refonte, multi-sites

**Email Sequences (email-templates.md)**
- Section "Séquences Automatisées" avec 2 séquences complètes:
  - Relance Devis (4 emails: J+0 envoi, J+3 soft, J+7 deadline, J+14 clôture)
  - Réactivation Clients Dormants (3 emails)
- Tableau de suivi Excel avec formules

**Local Visibility Audit (competitor-analysis.md)**
- Section "Audit Visibilité Locale (Google My Business)"
  - Comparaison note/avis/photos/réponses vs concurrents
  - Diagnostic et plan d'action
- Section "Benchmark SEO local simplifié"
  - Positionnement mots-clés locaux
  - Actions SEO basiques sans expert

### Changed
- workflows/README.md: 25 → 26 workflows, catégorie Communication 5 → 6
- workflows/README.en.md: même mise à jour
- README.md / README.fr.md: badges mis à jour (26 workflows, v1.2.0)

### Fixed
- README.md/README.fr.md: Correct workflow count from 43 to 25 (3 occurrences each)
- reference/cheatsheet.md: Update version from v1.0 to v1.1.0
- reference/cheatsheet.md/fr.md: Fix broken relative links (cowork/ prefix removed)
- CONTRIBUTING.md: Remove obsolete "cowork/ directory" reference and [cowork] prefixes

### Added
- Table of Contents in README.md and README.fr.md for improved navigation

## [1.1.0] - 2026-01-20

### Added

**Major Expansion: 5 → 25 Workflows - French SMB Focus**

#### 📋 Administratif (6 workflows)
- **invoice-generation.md**: Génération factures/devis professionnels depuis templates
- **quote-to-invoice.md**: Transformation automatique devis → facture
- **payment-reminders.md**: Génération relances impayés échelonnées (R1, R2, R3, mise en demeure)
- **compliance-checklist.md**: Vérification documents obligatoires BTP/Commerce (Qualibat, assurances)
- **client-followup-tracker.md**: Tableau de bord Excel suivi relances clients
- **price-comparison.md**: Comparatif multi-fournisseurs avec scoring pondéré

#### 💼 Commercial (5 workflows)
- **prospect-research.md**: Investigation entreprise (SIREN, CA, santé financière, décideurs)
- **quote-creation.md**: Création devis détaillés chiffrés avec variantes
- **competitor-analysis.md**: Analyse concurrence locale (prix, offres, avis Google)
- **presentation-slides.md**: Présentations commerciales PowerPoint/Keynote structurées
- **newsletter-creation.md**: Newsletters clients HTML responsive

#### 🔧 Production (5 workflows)
- **project-planning.md**: Planning chantier/projet avec Gantt, jalons, dépendances
- **inventory-tracking.md**: Suivi stock avec alertes réapprovisionnement et valorisation
- **work-log.md**: Journal de chantier quotidien conforme réglementation
- **quality-checklist.md**: Listes contrôle qualité normalisées par métier
- **supplier-order.md**: Préparation commandes fournisseurs optimisées

#### 📣 Communication (4 workflows)
- **social-media-posts.md**: Création posts LinkedIn/Facebook/Instagram avec calendrier
- **email-templates.md**: Bibliothèque emails professionnels réutilisables
- **review-response.md**: Gestion avis Google/Facebook avec stratégies réponse
- **knowledge-transfer.md**: Transmission savoir-faire artisans (formation apprentis, succession)

### Changed
- **workflows/README.md**: Refonte complète avec organisation par catégories
  - Ajout matrice 25 workflows avec filtres par besoin métier
  - Navigation améliorée avec arbre de décision
  - Section "Choisir un Workflow par Besoin" (Finances/Clients/Production/Communication/Admin)
  - Conseils généraux étendus avec bonnes pratiques validation

- **MANIFEST.yaml**: Mise à jour metadata
  - `version: "1.0.0" → "1.1.0"`
  - `total_workflows: 5 → 25`

- **VERSION**: Bump `1.0.0 → 1.1.0`

- **Workflows existants** (metadata enrichie):
  - `file-organization.md`: Ajout **Category**: 🗂️ Organization + **Professions**
  - `expense-tracking.md`: Ajout **Category**: 🗂️ Organization + **Professions**
  - `meeting-prep.md`: Ajout **Category**: 🗂️ Organization + **Professions**

### Removed
- **report-synthesis.md**: Workflow déprécié (trop corporate, peu adapté TPE/PME)
- **team-handoff.md**: Workflow déprécié (trop technique, hors scope cible artisans/commerçants)

### Documentation
- Tous les nouveaux workflows incluent:
  - Cas d'usage concrets métiers français (SIREN, Infogreffe, URSSAF, Qualibat)
  - Exemples de prompts copy-paste adaptés artisans/commerçants
  - Section Troubleshooting avec solutions pratiques
  - Section Variations avec adaptations sectorielles
  - Bonnes pratiques métier avec chiffres ROI réalistes

### Target Audience Shift
- **Original**: Knowledge workers, PMs, data analysts (English, international)
- **New Focus**: TPE/PME françaises
  - Artisans/BTP (plomberie, électricité, maçonnerie, menuiserie)
  - Commerçants (boulangerie, coiffure, restauration, services proximité)
  - Dirigeants TPE/PME (1-50 salariés)
  - Indépendants/Freelances

### Localization
- **Language**: Workflows now in French (guide remains English)
- **References**: SIREN/SIRET, Infogreffe, Societe.com, Pappers, Pages Jaunes
- **Standards**: NF, DTU, RT2020, Qualibat, CAPEB, FFB
- **Legal**: Mentions légales françaises, TVA 20%, formats euros
- **Cultural**: Vocabulaire métiers français (chantier, maître d'œuvre, artisan)

---

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

