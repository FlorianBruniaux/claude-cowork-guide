# Changelog

All notable changes to the Cowork Documentation will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.10.0] - 2026-05-16

### Added
- **Claude Opus 4.7** (16 avril 2026, tous plans payants) : nouveau modèle disponible dans Cowork et Claude.ai, sans surcoût vs. Opus 4.6 ($5/$25 par M tokens). Gains principaux : vision haute résolution (jusqu'à 2 576 px / ~3,75 Mpx, 3x la résolution précédente — ouverture aux captures d'écran denses, diagrammes complexes), meilleure auto-correction pendant la planification (le modèle détecte ses propres erreurs logiques avant d'exécuter), instruction following renforcée, mémoire filesystem cross-sessions améliorée, meilleure qualité créative sur slides, docs et interfaces. Nouveau niveau d'effort `xhigh` (entre `high` et `max`). Documenté dans `guide/02-capabilities.md` section Model Selection.

- **Claude Design** (17 avril 2026, research preview, Pro/Max/Team/Enterprise) : nouveau produit Anthropic Labs accessible sur `claude.ai/design`. Permet de créer designs, prototypes, slides, one-pagers et visuels marketing depuis une conversation en langage naturel. Propulsé par Opus 4.7. Workflow : décrire → Claude génère une première version → affiner via conversation, commentaires inline ou curseurs d'ajustement. Lit la charte graphique de l'entreprise (codebase + design files) lors de l'onboarding et l'applique automatiquement à chaque projet. Import : texte, DOCX/PPTX/XLSX, codebase, capture web d'un site existant. Export : URL interne org-scoped, dossier local, Canva, PDF, PPTX, HTML standalone. Partage organisation avec accès lecture ou édition collaborative. Sans surcoût (consomme les limites d'abonnement existantes). Enterprise : désactivé par défaut, activation par l'admin requise. Documenté dans `guide/02-capabilities.md` nouvelle section Claude Design.

- **Connecteurs créatifs — Claude for Creative Work** (28 avril 2026, tous plans dont partiel sur gratuit) : 9 nouveaux connecteurs MCP ciblant les professionnels créatifs, tous basés sur MCP et interopérables avec d'autres LLMs. Ableton (Q&A sur la documentation officielle Live et Push), Adobe Creative Cloud (50+ outils : Photoshop, Premiere, Express, Illustrator, Lightroom, InDesign, Firefly — ~40 disponibles sur plan gratuit sans compte Adobe), Affinity by Canva (automatisation de tâches répétitives : batch image, renommage de calques, export, génération de fonctionnalités custom), Autodesk Fusion (création et modification de modèles 3D par conversation — abonnement Fusion requis), Blender (interface langage naturel vers l'API Python : debug de scènes complètes, batch scripts, ajout d'outils à l'interface Blender), Resolume Arena et Wire (contrôle AV en live par langage naturel pour VJs et artistes visuels), SketchUp (description → point de départ pour modèle 3D, à ouvrir dans SketchUp pour affiner), Splice (recherche d'échantillons royalty-free depuis Claude). Documenté dans `guide/02-capabilities.md` section Plugins.

- **Claude Security** (30 avril / 1er mai 2026, bêta publique Enterprise — Team/Max à venir) : outil de sécurité applicative accessible depuis `claude.ai/security` (sidebar Claude.ai). Scanne des codebases complètes via agents parallèles, trace les flux de données, génère des rapports de vulnérabilités avec scores de confiance et sévérité, produit des patchs ciblés — sans intégration API. Propulsé par Opus 4.7. Partenaires intégrés : CrowdStrike, Palo Alto Networks, SentinelOne, Wiz. Hors scope Cowork desktop mais accessible aux mêmes abonnés Enterprise. Annonce : anthropic.com.

- **Agents for Financial Services** (5 mai 2026, plans payants) : 10 templates d'agents financiers disponibles comme plugins Cowork — pitch builder, KYC screener, clôture mensuelle automatisée, revue de résultats trimestriels, etc. Nouveaux connecteurs de données financières : Dun & Bradstreet, Moody's MCP, Verisk, Third Bridge, Experian, GLG, Guidepoint, IBISWorld — complètent les connecteurs LSEG, S&P Capital IQ, Morningstar, PitchBook existants. À documenter dans `guide/02-capabilities.md` section Plugins.

- **Claude for Legal** (12 mai 2026, plans payants) : 12 plugins Cowork par domaine de pratique (Commercial Legal, Corporate Legal, Employment Legal, Privacy Legal, IP Legal, Litigation Legal, AI Governance Legal, Law Student, Legal Clinic, etc.) et 20+ connecteurs MCP : iManage, NetDocuments, Ironclad, DocuSign, Relativity, Everlaw, Consilio, Thomson Reuters CoCounsel/Westlaw, LexisNexis, Midpage, Harvey, Box, Datasite. Partenariats accès à la justice (Free Law Project, Courtroom5, Justice Technology Association) — connecteurs gratuits pour organismes d'aide juridique. À documenter dans `guide/02-capabilities.md` section Plugins.

- **Opus 4.7 Fast Mode** (12-13 mai 2026, research preview, API + Claude Code) : génération d'output jusqu'à 2,5x plus rapide pour Opus 4.7 (mêmes poids, aucun changement de qualité). Tarif : 6x le standard ($30/MTok input, $150/MTok output). API : header bêta `fast-mode-2026-02-01`. Claude Code : commande `/fast`. Déploiement progressif chez Cursor, Windsurf, v0, Warp. Opus 4.7 devient le modèle par défaut du fast mode dans Claude Code à partir du 14 mai 2026. À noter dans `guide/02-capabilities.md` section Model Selection.

- **Claude for Small Business** (13 mai 2026, plans payants Cowork) : offre packagée activable via un toggle dans Claude Cowork. 7 connecteurs préinstallés : QuickBooks, PayPal, HubSpot, Canva, Docusign, Google Workspace, Microsoft 365. 15 workflows agentic prêts à l'emploi (finance, opérations, ventes, marketing, RH, service client) + 15 skills réutilisables pour les tâches récurrentes. Cas d'usage principaux : planification de la paie (réconciliation QuickBooks + PayPal + prévision 30j), clôture mensuelle automatisée avec P&L en anglais simple exportable vers le comptable, tableau de bord business sur demande (cash position, pipeline, engagements), lancement de campagne (HubSpot + Canva), relance factures, revue de contrats (Docusign). L'utilisateur approuve avant chaque action (envoi, paiement, publication). Les permissions existantes des outils connectés sont respectées. Sans surcoût au-delà de l'abonnement Claude et des outils tiers utilisés. Documenté dans `guide/02-capabilities.md` section Claude for Small Business.

- **docs: add Claude for Office add-ins section (Word, Excel, PowerPoint + shared context)** : nouvelle section dans `guide/02-capabilities.md` et `guide/02-capabilities.fr.md` documentant Claude comme add-in natif dans les applications Microsoft Office. Couvre la disponibilité (Excel et PowerPoint disponibles, Word bêta lancé le 10 avril 2026), les fonctionnalités par application, le contexte partagé entre les trois add-ins depuis mars 2026, un workflow pratique en 4 étapes, et le tableau comparatif Cowork vs. add-ins.

### Changed
- **Microsoft 365 — add-in Outlook en bêta publique, Word en disponibilité générale** (7 mai 2026) : 4ème add-in Office disponible : Outlook en bêta publique (non documenté précédemment). L'add-in Word passe de bêta à disponibilité générale (était bêta depuis le 10 avril 2026). Contexte partagé étendu aux quatre applications simultanément (Excel + PowerPoint + Word + Outlook). Mis à jour dans `guide/02-capabilities.md` section Claude Add-ins for Microsoft Office.

- **Limites d'utilisation relevées** (6 mai 2026, Pro/Max/Team/Enterprise) : suite au partenariat de calcul avec SpaceX (centre de données Colossus 1, +220 000 GPU Nvidia, 300 MW de capacité), Anthropic double les limites de sessions 5h pour tous les plans payants et supprime la réduction des limites aux heures de pointe (peak hours) pour les plans Pro et Max. Impact direct sur l'expérience Cowork : moins d'interruptions de session en journée pour les utilisateurs intensifs. Mis à jour dans `guide/00-overview.md`.

## [1.9.0] - 2026-04-11

### Added
- **Connecteur Zoom MCP** (9 avril 2026, tous plans payants) : nouveau connecteur officiel Anthropic ajouté au catalogue Cowork au moment du GA. Permet d'intégrer Zoom dans les workflows automatisés — gestion de réunions, récupération de transcripts, déclenchement d'actions depuis Cowork. Documenté dans `guide/02-capabilities.md` section Plugins.
- **Contrôle d'accès par rôle — Enterprise** (9 avril 2026, Team/Enterprise) : les admins peuvent organiser les utilisateurs en groupes, assigner des rôles personnalisés définissant l'accès aux fonctionnalités Cowork, et activer/désactiver Cowork par équipe. Documenté dans `guide/03-security.md` section Enterprise.
- **Limites de dépenses par groupe** (9 avril 2026, Enterprise) : plafonds budgétaires configurables par groupe d'utilisateurs — permet aux DSI et responsables IA de contrôler la consommation par département ou projet. Documenté dans `guide/03-security.md`.
- **Analytics d'utilisation** (9 avril 2026, Enterprise) : intégration Analytics API pour monitorer l'activité Cowork — patterns d'utilisation, volume de tâches, consommation par équipe. Documenté dans `guide/03-security.md`.
- **Smart Skills Loading** (Q1 2026) : les Skills ne consomment plus l'intégralité de la fenêtre de contexte — Claude charge uniquement les Skills nécessaires au moment voulu. Améliore la gestion du contexte sur les sessions longues avec de nombreuses Skills installées. Documenté dans `guide/02-capabilities.md` section Skills.

### Changed
- **Cowork — disponibilité générale (GA)** (9 avril 2026) : Claude Cowork passe du statut "research preview" à disponibilité générale sur macOS et Windows. Disponible pour tous les abonnés payants (Pro, Max, Team, Enterprise). Mis à jour dans `guide/00-overview.md`, `guide/01-getting-started.md`, `guide/03-security.md` (mentions "research preview" retirées, tableau Enterprise revu).
- **OpenTelemetry — support étendu** (9 avril 2026, Enterprise) : observabilité Cowork renforcée via OpenTelemetry — traçabilité des actions dans les stacks de monitoring existantes (Datadog, Grafana, etc.). Documenté dans `guide/03-security.md`.

## [1.8.1] - 2026-04-01

### Changed
- **Computer Use — hiérarchie d'accès en 3 niveaux** : documentation de la priorité connectors → Chrome → contrôle écran dans `guide/02-capabilities.md`. Ajoute un tableau explicite et une note sur les implications de performance (le contrôle écran est plus lent car il capte un screenshot à chaque action).
- **Computer Use — warnings officiels Anthropic** : renforcement du langage de sécurité dans `guide/02-capabilities.md` et `guide/03-security.md` avec la guideline officielle ("ne pas utiliser Computer Use sur des apps avec accès à des données de santé, financières, ou personnelles"). Ajout d'une section dédiée dans le Security Guide avec tableau de risques par catégorie d'app.
- **Computer Use opère hors VM** : précision documentée dans `guide/03-security.md` — Computer Use contrôle le bureau réel, pas l'environnement VM isolé des opérations fichiers standard.
- **FAQ : Dispatch vs Channels** (clarification) : nouvelle Q&A dans `reference/faq.md` distinguant Dispatch (Cowork, QR code iOS/Android) de Channels (Claude Code CLI, Telegram/Discord). Confusion fréquente dans la presse tech.

## [1.8.0] - 2026-03-27

### Added
- **Computer Use — research preview dans Cowork** (23 mars 2026, Pro et Max, macOS) : Claude peut désormais contrôler directement le bureau — ouvrir des applications, pointer/cliquer, remplir des formulaires, naviguer dans le navigateur — sans configuration préalable. S'intègre avec Dispatch pour exécuter des tâches desktop depuis le téléphone. Feature distincte de l'acquisition Vercept (v1.6.0) : c'est le lancement effectif pour les utilisateurs finaux. Documenté dans `guide/02-capabilities.md` section Computer Use + `guide/01-getting-started.md` Step 9.
- **Applications interactives sur iOS et Android** (25 mars 2026) : l'app mobile se connecte à des applications interactives complètes — graphiques live, croquis, contenu partageable directement dans les conversations. Extension de la feature "visuels interactifs" déjà disponible sur desktop (v1.6.1). Documenté dans `guide/02-capabilities.md`.

### Changed
- **Dispatch — détails techniques et limitations** (23 mars 2026) : jumelage mobile/desktop via QR code depuis l'app mobile. Limitations documentées : exécution en thread unique (délais possibles sur tâches complexes), impossibilité d'ouvrir des applications Mac natives comme Photos. Documenté dans `guide/02-capabilities.md` et `guide/01-getting-started.md` Step 9.
- **Cowork disponible sur Team et Enterprise** : la page officielle Anthropic confirme "Pro, Max, Team, Enterprise" — correction appliquée dans le tableau subscription tiers de `guide/01-getting-started.md`.
- **VM isolée** : terminologie officielle Anthropic = "virtual machine (VM) environment". La doc utilisait "sandbox" sans préciser. Mis à jour dans `guide/03-security.md` section "What Makes Cowork Different".

### Fixed
- **Audit Logs / Compliance API — limitation critique** (source officielle Anthropic help center) : les activités Cowork ne sont pas capturées par les Audit Logs ni la Compliance API. Avertissement explicite ajouté dans `guide/03-security.md` section "Enterprise Considerations" + nouvelle section "Secteurs réglementés" (finance, santé, légal, secteur public).
- **Computer Use — procédure d'activation macOS** : étapes setup documentées (Settings → Features → Computer Use, permissions Screen Recording + Accessibility dans System Settings, pairing QR code Dispatch). Ajouté dans `guide/01-getting-started.md` Step 9.

## [1.7.0] - 2026-03-22

### Added
- **Claude Dispatch** (17 mars 2026, research preview Max → Pro) : thread persistant entre le desktop et le mobile. L'utilisateur envoie une tâche depuis son smartphone ; Claude l'exécute sur le desktop avec les fichiers locaux et les plugins installés. Traitement en sandbox sur le device, fichiers restent locaux, approbation utilisateur requise avant toute action. Desktop doit rester ouvert et connecté. Documenter dans `guide/02-capabilities.md` (section Scheduled Tasks / Agent Teams) et `guide/01-getting-started.md`.
- **Projects dans Cowork** (post 17 mars 2026) : workspaces persistants par zone de travail — fichiers, contexte, instructions et mémoire associés à chaque projet. La mémoire est active dans le projet, non partagée entre sessions standalone. Import d'un projet existant en 1 clic ou départ de zéro. Disponible via mise à jour de Claude Desktop. Documenter dans `guide/00-overview.md`, `guide/01-getting-started.md`, `guide/02-capabilities.md`, nouveau workflow `workflows/project-setup.md`.
- **Workflow: PPTX reusable template** (`workflows/presentation-slides.md` + `.en.md`): new variation "Reusable template from existing file" — 3-step workflow (reference file → generate template → produce final presentation), copy-paste prompts with `/pptx` skill, link to `/skill-creator` for automation. Inspired by community feedback (Arnaud Gaches) on real Cowork usage with company PPTX files.
- **Capabilities cross-reference** (`guide/02-capabilities.fr.md`): added pointer to PPTX template workflow in the "PowerPoint (.pptx)" matrix row and a contextual note in the "Excel & PowerPoint Integrations" section.

### Changed
- **LLM Gateway pour add-ins Excel × PowerPoint** (11 mars 2026) : les utilisateurs sur Amazon Bedrock, Google Cloud Vertex AI ou Microsoft Foundry peuvent désormais connecter les add-ins via LLM gateway. Complément non documenté dans v1.6.1. À ajouter dans `guide/02-capabilities.md` section "Excel & PowerPoint Integrations".

## [1.6.1] - 2026-03-17

### Added
- **Visuels interactifs** (bêta, 12 mars 2026) : Claude génère désormais des graphiques, diagrammes et visualisations interactifs directement dans le chat (HTML/CSS/JS/Chart.js). Disponible sur tous les plans. Inclut : sliders de calcul, arbres de décision cliquables, prévisions météo, fiches recettes formatées, inputs à choix multiples. Météo/recettes desktop uniquement (pas iOS).
- **Promotion usage mars 2026** (13-27 mars 2026) : limites d'utilisation doublées hors heures de pointe (weekdays en dehors de 14h-20h heure FR / 8AM-2PM ET, weekends toute la journée). Tous les plans sauf Enterprise. Aucune activation manuelle requise.

### Changed
- **Add-ins Excel × PowerPoint** (11 mars 2026) : partage du contexte de conversation complet entre les deux applications. Ajout des Skills avec slash commands dans les add-ins (ex. `/quarterly-update` respectant le template entreprise).

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

