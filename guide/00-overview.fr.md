# Claude Cowork : Aperçu

🌐 **Langues** : [Français](00-overview.fr.md) | [English](00-overview.md)

> **Temps de lecture** : ~5 minutes

---

## Qu'est-ce que Cowork ?

**Cowork** est la fonctionnalité desktop agentique de Claude qui étend les capacités d'IA autonome aux utilisateurs non techniques via l'application Claude Desktop. Au lieu de commandes terminal, Cowork accède directement aux dossiers et fichiers locaux.

### Faits clés

| Aspect | Détails |
|--------|---------|
| **Publication** | Preview recherche, janvier 2026 |
| **Disponibilité** | Abonnés Pro (20$/mois) ou Max (100-200$/mois) |
| **Plateforme** | macOS uniquement (Windows prévu, Linux non annoncé) |
| **Développement** | ~90% écrit par Claude lui-même ([blog Anthropic]) |
| **Focus** | Manipulation de fichiers, organisation, génération de documents |
| **Limites d'usage** | Réinitialisé toutes les 5 heures ; les tâches lourdes consomment rapidement le quota |

### Relation avec Claude Code

Cowork partage la même architecture backend que Claude Code :

| Partagé | Différent |
|---------|-----------|
| Mêmes capacités du modèle | App desktop vs Terminal |
| Pensée étendue | Fichiers uniquement vs shell complet |
| Boucles agentiques | Travailleurs du savoir vs développeurs |
| Architecture de sous-agents | Pas d'exécution de code |

**Différence clé** : Cowork ne peut pas exécuter du code arbitraire — il manipule uniquement des fichiers.

---

## Qui devrait utiliser Cowork ?

### Bon profil

| Persona | Cas d'usage | Pourquoi Cowork |
|---------|-------------|-----------------|
| **Chef de projet** | Organisation de fichiers + rapports de statut | Automatisation multi-étapes sans codage |
| **Analyste de données** | CSV/Excel local → rapports formatés | Formules Excel natives en sortie |
| **Rédacteur/Éditeur** | Notes de recherche → documents structurés | Synthèse à travers de nombreuses sources |
| **Opérations** | Captures de reçus → rapports de dépenses | Traitement multi-format en entrée |
| **Consultant** | Docs clients → livrables | Recoupement et synthèse |
| **Chercheur** | Papers + notes → revue de littérature | Organisation des sources et citation |

### Mauvais profil (pour l'instant)

| Persona | Limitation | Alternative |
|---------|------------|-------------|
| **Entreprises soucieuses de sécurité** | Pas de piste d'audit, pas de contrôles d'accès | Attendre les fonctionnalités enterprise |
| **Gros utilisateurs cloud** | Pas de Google Drive/Dropbox confirmé | Utiliser les apps cloud natives |
| **Besoin de fiabilité** | Preview = bugs, comportement inattendu | Attendre la version stable |
| **Besoin d'exécution de code** | Fichiers uniquement, pas de scripts | Utiliser Claude Code |
| **Utilisateurs Windows/Linux** | macOS uniquement (Windows prévu, Linux non annoncé) | Attendre l'expansion de plateforme |
| **Utilisateurs intensifs quotidiens** | Limites d'usage réinitialisées toutes les 5h ; Pro épuisé en ~1-1.5h d'utilisation intensive | Considérer le tier Max ou travailler par lots |
| **Utilisateurs VPN** | **Ne peut pas fonctionner avec VPN actif** (conflit de routage VM) | Déconnecter le VPN ou utiliser Claude Code |

---

## Architecture

### Design Local-First

```
┌─────────────────────────────────────────────────────────────┐
│                   APPLICATION CLAUDE DESKTOP                 │
│  ┌─────────────────────────────────────────────────────────┐│
│  │                     COWORK                               ││
│  │  ┌─────────────────────────────────────────────────────┐││
│  │  │             ORCHESTRATEUR                            │││
│  │  │  • Reçoit la requête utilisateur                    │││
│  │  │  • Crée le plan d'exécution                         │││
│  │  │  • Coordonne les sous-agents                        │││
│  │  └──────────────────────┬──────────────────────────────┘││
│  │                         ↓                                ││
│  │  ┌─────────────┐  ┌─────────────┐  ┌─────────────────┐  ││
│  │  │ Sous-Agent 1│  │ Sous-Agent 2│  │ Sous-Agent 3    │  ││
│  │  │ (Analyse)   │  │ (Transform) │  │ (Organise)      │  ││
│  │  │             │  │             │  │                 │  ││
│  │  │ • Lit files │  │ • Convertit │  │ • Déplace files │  ││
│  │  │ • Extrait   │  │ • Formate   │  │ • Crée dossiers │  ││
│  │  │ • Résume    │  │ • Génère    │  │ • Renomme       │  ││
│  │  └──────┬──────┘  └──────┬──────┘  └───────┬─────────┘  ││
│  │         └────────────────┴─────────────────┘            ││
│  │                          ↓                               ││
│  │  ┌─────────────────────────────────────────────────────┐││
│  │  │           SANDBOX DOSSIER LOCAL                      │││
│  │  │  ~/Cowork-Workspace/                                 │││
│  │  │    ├── input/  (vos fichiers)                       │││
│  │  │    └── output/ (fichiers générés)                   │││
│  │  └─────────────────────────────────────────────────────┘││
│  └─────────────────────────────────────────────────────────┘│
│                                                              │
│  ┌──────────────────────┐                                   │
│  │ INTÉGRATION CHROME   │ ← Tâches web (avec action explicite)│
│  └──────────────────────┘                                   │
└─────────────────────────────────────────────────────────────┘
```

### Spécifications techniques

| Aspect | Détails |
|--------|---------|
| **Modèle d'accès** | Sandbox dossier local (autorisation utilisateur) |
| **Connecteurs cloud** | Non confirmé (pas de Drive, Dropbox, etc. encore) |
| **Sous-agents** | Exécution parallèle avec contexte frais par agent |
| **Exécution de code** | **Aucune** — Fichiers uniquement (pas de scripts, pas de commandes) |
| **Navigateur** | Intégration Chrome pour tâches de recherche web |
| **Limite de contexte** | ~200K tokens (~150-500 pages par session) |
| **Formats de sortie** | Excel (.xlsx avec formules), PowerPoint, Word, PDF, texte, images |

### Comment fonctionnent les sous-agents

1. **Contexte frais** — Chaque sous-agent démarre proprement (pas de mémoire des autres agents)
2. **Exécution parallèle** — Plusieurs agents peuvent travailler simultanément
3. **Coordination orchestrateur** — L'agent principal assemble les résultats
4. **Isolation de scope** — Chaque agent ne voit que ce dont il a besoin

Cette architecture permet des workflows complexes multi-étapes tout en maintenant des frontières de sécurité.

---

## Ce que Cowork ne peut pas faire

Comprendre les limitations est crucial pour une utilisation efficace :

| Limitation | Implication |
|------------|-------------|
| Exécuter des commandes shell | Pas de `mkdir`, `mv`, `cp` via terminal |
| Exécuter des scripts | Pas d'exécution Python, JavaScript, bash |
| Accéder au stockage cloud | Pas de Google Drive, Dropbox, iCloud direct |
| Requêtes réseau | Pas d'appels API, pas de requêtes HTTP |
| Persister la mémoire | Pas de mémoire inter-sessions (seulement via fichiers) |
| Accéder à des dossiers arbitraires | Uniquement les emplacements sandbox autorisés |

### Contournements

| Besoin | Contournement |
|--------|---------------|
| Fichiers cloud | Télécharger dans le workspace local d'abord |
| Exécution de code | Utiliser Claude Code à la place |
| Mémoire inter-sessions | Sauvegarder le contexte dans un fichier, recharger la session suivante |
| Données réseau | Utiliser l'intégration Chrome pour la recherche web |

---

## Modèle mental

Pensez à Cowork comme un **assistant très capable avec accès physique à un dossier** :

- Peut lire n'importe quel fichier que vous y mettez
- Peut créer de nouveaux fichiers dans n'importe quel format
- Peut réorganiser, renommer, transformer
- Ne peut pas quitter ce dossier sans permission
- Ne peut pas exécuter de programmes ou scripts
- Ne peut pas faire de connexions réseau directement

Cette contrainte est une **fonctionnalité, pas un bug** — elle crée un sandbox sûr pour l'opération autonome.

---

## Validation enterprise (Adoption de Claude)

Bien que Cowork soit en preview recherche, les capacités sous-jacentes de Claude sont validées à l'échelle enterprise :

| Entreprise | Résultats | Contexte |
|------------|-----------|----------|
| **TELUS** | 90M$ de valeur, 500K heures économisées | Traitement de documents à l'échelle |
| **Rakuten** | 87,5% de réduction du temps de traitement | Automatisation du travail intellectuel |
| **Zapier** | 89% d'adoption employés | Intégration de workflows |

**Pertinence pour Cowork** : Ces statistiques concernent Claude en général, pas Cowork spécifiquement. Cependant, elles valident les capacités IA de base qui alimentent le traitement de documents et les workflows autonomes de Cowork.

**Ce que cela signifie pour vous** :
- Le modèle IA fonctionne de manière fiable à l'échelle enterprise
- La compréhension et génération de documents sont prêtes pour la production
- Le label "research preview" s'applique à l'interface Cowork, pas aux capacités Claude sous-jacentes

---

## Prochaines étapes

- [Démarrage](01-getting-started.fr.md) — Configuration et premier workflow
- [Capacités](02-capabilities.fr.md) — Détail des fonctionnalités
- [Sécurité](03-security.fr.md) — Pratiques d'utilisation sûres

---

*[← Retour à la documentation Cowork](../README.md) | [Démarrage →](01-getting-started.fr.md)*
