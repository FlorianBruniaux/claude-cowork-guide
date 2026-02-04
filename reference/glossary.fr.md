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

**Règle de lecture** : À la première mention d'un terme technique, vous verrez : *terme simple (terme technique)*. Ensuite, seul le terme simple sera utilisé.

---

## A

### Agentique (Agentic)
Décrit des systèmes IA capables de planifier et exécuter des tâches multi-étapes de manière autonome avec une intervention humaine minimale. Cowork est "agentique" car il analyse votre requête, crée un plan et l'exécute (après votre approbation).

### Approval Gate (Porte d'approbation)
Le point de contrôle où Cowork montre ses actions planifiées et attend votre confirmation avant d'exécuter. **Mesure de sécurité critique**—toujours vérifier avant d'approuver.

### Artefact (Artifact)
Un fichier créé par Claude (document, tableur, image, etc.) pendant une session Cowork. Les artefacts apparaissent dans l'interface de Claude où vous pouvez les prévisualiser, les modifier ou les télécharger. Exemples : PDFs générés, tableurs organisés, fichiers de données extraites.

---

## C

### Claude Code
L'outil CLI d'Anthropic pour les développeurs. Partage l'architecture avec Cowork mais fournit un accès shell complet et l'exécution de code. Interface basée terminal.

### Claude Desktop
L'application macOS qui héberge Cowork. Différente de l'interface web (claude.ai).

### Context Limit (Limite de contexte)
La quantité maximale de texte/données que Claude peut traiter dans une seule session (~200K tokens). Quand dépassée, les tâches peuvent échouer ou produire des résultats incomplets.

### Context Window (Fenêtre de contexte)
L'espace "mémoire" où Claude conserve votre conversation et le contenu des fichiers pendant une session. Mesuré en tokens.

### Cowork
La fonctionnalité desktop agentique de Claude pour les travailleurs du savoir. Manipule les fichiers sans exécution de code.

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
