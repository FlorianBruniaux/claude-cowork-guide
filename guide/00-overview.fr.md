# Claude Cowork : Aperçu

🌐 **Langues** : [Français](00-overview.fr.md) | [English](00-overview.md)

> **Temps de lecture** : ~5 minutes

---

## Qu'est-ce que Cowork ?

### En termes simples

Imaginez un assistant de bureau très compétent qui :
- Peut lire tous les documents que vous lui donnez (factures, rapports, notes...)
- Comprend ce que vous lui demandez en français
- Organise, trie, résume et crée des documents à votre place
- Travaille uniquement dans un dossier que vous lui autorisez

**Cowork, c'est cet assistant**. Mais au lieu d'être une personne, c'est l'intelligence artificielle Claude qui travaille sur un dossier de votre ordinateur, celui que vous choisissez de lui connecter.

Depuis le 16 septembre 2026, Cowork n'est plus un mode à part : Anthropic l'écrit ainsi, « Claude Cowork is now just Claude ». Vous ouvrez une conversation, et Claude décide lui-même s'il suffit de répondre vite ou s'il doit mener une tâche. Depuis le 6 octobre 2026, les nouvelles tâches des plans Pro et Max s'exécutent par défaut dans le cloud (voir [Où Cowork s'exécute](#où-cowork-sexécute--dossiers-locaux-exécution-cloud)).

### Version technique

**Cowork** est la façon de travailler autonome (agentique) de Claude : vous décrivez une tâche, Claude la planifie, travaille sur vos fichiers et documents, puis vous rend compte. Il s'adresse aux professionnels non-développeurs (travailleurs du savoir). Au lieu de commandes terminal, vous parlez en langage naturel, et Cowork accède aux dossiers que vous lui connectez.

### Faits clés

| Aspect | Détails |
|--------|---------|
| **Disponibilité** | Plans Pro, Max, Team et Enterprise ; pas le plan Free ([guide officiel](https://support.claude.com/en/articles/13345190-get-started-with-cowork)). Une page d'installation d'Anthropic coche encore Cowork sous Free : c'est une incohérence côté Anthropic, pas une disponibilité |
| **Surfaces** | Claude Desktop (macOS, Windows, Linux en bêta), web, mobile, et panneau latéral de Claude in Chrome ([guide des surfaces](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile)) |
| **Prérequis desktop** | macOS 13 Ventura ou plus récent (depuis Claude Desktop v1.49585.0 du 8 septembre 2026, d'après le changelog Claude Desktop) ; Windows ; Linux en bêta sous Ubuntu 22.04+ ou Debian 12+ ([guide d'installation](https://support.claude.com/en/articles/10065433-install-claude-desktop)). Une page d'aide affiche encore macOS 11 : retenez macOS 13 |
| **Où les tâches s'exécutent** | Pro et Max : les nouvelles tâches tournent dans le cloud depuis le 6 octobre 2026. Team : cloud en bêta, activé par défaut. Enterprise : cloud en bêta, désactivé par défaut jusqu'à activation par un owner |
| **Utilisation de l'ordinateur** | Bêta sur Pro et Max, macOS 14+ et Windows ; pas sur Team, Enterprise ni Linux ([guide officiel](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork)) |
| **Modèles** | Famille Claude 5.5 : Opus 5.5, Sonnet 5.5, Haiku 5.5, aux côtés de Fable 5.1, Mythos 5.1 et Opus 5. Niveaux d'effort : Low, Medium, High, Extra high, Max. Anthropic ne publie pas de modèle par défaut selon le plan |
| **Tarifs** | Pro 20 $/mois (200 $/an), Max à partir de 100 $/mois, Team et Enterprise par siège. En dollars, hors taxes, d'après claude.com/pricing au 11 octobre 2026. Aucun tarif en euros n'est publié |
| **Focus** | Manipulation de fichiers, organisation, génération de documents |
| **Limites d'usage** | Une limite glissante de 5 heures plus des limites hebdomadaires sur les plans payants ; les « usage credits » permettent de continuer aux tarifs API sur Pro et Max. Vérifiez les informations de plan avant de vous appuyer sur un quota |

> **Ce qui a changé en septembre et octobre 2026**
>
> - **8 septembre 2026** : Claude Desktop exige macOS 13 Ventura ou plus récent.
> - **16 septembre 2026** : Claude unifié. Plus de choix entre Chat et Cowork ; Claude décide comment traiter votre demande (déploiement progressif sur Pro et Max, web, desktop et mobile).
> - **Septembre et octobre 2026** : arrivée des modèles Claude 5.5 (Opus 5.5 le 22 septembre, Sonnet 5.5 le 28 septembre, Haiku 5.5 le 7 octobre).
> - **6 octobre 2026** : sur Pro et Max, les nouvelles tâches Cowork s'exécutent dans le cloud. L'option « Only on your computer » disparaît de Settings > General, sans retour possible. Vos dossiers restent sur votre ordinateur.
> - **Septembre 2026** : Cowork dispose d'un navigateur intégré dans Claude Desktop (déploiement progressif). Au 11 octobre 2026, ouvrir le panneau latéral de Claude in Chrome démarre aussi une session Cowork, et les modes d'approbation s'appellent Manual, Auto et Skip all approvals.
>
> Concrètement pour vous : vos dossiers restent sur votre ordinateur, mais Claude Desktop doit être ouvert pour qu'une session cloud puisse y accéder. Les tâches planifiées créées désormais tournent dans le cloud, donc sans avoir besoin que votre ordinateur soit allumé. Détails : [Où Cowork s'exécute](#où-cowork-sexécute--dossiers-locaux-exécution-cloud) et [Démarrage](01-getting-started.fr.md).

### Relation avec Claude Code

Cowork partage la même architecture backend que Claude Code :

| Partagé | Différent |
|---------|-----------|
| Mêmes capacités du modèle | Application bureau vs Terminal |
| Pensée étendue | Espace desktop vs workflow terminal pour développeurs |
| Boucles agentiques | Travailleurs du savoir vs développeurs |
| Exécution de tâche | Environnement isolé vs shell développeur |

**Différence clé** : Cowork peut exécuter du code dans un environnement de tâche isolé. Cela ne donne pas un accès shell arbitraire à l'ordinateur hôte. Utilisez Claude Code pour un workflow terminal contrôlé par un développeur.

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
| **Workflows très réglementés** | Les Audit Logs ne capturent pas l'activité Cowork (limitation confirmée Anthropic) | Consulter les [Considérations Enterprise](03-security.fr.md#considérations-entreprise) avant usage |
| **Tâches qui exigent vos dossiers locaux alors que Desktop est fermé** | Une session cloud n'accède qu'aux dossiers connectés, et seulement quand Claude Desktop est ouvert | Laisser Desktop ouvert, ou placer les fichiers dans un connecteur autorisé |
| **Besoin de shell hôte** | Le code de tâche isolé n'est pas un shell hôte sans restriction | Utiliser Claude Code pour un workflow terminal |
| **Utilisateurs Linux** | Linux est en bêta (Ubuntu 22.04+ ou Debian 12+) : pas de mise à jour automatique, pas d'utilisation de l'ordinateur, pas de dictée | Vérifier le guide d'installation desktop à jour |
| **Utilisateurs intensifs quotidiens** | L'usage varie selon le plan et la tâche | Vérifier les limites du plan et traiter par lots vérifiables |

---

## Architecture

### Où Cowork s'exécute : dossiers locaux, exécution cloud

Vos fichiers restent dans des dossiers de votre ordinateur, et vous décidez lesquels Cowork peut utiliser. L'endroit où le travail s'exécute dépend de votre plan :

| Plan | Où tournent les nouvelles tâches |
|------|----------------------------------|
| **Pro, Max** | Dans le cloud depuis le 6 octobre 2026 : un environnement isolé et temporaire sur les serveurs d'Anthropic. L'option « Only on your computer » n'existe plus |
| **Team** | Cloud en bêta, activé par défaut |
| **Enterprise** | Cloud en bêta, désactivé par défaut ; un owner doit l'activer |

Ce que cela change pour vous :

- **Vos dossiers restent sur votre ordinateur.** Une session cloud n'y accède que pour les dossiers connectés, et seulement quand Claude Desktop est ouvert. Les fichiers lus sont alors traités sur les serveurs d'Anthropic.
- **Les tâches planifiées créées désormais tournent dans le cloud**, donc sans besoin que votre ordinateur soit allumé.
- **Les tâches lancées sur votre ordinateur avant le 6 octobre 2026** y restent jusqu'à leur fin.
- **Les sessions Cowork locales n'utilisent pas la mémoire.** La mémoire est disponible dans les sessions cloud.

Le schéma ci-dessous montre les rôles dans une tâche, pas l'emplacement physique : pour une session cloud, l'orchestrateur et les sous-agents tournent dans l'environnement cloud isolé, et le bloc dossier représente votre dossier sur votre ordinateur.

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
| **Modèle d'accès** | Dossiers de votre ordinateur que vous connectez (autorisation utilisateur) ; les sessions cloud y accèdent tant que Desktop est ouvert |
| **Connecteurs et plugins** | Dont Microsoft 365 (outils d'écriture depuis le 7 juillet 2026 ; Teams en lecture seule), Google Docs, Sheets et Slides (bêta depuis le 6 octobre 2026), Salesforce in Claude (bêta, organisations approuvées). Ordre de préférence : connecteur, puis navigateur, puis contrôle de l'écran |
| **Sous-agents** | Exécution parallèle avec contexte frais par agent |
| **Exécution de code** | Dans un environnement isolé uniquement : dans le cloud pour les nouvelles tâches Pro et Max depuis le 6 octobre 2026, ou dans une machine virtuelle locale pour les anciennes sessions locales et les déploiements tiers. Jamais directement dans le shell de votre ordinateur |
| **Navigateur** | Navigateur intégré à Claude Desktop (macOS, Windows, Linux bêta), séparé de votre navigateur personnel, Desktop ouvert requis. Claude in Chrome : ouvrir son panneau latéral démarre une session Cowork (Max, Team ; Pro en déploiement ; Enterprise si activé) |
| **Limite de contexte** | ~200K tokens (unités de mesure de la consommation IA) (~150-500 pages par session) |
| **Formats de sortie** | Excel (.xlsx avec formules), PowerPoint, Word, PDF, texte, images |

### Comment fonctionnent les sous-agents

1. **Contexte frais** : Chaque sous-agent démarre proprement (pas de mémoire des autres agents)
2. **Exécution parallèle** : Plusieurs agents peuvent travailler simultanément
3. **Coordination orchestrateur** : L'agent principal assemble les résultats
4. **Isolation de périmètre** : Chaque agent ne voit que ce dont il a besoin

Cette architecture permet des workflows (enchaînements d'étapes automatisés) complexes multi-étapes tout en maintenant des frontières de sécurité.

---

## Ce que Cowork ne peut pas faire

Savoir ce que Cowork ne peut pas faire détermine comment bien l'utiliser :

| Limitation | Implication |
|------------|-------------|
| Exécuter des commandes shell sur votre ordinateur | Pas de `mkdir`, `mv`, `cp` via votre terminal |
| Exécuter des scripts sur votre ordinateur | Le code de tâche ne tourne que dans l'environnement de tâche isolé |
| Atteindre n'importe quel stockage cloud | Uniquement via un connecteur configuré (par exemple Google Docs, Sheets et Slides en bêta) ; pas d'accès direct à Dropbox ni iCloud |
| Naviguer seul sans permission | L'accès web passe par le navigateur intégré, Claude in Chrome ou un connecteur |
| Se souvenir dans toutes les situations | La mémoire existe (Settings > Memory), mais les sessions Cowork locales ne l'utilisent pas ; un fichier rechargé reste un recours fiable |
| Accéder à des dossiers arbitraires | Uniquement les dossiers que vous accordez ; la configuration de Claude et certains emplacements d'identifiants (clés SSH, identifiants AWS/GCP, profils shell) restent hors d'atteinte |

### Contournements

| Besoin | Contournement |
|--------|---------------|
| Fichiers cloud | Utiliser un connecteur, ou les télécharger d'abord dans un dossier connecté |
| Exécution de code sur votre ordinateur | Utiliser Claude Code à la place |
| Mémoire dans une session locale | Sauvegarder le contexte dans un fichier et le recharger à la session suivante, ou travailler dans une session cloud |
| Données web | Utiliser le navigateur intégré ou Claude in Chrome |

---

## Modèle mental

### L'analogie de l'atelier

Pensez à Cowork comme un **artisan qualifié travaillant dans son propre atelier** :

**Ce qu'il peut faire :**
- Lire tous les documents que vous déposez dans son atelier (le dossier autorisé)
- Créer de nouveaux documents dans n'importe quel format (Excel, Word, PDF...)
- Réorganiser, renommer, transformer vos fichiers
- Travailler rapidement sur des centaines de documents à la fois
- Travailler dans le cloud par défaut sur Pro et Max, pendant que vos dossiers restent sur votre ordinateur

**Ce qu'il ne peut PAS faire :**
- Sortir de son atelier pour aller chercher des fichiers ailleurs sur votre ordinateur
- Exécuter du code de tâche dans un environnement isolé, mais pas un shell hôte sans restriction
- Utiliser les fonctions navigateur et connecteurs prises en charge lorsqu'elles sont disponibles et autorisées

**Pourquoi cette limite ?** C'est une sécurité volontaire. Comme un atelier avec une seule porte, vous contrôlez exactement ce qui entre et ce qui sort. Cette contrainte crée un espace de travail isolé (sandbox) sûr pour laisser Claude travailler de façon autonome.

---

## Validation enterprise (Adoption de Claude)

Les chiffres suivants concernent Claude en général, pas Cowork. Ils ne prouvent ni un statut produit Cowork ni des contrôles enterprise propres à Cowork :

| Entreprise | Résultats | Contexte |
|------------|-----------|----------|
| **TELUS** | 90M$ de valeur, 500K heures économisées | Traitement de documents à l'échelle |
| **Rakuten** | 87,5% de réduction du temps de traitement | Automatisation du travail intellectuel |
| **Zapier** | 89% d'adoption employés | Intégration de workflows |

**Pertinence pour Cowork** : Ces statistiques concernent Claude en général, pas Cowork spécifiquement. Cependant, elles valident les capacités IA de base qui alimentent le traitement de documents et les workflows autonomes de Cowork.

**Ce que cela signifie pour vous** :
- Le modèle IA fonctionne de manière fiable à l'échelle enterprise
- La compréhension et génération de documents sont prêtes pour la production
- Vérifier les contrôles enterprise propres au plan dans la documentation Anthropic avant un déploiement réglementé

---

## Utilisateurs Avancés

Si vous cherchez à optimiser vos workflows pour un usage intensif (>100 tâches/mois) ou à maîtriser les techniques avancées :

**Optimisation modèle** : la famille Claude 5.5 donne le choix. Opus 5.5 atteint le niveau de Fable 5.1 sur la plupart des tâches pour 40 % de moins qu'Opus 5 (22 septembre 2026). Sonnet 5.5 est plus de 30 % plus rapide que Sonnet 5 (28 septembre 2026). Haiku 5.5, le plus rapide et le moins cher, vise les tâches en gros volume (7 octobre 2026). Réservez les modèles les plus puissants et les niveaux d'effort élevés (Low, Medium, High, Extra high, Max) aux analyses complexes. Sources : support.claude.com release notes et claude.com/docs/cowork/changelog.

**Mise à l'échelle et parallélisation** : Pour des besoins de traitement par lots ou d'automatisation poussée, consultez les ressources de Boris (créateur de Claude Code) sur les [workflows multi-sessions](https://www.youtube.com/watch?v=DW4a1Cm8nG4) et les [pratiques avancées](https://blog.devgenius.io/the-claude-code-creator-says-ai-writes-100-of-his-code-now-956b2a5905ba).

**Configuration équipe** : Pour les organisations de 20+ employés, consultez le [Guide Enterprise Anthropic](https://www.anthropic.com/enterprise) pour les fonctionnalités d'audit et de contrôle d'accès.

> **Note** : Ces techniques sont destinées aux utilisateurs expérimentés. Pour la majorité des TPE/PME, les workflows standards documentés dans ce guide suffisent amplement.

---

## Prochaines étapes

- [Démarrage](01-getting-started.fr.md) : Configuration et premier workflow
- [Capacités](02-capabilities.fr.md) : Détail des fonctionnalités
- [Sécurité](03-security.fr.md) : Pratiques d'utilisation sûres

---

*[← Retour à la documentation Cowork](../README.md) | [Démarrage →](01-getting-started.fr.md)*
