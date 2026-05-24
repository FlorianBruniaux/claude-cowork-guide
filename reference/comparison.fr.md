# Comparaison des produits Claude

🌐 **Langues** : [Français](comparison.fr.md) | [English](comparison.md)

> **Objectif** : Choisir l'interface Claude adaptée à votre tâche
>
> *Mis à jour : Février 2026*

---

## Matrice de comparaison rapide

| Aspect | Claude Code | Cowork | Projects |
|--------|-------------|--------|----------|
| **Utilisateur cible** | Développeurs | Travailleurs du savoir | Tout le monde |
| **Interface** | Terminal/CLI | App desktop | Chat web |
| **Usage principal** | Développement logiciel | Manipulation de fichiers | Conversations |
| **Exécuter du code** | ✅ Shell complet | ❌ Non | ❌ Non |
| **Accès fichiers** | Système complet | Sandbox dossier | Upload uniquement |
| **Créer des fichiers** | Tout type | Office, PDF, texte | Aucun |
| **Accès web** | Via outils | Intégration Chrome | Recherche in-chat |
| **Mémoire** | Fichiers CLAUDE.md | Via fichiers | Connaissance projet |
| **Maturité** | Production | Preview recherche | Production |
| **Plateforme** | macOS, Linux, Windows | macOS + Windows | Tous (web) |
| **Abonnement** | Inclus dans Team plan | Pro/Max (20-200$/mois) | Tous les tiers |
| **Docs sécurité** | Complètes | Pas encore | Standard |

---

## Confusion fréquente : Claude in Excel vs Capacités Excel de Cowork {#confusion-frequente}

**Claude in Excel** et les **capacités Excel de Cowork** sont deux produits distincts servant des objectifs différents.

| Aspect | Add-in Claude in Excel | Capacités Excel de Cowork |
|--------|------------------------|---------------------------|
| **Description** | Add-in Microsoft Excel (lancé 24 jan 2026) | Fonctionnalité de manipulation de fichiers de l'app desktop |
| **Installation** | Installer depuis la boutique add-ins Excel | Partie de Claude Desktop (macOS + Windows) |
| **Interface** | Fonctionne à l'intérieur d'Excel | Crée des fichiers Excel depuis zéro |
| **Cas d'usage** | Assistance IA pendant le travail dans Excel | Générer des fichiers Excel depuis données/images/texte |
| **Workflow principal** | Ouvrir Excel → Demander l'aide de Claude → Recevoir suggestions de formules | Donner des données à Cowork → Recevoir un fichier Excel généré |
| **Idéal pour** | Écriture de formules, analyse de données dans feuilles existantes | Créer de nouveaux tableurs depuis données non structurées |
| **Plateforme** | Windows, macOS (Excel 2016+) | macOS + Windows |
| **Abonnement** | Nécessite abonnement Claude + licence Excel | Nécessite abonnement Claude Pro/Max |
| **Intégration** | Intégration Excel profonde (formules, graphiques, tableaux croisés dynamiques) | Génération Excel basique (formules, formatage) |

### Quand utiliser lequel ?

**Utiliser l'add-in Claude in Excel quand :**
- Vous travaillez déjà dans un fichier Excel
- Vous avez besoin d'aide avec des formules complexes
- Vous voulez que l'IA analyse des données existantes
- Vous avez besoin de tableaux croisés dynamiques, graphiques avancés ou macros

**Utiliser les capacités Excel de Cowork quand :**
- Vous avez des données non structurées (reçus, images, PDFs)
- Vous devez créer un nouveau tableur depuis zéro
- Vous voulez un traitement par lots de plusieurs fichiers → sortie Excel
- Vous ne voulez pas ouvrir Excel manuellement

### Ressources officielles

**Add-in Claude in Excel** :
- Tutoriel : [Using Claude in Excel](https://support.claude.com/en/articles/12650343-using-claude-in-excel)
- Installation : Excel → Insertion → Compléments → Rechercher "Claude"

**Capacités Excel de Cowork** :
- Ce guide : [Capacités Excel](../guide/02-capabilities.fr.md#capacités-excel-détaillées)
- Workflows : [Validation Modèle Financier](../workflows/financial-model-validation.fr.md), [Planification Effectifs](../workflows/workforce-planning.fr.md)

> ⚠️ **Important** : Ce guide documente **uniquement les capacités Excel de Cowork**. Pour l'aide avec l'add-in Claude in Excel, référez-vous à la documentation officielle Microsoft/Anthropic.

---

## Comparaison détaillée des fonctionnalités

### Opérations sur fichiers

| Capacité | Code | Cowork | Projects |
|----------|------|--------|----------|
| Lire fichiers locaux | ✅ Tout | ✅ Sandbox | ❌ Upload uniquement |
| Écrire fichiers locaux | ✅ Tout | ✅ Sandbox | ❌ Non |
| Créer docs Office | ⚠️ Via scripts | ✅ Natif | ❌ Non |
| Organiser dossiers | ✅ Via shell | ✅ Natif | ❌ Non |
| Opérations en masse | ✅ Scripts | ✅ Agentique | ❌ Non |

### Exécution de code

| Capacité | Code | Cowork | Projects |
|----------|------|--------|----------|
| Exécuter commandes shell | ✅ Complet | ❌ Non | ❌ Non |
| Exécuter Python | ✅ Oui | ❌ Non | ❌ Non |
| Exécuter tests | ✅ Oui | ❌ Non | ❌ Non |
| Opérations Git | ✅ Oui | ❌ Non | ❌ Non |
| Build projets | ✅ Oui | ❌ Non | ❌ Non |

### Traitement de documents

| Capacité | Code | Cowork | Projects |
|----------|------|--------|----------|
| Lire PDFs | ⚠️ Via outils | ✅ Natif | ✅ Upload |
| Lire images (OCR) | ⚠️ Via outils | ✅ Natif | ✅ Upload |
| Lire tableurs | ⚠️ Via scripts | ✅ Natif | ✅ Upload |
| Générer Word | ⚠️ Via scripts | ✅ Natif | ❌ Non |
| Générer Excel | ⚠️ Via scripts | ✅ Natif | ❌ Non |
| Générer présentations | ⚠️ Via scripts | ✅ Natif | ❌ Non |
| Revue documents juridiques | ❌ Non | ✅ Extension Claude Legal | ❌ Non |

### Capacités agentiques

| Capacité | Code | Cowork | Projects |
|----------|------|--------|----------|
| Planification multi-étapes | ✅ Oui | ✅ Oui | ⚠️ Limité |
| Délégation sous-agents | ✅ Oui | ✅ Oui | ❌ Non |
| Revue plan avant exécution | ✅ Oui | ✅ Oui | N/A |
| Exécution parallèle | ✅ Oui | ✅ Oui | ❌ Non |
| Pensée étendue | ✅ Oui | ✅ Oui | ✅ Oui |

### Plugins & intégrations

| Capacité | Code | Cowork | Projects |
|----------|------|--------|----------|
| Plugins officiels | ⚠️ Via MCP | ✅ 11 plugins (Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry, Slack) | ❌ Non |
| Tâches planifiées | ❌ Non | ✅ Natif | ❌ Non |
| Équipes d'agents | ✅ Oui | ✅ Preview recherche | ❌ Non |
| Compaction de contexte | ✅ Oui | ✅ Beta | ❌ Non |

### Web & recherche

| Capacité | Code | Cowork | Projects |
|----------|------|--------|----------|
| Recherche web | ✅ Via outils | ✅ Chrome | ✅ In-chat |
| Naviguer pages | ✅ Via outils | ✅ Chrome | ❌ Non |
| Appels API | ✅ Via code | ❌ Non | ❌ Non |
| Télécharger fichiers | ✅ Oui | ⚠️ Via Chrome | ❌ Non |

---

## Matrice de décision par cas d'usage

### Choisir Claude Code quand :

| Scénario | Pourquoi Code |
|----------|---------------|
| Développer logiciel | Environnement développement complet |
| Exécuter tests | Exécution frameworks de tests |
| Opérations Git | Intégration contrôle version |
| Développement API | Requêtes HTTP, débogage |
| Scripts automatisation | Capacité scripting complète |
| Tâches DevOps | Accès shell, déploiement |
| Toute exécution code | Seule option avec shell |

### Choisir Cowork quand :

| Scénario | Pourquoi Cowork |
|----------|-----------------|
| Organiser fichiers | Opérations dossiers natives |
| Créer rapports | Word, Excel, PowerPoint natifs |
| Traiter reçus | OCR + sortie tableur |
| Compilation recherche | Chrome + génération documents |
| Extraction données | Images → données structurées |
| Synthèse documents | Multi-sources → sortie unique |
| Utilisateurs non techniques | Aucune connaissance code requise |

### Choisir Projects quand :

| Scénario | Pourquoi Projects |
|----------|-------------------|
| Q&A sur documents | Upload et discussion |
| Brainstorming | Orienté conversation |
| Aide rédaction | Brouillon en chat |
| Analyse rapide | Pas besoin création fichiers |
| Usage mobile | Interface web |
| Contraintes budget | Tous les tiers abonnement |

---

## Diagramme de décision

```
De quoi avez-vous besoin ?
│
├─ Exécuter code, scripts, ou commandes shell ?
│   └─ Oui → Claude Code
│
├─ Manipuler fichiers locaux sans coder ?
│   ├─ Créer documents Office ?
│   │   └─ Oui → Cowork
│   ├─ Organiser dossiers ?
│   │   └─ Oui → Cowork
│   └─ Extraire données d'images/PDFs ?
│       └─ Oui → Cowork
│
├─ Juste discuter de documents ?
│   └─ Oui → Projects
│
├─ Besoin sur mobile ?
│   └─ Oui → Projects (web)
│
├─ Contrainte budget ?
│   ├─ Avez Pro (20$/mois) ou Max (100-200$/mois) ?
│   │   └─ Oui → Cowork disponible (Pro: usage léger; Max: usage intensif)
│   └─ Non → Projects ou Claude Code (basé usage)
│
└─ Pas sûr ?
    └─ Commencer avec Projects, évoluer selon besoins
```

---

## Workflows hybrides

### Collaboration développeur + PM

```
┌─────────────────────────────────────┐
│ Développeur (Claude Code)           │
│ • Générer spec technique            │
│ • Sortie vers ~/Shared/specs/       │
└───────────────┬─────────────────────┘
                ↓
┌─────────────────────────────────────┐
│ PM (Cowork)                         │
│ • Lire spec technique               │
│ • Créer résumé parties prenantes   │
│ • Sortie vers ~/Shared/docs/        │
└─────────────────────────────────────┘
```

### Recherche + implémentation

```
┌─────────────────────────────────────┐
│ Analyste (Cowork)                   │
│ • Recherche web via Chrome          │
│ • Compiler matrice comparaison      │
│ • Sauver vers ~/Shared/research/    │
└───────────────┬─────────────────────┘
                ↓
┌─────────────────────────────────────┐
│ Développeur (Claude Code)           │
│ • Lire sortie recherche             │
│ • Implémenter selon résultats       │
│ • Créer code + tests                │
└─────────────────────────────────────┘
```

---

## Comparaison tarifaire

| Produit | Modèle coût | Coût typique |
|---------|-------------|--------------|
| **Claude Code** | Basé usage (API) | Variable, 10-100+$/mois |
| **Cowork** | Abonnement Pro ou Max | 20-200$/mois |
| **Projects** | Tous les tiers | Gratuit - 20+$/mois |

### Décision coût

| Budget | Recommandation |
|--------|----------------|
| Gratuit/minimal | Projects uniquement |
| 20$/mois | Pro: Cowork (usage léger) + Projects |
| 50-100$/mois | Claude Code (basé usage) |
| 100-200$/mois | Max: Tous produits + usage Cowork étendu |

---

## Chemins de migration

### Projects → Cowork

Quand migrer :
- Besoin créer documents Office
- Vouloir traitement fichiers en masse
- Fatigué gestion manuelle fichiers

### Projects → Code

Quand migrer :
- Besoin exécution code
- Vouloir intégration contrôle version
- Développer logiciel

### Cowork → Code

Quand migrer :
- Besoin accès shell
- Vouloir exécuter scripts
- Nécessiter automatisation programmatique

---

## Calendrier disponibilité fonctionnalités

| Fonctionnalité | Code | Cowork | Projects |
|----------------|------|--------|----------|
| **Disponible maintenant** | ✅ | ⚠️ Preview recherche | ✅ |
| **Windows** | ✅ | ✅ (depuis 10 fév 2026) | ✅ |
| **Linux** | ✅ | ❌ (non annoncé) | ✅ |
| **Enterprise** | ✅ | ❌ (inconnu) | ✅ |
| **Fonctions équipe** | ⚠️ Limité | ❌ | ✅ |

---

## Cowork vs Chat : Quand utiliser chacun

> **Point clé** : Cowork n'est pas un remplacement du Chat. C'est un outil spécialisé pour des catégories de tâches spécifiques.

### Différence d'architecture

| Aspect | Chat (Projects/Web) | Cowork |
|--------|---------------------|--------|
| **Modèle** | Conversationnel (prompt → réponse → itération) | Agent autonome (tâche → plan → exécution) |
| **Interaction** | Guidée dialogue | Guidée tâche |
| **Meilleur pour** | Réflexion, raisonnement, itération | Exécution, automatisation, ops en masse |

### Où Cowork gagne

| Cas d'usage | Pourquoi Cowork | Alternative Chat |
|-------------|-----------------|------------------|
| **10+ opérations fichiers** | Accès dossier direct, exécution parallèle | Upload manuel (limite 20 fichiers), séquentiel |
| **Analyse multi-documents** | Lit répertoires entiers d'un coup | Fragmentation contexte, déclin attention |
| **Automatisation répétitive** | Configuration unique, exécution autonome | Re-prompt à chaque cycle |
| **Automatisation navigateur** | Navigue, clique, remplit formulaires | Ne peut que décrire ce que vous devriez faire |
| **Fichiers sensibles confidentialité** | Traitement local, pas d'upload | Fichiers envoyés serveurs cloud |

**Exemple** : 30 reçus → Excel dépenses
- Cowork : Déposer dossier → 5 minutes autonome
- Chat : Upload 5 à la fois, extraction manuelle → 45 minutes

### Où Chat gagne

| Cas d'usage | Pourquoi Chat | Limitation Cowork |
|-------------|---------------|-------------------|
| **Stratégie/raisonnement** | Dialogue itératif, test hypothèses | Sorties mécaniques manquant nuances |
| **Développement code** | Intégration Claude Code, cycles test rapides | Peut exécuter mais sensation non naturelle |
| **Écriture/brouillon** | Artefacts live, itération inline | Friction télécharger-éditer-re-upload |
| **Synthèse multi-domaines** | Raisonnement inter-domaines | Architecture centrée fichiers |
| **Collaboration** | Liens partageables, visibilité équipe | Desktop uniquement, pas de partage |
| **Accès zéro installation** | N'importe quel appareil, navigateur | App desktop requise (macOS/Windows) |

**Exemple** : Mémo stratégie marketing
- Chat : Discussion itérative, thèse nuancée → sortie réfléchie
- Cowork : Structure mécanique depuis fichiers → manque vision stratégique

### Comparaison performance

| Métrique | Cowork | Chat |
|----------|--------|------|
| Démarrage à froid | ~3 secondes | 10-12 secondes (login web) |
| Usage mémoire | 200-400 MB | 1.2-2.0 GB (sessions étendues) |
| Consommation tokens | ~1.5-2x Chat (surcharge planification) | Référence |
| Persistance session | Nécessite app ouverte | Survit rechargements onglet |

### Framework de décision

**Utiliser Cowork quand** :
- Tâche implique 10+ fichiers ou opérations masse
- Besoin automatisation navigateur (scraping, formulaires)
- Fichiers sensibles conformité (préférer local)
- Tâche mécanique et bien définie
- Sortie basée fichiers (Excel, PPT, docs)

**Utiliser Chat quand** :
- Tâche nécessite raisonnement, jugement, créativité
- Codage/débogage nécessaire
- Brouillon itératif ou collaboration
- Tâche ambiguë ou exploratoire
- Besoin accès mobile/zéro installation
- Sortie basée discussion

**Utiliser les deux** :
- Phase réflexion (Chat) → exigences affinées → phase exécution (Cowork)
- Exemple : Chat pour stratégie → Cowork pour création contenu en masse

### La règle 80/20

Pour la plupart des travailleurs du savoir :
- **Chat : 80-85%** des cas d'usage (réflexion, écriture, codage, analyse)
- **Cowork : 15-20%** des cas d'usage (fichiers masse, automatisation, tâches navigateur)

Ensemble ils permettent des workflows impossibles avec l'un seul : **réflexion à vitesse-chat + exécution à vitesse-agent**.

---

## Paysage concurrentiel (février 2026)

Comment Cowork se compare aux autres assistants desktop IA ?

### Matrice fonctionnalités

| Fonctionnalité | Cowork | Copilot (MS) | Gemini | ChatGPT | Apple Intelligence |
|----------------|--------|--------------|--------|---------|-------------------|
| **Accès fichiers locaux** | ✅ Sandbox | ✅ Office uniquement | ⚠️ Drive | ⚠️ Limité | ✅ Système complet |
| **Création documents** | ✅ Office, PDF | ✅ Office natif | ✅ Docs | ⚠️ Artefacts | ⚠️ Basique |
| **Automatisation navigateur** | ✅ Chrome | ❌ Non | ❌ Non | ⚠️ Operator (beta) | ❌ Non |
| **Vraie autonomie** | ✅ Multi-étapes | ❌ Copilot | ❌ Non | ⚠️ GPTs | ❌ Non |
| **OCR/Vision** | ✅ Bon | ✅ Meilleur | ✅ Bon | ✅ Bon | ✅ Bon |
| **Confidentialité (local)** | ⚠️ Appels API | ⚠️ Cloud | ⚠️ Cloud | ⚠️ Cloud | ✅ Sur appareil |
| **Tier gratuit** | ❌ Pro/Max | ⚠️ Limité | ⚠️ Limité | ✅ Oui | ✅ Inclus |
| **Plateforme** | macOS + Windows | Windows/Mac | Multi | Multi | Apple uniquement |

**Note** : "Copilot (MS)" désigne Microsoft 365 Copilot (intégration Word/Excel/PowerPoint), pas GitHub Copilot (outil développeur avec accès complet au système de fichiers).

### Classement autonomie

| Produit | Niveau autonomie | Description |
|---------|------------------|-------------|
| **Cowork** | 🟢 Élevé | Planifie, exécute tâches multi-étapes, délègue aux sous-agents |
| **ChatGPT Operator** | 🟡 Moyen | Automatisation navigateur mais accès fichiers limité |
| **Copilot** | 🟡 Moyen | Intégration Office mais pas vraiment autonome |
| **Gemini** | 🔴 Faible | Centré chat, exécution limitée |
| **Apple Intelligence** | 🔴 Faible | Utilitaires uniquement, pas de workflows complexes |

**Différenciateur clé** : Cowork est le seul assistant combinant vraie autonomie multi-étapes + manipulation fichiers locaux + automatisation navigateur dans un seul package.

### Meilleur choix par cas d'usage

| Cas d'usage | Meilleur choix | Pourquoi |
|-------------|----------------|----------|
| **Création documents Office** | Copilot | Intégration native Word/Excel/PowerPoint |
| **OCR reçus/factures** | Copilot ou Cowork | Meilleure précision (Copilot) vs autonomie (Cowork) |
| **Automatisation navigateur** | Cowork | Seule option avec contrôle Chrome |
| **Travail sensible confidentialité** | Apple Intelligence | Sur appareil, pas de cloud |
| **Équipe multi-plateforme** | ChatGPT | Disponible partout |
| **Budget serré** | Apple Intelligence | Gratuit avec appareils Apple |
| **Workflows fichiers complexes** | Cowork | Architecture sous-agents, traitement masse |
| **Intégration Office profonde** | Copilot | APIs natives, meilleures formules |
| **Grand contexte** | Gemini ou Cowork | Gemini 1M+ natif ; Cowork 1M beta (Opus 4.6) |

### Architecture confidentialité

| Produit | Flux données | Niveau préoccupation |
|---------|--------------|----------------------|
| **Apple Intelligence** | Sur appareil | 🟢 Faible |
| **Cowork** | Fichiers → API Anthropic → Résultats | 🟡 Moyen |
| **Copilot** | Fichiers → Microsoft Graph | 🟡 Moyen |
| **Gemini** | Fichiers → Google Cloud | 🟡 Moyen |
| **ChatGPT** | Fichiers → OpenAI | 🟡 Moyen |

**Note** : Toutes les options basées cloud traitent le contenu fichiers sur leurs serveurs. Seule Apple Intelligence fonctionne entièrement localement. Les fichiers Cowork quittent votre machine pendant le traitement.

### Comparaison tarifaire

| Produit | Coût | Notes |
|---------|------|-------|
| **Apple Intelligence** | Gratuit | Inclus avec appareils |
| **Cowork** | 20-200$/mois | Pro (léger) ou Max (intensif) |
| **Copilot** | 20$/mois (personnel), 30$/mois (enterprise) | M365 Copilot |
| **ChatGPT** | Gratuit-200$/mois | Plus (20$), Pro (200$) |
| **Gemini** | Gratuit-20$/mois | Advanced pour contexte 1M |

### Quand NE PAS utiliser Cowork

| Scénario | Meilleure alternative | Pourquoi |
|----------|----------------------|----------|
| Besoin meilleure précision OCR | Microsoft Copilot | Office natif, meilleure extraction |
| Besoin contexte 1M+ | Gemini Advanced | Plus grande fenêtre contexte |
| Confidentialité non négociable | Apple Intelligence | Sur appareil uniquement |
| Besoin multi-plateforme | ChatGPT | Fonctionne partout |
| Sur Linux | Copilot ou ChatGPT | Cowork non disponible sur Linux |
| Tier gratuit uniquement | ChatGPT ou Gemini | Cowork nécessite abonnement payant |

### Alternatives open-source

Depuis le lancement de Cowork, la communauté open-source a créé plusieurs alternatives gratuites. Elles sont utiles si vous :
- Avez un budget limité (gratuit avec vos propres clés API)
- Voulez utiliser d'autres modèles que Claude (GPT, LLMs locaux)
- Préférez logiciel que vous pouvez inspecter et modifier

| Projet | Créateur | Focus | Facilité d'usage | Sécurité |
|--------|----------|-------|------------------|----------|
| [openwork](https://github.com/different-ai/openwork) | different-ai | App desktop avec UI | ⭐⭐⭐ Conviviale | ⚠️ Demande permission |
| [openwork](https://github.com/langchain-ai/openwork) | LangChain | Outil CLI | ⭐ Nécessite terminal | ⚠️ Accès fichiers complet |
| [open-claude-cowork](https://github.com/ComposioHQ/open-claude-cowork) | Composio | Intégrations (500+) | ⭐⭐ App desktop | ⚠️ Accès fichiers complet |
| [kuse_cowork](https://github.com/kuse-ai/kuse_cowork) | Kuse | Hors ligne/confidentialité | ⭐ Nécessite Docker | ✅ Sandboxé |

*Nombre d'étoiles (559, 236, 123, ~50) en janvier 2026. Ces projets sont jeunes et évolutifs.*

> **⚠️ Avertissement sécurité** : Contrairement au dossier sandboxé de Cowork, la plupart des alternatives open-source ont **accès complet à tout votre ordinateur**. Elles peuvent lire, modifier ou supprimer n'importe quel fichier. Ne les utilisez que si vous comprenez le risque ou faites confiance aux mainteneurs du projet. L'exception est kuse_cowork, qui s'exécute dans un conteneur Docker.

#### Quelle alternative open-source ?

Pour **utilisateurs non techniques** : Considérez uniquement **different-ai/openwork**, qui a une interface graphique similaire à Cowork. Toutes les autres options nécessitent des connaissances terminal/ligne de commande.

Pour **développeurs** : L'openwork de LangChain (`npx openwork`) est le plus rapide à installer. Kuse_cowork offre la meilleure sécurité via isolation Docker.

Pour **tous les autres** : Restez avec Cowork officiel. Le coût de 20$/mois inclut support, mises à jour sécurité, et un produit fiable. Les alternatives open-source sont encore de qualité alpha/beta et peuvent avoir des bugs ou être abandonnées.

---

## Résumé

| Si vous êtes... | Utiliser |
|-----------------|----------|
| Un développeur | Claude Code |
| Un travailleur du savoir (non technique) | Cowork |
| Juste discuter/analyser | Projects |
| Budget serré | Projects |
| Budget critique mais peut gérer config | different-ai/openwork (open-source) |
| Besoin création fichiers | Cowork |
| Besoin exécution code | Claude Code |
| Sur Linux | Claude Code ou Projects |
| Besoin raisonnement/itération | Chat (Projects) |
| Besoin traitement fichiers masse | Cowork |
| Besoin meilleur OCR | Microsoft Copilot |
| Critique confidentialité | Apple Intelligence |
| Grands documents (1M+) | Gemini Advanced |

---

*[← Retour à la documentation Cowork](../README.md)*
