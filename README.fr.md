# Guide Claude Cowork

🌐 **Langues** : [Français](README.fr.md) | [English](README.md)

## Table des matières

- [Démarrage rapide](#-démarrage-rapide)
- [Pourquoi ce guide ?](#pourquoi-ce-guide-)
- [Parcours d'apprentissage](#-parcours-dapprentissage)
- [Contenu](#-contenu)
- [Règles d'or](#-règles-dor)
- [À propos](#-à-propos)
- [Contribuer](#-contribuer)
- [Licence](#-licence)

<p align="center">
  <strong><a href="https://florianbruniaux.github.io/claude-cowork-guide-landing/index.fr.html">🌐 Site officiel</a></strong>
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

> Guide complet de l'assistant desktop de Claude pour les travailleurs du savoir et les petites entreprises.
> Factures, devis, relances, prospection — automatisés sans coder.

---

## ⚡ Démarrage rapide

### 1. Activer Cowork
Réglages → Fonctionnalités → Activer Cowork → Autoriser l'accès aux dossiers

### 2. Premier workflow
```bash
mkdir -p ~/Cowork-Workspace/{input,output}
# Ajoutez des fichiers dans input/, puis :
```
> "Organise les fichiers dans ~/Cowork-Workspace/input/ par type"

### 3. Aller plus loin
- 📋 [Cheatsheet](reference/cheatsheet.md) — À imprimer
- 📖 [Guide complet](guide/01-getting-started.fr.md) — 10 min

<details>
<summary><strong>Prérequis</strong></summary>

- **Abonnement** : Pro (20$/mois) ou Max (100-200$/mois)
- **Plateforme** : macOS et Windows
- **App** : Claude Desktop (dernière version)

</details>

---

## Pourquoi ce guide ?

**Le problème** : La documentation officielle est dense. Les tutoriels deviennent obsolètes rapidement.
Vous avez besoin de workflows prêts à l'emploi, pas de listes de fonctionnalités.

**Ce guide** : 28 workflows métiers, 70 prompts copier-coller, 11 plugins officiels documentés, guide Desktop Commander, documentation Skills/Onglet Personnaliser, exemples pratiques.

**Temps de lecture** : Démarrage 5 min | Guide complet 45 min

---

## 👨‍💻 Vous êtes développeur ?

**Claude Code** est le guide pour développeurs — même IA, interface terminal, exécution de code.

→ [Guide Claude Code](https://github.com/FlorianBruniaux/claude-code-ultimate-guide)

---

## 🎯 Parcours d'apprentissage

<details>
<summary><strong>Débutant</strong> — Première semaine (5 étapes)</summary>

1. [Aperçu](guide/00-overview.fr.md) — Ce que Cowork peut faire
2. [Démarrage](guide/01-getting-started.fr.md) — Installation et premier workflow
3. [Organisation de fichiers](workflows/file-organization.md) — Exemple pratique
4. [Bibliothèque de prompts](prompts/file-ops.md) — 20 prompts prêts
5. [Cheatsheet](reference/cheatsheet.md) — À imprimer

</details>

<details>
<summary><strong>Décideur</strong> — Vue d'ensemble (4 étapes)</summary>

1. [Contenu](#-contenu) — Capacités et ressources
2. [Règles d'or](#-règles-dor) — Principes essentiels
3. [Sécurité](guide/03-security.fr.md) — Bonnes pratiques
4. [Comparaison](reference/comparison.fr.md) — vs Copilot/Gemini/ChatGPT

</details>

<details>
<summary><strong>Utilisateur avancé</strong> — Exploration approfondie (6 étapes)</summary>

1. [Capacités complètes](guide/02-capabilities.fr.md) — Matrice de fonctionnalités
2. [Tous les workflows](workflows/) — 28 guides étape par étape

3. [Dépannage](guide/04-troubleshooting.fr.md) — Résolution d'erreurs
4. [FAQ](reference/faq.fr.md) — 20+ questions
5. [Prompts avancés](prompts/research.md) — Recherche et synthèse
6. [Glossaire](reference/glossary.fr.md) — Terminologie

</details>

---

## 📚 Contenu

### Guides (5 fichiers)

| Guide | Ce que vous apprendrez | Durée |
|-------|------------------------|-------|
| [Aperçu](guide/00-overview.fr.md) | Ce que Cowork peut faire | 5 min |
| [Démarrage](guide/01-getting-started.fr.md) | Installation, premier workflow | 10 min |
| [Capacités](guide/02-capabilities.fr.md) | Ce qui fonctionne, ce qui ne fonctionne pas | 8 min |
| [Sécurité](guide/03-security.fr.md) | Bonnes pratiques | 12 min |
| [Dépannage](guide/04-troubleshooting.fr.md) | Problèmes courants | 8 min |

### Plugins (11 officiels)

Claude Cowork supporte 11 plugins officiels : Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry, Slack. Les plugins étendent les capacités de Cowork en se connectant directement à des outils externes.

### Workflows (28 guides)

**📋 Administratif** (6)
- [Génération de factures](workflows/invoice-generation.md) — Modèles professionnels
- [Devis → Facture](workflows/quote-to-invoice.md) — Transformation automatique
- [Relances de paiement](workflows/payment-reminders.md) — R1, R2, R3, mise en demeure
- [Checklist de conformité](workflows/compliance-checklist.md) — Documents obligatoires
- [Suivi client](workflows/client-followup-tracker.md) — Tableau de bord Excel
- [Comparaison de prix](workflows/price-comparison.md) — Multi-fournisseurs avec notation

**💼 Ventes & Marketing** (5)
- [Recherche de prospects](workflows/prospect-research.md) — Données entreprises, décideurs
- [Création de devis](workflows/quote-creation.md) — Détaillés avec variantes
- [Analyse concurrentielle](workflows/competitor-analysis.md) — Prix, offres, avis
- [Diapositives de présentation](workflows/presentation-slides.md) — PowerPoint/Keynote
- [Création de newsletter](workflows/newsletter-creation.md) — HTML responsive

**🔧 Opérations** (5)
- [Planification de projet](workflows/project-planning.md) — Gantt, jalons, dépendances
- [Suivi des stocks](workflows/inventory-tracking.md) — Alertes de réapprovisionnement
- [Journal de travail](workflows/work-log.md) — Documentation conforme
- [Checklist qualité](workflows/quality-checklist.md) — Listes standardisées
- [Commandes fournisseurs](workflows/supplier-order.md) — Approvisionnement optimisé

**📣 Communication** (6)
- [Publications réseaux sociaux](workflows/social-media-posts.md) — LinkedIn/Facebook/Instagram
- [Modèles d'emails](workflows/email-templates.md) — Bibliothèque réutilisable
- [Réponses aux avis](workflows/review-response.md) — Google/Facebook
- [Audit de site web](workflows/website-audit.md) — Diagnostic et plan d'action
- [Transfert de connaissances](workflows/knowledge-transfer.md) — Formation, succession

**🗂️ Organisation** (6)
- [Organisation de fichiers](workflows/file-organization.md) — Tri automatique des dossiers
- [Suivi des dépenses](workflows/expense-tracking.md) — Tickets vers Excel
- [Préparation de réunions](workflows/meeting-prep.md) — Briefings clients/fournisseurs
- [Automatisation planifiée](workflows/scheduled-automation.md) — Tâches récurrentes automatisées
- [Mise en place mémoire](workflows/memory-setup.md) — Mémoire cross-session avec Desktop Commander

→ [Tous les workflows](workflows/README.md)

<details>
<summary><strong>Prompts prêts à l'emploi</strong> (70)</summary>

| Collection | Nombre | Exemples |
|------------|--------|----------|
| [Fichiers](prompts/file-ops.md) | 20 | Organiser, renommer, dédupliquer |
| [Documents](prompts/document-creation.md) | 15 | Rapports, résumés, Excel |
| [Extraction](prompts/data-extraction.md) | 15 | PDF, OCR, images |
| [Recherche](prompts/research.md) | 17 | Web, synthèse |

</details>

<details>
<summary><strong>Références</strong></summary>

| Ressource | Description |
|-----------|-------------|
| [Cheatsheet](reference/cheatsheet.md) | 1 page imprimable |
| [Comparaison](reference/comparison.fr.md) | vs Copilot, Gemini, ChatGPT |
| [FAQ](reference/faq.fr.md) | 20+ questions |
| [Glossaire](reference/glossary.fr.md) | Terminologie Cowork |

</details>

---

## 🔑 Règles d'or

1. **Toujours revoir le plan** avant approbation — Cowork propose, vous décidez
2. **Dossier dédié uniquement** — Ne jamais donner accès à Documents/Bureau/système
3. **Pas d'identifiants** — Garder les mots de passe et clés API ailleurs
4. **Vérifier les sources** — Les fichiers téléchargés peuvent contenir des prompts malveillants
5. **Déconnecter le VPN** — Problème n°1, casse le réseau de la VM
6. **Sauvegarder avant suppression** — Pas de retour arrière possible

> Voir le [Guide de sécurité](guide/03-security.fr.md) pour les pratiques détaillées.

---

## 🌍 À propos

<details>
<summary><strong>Origines & Philosophie</strong></summary>

Ce guide existe parce que la documentation officielle est dense et les tutoriels deviennent obsolètes rapidement.

**Philosophie** : Pratique plutôt que théorique. Workflows réels, pas de listes de fonctionnalités.

**Focus v1.1** : Petites entreprises et travailleurs du savoir dans le monde entier.

**Créé avec Claude Code**. Maintenu par [Florian BRUNIAUX](https://github.com/FlorianBruniaux).

**Connexe** : [Guide Claude Code](https://github.com/FlorianBruniaux/claude-code-ultimate-guide) — Pour les développeurs

</details>

<details>
<summary><strong>Confidentialité</strong></summary>

Cowork envoie les prompts, fichiers et résultats aux serveurs Anthropic.

| Formule | Rétention | Entraînement |
|---------|-----------|--------------|
| Par défaut | 5 ans | Oui |
| Opt-out | 30 jours | Non |
| Enterprise | 0 | Non |

**Action** : [Désactiver l'entraînement](https://claude.ai/settings/data-privacy-controls)

</details>

<details>
<summary><strong>Limitations actuelles</strong> (Février 2026)</summary>

**Plateforme** : macOS et Windows

**Problèmes connus** :
- VPN incompatible (conflit de routage VM)
- Utilisation réinitialisée toutes les 5 heures
- Pro : ~1-1,5h d'utilisation intensive avant limite
- OCR : ~97% champs, ~63% précision lignes

**Statut** : Research preview — attendez-vous à des bugs

</details>

---

## 🤝 Contribuer

Une erreur trouvée ? Un workflow à partager ?

**Comment aider** : ⭐ Mettre une étoile au repo • 🐛 Signaler des problèmes • 📝 Soumettre des workflows

→ [CONTRIBUTING.md](./CONTRIBUTING.md) | [Ouvrir une issue](https://github.com/FlorianBruniaux/claude-cowork-guide/issues)

---

## 📄 Licence

Sous licence [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**Suivre** : [Releases](https://github.com/FlorianBruniaux/claude-cowork-guide/releases) | [Discussions](https://github.com/FlorianBruniaux/claude-cowork-guide/discussions) | [LinkedIn](https://www.linkedin.com/in/florian-bruniaux-43408b83/)

---

*Version 1.5.0 | Février 2026 | Créé avec Claude*
