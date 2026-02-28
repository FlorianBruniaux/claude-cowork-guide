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

**Règle de lecture** : À la première mention d'un terme technique, vous verrez : *terme simple (terme technique)*. Ensuite, seul le terme simple sera utilisé.

---

## A

### Agentique (Agentic)
Décrit des systèmes IA capables de planifier et exécuter des tâches multi-étapes de manière autonome avec une intervention humaine minimale. Cowork est "agentique" car il analyse votre requête, crée un plan et l'exécute (après votre approbation).

### Agent Teams (Équipes d'agents)
Fonctionnalité en preview recherche permettant la coordination multi-agents où plusieurs agents Claude travaillent ensemble sur des tâches complexes. Un agent orchestre les autres, chacun gérant une sous-tâche spécialisée avec une coordination sophistiquée.

### Approval Gate (Porte d'approbation)
Le point de contrôle où Cowork montre ses actions planifiées et attend votre confirmation avant d'exécuter. **Mesure de sécurité critique**—toujours vérifier avant d'approuver.

### Artefact (Artifact)
Un fichier créé par Claude (document, tableur, image, etc.) pendant une session Cowork. Les artefacts apparaissent dans l'interface de Claude où vous pouvez les prévisualiser, les modifier ou les télécharger. Exemples : PDFs générés, tableurs organisés, fichiers de données extraites.

---

## C

### Claude Code
L'outil CLI d'Anthropic pour les développeurs. Partage l'architecture avec Cowork mais fournit un accès shell complet et l'exécution de code. Interface basée terminal.

### Claude in Excel
Add-in Microsoft Excel (lancé 24 janvier 2026) qui fournit une assistance IA à l'intérieur d'Excel. **Pas la même chose que Cowork**. L'add-in aide avec l'écriture de formules, l'analyse de données et la création de graphiques dans des fichiers Excel existants. Les capacités Excel de Cowork génèrent de nouveaux tableurs depuis des données non structurées. Voir [comparaison](comparison.fr.md#confusion-frequente).

### Claude Desktop
L'application macOS et Windows qui héberge Cowork. Différente de l'interface web (claude.ai).

### Compaction de contexte (Context Compaction)
Fonctionnalité beta qui compresse automatiquement l'historique de conversation pendant les sessions longues. Cela permet des sessions effectives beaucoup plus longues en gardant le contexte pertinent tout en supprimant les informations redondantes.

### Customize Tab (Onglet Personnaliser)
L'espace de configuration dans Claude Desktop pour gérer les Compétences, les Connecteurs et les personnalisations. Accédez-y depuis la navigation principale de l'app pour installer des compétences, configurer des connexions avec des outils externes, et définir des permissions par outil.

### Context Limit (Limite de contexte)
La quantité maximale de texte/données que Claude peut traiter dans une seule session (~200K tokens). Quand dépassée, les tâches peuvent échouer ou produire des résultats incomplets.

### Context Window (Fenêtre de contexte)
L'espace "mémoire" où Claude conserve votre conversation et le contenu des fichiers pendant une session. Mesuré en tokens.

### Cowork
La fonctionnalité desktop agentique de Claude pour les travailleurs du savoir. Manipule les fichiers sans exécution de code.

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

### Local-First
Principe de design où les données et le traitement restent sur votre ordinateur plutôt que dans le cloud. Cowork accède uniquement aux fichiers locaux.

---

## M

### Max Tier
Le niveau d'abonnement Claude le plus élevé (100-200$/mois, avec multiplicateurs d'usage 5x ou 20x). Recommandé pour une utilisation intensive de Cowork.

### Pro Tier
Le niveau d'abonnement Claude standard (20$/mois). Inclut maintenant l'accès Cowork, mais avec des limites d'usage plus strictes (~1-1.5 heures d'utilisation intensive avant réinitialisation du quota).

### Connecteur MCP (MCP Connector)
Intégration Model Context Protocol permettant à Cowork d'interagir avec des outils et services externes. Trois types : recherche web, desktop/fichiers locaux, et JSON personnalisé. Les outils de chaque connecteur peuvent être réglés sur Autoriser (automatique), Demander (confirmation à chaque fois), ou Bloquer. Aucun code requis pour la configuration.

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
Terme d'Anthropic pour les fonctionnalités en accès anticipé qui ne sont pas prêtes pour la production. Cowork est en preview recherche (janvier 2026). S'attendre à des bugs.

---

## S

### Compétence / Skill
Capacité supplémentaire pour Cowork, installée via l'onglet Personnaliser. S'active via des commandes / (par ex. `/pdf`, `/docx`, `/xlsx`, `/canvas-design`). Les compétences étendent ce que Cowork peut faire au-delà de ses fonctions par défaut. Compétences officielles : `github.com/anthropics/skills`.

### Enchaînement de compétences (Skill Chaining)
Combinaison de plusieurs compétences dans un même workflow. Exemple : `/pdf` pour extraire le contenu d'un document, puis `/xlsx` pour l'organiser en tableur. Les compétences s'exécutent séquentiellement.

### Commande / (Slash Command)
Un raccourci pour invoquer une compétence dans Cowork (par ex. `/pdf`, `/docx`, `/xlsx`). Tapez la commande / au début de votre message dans l'interface chat de Cowork.

### Scheduled Tasks (Tâches planifiées)
Fonctionnalité permettant d'automatiser des opérations Cowork récurrentes selon un calendrier défini (ex : compilation de rapport quotidien, organisation de fichiers hebdomadaire). Supprime le besoin de déclencher manuellement les tâches répétitives.

### Sub-Agent (Sous-agent)
Travailleurs spécialisés générés par l'orchestrateur pour gérer des parties spécifiques d'une tâche. Chaque sous-agent a un contexte frais et peut travailler en parallèle avec les autres.

### Sandbox
Voir [Folder Sandbox](#folder-sandbox-sandbox-de-dossier).

---

## T

### Token
L'unité que Claude utilise pour mesurer le texte. Environ 4 caractères ou 0.75 mots. Utilisé pour calculer les limites de contexte.

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
