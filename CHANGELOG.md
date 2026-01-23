# Changelog

All notable changes to the Cowork Documentation will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

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

