# Glossaire Cowork

🌐 **Langues** : [Français](glossary.fr.md) | [English](glossary.md)

> **Terminologie spécifique à Claude Cowork et concepts associés**

---

## Vocabulaire simplifié (pour non-techniques)

Ce guide utilise parfois des termes techniques. Voici leur équivalent simple :

| Terme technique | Équivalent simple | Analogie du monde réel |
|----------------|-------------------|------------------------|
| **Workflow** | Procédure guidée | Comme une recette de cuisine : étapes dans l'ordre |
| **Prompt** | Instruction à Claude | Comme une demande à un assistant |
| **Token** | Unité de texte (~4 caractères) | Comme compter les mots dans un contrat |
| **Sandbox** | Espace de travail isolé | Comme un atelier séparé de votre maison |
| **Agentique / Autonome** | Peut travailler seul | Comme un employé expérimenté qui sait quoi faire |
| **OCR** | Lecture de photos/scans | Comme recopier un document papier à la main |
| **Prompt injection** | Fichier piège | Comme un faux bon de commande glissé dans votre pile |
| **Orchestrateur** | Coordinateur | Comme un chef d'équipe qui distribue le travail |
| **Sous-agent** | Assistant spécialisé | Comme un plombier vs un électricien |
| **Context limit** | Limite de mémoire | Comme la capacité d'un disque dur |
| **Preview** | Version test | Comme un prototype avant la version finale |
| **Template** | Modèle | Comme un formulaire pré-rempli |
| **Knowledge worker** | Professionnel non-développeur | Chef de projet, consultant, analyste... |
| **Plugin** | Extension officielle | Comme une appli sur votre téléphone |
| **Tâche planifiée** | Tâche automatique récurrente | Comme un rappel qui fait le travail à votre place |
| **Agent Teams** | Équipe d'assistants IA | Comme une équipe de collègues spécialisés |
| **Compaction** | Compression de l'historique | Comme résumer une réunion pour garder l'essentiel |
| **Compétence (Skill)** | Pouvoir supplémentaire | Comme un outil spécialisé dans votre boîte à outils |
| **Connecteur MCP** | Lien vers un outil externe | Comme brancher un accessoire sur votre appareil |
| **Commande /** | Raccourci pour activer un outil | Comme un raccourci clavier |
| **Onglet Personnaliser** | Centre de configuration | Comme les réglages de votre téléphone |
| **Desktop Commander** | Extension fichiers + mémoire | Comme un assistant qui se souvient de vos préférences |
| **Fichier mémoire** | Aide-mémoire persistant | Comme un carnet de notes que vous relisez chaque matin |
| **Cowork dans le cloud** | Tâche exécutée chez Anthropic | Comme confier le travail à un atelier à distance, vos dossiers restent chez vous |
| **Modes d'approbation** | Niveau de surveillance | Comme choisir de valider chaque geste, les gestes risqués seulement, ou aucun |

**Règle de lecture** : À la première mention d'un terme technique, vous verrez : *terme simple (terme technique)*. Ensuite, seul le terme simple sera utilisé.

---

## A

### Agentique (Agentic)
Décrit des systèmes IA capables de planifier et exécuter des tâches multi-étapes de manière autonome avec une intervention humaine minimale. Cowork est "agentique" car il analyse votre requête, crée un plan et l'exécute (après votre approbation).

### Agent Teams (Équipes d'agents)
Fonctionnalité en preview recherche permettant la coordination multi-agents où plusieurs agents Claude travaillent ensemble sur des tâches complexes. Un agent orchestre les autres, chacun gérant une sous-tâche spécialisée avec une coordination sophistiquée.

### Approval Gate (Porte d'approbation)
Le point de contrôle où Cowork montre ses actions planifiées et attend votre confirmation avant d'exécuter. **Mesure de sécurité critique** : toujours vérifier avant d'approuver. Depuis le renommage des modes d'approbation (constaté le 11 octobre 2026), la fréquence des arrêts dépend du mode choisi : voir [Modes d'approbation](#modes-dapprobation-approval-modes).

### Modes d'approbation (Approval Modes)
Les trois niveaux de supervision de Cowork : **Manual** (anciennement « Ask before acting »), **Auto** et **Skip all approvals** (anciennement « Act without asking »). Voir les trois entrées ci-dessous. Source : support.claude.com/en/articles/13345190.

### Auto (mode d'approbation)
Claude avance sans demander à chaque étape, mais chaque action est filtrée au préalable. Une action jugée dangereuse est bloquée, Claude cherche une autre voie ou vous demande, et il repasse en mode demande s'il est bloqué à répétition. Auto consomme davantage de votre limite d'usage. Sur Team et Enterprise, Auto est proposé par défaut tant qu'un owner ne le désactive pas. Source : support.claude.com/en/articles/13345190 et 13455879.

### Artefact (Artifact)
Un fichier créé par Claude (document, tableur, image, etc.) pendant une session Cowork. Les artefacts apparaissent dans l'interface de Claude où vous pouvez les prévisualiser, les modifier ou les télécharger. Exemples : PDFs générés, tableurs organisés, fichiers de données extraites.

---

## B

### Navigateur intégré (Built-in Browser)
Un navigateur inclus dans Claude Desktop (macOS, Windows, Linux en bêta) que Cowork peut utiliser pour les tâches web. Il est séparé de votre navigateur personnel : Claude ne voit pas vos mots de passe enregistrés, sauf import volontaire de votre part. Claude Desktop doit rester ouvert et en ligne pour que Claude l'utilise. Ordre de préférence de Claude : un connecteur d'abord, puis un navigateur (intégré ou Claude in Chrome), puis le contrôle de l'écran. Source : support.claude.com/en/articles/16607400 et 13455879.

---

## C

### Claude Code
L'outil CLI d'Anthropic pour les développeurs. Partage l'architecture avec Cowork mais fournit un accès shell complet et l'exécution de code. Interface basée terminal.

### Claude in Excel
Add-in Microsoft Excel qui fournit une assistance IA à l'intérieur d'Excel. **Pas la même chose que Cowork**. L'add-in aide avec l'écriture de formules, l'analyse de données et la création de graphiques dans des fichiers Excel existants. Les capacités Excel de Cowork génèrent de nouveaux tableurs depuis des données non structurées. Voir [comparaison](comparison.fr.md#confusion-courante).

### Claude Dashboards
Fonction en bêta (constatée le 8 octobre 2026) qui construit des tableaux de bord à partir d'entrepôts de données (Amazon Redshift, BigQuery, ClickHouse, Databricks, Snowflake) ou d'apps connectées comme Salesforce. Claude écrit une requête SQL par graphique et l'affiche. Disponible sur Pro, Max, Team et Enterprise (désactivé par défaut sur Enterprise). Consomme les limites d'usage du plan et reste privé par défaut. Source : notes de version support.claude.com et article 17454700.

### Claude Desktop
L'application Claude pour macOS, Windows et Linux (bêta). Depuis le 8 septembre 2026 (v1.49585.0), l'app Mac exige macOS 13 Ventura ou plus récent. La bêta Linux couvre Ubuntu 22.04+ et Debian 12+, n'a pas de mise à jour automatique et n'a ni utilisation de l'ordinateur ni dictée. Cowork est aussi disponible sur le web et le mobile pour les plans éligibles. Consultez le [guide Anthropic des surfaces](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile).

### Claude Docs
Format de documents vivants que vous créez depuis n'importe quelle conversation et partagez en équipe. Sort de bêta le 8 octobre 2026 et s'exporte en Word, PDF, Markdown et Google Docs. Disponible sur tous les plans, Free compris. Sur Enterprise, activé par défaut à partir du 15 octobre 2026. Source : notes de version support.claude.com et article 16923645.

### Claude Motion
Fonction en bêta (Team et Enterprise uniquement) qui produit des animations codées, exportables en MP4. Elle ne génère pas de vidéo réaliste. Activée par défaut sur Team, désactivée par défaut sur Enterprise, elle consomme les limites d'usage du plan. Source : notes de version support.claude.com et article 17454997.

### Claude Slides
Le format de présentations de Claude, disponible depuis n'importe quelle conversation sur tous les plans (Free compris) depuis le 16 septembre 2026, et sorti de bêta le 8 octobre 2026. Vous modifiez les diapositives avec Claude ou directement. Source : notes de version support.claude.com.

### Compaction de contexte (Context Compaction)
Fonctionnalité beta qui compresse automatiquement l'historique de conversation pendant les sessions longues. Cela permet des sessions effectives beaucoup plus longues en gardant le contexte pertinent tout en supprimant les informations redondantes.

### Customize Tab (Onglet Personnaliser)
L'espace de configuration dans Claude Desktop pour gérer les Compétences, les Connecteurs et les personnalisations. Accédez-y depuis la navigation principale de l'app pour installer des compétences, configurer des connexions avec des outils externes, et définir des permissions par outil.

### Context Limit (Limite de contexte)
La quantité de texte ou de données que Claude peut traiter dans une session. Elle varie selon le modèle, le plan et la surface ; vérifiez la limite actuelle dans Claude avant une tâche importante.

### Context Window (Fenêtre de contexte)
L'espace "mémoire" où Claude conserve votre conversation et le contenu des fichiers pendant une session. Mesuré en tokens.

### Cowork
L'espace de tâches Claude pour le travail intellectuel. Il peut utiliser vos fichiers (pour les dossiers connectés) et, lorsqu'ils sont disponibles et autorisés, les fonctions navigateur ou connecteurs. Le code de tâche s'exécute dans un environnement isolé, sans shell hôte sans restriction. Depuis le 16 septembre 2026, Cowork n'est plus un mode séparé : voir [Unified Claude](#unified-claude).

### Cowork dans le cloud (Cowork in the cloud)
Le lieu d'exécution des nouvelles tâches Cowork. Depuis le 6 octobre 2026, les nouvelles tâches Pro et Max tournent sur les serveurs d'Anthropic, dans un environnement isolé temporaire. L'option « Only on your computer » de Settings > General est supprimée, sans retour possible. Vos dossiers restent sur votre ordinateur : une session cloud n'accède qu'aux dossiers que vous avez connectés, et seulement quand Claude Desktop est ouvert (les fichiers lus sont traités sur les serveurs d'Anthropic). Les tâches lancées en local avant le 6 octobre restent locales jusqu'à leur fin. Les nouvelles tâches planifiées tournent dans le cloud, même ordinateur éteint. Sur Team, c'est une bêta activée par défaut. Sur Enterprise, c'est une bêta désactivée par défaut jusqu'à activation par un owner. Les sessions Cowork locales n'utilisent pas la mémoire. Source : support.claude.com/en/articles/15520349.

### Desktop Commander
Extension officielle de Cowork installée depuis l'onglet Personnaliser. Active : (1) l'accès au système de fichiers au-delà du dossier workspace, (2) la mémoire cross-session via un fichier `memory.md`, (3) l'installation de serveurs MCP en un clic. Recommandé pour tous les utilisateurs réguliers de Cowork.

---

## E

### Execution Plan (Plan d'exécution)
La liste détaillée des actions que Cowork propose avant de commencer le travail. Montre quels fichiers seront affectés et comment. **Vérifier attentivement.**

### Extended Thinking (Pensée étendue)
La capacité de Claude à raisonner à travers des problèmes complexes étape par étape. Capacité partagée entre Claude Code et Cowork.

---

## F

### Folder Sandbox (Sandbox de dossier)
La zone restreinte où Cowork peut opérer. Vous accordez l'accès à des dossiers spécifiques ; Cowork ne peut rien accéder en dehors de cette limite.

---

## K

### Knowledge Worker (Travailleur du savoir)
Professionnels non techniques qui travaillent principalement avec l'information et les documents (chefs de projet, analystes, rédacteurs, consultants). L'audience cible de Cowork.

---

## L

### Espace de travail local
Un dossier ou un contexte desktop que vous rendez explicitement accessible à Cowork. L'accès local ne donne pas accès à tous les fichiers ; les fonctions Cowork peuvent aussi dépendre du desktop connecté, du navigateur ou des permissions des connecteurs.

---

## M

### Plan Max
Un plan Claude payant. L'éligibilité Cowork, le prix et les limites d'usage peuvent varier selon le plan et la surface ; vérifiez les informations Anthropic actuelles avant de décider.

### Plan Pro
Un plan Claude payant. L'éligibilité Cowork, le prix et les limites d'usage peuvent varier selon le plan et la surface ; vérifiez les informations Anthropic actuelles avant de décider.

### Connecteur MCP (MCP Connector)
Intégration Model Context Protocol permettant à Cowork d'interagir avec des outils et services externes. Trois types : recherche web, desktop/fichiers locaux, et JSON personnalisé. Les outils de chaque connecteur peuvent être réglés sur Autoriser (automatique), Demander (confirmation à chaque fois), ou Bloquer. Aucun code requis pour la configuration.

### Manual (mode d'approbation)
Claude attend votre Allow ou Deny à chaque demande (anciennement « Ask before acting »). Le mode le plus sûr, et le plus lent. Source : support.claude.com/en/articles/13345190.

### Fichier Mémoire (Memory File)
Un fichier markdown (typiquement `memory.md`) utilisé avec Desktop Commander pour conserver le contexte entre les sessions Cowork. Contient le contexte métier, les préférences clients et les informations de tâches récurrentes. Référencez-le au début de chaque session : "Lis ~/Cowork-Workspace/memory.md d'abord."

### Multi-Step Task (Tâche multi-étapes)
Une opération nécessitant plusieurs actions séquentielles. Exemple : "lire fichiers → analyser → créer rapport → organiser sortie." Cowork excelle dans ces tâches.

---

## O

### OCR (Optical Character Recognition / Reconnaissance optique de caractères)
Technologie qui extrait du texte depuis des images. Cowork utilise l'OCR pour lire les reçus, captures d'écran et documents scannés.

### Orchestrator (Orchestrateur)
L'agent Cowork principal qui reçoit votre requête, crée le plan, coordonne les sous-agents et assemble les résultats.

---

## P

### Plugin (Plugin Cowork)
Intégration tierce officielle qui étend les capacités de Cowork. 11 plugins ont été annoncés le 30 janvier 2026 : Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry et Slack. Les plugins permettent à Cowork d'interagir directement avec ces services sans automatisation navigateur.

### Prompt
Les instructions que vous donnez à Claude. Peuvent être simples ("organise ces fichiers par ordre alphabétique") ou des workflows complexes multi-étapes ("lire factures → extraire données → créer tableur → catégoriser par date"). Des prompts clairs donnent de meilleurs résultats.

### Prompt Injection (Injection de prompt)
Une attaque de sécurité où des instructions malveillantes sont cachées dans des fichiers, tentant de manipuler le comportement de l'IA. Mitigation : traiter uniquement des fichiers de confiance.

### Projects
L'interface de conversation de Claude sur claude.ai. Permet le téléchargement de documents mais aucun accès ou création de fichiers locaux.

---

## R

### Research Preview (Preview recherche)
Libellé Anthropic pour une fonctionnalité en accès anticipé. N'inférez pas un statut bêta ou GA global de Cowork à partir d'une fonction. L'utilisation de l'ordinateur était en preview recherche à son lancement le 23 mars 2026 ; au 11 octobre 2026, la page d'aide d'Anthropic la présente comme « in beta for Pro and Max plans » (macOS et Windows uniquement, ni Team, ni Enterprise, ni Linux). Consultez le [guide Anthropic actuel](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork).

---

## S

### Skip all approvals (mode d'approbation)
Claude agit sans s'arrêter et sans filtrer ses actions (anciennement « Act without asking »). À réserver aux travaux non sensibles. Sur Team et Enterprise, un outil de connecteur que l'organisation a réglé sur « Restrict to Ask » demande quand même l'approbation, même dans ce mode. Source : support.claude.com/en/articles/13345190 et 13455879.

### Compétence / Skill
Capacité supplémentaire pour Cowork, installée via l'onglet Personnaliser. S'active via des commandes / (par ex. `/pdf`, `/docx`, `/xlsx`, `/canvas-design`). Les compétences étendent ce que Cowork peut faire au-delà de ses fonctions par défaut. Compétences officielles : `github.com/anthropics/skills`.

### Enchaînement de compétences (Skill Chaining)
Combinaison de plusieurs compétences dans un même workflow. Exemple : `/pdf` pour extraire le contenu d'un document, puis `/xlsx` pour l'organiser en tableur. Les compétences s'exécutent séquentiellement.

### Commande / (Slash Command)
Un raccourci pour invoquer une compétence dans Cowork (par ex. `/pdf`, `/docx`, `/xlsx`). Tapez la commande / au début de votre message dans l'interface chat de Cowork.

### Scheduled Tasks (Tâches planifiées)
Fonctionnalité permettant d'automatiser des opérations Cowork récurrentes selon un calendrier défini (ex : compilation de rapport quotidien, organisation de fichiers hebdomadaire). Supprime le besoin de déclencher manuellement les tâches répétitives.

### Smart Reports (Rapports intelligents)
Fonction Enterprise en bêta (10 septembre 2026) qui analyse l'usage de Claude par une équipe : travail accompli, coût, points de friction des sessions, motifs répétés qui méritent de devenir des compétences partagées. Source : notes de version support.claude.com.

### Sub-Agent (Sous-agent)
Travailleurs spécialisés générés par l'orchestrateur pour gérer des parties spécifiques d'une tâche. Chaque sous-agent a un contexte frais et peut travailler en parallèle avec les autres.

### Sandbox
Voir [Folder Sandbox](#folder-sandbox-sandbox-de-dossier).

---

## T

### Token
L'unité que Claude utilise pour mesurer le texte. Environ 4 caractères ou 0.75 mots. Utilisé pour calculer les limites de contexte.

---

## U

### Unified Claude
Depuis le 16 septembre 2026 (déploiement progressif Pro et Max, web, desktop et mobile), il n'y a plus de mode Chat ou Cowork à choisir : Claude décide si votre demande appelle une réponse rapide ou une tâche. Formule d'Anthropic : « Claude Cowork is now just Claude ». Les onglets séparés Chat et Cowork avaient déjà fusionné le 7 juillet 2026. Conversations, tâches, projets, connecteurs et compétences sont conservés. Pour les déploiements tiers administrés, la vue unifiée s'applique à toutes les organisations le 10 novembre 2026. Source : notes de version support.claude.com.

---

## W

### Workflow
Une séquence d'actions répétable qui transforme une entrée en sortie. Exemple : "lire fichiers → traiter → créer résultat." Comme une recette que vous pouvez réutiliser pour des tâches similaires. Cowork excelle dans l'automatisation de workflows répétitifs.

### Workspace
La structure de dossiers dédiée pour les opérations Cowork. Bonne pratique : `~/Cowork-Workspace/` avec les sous-dossiers `input/` et `output/`.

---

## Acronymes courants

| Acronyme | Signification |
|----------|---------------|
| CLI | Command Line Interface (Interface en ligne de commande) |
| OCR | Optical Character Recognition (Reconnaissance optique de caractères) |
| PDF | Portable Document Format (Format de document portable) |
| API | Application Programming Interface (Interface de programmation d'application) |
| SSO | Single Sign-On (Authentification unique) |

---

## Termes connexes de Claude Code

| Terme | Contexte Code | Contexte Cowork |
|-------|---------------|-----------------|
| **CLAUDE.md** | Fichier de contexte projet | Peut être utilisé pour le contexte partagé d'équipe |
| **Sub-agents** | Travailleurs spécifiques à la tâche | Même concept, focalisé fichiers |
| **Hooks** | Gestionnaires d'événements | Non disponible dans Cowork |
| **MCP** | Model Context Protocol | Supporté via configuration Claude Desktop |

---

*[← Retour à la documentation Cowork](../README.md)*
