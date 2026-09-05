# Changelog

All notable changes to the Cowork Documentation will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## Non confirmé

Pistes repérées en veille, sans confirmation par une source officielle Anthropic. Cette section n'est pas versionnée : elle n'est reprise ni dans `machine-readable/claude-cowork-releases.yaml` ni sur la landing, et le bump de version ne la déplace pas. Une entrée en sort dans deux cas seulement, quand une source officielle la confirme (elle rejoint alors `[Unreleased]`), ou quand l'absence de confirmation devient concluante (on la supprime).

- **Claude for Government Desktop : Cowork et Code en bêta publique** (7 juillet 2026, FedRAMP High) : la même application que celle des clients commerciaux, livrée dans un environnement autorisé FedRAMP High. Travail sur fichiers locaux, contrôles administrateur renforcés, journaux d'audit infalsifiables, gouvernance des dépenses pour les agences. Sources : releasebot.io/updates/anthropic/claude et claude-news.today. Absent des release notes support.claude.com au 19 juillet 2026. Destination si confirmé : `guide/03-security.md`.

- **Claude Apps Gateway** (29 juin 2026, Enterprise) : control plane auto-hébergé sur Amazon Bedrock ou Google Cloud : SSO corporate, application de politiques, suivi des dépenses par utilisateur. Source : releasebot.io/updates/anthropic/claude uniquement. Absent des release notes officielles au 19 juillet 2026, soit trois semaines après l'annonce supposée. Destination si confirmé : `guide/03-security.md`.

- **Enterprise-Managed MCP Connectors** (18 juin 2026, Enterprise) : autorisation centralisée des connecteurs via Okta et l'IdP, accès zero-touch par appartenance à un groupe. Compléterait les Connector Access Controls du 28 mai. Source : releasebot.io/updates/anthropic/claude uniquement. Absent des release notes officielles au 19 juillet 2026, soit un mois après l'annonce supposée. Destination si confirmé : `guide/03-security.md` section Enterprise Administration.

- **Claude Design : import et verrouillage de design systems** (17 juin 2026) : les admins pourraient importer un design system et le verrouiller pour toute l'organisation, avec synchronisation renforcée vers Claude Code. Source : releasebot.io/updates/anthropic/claude uniquement. Absent des release notes officielles au 19 juillet 2026, soit un mois après l'annonce supposée. Destination si confirmé : section Claude Design de `guide/02-capabilities.md`.

## [1.13.0] - 2026-09-05

### Added
- **Claude Opus 5** (24 juillet 2026, tous plans payants) : nouveau modèle Opus, performances proches de la frontière d'intelligence de Claude Fable 5 pour environ la moitié du prix. Source : anthropic.com/claude/opus + support.claude.com release notes. À documenter dans `guide/02-capabilities.md` section Model Selection.

- **Claude Fable 5.1 et Claude Mythos 5.1** (1er septembre 2026) : nouveaux modèles présentés par Anthropic comme les plus avancés à ce jour pour le coding et le knowledge work. Source : support.claude.com release notes. À documenter dans `guide/02-capabilities.md` section Model Selection.

- **Mémoire dans Cowork (cloud), Topics éditables, réglage sujets sensibles** (25 août 2026) : la mémoire fonctionne désormais across chat et Cowork dans le cloud. Chaque élément mémorisé apparaît sous Settings > Memory > Topics, éditable ou supprimable individuellement. Un réglage « Include sensitive topics in memory » exclut par défaut les sujets santé/croyances. Actif par défaut sur Free/Pro/Max, désactivé par défaut sur Team/Enterprise. Distinct de l'entrée déjà documentée du 10 juillet 2026 (passage au format d'entrées catégorisées, v1.12.0) : ici, l'extension cloud, l'UI d'édition et le réglage sujets sensibles sont nouveaux. Source : support.claude.com release notes. À répercuter dans la section Cross-Session Memory de `guide/02-capabilities.md`.

- **Scan de sécurité des skills et plugins tiers** (6 août 2026, Enterprise) : les organisations Enterprise peuvent activer une vérification automatique du contenu malveillant lors de l'upload ou de l'édition d'un skill ou plugin tiers. Source : support.claude.com release notes. À documenter dans `guide/03-security.md` section Enterprise Administration.

- **Claude dans le menu « Ouvrir avec »** (2 septembre 2026) : Claude apparaît désormais dans le menu système « Open with » pour les tableurs, PDF, fichiers Word/PowerPoint, fichiers texte et images, sur macOS et sur Windows (installations Microsoft Store/MSIX comprises). Source : claude.com/docs/cowork/changelog v1.44121.1. À documenter dans `guide/02-capabilities.md`.

- **File d'attente des messages pendant la limite d'usage de 5h** (4-5 septembre 2026) : un message envoyé une fois la limite de 5h atteinte est désormais mis en attente au-dessus du composer au lieu d'échouer, avec la possibilité de le modifier, l'annuler ou l'envoyer au retour. Source : claude.com/docs/cowork/changelog v1.46388.x. À documenter dans `guide/04-troubleshooting.md` ou `reference/faq.md`.

### Changed
- **Cowork peut attacher des dossiers plus larges** (4 septembre 2026) : Cowork peut désormais accéder au dossier utilisateur complet, à Documents/AppData sous Windows, au dossier Library sur macOS, et à des disques entiers. La configuration et les données de session de Claude restent hors périmètre, de même que certains emplacements de credentials (clés SSH, credentials AWS/GCP, profils bash/zsh/PowerShell). Source : claude.com/docs/cowork/changelog v1.46388.3. À répercuter dans `guide/02-capabilities.md` et `guide/03-security.md` (périmètre d'accès fichiers).

## [1.12.0] - 2026-07-22

### Added
- **Claude Cowork sur web et mobile** (7 juillet 2026, bêta, Max d'abord) : Cowork sort du desktop. Les sessions et les fichiers sont sauvegardés sur le compte Claude et accessibles depuis claude.ai, iPhone, iPad et Android. Les tâches s'exécutent en arrière-plan dans le cloud même sans appareil connecté : une tâche planifiée à 6h du matin tourne sans que le desktop soit allumé. Claude notifie sur le téléphone quand il a besoin d'une approbation, et rien n'est envoyé sans validation. Déploiement progressif sur plusieurs semaines à partir du plan Max. Anthropic maintient que le desktop reste le meilleur endroit pour l'expérience complète (accès aux fichiers locaux et au navigateur). Source : support.claude.com release notes + anthropic.com. Impact transversal : contredit la contrainte "le desktop doit rester ouvert et connecté" documentée en v1.7.0 (Dispatch) et le comportement device sleep documenté en v1.5.0. À répercuter dans `guide/00-overview.md`, `guide/01-getting-started.md`, `guide/02-capabilities.md` section Scheduled Tasks.

- **Microsoft 365 : outils d'écriture** (7 juillet 2026) : le connecteur passe de la lecture seule à l'écriture. Claude peut rédiger, envoyer et classer des emails, gérer les événements de calendrier, modifier les paramètres de boîte mail, créer et mettre à jour des fichiers OneDrive et SharePoint. Teams reste en lecture seule. Le consentement d'un administrateur est requis avant déploiement en organisation, et les scopes d'écriture (envoi de mail, édition de calendriers et fichiers, chat Teams, paramètres de boîte mail) s'accordent via configuration managée. Source : support.claude.com release notes + claude.com/docs/cowork/changelog v1.19367.0. À documenter dans `guide/02-capabilities.md` section Plugins.

- **Reflect : récapitulatif mensuel et Time and focus** (9 juillet 2026, bêta Free/Pro/Max, web et Claude Desktop) : Settings > Reflect affiche les sujets sur lesquels du temps a été passé, le jour le plus actif, l'heure de pointe et des observations sur la façon de travailler avec Claude, sur des périodes de 1, 3, 6 ou 12 mois. Settings > Time and focus permet de configurer des rappels de pause et des heures calmes. La mémoire doit être activée. Source : anthropic.com/news + support.claude.com release notes. À documenter dans `guide/02-capabilities.md`.

- **Configuration HIPAA en self-service** (14 juillet 2026, Enterprise et API) : les administrateurs éligibles consultent le Business Associate Agreement, téléchargent le guide d'implémentation et activent la configuration HIPAA dans un parcours unifié, sans passer par le support. Source : support.claude.com release notes. À documenter dans `guide/03-security.md` section Secteurs réglementés.

- **Admin API pour Claude Enterprise (bêta)** (13 juillet 2026, Enterprise) : gestion des membres de l'organisation claude.ai par API : lister les membres et les chercher par adresse email, changer un rôle, retirer un membre, envoyer et retirer des invitations, gérer les groupes et leur composition, lire les rôles personnalisés. Les requêtes sur les groupes et les rôles custom exigent le header `anthropic-beta: ce-user-management-2026-07-13`. Source : platform.claude.com/docs/en/release-notes. À documenter dans `guide/03-security.md` section Enterprise Administration.

- **Options de configuration managée pour Cowork** (7 et 14 juillet 2026, déploiements administrés) : `otlpTracesEnabled` (bêta) exporte les traces OpenTelemetry des tâches Cowork et des sessions Code vers le collecteur configuré. `toolSearchEnabled` charge les schémas d'outils MCP à la demande au lieu de tous les placer en contexte, utile quand de nombreux outils saturent la fenêtre. `allowedPluginMarketplaces` (bêta) peut désormais être livré par utilisateur via le serveur bootstrap, et non plus seulement par MDM. `disableFeatureDiscovery` masque les annonces de nouveautés après mise à jour. Source : claude.com/docs/cowork/changelog v1.19367.0 et v1.21459.0. À documenter dans `guide/03-security.md`.

### Changed
- **Chat et Cowork fusionnés en une vue unique** (7 juillet 2026, web et desktop) : les onglets séparés Chat et Cowork disparaissent au profit d'un espace commun. Source : support.claude.com release notes + macrumors.com/2026/07/07/claude-cowork-mobile-web. Impact transversal : la doc décrit partout des onglets distincts, à réviser dans `guide/00-overview.md`, `guide/01-getting-started.md`, `reference/cheatsheet.md` et `reference/glossary.md`.

- **Mémoire : entrées individuelles catégorisées** (10 juillet 2026) : la mémoire de Claude fonctionne désormais comme un ensemble d'entrées catégorisées que Claude lit et met à jour au fil des conversations, en remplacement du résumé de mémoire quotidien. Source : support.claude.com release notes. À répercuter dans la section Cross-Session Memory de `guide/02-capabilities.md` (documentée en v1.5.0 via Desktop Commander).

- **Desktop Extensions désactivées par défaut** (7 juillet 2026, breaking, déploiements administrés) : la clé `isDesktopExtensionEnabled` passe de `true` à `false`. Les extensions `.dxt` et `.mcpb` ne se chargent plus tant qu'un administrateur ne l'a pas explicitement autorisé. Auparavant elles se chargeaient par défaut et seule l'interface d'installation était bloquée. L'installation depuis des fichiers `.mcpb` et `.dxt` locaux avait déjà été retirée le 23 juin. Source : claude.com/docs/cowork/changelog v1.19367.0. Corrige la description des Desktop Extensions documentée en v1.6.0, dans `guide/02-capabilities.md`.

### Fixed
- **Cowork indisponible sur ChromeOS** (7 juillet 2026) : Cowork ne propose plus l'accès terminal ni de suggestion de correction impossible sur les systèmes d'exploitation incapables de fournir la virtualisation nécessaire à son environnement isolé, ChromeOS compris, où chaque commande échouait immédiatement. Source : claude.com/docs/cowork/changelog v1.19367.0. À ajouter dans `guide/04-troubleshooting.md`.

## [1.11.0] - 2026-07-04

### Added
- **Model entitlements Enterprise (bêta)** (1er juillet 2026, Enterprise) : les admins contrôlent quels modèles et quels niveaux d'effort sont accessibles à leurs utilisateurs. Confirmé dans les release notes support.claude.com. Releasebot mentionne aussi des alertes de dépenses et une ventilation de l'usage par équipe, non confirmées officiellement. À documenter dans `guide/03-security.md` section Enterprise Administration.

- **Claude Sonnet 5** (30 juin 2026, tous plans y compris Free) : nouveau modèle par défaut des plans Free et Pro, disponible sur claude.ai, desktop et API (`claude-sonnet-5`). Améliorations mesurées sur Sonnet 4.6 en raisonnement, tool use, coding et knowledge work, performances proches d'Opus 4.8 à coût inférieur. Tarif API de lancement : $2/$10 par million de tokens jusqu'au 31 août 2026, puis $3/$15. Source : anthropic.com/news/claude-sonnet-5. À documenter dans `guide/02-capabilities.md` section Model Selection.

- **Claude Science** (30 juin 2026, bêta, Pro/Max/Team/Enterprise) : workbench IA pour chercheurs sur claude.com/science (macOS et Linux, local ou distant via SSH/HPC). Plus de 60 skills spécialisées (génomique, protéomique, biologie structurale, chimioinformatique), rendu natif de structures 3D de protéines et molécules, gestion des ressources de calcul (machine perso, cluster HPC, GPU à la demande), agent reviewer vérifiant citations et calculs, intégrations NVIDIA BioNeMo, UniProt, PDB, Ensembl. Hors scope Cowork strict mais même famille que Claude Design et Claude Security déjà documentés. Source : anthropic.com/news/claude-science-ai-workbench. À mentionner dans `guide/02-capabilities.md`.

- **Claude Desktop : bêta Linux** (30 juin 2026) : premier support officiel Linux, Ubuntu 22.04+ et Debian 12+ (x86_64 et arm64). Les trois onglets Chat, Cowork et Code sont présents. Distribution via dépôt apt Anthropic (mises à jour système) ou paquet .deb sur claude.com/download. Pas d'auto-update sur Linux (mises à jour via apt upgrade). Limitations bêta : Computer Use indisponible, pas de dictée vocale, hotkey Quick Entry sous X11 ou portal GlobalShortcuts Wayland, Fedora/RHEL non supportés. Confirmé par la doc officielle : code.claude.com/docs/en/desktop-linux. Impact : la mention "macOS et Windows" est à réviser dans toute la doc (`guide/00-overview.md`, `guide/01-getting-started.md`, `guide/04-troubleshooting.md`, README).

- **Claude Tag** (23 juin 2026, bêta Team/Enterprise, Slack uniquement) : Claude devient un coéquipier dans Slack. On le tague avec @Claude pour déléguer une tâche ; il la découpe en étapes, l'exécute avec les outils connectés et répond dans un thread. Une instance par channel visible de tous, mémoire du contexte au fil du temps, mode ambient proactif (signale les infos utiles, relance les tâches bloquées), exécution asynchrone planifiable sur plusieurs heures ou jours, identités et accès aux outils scopés par les admins, limites de dépenses et audit logs. Propulsé par Opus 4.8, extension à d'autres plateformes prévue. Source : anthropic.com/news/introducing-claude-tag. À documenter dans `guide/02-capabilities.md` section Agent Teams.

- **Édition des brouillons en place** (12 juin 2026, tous plans) : surligner un passage d'un draft généré par Claude (chat ou Cowork) et demander une modification ; la révision s'applique directement dans l'artifact, sans changer d'application. Source : support.claude.com release notes. À documenter dans `guide/02-capabilities.md`.

- **Claude Fable 5** (9 juin 2026, Pro/Max/Team/Enterprise) : premier modèle Mythos-class accessible au grand public, le plus performant d'Anthropic à ce jour. Conçu pour les tâches longues et complexes : migrations de code, drug design, vision haute résolution, raisonnement multi-étapes. Fenêtre de contexte 1M tokens, output 128K, adaptive thinking uniquement. Tarif API : $10/$50 par million de tokens (2x Opus 4.8). Conditions d'accès révisées après la suspension de juin 2026 (voir Changed ci-dessous). Fable 5 intègre des classifieurs de sécurité : fallback automatique vers Opus 4.8 pour les requêtes cybersécurité, bio/chimie ou distillation (<5% des sessions). Source : anthropic.com/news/claude-fable-5-mythos-5. À documenter dans `guide/02-capabilities.md` section Model Selection.

- **Managed Agents : planification cron et vaults** (9 juin 2026) : extension de Managed Agents (déjà documenté ci-dessous) : les agents peuvent désormais s'exécuter selon un planning cron sans intervention manuelle. Variables d'environnement stockées dans des vaults sécurisés pour l'accès aux outils CLI authentifiés (Browserbase, KERNEL). Source : releasebot.io/updates/anthropic/claude. À documenter dans `guide/02-capabilities.md` section Scheduled Tasks.

- **Connector Observability** (8 juin 2026, public beta) : tableau de bord de performance pour les connecteurs Cowork : adoption, erreurs, latence, usage par produit Claude. Soumission au répertoire de connecteurs disponible directement depuis l'app. Destiné aux développeurs de connecteurs et aux équipes Enterprise. Source : releasebot.io/updates/anthropic/claude. À documenter dans `guide/02-capabilities.md` section Plugins.

- **Enterprise : rôles admin personnalisés** (2 juin 2026, Enterprise) : création de rôles d'administration granulaires sans accès Owner complet. Contrôle par zone : facturation, confidentialité, paramètres d'organisation. Complément du contrôle d'accès par rôle documenté en v1.9.0. Source : support.claude.com release notes. À documenter dans `guide/03-security.md` section Enterprise Administration.

- **Claude Opus 4.8** (28 mai 2026, tous plans payants) : nouveau modèle avec améliorations mesurées sur Opus 4.7 en coding, agentic skills, raisonnement multidisciplinaire et knowledge work pratique. Devient le modèle de fallback de Fable 5 pour les sujets sensibles. Source : support.claude.com release notes + anthropic.com/news. À documenter dans `guide/02-capabilities.md` section Model Selection.

- **Dynamic Workflows** (28 mai 2026, research preview, Max/Team/Enterprise si admin activé) : gestion de sous-agents parallèles dans une session unique pour les tâches longues (migrations, analyses sur grandes codebases, vérifications croisées). Disponible dans Claude Desktop ainsi que Claude Code CLI, VS Code et API. Chaque sous-agent traite une partie de la tâche, avec vérification intégrée. Complément aux Agent Teams (v1.4.0). Source : releasebot.io/updates/anthropic/claude. À documenter dans `guide/02-capabilities.md` section Agent Teams.

- **Connector Access Controls** (28 mai 2026, Enterprise) : les admins peuvent contrôler la disponibilité des connecteurs par rôle via le framework de rôles personnalisés existant. Détermine quels connecteurs sont accessibles à quels groupes d'utilisateurs. Source : support.claude.com release notes. À documenter dans `guide/03-security.md` section Enterprise Administration.

- **Claude Compliance API Integrations** (21 mai 2026, Enterprise) : les équipes IT et sécurité peuvent désormais gouverner l'usage de Claude dans toute la plateforme (Cowork inclus) via les mêmes outils qu'elles utilisent pour leurs autres applications. Intégrations confirmées avec CrowdStrike, Palo Alto Networks, SentinelOne et Wiz. L'activation se fait depuis la Console Anthropic sans modification des workflows Claude existants. Source officielle : support.claude.com release notes. À documenter dans `guide/03-security.md` section Enterprise Governance.

- **Claude Managed Agents: Self-Hosted Sandboxes & MCP Tunnels** (19 mai 2026, public beta + research preview, Enterprise) : les agents Cowork peuvent s'exécuter dans des sandboxes contrôlées par l'entreprise (public beta) et se connecter à des serveurs MCP privés via tunnels (research preview). Providers de sandbox supportés : Cloudflare, Daytona, Modal, Vercel. Permet aux équipes Enterprise de conserver leurs données dans leur infrastructure sans transiter par les serveurs Anthropic. Source : releasebot.io/updates/anthropic/claude (à confirmer sur docs.anthropic.com avant publication). À documenter dans `guide/03-security.md` et `guide/02-capabilities.md` section Plugins.

### Changed
- **Fable 5 : suspension puis restauration avec nouvelles conditions** (12 juin → 1er juillet 2026) : le 12 juin, des chercheurs d'Amazon ont découvert un contournement des safeguards de Fable 5 (identification de vulnérabilités logicielles). Le gouvernement américain a imposé des export controls et, faute de vérification de nationalité en temps réel, Anthropic a suspendu l'accès pour tous les utilisateurs. Accès restauré le 1er juillet avec un classifieur amélioré : la technique signalée est bloquée dans plus de 99% des cas, avec fallback vers Opus 4.8. Nouvelles conditions : jusqu'à 50% des limites hebdomadaires incluses jusqu'au 7 juillet 2026, ensuite crédits d'usage requis. Remplace la condition initiale "inclus jusqu'au 22 juin". Sources : anthropic.com/news/fable-mythos-access, anthropic.com/news/redeploying-fable-5. À répercuter dans `guide/02-capabilities.md` section Model Selection.

## [1.10.0] - 2026-05-16

### Added
- **Claude Opus 4.7** (16 avril 2026, tous plans payants) : nouveau modèle disponible dans Cowork et Claude.ai, sans surcoût vs. Opus 4.6 ($5/$25 par M tokens). Gains principaux : vision haute résolution (jusqu'à 2 576 px / ~3,75 Mpx, 3x la résolution précédente, ouverture aux captures d'écran denses, diagrammes complexes), meilleure auto-correction pendant la planification (le modèle détecte ses propres erreurs logiques avant d'exécuter), instruction following renforcée, mémoire filesystem cross-sessions améliorée, meilleure qualité créative sur slides, docs et interfaces. Nouveau niveau d'effort `xhigh` (entre `high` et `max`). Documenté dans `guide/02-capabilities.md` section Model Selection.

- **Claude Design** (17 avril 2026, research preview, Pro/Max/Team/Enterprise) : nouveau produit Anthropic Labs accessible sur `claude.ai/design`. Permet de créer designs, prototypes, slides, one-pagers et visuels marketing depuis une conversation en langage naturel. Propulsé par Opus 4.7. Workflow : décrire → Claude génère une première version → affiner via conversation, commentaires inline ou curseurs d'ajustement. Lit la charte graphique de l'entreprise (codebase + design files) lors de l'onboarding et l'applique automatiquement à chaque projet. Import : texte, DOCX/PPTX/XLSX, codebase, capture web d'un site existant. Export : URL interne org-scoped, dossier local, Canva, PDF, PPTX, HTML standalone. Partage organisation avec accès lecture ou édition collaborative. Sans surcoût (consomme les limites d'abonnement existantes). Enterprise : désactivé par défaut, activation par l'admin requise. Documenté dans `guide/02-capabilities.md` nouvelle section Claude Design.

- **Connecteurs créatifs : Claude for Creative Work** (28 avril 2026, tous plans dont partiel sur gratuit) : 9 nouveaux connecteurs MCP ciblant les professionnels créatifs, tous basés sur MCP et interopérables avec d'autres LLMs. Ableton (Q&A sur la documentation officielle Live et Push), Adobe Creative Cloud (50+ outils : Photoshop, Premiere, Express, Illustrator, Lightroom, InDesign, Firefly, dont ~40 disponibles sur plan gratuit sans compte Adobe), Affinity by Canva (automatisation de tâches répétitives : batch image, renommage de calques, export, génération de fonctionnalités custom), Autodesk Fusion (création et modification de modèles 3D par conversation, abonnement Fusion requis), Blender (interface langage naturel vers l'API Python : debug de scènes complètes, batch scripts, ajout d'outils à l'interface Blender), Resolume Arena et Wire (contrôle AV en live par langage naturel pour VJs et artistes visuels), SketchUp (description → point de départ pour modèle 3D, à ouvrir dans SketchUp pour affiner), Splice (recherche d'échantillons royalty-free depuis Claude). Documenté dans `guide/02-capabilities.md` section Plugins.

- **Claude Security** (30 avril / 1er mai 2026, bêta publique Enterprise, Team/Max à venir) : outil de sécurité applicative accessible depuis `claude.ai/security` (sidebar Claude.ai). Scanne des codebases complètes via agents parallèles, trace les flux de données, génère des rapports de vulnérabilités avec scores de confiance et sévérité, produit des patchs ciblés sans intégration API. Propulsé par Opus 4.7. Partenaires intégrés : CrowdStrike, Palo Alto Networks, SentinelOne, Wiz. Hors scope Cowork desktop mais accessible aux mêmes abonnés Enterprise. Annonce : anthropic.com.

- **Agents for Financial Services** (5 mai 2026, plans payants) : 10 templates d'agents financiers disponibles comme plugins Cowork (pitch builder, KYC screener, clôture mensuelle automatisée, revue de résultats trimestriels, etc.). Nouveaux connecteurs de données financières : Dun & Bradstreet, Moody's MCP, Verisk, Third Bridge, Experian, GLG, Guidepoint, IBISWorld, qui complètent les connecteurs LSEG, S&P Capital IQ, Morningstar, PitchBook existants. À documenter dans `guide/02-capabilities.md` section Plugins.

- **Claude for Legal** (12 mai 2026, plans payants) : 12 plugins Cowork par domaine de pratique (Commercial Legal, Corporate Legal, Employment Legal, Privacy Legal, IP Legal, Litigation Legal, AI Governance Legal, Law Student, Legal Clinic, etc.) et 20+ connecteurs MCP : iManage, NetDocuments, Ironclad, DocuSign, Relativity, Everlaw, Consilio, Thomson Reuters CoCounsel/Westlaw, LexisNexis, Midpage, Harvey, Box, Datasite. Partenariats accès à la justice (Free Law Project, Courtroom5, Justice Technology Association) : connecteurs gratuits pour organismes d'aide juridique. À documenter dans `guide/02-capabilities.md` section Plugins.

- **Opus 4.7 Fast Mode** (12-13 mai 2026, research preview, API + Claude Code) : génération d'output jusqu'à 2,5x plus rapide pour Opus 4.7 (mêmes poids, aucun changement de qualité). Tarif : 6x le standard ($30/MTok input, $150/MTok output). API : header bêta `fast-mode-2026-02-01`. Claude Code : commande `/fast`. Déploiement progressif chez Cursor, Windsurf, v0, Warp. Opus 4.7 devient le modèle par défaut du fast mode dans Claude Code à partir du 14 mai 2026. À noter dans `guide/02-capabilities.md` section Model Selection.

- **Claude for Small Business** (13 mai 2026, plans payants Cowork) : offre packagée activable via un toggle dans Claude Cowork. 7 connecteurs préinstallés : QuickBooks, PayPal, HubSpot, Canva, Docusign, Google Workspace, Microsoft 365. 15 workflows agentic prêts à l'emploi (finance, opérations, ventes, marketing, RH, service client) + 15 skills réutilisables pour les tâches récurrentes. Cas d'usage principaux : planification de la paie (réconciliation QuickBooks + PayPal + prévision 30j), clôture mensuelle automatisée avec P&L en anglais simple exportable vers le comptable, tableau de bord business sur demande (cash position, pipeline, engagements), lancement de campagne (HubSpot + Canva), relance factures, revue de contrats (Docusign). L'utilisateur approuve avant chaque action (envoi, paiement, publication). Les permissions existantes des outils connectés sont respectées. Sans surcoût au-delà de l'abonnement Claude et des outils tiers utilisés. Documenté dans `guide/02-capabilities.md` section Claude for Small Business.

- **docs: add Claude for Office add-ins section (Word, Excel, PowerPoint + shared context)** : nouvelle section dans `guide/02-capabilities.md` et `guide/02-capabilities.fr.md` documentant Claude comme add-in natif dans les applications Microsoft Office. Couvre la disponibilité (Excel et PowerPoint disponibles, Word bêta lancé le 10 avril 2026), les fonctionnalités par application, le contexte partagé entre les trois add-ins depuis mars 2026, un workflow pratique en 4 étapes, et le tableau comparatif Cowork vs. add-ins.

### Changed
- **Microsoft 365 : add-in Outlook en bêta publique, Word en disponibilité générale** (7 mai 2026) : 4ème add-in Office disponible : Outlook en bêta publique (non documenté précédemment). L'add-in Word passe de bêta à disponibilité générale (était bêta depuis le 10 avril 2026). Contexte partagé étendu aux quatre applications simultanément (Excel + PowerPoint + Word + Outlook). Mis à jour dans `guide/02-capabilities.md` section Claude Add-ins for Microsoft Office.

- **Limites d'utilisation relevées** (6 mai 2026, Pro/Max/Team/Enterprise) : suite au partenariat de calcul avec SpaceX (centre de données Colossus 1, +220 000 GPU Nvidia, 300 MW de capacité), Anthropic double les limites de sessions 5h pour tous les plans payants et supprime la réduction des limites aux heures de pointe (peak hours) pour les plans Pro et Max. Impact direct sur l'expérience Cowork : moins d'interruptions de session en journée pour les utilisateurs intensifs. Mis à jour dans `guide/00-overview.md`.

## [1.9.0] - 2026-04-11

### Added
- **Connecteur Zoom MCP** (9 avril 2026, tous plans payants) : nouveau connecteur officiel Anthropic ajouté au catalogue Cowork au moment du GA. Permet d'intégrer Zoom dans les workflows automatisés : gestion de réunions, récupération de transcripts, déclenchement d'actions depuis Cowork. Documenté dans `guide/02-capabilities.md` section Plugins.
- **Contrôle d'accès par rôle : Enterprise** (9 avril 2026, Team/Enterprise) : les admins peuvent organiser les utilisateurs en groupes, assigner des rôles personnalisés définissant l'accès aux fonctionnalités Cowork, et activer/désactiver Cowork par équipe. Documenté dans `guide/03-security.md` section Enterprise.
- **Limites de dépenses par groupe** (9 avril 2026, Enterprise) : plafonds budgétaires configurables par groupe d'utilisateurs, permettant aux DSI et responsables IA de contrôler la consommation par département ou projet. Documenté dans `guide/03-security.md`.
- **Analytics d'utilisation** (9 avril 2026, Enterprise) : intégration Analytics API pour monitorer l'activité Cowork : patterns d'utilisation, volume de tâches, consommation par équipe. Documenté dans `guide/03-security.md`.
- **Smart Skills Loading** (Q1 2026) : les Skills ne consomment plus l'intégralité de la fenêtre de contexte. Claude charge uniquement les Skills nécessaires au moment voulu. Améliore la gestion du contexte sur les sessions longues avec de nombreuses Skills installées. Documenté dans `guide/02-capabilities.md` section Skills.

### Changed
- **Cowork : disponibilité générale (GA)** (9 avril 2026) : Claude Cowork passe du statut "research preview" à disponibilité générale sur macOS et Windows. Disponible pour tous les abonnés payants (Pro, Max, Team, Enterprise). Mis à jour dans `guide/00-overview.md`, `guide/01-getting-started.md`, `guide/03-security.md` (mentions "research preview" retirées, tableau Enterprise revu).
- **OpenTelemetry : support étendu** (9 avril 2026, Enterprise) : observabilité Cowork renforcée via OpenTelemetry, traçabilité des actions dans les stacks de monitoring existantes (Datadog, Grafana, etc.). Documenté dans `guide/03-security.md`.

## [1.8.1] - 2026-04-01

### Changed
- **Computer Use : hiérarchie d'accès en 3 niveaux** : documentation de la priorité connectors → Chrome → contrôle écran dans `guide/02-capabilities.md`. Ajoute un tableau explicite et une note sur les implications de performance (le contrôle écran est plus lent car il capte un screenshot à chaque action).
- **Computer Use : warnings officiels Anthropic** : renforcement du langage de sécurité dans `guide/02-capabilities.md` et `guide/03-security.md` avec la guideline officielle ("ne pas utiliser Computer Use sur des apps avec accès à des données de santé, financières, ou personnelles"). Ajout d'une section dédiée dans le Security Guide avec tableau de risques par catégorie d'app.
- **Computer Use opère hors VM** : précision documentée dans `guide/03-security.md` : Computer Use contrôle le bureau réel, pas l'environnement VM isolé des opérations fichiers standard.
- **FAQ : Dispatch vs Channels** (clarification) : nouvelle Q&A dans `reference/faq.md` distinguant Dispatch (Cowork, QR code iOS/Android) de Channels (Claude Code CLI, Telegram/Discord). Confusion fréquente dans la presse tech.

## [1.8.0] - 2026-03-27

### Added
- **Computer Use : research preview dans Cowork** (23 mars 2026, Pro et Max, macOS) : Claude peut désormais contrôler directement le bureau (ouvrir des applications, pointer/cliquer, remplir des formulaires, naviguer dans le navigateur) sans configuration préalable. S'intègre avec Dispatch pour exécuter des tâches desktop depuis le téléphone. Feature distincte de l'acquisition Vercept (v1.6.0) : c'est le lancement effectif pour les utilisateurs finaux. Documenté dans `guide/02-capabilities.md` section Computer Use + `guide/01-getting-started.md` Step 9.
- **Applications interactives sur iOS et Android** (25 mars 2026) : l'app mobile se connecte à des applications interactives complètes : graphiques live, croquis, contenu partageable directement dans les conversations. Extension de la feature "visuels interactifs" déjà disponible sur desktop (v1.6.1). Documenté dans `guide/02-capabilities.md`.

### Changed
- **Dispatch : détails techniques et limitations** (23 mars 2026) : jumelage mobile/desktop via QR code depuis l'app mobile. Limitations documentées : exécution en thread unique (délais possibles sur tâches complexes), impossibilité d'ouvrir des applications Mac natives comme Photos. Documenté dans `guide/02-capabilities.md` et `guide/01-getting-started.md` Step 9.
- **Cowork disponible sur Team et Enterprise** : la page officielle Anthropic confirme "Pro, Max, Team, Enterprise", correction appliquée dans le tableau subscription tiers de `guide/01-getting-started.md`.
- **VM isolée** : terminologie officielle Anthropic = "virtual machine (VM) environment". La doc utilisait "sandbox" sans préciser. Mis à jour dans `guide/03-security.md` section "What Makes Cowork Different".

### Fixed
- **Audit Logs / Compliance API : limitation critique** (source officielle Anthropic help center) : les activités Cowork ne sont pas capturées par les Audit Logs ni la Compliance API. Avertissement explicite ajouté dans `guide/03-security.md` section "Enterprise Considerations" + nouvelle section "Secteurs réglementés" (finance, santé, légal, secteur public).
- **Computer Use : procédure d'activation macOS** : étapes setup documentées (Settings → Features → Computer Use, permissions Screen Recording + Accessibility dans System Settings, pairing QR code Dispatch). Ajouté dans `guide/01-getting-started.md` Step 9.

## [1.7.0] - 2026-03-22

### Added
- **Claude Dispatch** (17 mars 2026, research preview Max → Pro) : thread persistant entre le desktop et le mobile. L'utilisateur envoie une tâche depuis son smartphone ; Claude l'exécute sur le desktop avec les fichiers locaux et les plugins installés. Traitement en sandbox sur le device, fichiers restent locaux, approbation utilisateur requise avant toute action. Desktop doit rester ouvert et connecté. Documenter dans `guide/02-capabilities.md` (section Scheduled Tasks / Agent Teams) et `guide/01-getting-started.md`.
- **Projects dans Cowork** (post 17 mars 2026) : workspaces persistants par zone de travail : fichiers, contexte, instructions et mémoire associés à chaque projet. La mémoire est active dans le projet, non partagée entre sessions standalone. Import d'un projet existant en 1 clic ou départ de zéro. Disponible via mise à jour de Claude Desktop. Documenter dans `guide/00-overview.md`, `guide/01-getting-started.md`, `guide/02-capabilities.md`, nouveau workflow `workflows/project-setup.md`.
- **Workflow: PPTX reusable template** (`workflows/presentation-slides.md` + `.en.md`): new variation "Reusable template from existing file" : 3-step workflow (reference file → generate template → produce final presentation), copy-paste prompts with `/pptx` skill, link to `/skill-creator` for automation. Inspired by community feedback (Arnaud Gaches) on real Cowork usage with company PPTX files.
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
- **Claude in Chrome** (bêta, tous plans payants) : extension Chrome intégrée à l'écosystème Cowork : gestion multi-onglets, tâches navigateur planifiées, /slash commands réutilisables. Disponible Pro/Max/Team/Enterprise. Listé comme produit officiel Anthropic sur anthropic.com.
- **Import Memory** (2-3 mars 2026) : nouvel outil permettant d'importer ses préférences et contexte depuis ChatGPT, Gemini, Copilot ou tout autre service IA via un prompt dédié fourni par Anthropic. Facilite la migration vers Claude.
- **Acquisition Vercept + Computer Use 72.5%** (25 fév 2026) : Anthropic acquiert Vercept (Allen Institute for AI), spécialisée en perception d'interfaces UI. Leur modèle VyUI améliore le grounding écran. Résultat : benchmark OSWorld passe de 15% (fin 2024) à 72.5% (fév 2026). Documenter dans guide/02-capabilities.md section Computer Use.
- **Instructions globales et par dossier dans Cowork** : possibilité de définir des instructions persistantes s'appliquant à toutes les sessions Cowork (global) ou à des dossiers spécifiques. Complément aux tâches planifiées (v1.5.0).
- **Desktop Extensions : interface graphique d'installation MCP** : nouveau UI graphique pour installer les extensions/MCP servers directement depuis Claude Desktop, avec validation des inputs et stockage sécurisé des credentials. Rend l'installation accessible aux non-développeurs.

### Changed
- **Memory disponible pour tous** (2 mars 2026) : la fonctionnalité Memory, auparavant réservée aux plans payants (Pro/Max/Team/Enterprise), est désormais accessible à tous les utilisateurs y compris le tier gratuit. Mettre à jour la comparison matrix et la FAQ.
- **Claude in Excel × PowerPoint : workflows cross-app** : nouvelle capacité de travail simultané Excel + PowerPoint dans le même contexte de tâche (ex : analyser un tableau Excel et générer automatiquement la présentation PowerPoint associée). Enrichir la section intégrations Office dans guide/02-capabilities.md.

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

- **Windows support** (February 10, 2026) : Claude Cowork now available on macOS and Windows
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

## Backlog

### Planned

- Additional workflows (email triage, invoice processing)
- Video tutorials for visual learners
- Community-contributed prompts section
- Advanced CTOC patterns library
- Cowork + MCP integration examples

---

