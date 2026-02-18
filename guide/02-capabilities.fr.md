# Capacités de Cowork

🌐 **Langues** : [Français](02-capabilities.fr.md) | [English](02-capabilities.md)

> **Temps de lecture** : ~8 minutes
>
> **Objectif** : Comprendre exactement ce que Cowork peut et ne peut pas faire

---

## Sélection du modèle

Cowork supporte différents modèles Claude. Choisissez en fonction de la complexité de votre tâche.

### Modèles disponibles

| Modèle | Idéal pour | Vitesse | Consommation |
|--------|------------|---------|--------------|
| **Haiku** | Tâches très simples, requêtes rapides | Très rapide | Faible |
| **Sonnet** | Tâches quotidiennes, emails, organisation | Rapide | Standard |
| **Opus** | Analyses complexes, synthèses multi-documents | Plus lent | Plus élevée |

**Notes sur les modèles** (Février 2026) :
- **Versions Opus** : Opus 4.5 et Opus 4.6 sont disponibles. Opus 4.0 et 4.1 ont été retirés.
- **Capacités Opus 4.6** : Opus 4.6 a obtenu 90,2% sur le BigLaw Bench, le rendant particulièrement efficace pour la revue de documents légaux, l'analyse de contrats et les tâches liées à la conformité. Fenêtre de contexte de 1M tokens (beta), 128K tokens de sortie, pensée adaptative avec 4 niveaux d'effort.
- **Compaction de contexte** (beta) : Cowork compresse automatiquement l'historique de conversation pour permettre des sessions plus longues sans perte de contexte important.

### Quand utiliser chaque modèle

| Type de tâche | Modèle recommandé | Exemple TPE/PME |
|---------------|-------------------|-----------------|
| Emails rapides, éditions simples | Sonnet | Relance client, réponse devis |
| Organisation de fichiers | Sonnet | Tri factures par mois, renommage photos chantier |
| Extraction de données de reçus | Sonnet | Scanner tickets restaurant → Excel |
| Création devis/factures standard | Sonnet | Template client habituel |
| Synthèse de documents complexes | Opus | Résumé 15 notes de réunion avec décisions clés |
| Rapports de recherche multi-sources | Opus | Étude de marché locale concurrence |
| Analyse stratégique | Opus | Analyse contrats fournisseurs, négociation |
| Synthèse réglementaire | Opus | Comprendre nouvelles normes métier |

### Conseils de sélection

1. **Commencez par Sonnet** — Suffisant pour 80% des tâches quotidiennes
2. **Passez à Opus** quand :
   - Les résultats manquent de profondeur ou de nuance
   - La tâche implique 10+ documents sources
   - Vous avez besoin d'une analyse détaillée, pas juste d'un résumé
   - Vous refaites souvent la tâche (Opus plus précis = moins de tentatives)
3. **Attention à vos limites** — Opus consomme le quota plus vite que Sonnet par requête
4. **Astuce coût** — Pour analyses complexes récurrentes, Opus peut être plus économique à long terme grâce à sa précision (moins d'allers-retours)

> **Utilisateurs Pro** : Sonnet est votre meilleur choix par défaut. Utilisez Opus avec parcimonie pour maximiser votre fenêtre d'usage de 5 heures.
>
> **Utilisateurs Max** : Testez Opus sur vos tâches les plus complexes. Si vous économisez du temps en évitant 2-3 tentatives, le coût supplémentaire est justifié.

---

## Matrice des capacités

### Opérations sur fichiers

| Opération | Peut faire | Notes |
|-----------|------------|-------|
| **Lire des fichiers** | ✅ Oui | Tout format dans le dossier autorisé |
| **Créer des fichiers** | ✅ Oui | Tout format basé sur du texte |
| **Déplacer des fichiers** | ✅ Oui | Dans les dossiers autorisés |
| **Copier des fichiers** | ✅ Oui | Dans les dossiers autorisés |
| **Renommer des fichiers** | ✅ Oui | Renommage en masse supporté |
| **Supprimer des fichiers** | ✅ Oui | ⚠️ Permanent, pas de corbeille |
| **Créer des dossiers** | ✅ Oui | Structures imbriquées supportées |
| **Extraire des archives** | ❌ Non | Ne peut pas exécuter unzip/tar |
| **Compresser des fichiers** | ❌ Non | Ne peut pas créer d'archives |

### Génération de documents

| Format | Peut créer | Fonctionnalités |
|--------|------------|-----------------|
| **Texte brut** (.txt) | ✅ Oui | Tout contenu |
| **Markdown** (.md) | ✅ Oui | Formatage complet |
| **Word** (.docx) | ✅ Oui | En-têtes, tableaux, formatage |
| **Excel** (.xlsx) | ✅ Oui | Formules, feuilles multiples, formatage |
| **PowerPoint** (.pptx) | ✅ Oui | Diapositives, formatage de base |
| **PDF** | ✅ Oui | Généré depuis le contenu |
| **HTML** | ✅ Oui | HTML/CSS complet |
| **CSV** | ✅ Oui | Export de données |
| **JSON** | ✅ Oui | Données structurées |

### Traitement des entrées

| Type d'entrée | Peut traiter | Notes |
|---------------|--------------|-------|
| **Fichiers texte** | ✅ Oui | Tout encodage |
| **Documents Office** | ✅ Oui | Word, Excel, PowerPoint |
| **PDFs** | ✅ Oui | Extraction de texte |
| **Images** | ✅ Oui | OCR pour extraction de texte |
| **Captures d'écran** | ✅ Oui | Scan de reçus/documents |
| **Markdown** | ✅ Oui | Analyse complète |
| **CSV/JSON** | ✅ Oui | Analyse de données structurées |
| **Audio** | ❌ Non | Ne peut pas traiter |
| **Vidéo** | ❌ Non | Ne peut pas traiter |
| **Fichiers chiffrés** | ❌ Non | Ne peut pas déchiffrer |

### Capacités Web (via Chrome)

| Action | Peut faire | Notes |
|--------|------------|-------|
| **Rechercher sur le web** | ✅ Oui | Via intégration Chrome |
| **Lire des pages** | ✅ Oui | Extraire le contenu |
| **Sauvegarder du contenu** | ✅ Oui | Vers des fichiers locaux |
| **Remplir des formulaires** | ⚠️ Limité | Nécessite approbation explicite |
| **Faire des achats** | ❌ Non | Restriction de sécurité |
| **Se connecter à des sites** | ❌ Non | Restriction de sécurité |
| **Appels API** | ❌ Non | Pas d'accès réseau direct |

---

## Capacités détaillées

### 1. Organisation de fichiers

Cowork excelle dans l'organisation de grands nombres de fichiers :

```
ENTRÉE :  500 fichiers dans le dossier Téléchargements
SORTIE : Structure organisée par type/date/projet
```

**Ce que Cowork fait** :
- Analyse les noms de fichiers, types, contenu
- Propose un schéma d'organisation
- Crée la structure de dossiers
- Déplace les fichiers (avec votre approbation)
- Génère un rapport d'organisation

**Limitations** :
- Ne peut pas accéder de manière fiable aux métadonnées (date de création, etc.)
- Ne peut pas lire le contenu de certains formats binaires
- Se base sur les noms de fichiers/extensions pour la catégorisation

### 2. Synthèse de documents

Combiner plusieurs sources en sorties structurées :

```
ENTRÉE :  15 notes de réunion, 3 rapports, 5 emails (sous forme de fichiers texte)
SORTIE : Résumé exécutif avec décisions clés et actions à mener
```

**Ce que Cowork fait** :
- Lit tous les documents sources
- Identifie les thèmes et informations clés
- Structure selon le format demandé
- Génère un document de sortie soigné

**Limitations** :
- Limite de fenêtre de contexte (~200K tokens)
- Ne peut pas accéder aux systèmes d'email/calendrier originaux
- La qualité de la synthèse dépend de la clarté des sources

### 3. Extraction de données

Extraire des données structurées depuis des sources non structurées :

```
ENTRÉE :  20 images de reçus (photos, captures d'écran)
SORTIE : Feuille Excel avec Date, Vendeur, Montant, Catégorie
```

**Ce que Cowork fait** :
- OCR sur les images
- Identifie les champs pertinents
- Normalise le format des données
- Crée un Excel avec formules

**Limitations** :
- **Extraction de champs** : ~97% de précision (vendeur, date, totaux)
- **Extraction de lignes détaillées** : ~63% de précision (lignes de tableaux) — vérifier manuellement
- Le texte manuscrit est difficile
- Certains formats de reçus peuvent ne pas s'analyser correctement
- Budgétez 30-50% du temps "économisé" pour la correction d'erreurs

> ⚠️ **Aucun benchmark indépendant n'existe** pour les outils d'organisation de fichiers par IA. Les promesses de productivité sont du marketing de fournisseurs, pas de la recherche évaluée par des pairs. Gardez des attentes réalistes.

### 4. Génération de rapports

Créer des rapports formatés depuis des données brutes :

```
ENTRÉE :  CSV avec données de ventes
SORTIE : Rapport formaté avec graphiques et analyse
```

**Ce que Cowork fait** :
- Analyse les motifs dans les données
- Crée des statistiques récapitulatives
- Génère des représentations visuelles
- Formate pour la sortie spécifiée

**Limitations** :
- Capacités de graphiques limitées dans la sortie Excel
- Les visualisations complexes nécessitent un affinement manuel
- L'analyse statistique est basique

### 5. Compilation de recherche

Rassembler et organiser la recherche depuis plusieurs sources :

```
ENTRÉE :  Sujet : "Outils de productivité pour le travail à distance"
SORTIE : Document de recherche avec matrice de comparaison
```

**Ce que Cowork fait** :
- Utilise Chrome pour la recherche web
- Extrait les informations pertinentes
- Organise dans un format structuré
- Cite les sources

**Limitations** :
- Ne peut pas accéder au contenu payant
- La recherche web est plus lente que l'API directe
- La qualité dépend de l'information publique disponible

---

## Capacités Excel (Détaillées)

Étant donné que la sortie Excel est un point fort majeur de Cowork :

### Fonctionnalités supportées

| Fonctionnalité | Supportée | Exemple |
|----------------|-----------|---------|
| **Formules de base** | ✅ Oui | `=SOMME(A1:A10)` |
| **Formules conditionnelles** | ✅ Oui | `=SI(A1>100; "Élevé"; "Faible")` |
| **RECHERCHEV/RECHERCHEH** | ✅ Oui | Références croisées entre feuilles |
| **Feuilles multiples** | ✅ Oui | Feuilles récapitulatives + détail |
| **Formatage de cellules** | ✅ Oui | Gras, couleurs, bordures |
| **Formatage de nombres** | ✅ Oui | Devise, pourcentages |
| **Validation de données** | ⚠️ Limité | Listes déroulantes de base |
| **Tableaux croisés dynamiques** | ❌ Non | Doit être créé manuellement |
| **Macros/VBA** | ❌ Non | Restriction de sécurité |
| **Graphiques** | ⚠️ Limité | Types de graphiques de base |

### À ne pas confondre : Add-in Claude in Excel

> ⚠️ **Distinction importante** : Cette section décrit les **capacités de génération Excel de Cowork** (création de fichiers `.xlsx` depuis des données). Ce n'est PAS la même chose que l'**add-in Claude in Excel** (complément Microsoft Excel pour l'assistance aux formules, lancé 24 jan 2026).
>
> **Différences clés** :
> - **Cowork Excel** : Génère de nouveaux fichiers Excel depuis des données non structurées (reçus, images, texte)
> - **Claude in Excel** : Aide avec les formules/analyses à l'intérieur de fichiers Excel existants
>
> Voir [comparaison complète](../reference/comparison.fr.md#confusion-frequente).

### Considérations régionales

La syntaxe des formules Excel varie selon les régions :
- **US/UK** : `=SUM(A1,A2)` (séparateur virgule)
- **EU** : `=SOMME(A1;A2)` (séparateur point-virgule)

**Astuce** : Spécifiez votre paramètre régional dans les prompts :
```
Crée un fichier Excel en utilisant la syntaxe de formules européenne (séparateurs point-virgule)
```

---

## Utilisation de la fenêtre de contexte

Cowork partage la limite de contexte de ~200K tokens de Claude, mais **la capacité effective est ~165K**.

### Pourquoi 165K et pas 200K ?

La surcharge système consomme des tokens avant que votre tâche ne commence :
- Définitions d'outils : ~10K tokens
- Instructions de sécurité : ~10K tokens
- Logs d'exécution : ~5-15K tokens (variable)

**Limite effective** : ~165-175K tokens utilisables

### Limites pratiques

| Type de contenu | Capacité approximative |
|-----------------|------------------------|
| Pages de texte brut | 100-400 pages |
| Documents | 40-80 documents typiques |
| Lignes de tableur | 8 000-40 000 lignes |
| Images (OCR) | 40-80 images |

### Quand vous atteignez les limites

**Message d'erreur** :
```
Limite de contexte atteinte
```

**Symptômes** :
- Cowork s'arrête en pleine tâche (souvent vers 165K, pas 200K)
- Les résultats sont incomplets
- Échec silencieux sans message clair

**Solutions** :
- Découper le travail en lots de 10-20 fichiers
- Traiter les fichiers par groupes
- Sauvegarder les résultats intermédiaires dans des fichiers de checkpoint
- Démarrer une nouvelle conversation pour les nouvelles tâches

### Budget de tokens par type de tâche

| Tâche | Tokens | Sessions Pro |
|-------|--------|--------------|
| Q&A simple | 5K-10K | Nombreuses |
| Inventaire de fichiers | 20K-30K | 6-8 |
| Petite orga de fichiers (10-20 fichiers) | 30K-50K | 3-5 |
| Grande orga de fichiers (50+ fichiers) | 80K-150K | 1-2 |
| Lot OCR (10+ images) | 60K-100K | 2-3 |

**Surcharge agentique** : Les cycles Plan→Exécute→Vérifie ajoutent 15-30% de tokens.

---

## Extensions & Plugins

Cowork supporte des extensions officielles qui étendent ses capacités pour des workflows spécialisés. Les extensions sont fournies par Anthropic et s'intègrent parfaitement à l'interface Cowork.

### Extensions disponibles

**Claude Legal** (annoncé 3 février 2026) :
- **Objectif** : Automatiser la revue de documents légaux et la détection de risques
- **Capacités clés** :
  - Revue automatisée de contrats et extraction de termes clés
  - Identification de risques et problèmes de conformité
  - Triage de NDA et d'accords
  - Suivi de la conformité réglementaire
- **Cas d'usage pour TPE/PME** :
  - Vérification automatique de contrats avant signature
  - Détection de clauses problématiques dans les accords fournisseurs
  - Génération de checklists de conformité pour réglementations sectorielles
  - Vérification croisée des termes de factures et accords

> ⚠️ **Disclaimer juridique** : Claude Legal ne fournit PAS de conseil juridique. Il assiste dans l'analyse de documents et l'identification de risques. Toutes les conclusions doivent être revues par un professionnel juridique qualifié avant toute décision.

**Comment utiliser** : Les capacités Claude Legal sont accessibles via les prompts Cowork standards lors du traitement de documents légaux. Aucune installation séparée requise—mentionnez simplement vos besoins d'analyse juridique dans la description de votre tâche.

**Exemple de prompt** :
```
Analyse le contrat dans ~/Cowork-Workspace/contrats/accord-fournisseur.pdf
Identifie les termes clés, obligations et risques potentiels.
Génère un résumé avec les problèmes signalés pour revue juridique.
```

### Plugins officiels (annoncés le 30 janvier 2026)

Cowork supporte 11 plugins officiels qui permettent des intégrations directes avec des outils tiers :

| Plugin | Description |
|--------|-------------|
| **Asana** | Gestion de projets et suivi de tâches |
| **Canva** | Création de visuels et design |
| **Cloudflare** | Gestion d'infrastructure web |
| **Figma** | Collaboration design et prototypage |
| **GitHub** | Gestion de code et versioning |
| **Google Drive** | Accès et gestion de fichiers cloud |
| **Jira** | Suivi de tickets et gestion de projets |
| **Linear** | Gestion de projets et suivi d'issues |
| **Notion** | Documentation et bases de connaissances |
| **Sentry** | Monitoring d'erreurs et performance |
| **Slack** | Communication et messagerie d'equipe |

> **Note** : Les plugins sont accessibles depuis l'interface Cowork. La disponibilite et les fonctionnalites peuvent evoluer pendant la periode de preview.

### Extensions futures

Anthropic pourra publier des extensions et plugins supplementaires pour d'autres domaines (comptabilite, documentation technique, etc.). Consultez les annonces officielles Anthropic pour les mises a jour.

---

## Nouvelles capacites (Fevrier 2026)

### Taches planifiees

Cowork permet desormais de programmer des taches automatisees qui s'executent a des horaires definis :

- Rapports recurrents (quotidiens, hebdomadaires, mensuels)
- Traitements par lots programmes
- Veille automatisee sur des sujets specifiques

**Exemple** :
```
Programme une tache chaque lundi a 9h pour consolider les notes
de la semaine precedente dans un rapport hebdomadaire.
```

### Automatisation du navigateur amelioree

L'integration Chrome a ete renforcee pour permettre des workflows web plus complexes :
- Navigation multi-pages automatisee
- Extraction de donnees structurees depuis des sites web
- Surveillance de pages et alertes de changement

### Integrations Excel et PowerPoint

Au-dela de la simple generation de fichiers, Cowork peut desormais **modifier directement** des fichiers Excel et PowerPoint existants :
- Edition de cellules et formules dans des fichiers `.xlsx` existants
- Ajout de diapositives et modification de contenu dans des `.pptx` existants
- Mise a jour de graphiques et tableaux dans des documents existants

### Agent Teams (apercu recherche)

Cowork peut coordonner plusieurs agents Claude pour travailler en parallele sur des taches complexes :
- Decomposition automatique de taches volumineuses
- Agents specialises travaillant simultanement (analyse, transformation, organisation)
- Synthese automatique des resultats par l'orchestrateur

> **Note** : Agent Teams est en apercu recherche. Les performances et la disponibilite peuvent varier.

---

## Ce que Cowork NE PEUT PAS faire

### Exécution de code

```
❌ Ne peut pas exécuter : Python, JavaScript, scripts shell
❌ Ne peut pas exécuter : Applications installées
❌ Ne peut pas utiliser : Outils en ligne de commande
```

**Contournement** : Utiliser Claude Code pour les tâches d'exécution de code.

### Opérations réseau

```
❌ Ne peut pas faire : Appels API, requêtes HTTP
❌ Ne peut pas accéder : Bases de données distantes
❌ Ne peut pas synchroniser : Stockage cloud directement
```

**Contournement** : Télécharger d'abord les fichiers cloud localement, ou utiliser Chrome pour l'accès web.

### Opérations système

```
❌ Ne peut pas modifier : Paramètres système
❌ Ne peut pas installer : Logiciels
❌ Ne peut pas accéder : Données d'autres applications
```

**Contournement** : Ces opérations doivent être faites manuellement.

### Opérations sensibles en sécurité

```
❌ Ne peut pas gérer : Mots de passe, identifiants
❌ Ne peut pas traiter : Fichiers chiffrés
❌ Ne peut pas accéder : Dossiers système protégés
```

**Contournement** : Garder les données sensibles hors de l'espace de travail Cowork.

### Contraintes d'environnement

```
❌ Ne peut pas fonctionner : Avec VPN actif (conflit de routage VM)
❌ Ne peut pas s'exécuter : Sur Linux (macOS et Windows uniquement)
❌ Ne peut pas opérer : En arrière-plan (nécessite l'app au premier plan)
❌ Ne peut pas persister : Sessions entre redémarrages d'app
```

**Problème VPN** : La VM de Cowork entre en conflit avec le routage réseau VPN. C'est le problème #1 signalé. Solution : Déconnecter le VPN avant d'utiliser Cowork. Voir [Dépannage](04-troubleshooting.md#vm-connection-issues) pour les détails.

---

## Arbre de décision des capacités

```
Besoin de faire quelque chose avec des fichiers ?
├─ Oui → Est-ce dans votre dossier autorisé ?
│        ├─ Oui → Cowork peut-il lire le type de fichier ?
│        │        ├─ Oui → Cowork peut aider ✅
│        │        └─ Non (audio/vidéo/chiffré) → Processus manuel nécessaire
│        └─ Non → Accorder l'accès ou déplacer d'abord les fichiers
│
└─ Non → De quoi avez-vous besoin ?
         ├─ Exécuter du code → Utiliser Claude Code
         ├─ Intégration API → Manuel ou Claude Code
         ├─ Changements système → Opération manuelle
         └─ Recherche web → Cowork + Chrome ✅
```

---

## Bonnes pratiques pour les capacités

### Maximiser le succès

1. **Faire correspondre la tâche à la capacité** — Vérifier la matrice avant de commencer
2. **Préparer les entrées** — S'assurer que les fichiers sont dans des formats lisibles
3. **Spécifier les formats** — Être explicite sur les exigences de sortie
4. **Tester d'abord en petit** — Vérifier avec peu de fichiers avant le traitement par lots

### Quand choisir des alternatives

| Si vous avez besoin de | Utiliser plutôt |
|------------------------|-----------------|
| Exécution de code | Claude Code |
| Intégration API | Claude Code + scripts |
| Synchronisation de fichiers cloud | Apps cloud natives |
| Audio/vidéo | Outils spécialisés |
| Données en temps réel | Processus manuel |

---

*[← Démarrage](01-getting-started.fr.md) | [Documentation Cowork](../README.md) | [Sécurité →](03-security.fr.md)*
