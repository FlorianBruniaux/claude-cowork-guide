# Claude Cowork Guide

<p align="center">
  <strong><a href="https://florianbruniaux.github.io/claude-cowork-guide-landing/">🌐 Site web officiel</a></strong>
</p>

<p align="center">
  <a href="https://github.com/FlorianBruniaux/claude-cowork-guide/stargazers"><img src="https://img.shields.io/github/stars/FlorianBruniaux/claude-cowork-guide?style=social" alt="Stars"/></a>
  <a href="./workflows/"><img src="https://img.shields.io/badge/Workflows-43-green" alt="Workflows"/></a>
  <a href="./prompts/"><img src="https://img.shields.io/badge/Prompts-70-blue" alt="Prompts"/></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Status-Research%20Preview-yellow" alt="Status"/>
  <img src="https://img.shields.io/badge/Platform-macOS-blue" alt="Platform"/>
  <img src="https://img.shields.io/badge/Subscription-Pro%20%26%20Max-purple" alt="Subscription"/>
  <img src="https://img.shields.io/badge/Version-1.1.0-orange" alt="Version"/>
</p>

> Guide complet de l'assistant desktop Claude pour les TPE/PME françaises.
> Factures, devis, relances, prospection — automatisés sans coder.

---

## ⚡ Démarrage rapide

### 1. Activer Cowork
Paramètres → Fonctionnalités → Activer Cowork → Autoriser accès dossier

### 2. Premier workflow
```bash
mkdir -p ~/Cowork-Workspace/{input,output}
# Ajoutez des fichiers dans input/, puis :
```
> "Organise les fichiers dans ~/Cowork-Workspace/input/ par type"

### 3. Aller plus loin
- 📋 [Aide-mémoire](reference/cheatsheet.md) — À imprimer
- 📖 [Guide complet](guide/01-getting-started.md) — 10 min
- 🎯 [Onboarding interactif](tools/cowork-onboarding.md) — Parcours personnalisé

<details>
<summary><strong>Prérequis</strong></summary>

- **Abonnement**: Pro (20$/mois) ou Max (100-200$/mois)
- **Plateforme**: macOS uniquement (Windows prévu)
- **App**: Claude Desktop (dernière version)

</details>

---

## Pourquoi ce guide ?

**Le problème**: La doc officielle est dense. Les tutos sont vite obsolètes.
Vous avez besoin de workflows prêts à l'emploi, pas de listes de fonctionnalités.

**Ce guide**: 43 workflows métier, 70 prompts copy-paste, adaptés aux TPE/PME françaises.

**Temps de lecture**: Démarrage 5 min | Guide complet 45 min

---

## 👨‍💻 Vous êtes développeur ?

**Claude Code** est le guide pour développeurs — même IA, interface terminal, exécution de code.

→ [Claude Code Guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide)

---

## 🎯 Parcours d'apprentissage

<details>
<summary><strong>Débutant</strong> — Première semaine (5 étapes)</summary>

1. [Vue d'ensemble](guide/00-overview.md) — Ce que Cowork peut faire
2. [Démarrage](guide/01-getting-started.md) — Installation et premier workflow
3. [Organisation fichiers](workflows/file-organization.md) — Exemple pratique
4. [Bibliothèque prompts](prompts/file-ops.md) — 20 prompts prêts
5. [Aide-mémoire](reference/cheatsheet.md) — À imprimer

</details>

<details>
<summary><strong>Décideur</strong> — Vue d'ensemble (4 étapes)</summary>

1. [Contenu](#-contenu) — Capacités et ressources
2. [Règles d'or](#-règles-dor) — Principes essentiels
3. [Sécurité](guide/03-security.md) — Bonnes pratiques
4. [Comparatif](reference/comparison.md) — vs Copilot/Gemini/ChatGPT

</details>

<details>
<summary><strong>Utilisateur avancé</strong> — Approfondissement (6 étapes)</summary>

1. [Capacités complètes](guide/02-capabilities.md) — Matrice fonctionnelle
2. [Tous les workflows](workflows/) — 25 guides pas-à-pas
3. [Dépannage](guide/04-troubleshooting.md) — Résolution erreurs
4. [FAQ](reference/faq.md) — 20+ questions
5. [Prompts avancés](prompts/research.md) — Recherche et synthèse
6. [Glossaire](reference/glossary.md) — Terminologie

</details>

---

## 📚 Contenu

### Guides (5 fichiers)

| Guide | Ce que vous apprendrez | Temps |
|-------|------------------------|-------|
| [Vue d'ensemble](guide/00-overview.md) | Ce que Cowork peut faire | 5 min |
| [Démarrage](guide/01-getting-started.md) | Installation, premier workflow | 10 min |
| [Capacités](guide/02-capabilities.md) | Ce qui marche, ce qui ne marche pas | 8 min |
| [Sécurité](guide/03-security.md) | Bonnes pratiques | 12 min |
| [Dépannage](guide/04-troubleshooting.md) | Problèmes courants | 8 min |

### Workflows (43 guides)

**📋 Administratif** (6)
- [Génération factures](workflows/invoice-generation.md) — Templates professionnels
- [Devis → Facture](workflows/quote-to-invoice.md) — Transformation automatique
- [Relances impayés](workflows/payment-reminders.md) — R1, R2, R3, mise en demeure
- [Conformité](workflows/compliance-checklist.md) — Documents obligatoires BTP/Commerce
- [Suivi clients](workflows/client-followup-tracker.md) — Tableau de bord Excel
- [Comparatif prix](workflows/price-comparison.md) — Multi-fournisseurs avec scoring

**💼 Commercial** (5)
- [Prospection](workflows/prospect-research.md) — SIREN, CA, décideurs
- [Création devis](workflows/quote-creation.md) — Chiffrés avec variantes
- [Analyse concurrence](workflows/competitor-analysis.md) — Prix, offres, avis
- [Présentations](workflows/presentation-slides.md) — PowerPoint/Keynote
- [Newsletters](workflows/newsletter-creation.md) — HTML responsive

**🔧 Production** (5)
- [Planning projet](workflows/project-planning.md) — Gantt, jalons, dépendances
- [Suivi stock](workflows/inventory-tracking.md) — Alertes réapprovisionnement
- [Journal chantier](workflows/work-log.md) — Conforme réglementation
- [Contrôle qualité](workflows/quality-checklist.md) — Listes normalisées
- [Commandes fournisseurs](workflows/supplier-order.md) — Optimisées

**📣 Communication** (4)
- [Réseaux sociaux](workflows/social-media-posts.md) — LinkedIn/Facebook/Instagram
- [Templates emails](workflows/email-templates.md) — Bibliothèque réutilisable
- [Réponses avis](workflows/review-response.md) — Google/Facebook
- [Transmission savoir-faire](workflows/knowledge-transfer.md) — Formation, succession

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
| [Aide-mémoire](reference/cheatsheet.md) | 1 page à imprimer |
| [Comparatif](reference/comparison.md) | vs Copilot, Gemini, ChatGPT |
| [FAQ](reference/faq.md) | 20+ questions |
| [Glossaire](reference/glossary.md) | Terminologie Cowork |

</details>

---

## 🔑 Règles d'or

1. **Toujours relire le plan** avant validation — Cowork propose, vous décidez
2. **Dossier dédié uniquement** — Jamais accès à Documents/Bureau/système
3. **Pas de credentials** — Mots de passe et clés API ailleurs
4. **Vérifier les sources** — Fichiers téléchargés peuvent contenir des pièges
5. **Déconnecter le VPN** — Problème n°1, casse le réseau VM
6. **Sauvegarder avant suppression** — Pas d'annulation possible

> Voir [Guide sécurité](guide/03-security.md) pour les pratiques détaillées.

---

## 🌍 À propos

<details>
<summary><strong>Origine et philosophie</strong></summary>

Ce guide existe car la doc officielle est dense et les tutos vite obsolètes.

**Philosophie**: Pratique avant théorique. Workflows réels, pas listes de fonctionnalités.

**Focus v1.1**: TPE/PME françaises (artisans, commerçants, dirigeants).

**Créé avec Claude Code**. Maintenu par [Florian BRUNIAUX](https://github.com/FlorianBruniaux).

**Associé**: [Claude Code Guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide) — Pour développeurs

</details>

<details>
<summary><strong>Confidentialité</strong></summary>

Cowork envoie prompts, fichiers et résultats aux serveurs Anthropic.

| Plan | Rétention | Entraînement |
|------|-----------|--------------|
| Par défaut | 5 ans | Oui |
| Opt-out | 30 jours | Non |
| Enterprise | 0 | Non |

**Action**: [Désactiver l'entraînement](https://claude.ai/settings/data-privacy-controls)

</details>

<details>
<summary><strong>Limitations actuelles</strong> (Janvier 2026)</summary>

**Plateforme**: macOS uniquement (Windows prévu, pas de date)

**Problèmes connus**:
- VPN incompatible (conflit routage VM)
- Reset usage toutes les 5 heures
- Pro: ~1-1.5h usage intensif avant limite
- OCR: ~97% champs, ~63% lignes détail

**Statut**: Research preview — attendez-vous à des bugs

</details>

---

## 🤝 Contribuer

Erreur trouvée ? Workflow à partager ?

**Comment aider**: ⭐ Star le repo • 🐛 Signaler issues • 📝 Soumettre workflows

→ [CONTRIBUTING.md](./CONTRIBUTING.md) | [Ouvrir une issue](https://github.com/FlorianBruniaux/claude-cowork-guide/issues)

---

## 📄 Licence

Sous licence [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**Suivre**: [Releases](https://github.com/FlorianBruniaux/claude-cowork-guide/releases) | [Discussions](https://github.com/FlorianBruniaux/claude-cowork-guide/discussions) | [LinkedIn](https://www.linkedin.com/in/florian-bruniaux-43408b83/)

---

*Version 1.1.0 | Janvier 2026 | Créé avec Claude*
