# Capacités de Cowork

🌐 **Langues** : [Français](02-capabilities.fr.md) | [English](02-capabilities.md)

> **Temps de lecture** : ~8 minutes
>
> **Objectif** : Comprendre exactement ce que Cowork peut et ne peut pas faire

---

## Sélection du modèle

Cowork supporte différents modèles Claude. Depuis le lancement de Sonnet 4.6 (17 février 2026), les recommandations ont changé.

### Modèles disponibles

| Modèle | Idéal pour | Vitesse | Fenêtre contexte | Consommation |
|--------|------------|---------|-----------------|--------------|
| **Haiku 4.5** | Tâches très simples, requêtes rapides | Très rapide | Standard | Faible |
| **Sonnet 4.6** ⭐ | Tâches agentiques, automatisation, workflows Cowork quotidiens | Rapide | 1M tokens, 128K sortie | Standard |
| **Opus 4.6** | Raisonnement approfondi, analyses scientifiques, multi-agents complexes | Plus lent | 1M tokens, 128K sortie | 5x Sonnet |
| **Opus 4.7** | Tâches les plus difficiles, travail visuel dense, projets multi-sessions | Plus lent | 1M tokens, 128K sortie | 5x Sonnet |

**Notes sur les modèles** (mis à jour mai 2026) :
- **Sonnet 4.6** (sorti le 17 février 2026) : Modèle recommandé par défaut pour Cowork. 72,5% sur OSWorld-Verified vs 72,7% pour Opus 4.6, soit des performances pratiquement identiques sur les tâches agentiques, à 5x moins cher. Fenêtre 1M tokens, 128K sortie, adaptive thinking.
- **Opus 4.6** (sorti le 5 février 2026) : Avantage pour le raisonnement scientifique profond (91,3% sur GPQA Diamond) et la coordination multi-agents complexe. Pour les opérations Cowork standard, l'écart avec Sonnet 4.6 est négligeable.
- **Opus 4.7** (sorti le 16 avril 2026) : Amélioration notable sur les tâches les plus difficiles. S'auto-corrige pendant la phase de planification, meilleur suivi d'instructions, vision haute résolution (jusqu'à 2 576 px / ~3,75 Mpx, 3x la résolution précédente). Meilleure qualité créative sur slides, docs et interfaces. Meilleure mémoire cross-sessions. Nouveau niveau d'effort `xhigh`. Même tarif qu'Opus 4.6.
- **Compaction de contexte** : Cowork compresse automatiquement l'historique de conversation pour des sessions plus longues sans perte de contexte.

### Quand utiliser chaque modèle

| Type de tâche | Modèle recommandé | Pourquoi |
|---------------|-------------------|---------|
| Organisation de fichiers, renommage | **Sonnet 4.6** | Tâches agentiques : point fort de Sonnet |
| Extraction tickets de caisse, lots OCR | **Sonnet 4.6** | Tool-calling : Sonnet classé #1 mondial |
| Rédaction emails, création documents | **Sonnet 4.6** | Rapide, qualité suffisante |
| Automatisations, tâches planifiées | **Sonnet 4.6** | Même performance agentique, 5x moins cher |
| Synthèse de recherches multi-sources | **Sonnet 4.6** | 1M tokens pour les grands volumes |
| Revue de contrats, analyse juridique | **Opus 4.6 / 4.7** | Avantage raisonnement approfondi |
| Rapports scientifiques/techniques complexes | **Opus 4.6 / 4.7** | Raisonnement GPQA requis |
| Coordination multi-agents | **Opus 4.7** | Meilleure auto-correction et planification |
| Projets longs multi-sessions | **Opus 4.7** | Mémoire cross-sessions supérieure |
| Analyse d'images denses, diagrammes | **Opus 4.7** | Résolution 3x améliorée |
| Claude Design (slides, decks, visuels) | **Opus 4.7** | Meilleur sens esthétique sur les livrables visuels |

### Conseils de sélection

1. **Sonnet 4.6 par défaut** : Gère 90%+ des tâches Cowork avec des performances agentiques quasi-identiques à Opus
2. **Passez à Opus 4.7** quand :
   - Le résultat requiert un raisonnement expert (juridique, scientifique, réglementaire)
   - La tâche s'étend sur plusieurs sessions et nécessite de la mémoire persistante
   - Vous traitez des images denses, captures d'écran ou diagrammes complexes
   - La qualité visuelle sur slides/docs est critique
3. **Opus 4.7 vs 4.6** : 4.7 détecte ses propres erreurs logiques pendant la planification, suit mieux les instructions, produit de meilleurs visuels. Pour les opérations fichiers standard, la différence est marginale.
4. **Attention au quota** : Opus consomme 5x plus de quota par token que Sonnet. Sur le plan Pro, ça s'accumule vite.

> **Utilisateurs Pro** : Sonnet 4.6 est votre défaut pour tout. Réservez Opus 4.7 aux rares tâches où la profondeur de raisonnement ou la qualité visuelle compte vraiment.
>
> **Utilisateurs Max** : Commencez par Sonnet 4.6. Passez à Opus 4.7 pour la revue de contrats, les projets longs, les tâches visuelles, ou quand Sonnet manque de profondeur.

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
| **PowerPoint** (.pptx) | ✅ Oui | Diapositives, formatage de base (voir [workflow template réutilisable →](../workflows/presentation-slides.md#template-réutilisable-depuis-fichier-existant)) |
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
- Limite de fenêtre de contexte (jusqu'à 1M tokens avec Opus 4.7 ou Sonnet 4.6)
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
- **Extraction de lignes détaillées** : ~63% de précision (lignes de tableaux), à vérifier manuellement
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

Avec Opus 4.7, Cowork supporte jusqu'à **1M tokens de contexte** (disponibilité générale, plus en beta). En pratique, la capacité effective dépend du modèle sélectionné.

### Contexte selon le modèle

| Modèle | Fenêtre de contexte | Utilisable en pratique |
|--------|---------------------|------------------------|
| **Haiku 4.5** | Standard | Standard moins surcharge |
| **Sonnet 4.6** | 1M tokens | ~950K (surcharge système ~50K) |
| **Opus 4.7** | 1M tokens | ~950K (surcharge système ~50K) |

La surcharge système (définitions d'outils, instructions de sécurité, logs d'exécution) consomme environ 30 à 50K tokens quel que soit le modèle. C'est négligeable à l'échelle du million, mais à garder en tête pour la planification des sessions.

### Limites pratiques

| Type de contenu | Capacité approximative (fenêtre 1M) |
|-----------------|-------------------------------------|
| Pages de texte brut | 500 à 2 000+ pages |
| Documents | 200 à 400 documents typiques |
| Lignes de tableur | 40 000 à 200 000 lignes |
| Images (OCR) | 200 à 400 images |

### Quand vous atteignez les limites

**Message d'erreur** :
```
Limite de contexte atteinte
```

**Symptômes** :
- Cowork s'arrête en pleine tâche
- Les résultats sont incomplets
- Échec silencieux sans message clair

**Solutions** :
- Découper les très grands lots en groupes de 50 à 100 fichiers
- Sauvegarder les résultats intermédiaires dans des fichiers de checkpoint
- Démarrer une nouvelle conversation pour des tâches sans lien

### Budget de tokens par type de tâche

| Tâche | Tokens | Sessions Pro |
|-------|--------|--------------|
| Q&A simple | 5K-10K | Nombreuses |
| Inventaire de fichiers | 20K-30K | Nombreuses |
| Petite orga de fichiers (10-20 fichiers) | 30K-50K | Nombreuses |
| Grande orga de fichiers (50+ fichiers) | 80K-150K | Nombreuses |
| Lot OCR (10+ images) | 60K-100K | Nombreuses |

**Surcharge agentique** : Les cycles Plan→Exécute→Vérifie ajoutent 15-30% de tokens.

---

## Claude Design (Anthropic Labs)

Claude Design est un produit Anthropic distinct de Cowork, mais complémentaire et très pertinent pour les professionnels qui ont besoin de produire des livrables visuels sans passer par un graphiste.

**Accès** : `claude.ai/design`, disponible en research preview pour les abonnés Pro, Max, Team et Enterprise. Sans surcoût ; consomme les limites d'abonnement existantes. Propulsé par **Claude Opus 4.7**.

### Ce que ça fait

Décrivez ce dont vous avez besoin, Claude génère une première version. Affinez via la conversation, des commentaires inline sur des éléments précis, des modifications directes, ou des curseurs d'ajustement (générés par Claude) pour l'espacement, les couleurs et la mise en page.

**Cas d'usage** :
- Prototypes interactifs partageables sans code
- Maquettes et wireframes pour planifier une fonctionnalité ou valider un concept
- Présentations et pitch decks (d'une ébauche à un deck aux couleurs de l'entreprise, exportable en PPTX)
- Supports marketing : pages de destination, assets réseaux sociaux, visuels de campagne
- Explorations design : générer rapidement plusieurs directions visuelles

### Comment ça marche

| Étape | Ce qui se passe |
|-------|----------------|
| **Charte intégrée** | À l'onboarding, Claude lit votre codebase et vos fichiers design, construit un système de design (couleurs, typographie, composants) et l'applique automatiquement à chaque projet |
| **Import** | Texte, upload DOCX/PPTX/XLSX, pointage vers votre codebase, ou capture web d'un site existant |
| **Affiner** | Commentaires inline, modifications directes, curseurs d'ajustement. Demandez à Claude d'appliquer les changements à l'ensemble du design. |
| **Collaborer** | Partage org-scoped : privé, lien lecture, ou accès édition avec conversation collective |
| **Exporter** | URL interne, dossier local, Canva, PDF, PPTX, HTML standalone |

> **Enterprise** : Claude Design est désactivé par défaut. L'administrateur doit l'activer dans les paramètres de l'organisation.

### Relation avec Cowork

Claude Design gère la couche de création visuelle ; Cowork gère l'automatisation documentaire. Les deux se complètent : utilisez Cowork pour traiter vos données sources (factures, recherches, rapports), puis Claude Design pour transformer le résultat en livrable visuel soigné.

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

**Comment utiliser** : Les capacités Claude Legal sont accessibles via les prompts Cowork standards lors du traitement de documents légaux. Aucune installation séparée requise : mentionnez simplement vos besoins d'analyse juridique dans la description de votre tâche.

**Exemple de prompt** :
```
Analyse le contrat dans ~/Cowork-Workspace/contrats/accord-fournisseur.pdf
Identifie les termes clés, obligations et risques potentiels.
Génère un résumé avec les problèmes signalés pour revue juridique.
```

### Plugins officiels (30 janvier 2026) + Écosystème élargi (24 février 2026)

L'écosystème de plugins a beaucoup grandi. Partis de 11 plugins de base (30 janvier), Anthropic a ajouté des connecteurs entreprise et des plugins fonctionnels le 24 février.

#### Plugins de base (tous les utilisateurs)

| Plugin | Catégorie | Cas d'usage TPE/PME |
|--------|-----------|---------------------|
| **Asana** | Gestion de projets | Suivi de tâches, état des projets |
| **Canva** | Design | Créer des visuels, posts réseaux sociaux |
| **Cloudflare** | Infrastructure | Gestion de site, analytics |
| **Figma** | Design | Accès fichiers design, revue |
| **GitHub** | Développement | Gestion de code, issues |
| **Google Drive** | Stockage cloud | Accès et gestion de fichiers |
| **Jira** | Gestion de projets | Suivi de tickets, sprints |
| **Linear** | Gestion de projets | Suivi d'issues, planification |
| **Notion** | Base de connaissances | Pages, bases de données, documentation |
| **Sentry** | Monitoring | Suivi d'erreurs, performance |
| **Slack** | Communication | Messages, gestion des canaux |

#### Nouveaux connecteurs (24 février 2026)

Ajouts clés pour les TPE/PME :

| Connecteur | Catégorie | Cas d'usage |
|------------|-----------|-------------|
| **Google Calendar** | Productivité | Planification de réunions, disponibilités |
| **Gmail** | Communication | Workflows email sans Chrome |
| **DocuSign** | Documents | Signature de contrats, flux documentaires |
| **WordPress** | Publication | Gestion d'articles, mises à jour de contenu |
| **Apollo** | Commercial | Recherche de contacts, prospection |
| **Clay** | Commercial | Enrichissement leads, données CRM |
| **Outreach** | Commercial | Séquences de vente, relances |
| **Similarweb** | Recherche | Analyse trafic web concurrents |
| **Harvey** | Juridique | Analyse de documents légaux |
| **LegalZoom** | Juridique | Templates de documents, conformité |

Des connecteurs finance/institutionnels ont aussi été ajoutés (FactSet, MSCI, LSEG, S&P Global), principalement pour les workflows entreprise et investissement.

#### Connecteurs GA (9 avril 2026)

Lancés avec la disponibilité générale de Cowork :

| Connecteur | Catégorie | Cas d'usage |
|------------|-----------|-------------|
| **Zoom** | Communication | Gestion de réunions, récupération de transcripts, automatisation de workflows depuis Cowork |

#### Connecteurs créatifs : Claude for Creative Work (28 avril 2026)

9 nouveaux connecteurs MCP pour les professionnels créatifs. Tous basés sur MCP et interopérables avec d'autres LLMs.

| Connecteur | Ce que Claude peut faire |
|------------|--------------------------|
| **Ableton** | Q&A sur la documentation officielle Live et Push |
| **Adobe Creative Cloud** | 50+ outils : Photoshop, Premiere, Express, Illustrator, Lightroom, InDesign, Firefly (~40 disponibles sur plan gratuit sans compte Adobe) |
| **Affinity by Canva** | Automatisation de tâches répétitives (ajustements batch, renommage de calques, export), génération de fonctionnalités custom |
| **Autodesk Fusion** | Création et modification de modèles 3D par conversation (abonnement Fusion requis) |
| **Blender** | Interface en langage naturel vers l'API Python de Blender : debug de scènes, batch scripts, ajout d'outils à l'interface |
| **Resolume Arena** | Performance visuelle en live : contrôle Resolume Arena en langage naturel pour les shows live |
| **Resolume Wire** | Programmation visuelle pour Resolume : automatisation de la création de patches et du routage |
| **SketchUp** | Décrire une pièce, un meuble ou un concept → point de départ modèle 3D à ouvrir dans SketchUp |
| **Splice** | Recherche d'échantillons royalty-free depuis Claude |

> Pour les TPE/PME : les connecteurs les plus directement utiles sont **Adobe** (visuels, réseaux sociaux), **Affinity by Canva** (production en batch) et **SketchUp** (architecture, décoration, BTP).

#### Claude for Small Business (13 mai 2026)

Offre packagée dans Claude Cowork, activable via un simple toggle. Connecte Claude aux outils que les petites entreprises utilisent déjà et inclut des workflows prêts à l'emploi pour les tâches les plus chronophages.

**Connecteurs préinstallés (7 outils)** :

| Outil | Rôle |
|-------|------|
| **QuickBooks** | Paie, clôture mensuelle, trésorerie, préparation fiscale |
| **PayPal** | Règlements, facturation, litiges et remboursements |
| **HubSpot** | Triage des leads, suivi clients, attribution de campagne |
| **Canva** | Génération et publication d'assets marketing multicanal |
| **Docusign** | Envoi de contrats, suivi de signature, classement des originaux |
| **Google Workspace** | Docs, Drive, Calendar, Gmail |
| **Microsoft 365** | Workflows sur documents Office |

**15 workflows agentic prêts à l'emploi + 15 skills réutilisables pour les tâches récurrentes** (finance, opérations, ventes, marketing, RH, service client) :
- **Planification de la paie** : réconciliation QuickBooks + PayPal, prévision 30j, file de relances
- **Clôture mensuelle** : réconciliation des livres, signalement des écarts, P&L en français simple, export pour le comptable
- **Tableau de bord business** : trésorerie, tendance CA, pipeline, engagements de la semaine, sur un seul écran selon un planning
- **Lancement de campagne** : identification des creux de revenus, analyse HubSpot, stratégie promo, génération d'assets Canva
- Et aussi : relance factures, analyse de marges, préparation clôture, revue de contrats, trieur de leads, stratège contenu...

**Comment ça marche** : activer le toggle dans Cowork → connecter vos outils → choisir un workflow → Claude fait le travail → vous validez avant chaque envoi, paiement ou publication. Les permissions existantes de chaque outil connecté sont respectées.

**Tarif** : sans surcoût au-delà de votre abonnement Claude et des outils tiers déjà utilisés.

> **Pour activer** : ouvrir Claude Cowork → panneau latéral → toggle Claude for Small Business.

#### Plugins fonctionnels par service

Au-delà des connecteurs individuels, Anthropic a lancé des plugins pré-construits qui combinent connecteurs et compétences pour des fonctions métier spécifiques :

| Service | Couverture |
|---------|-----------|
| **RH** | Cycle de vie complet : fiches de poste, onboarding, lettres d'offre, offboarding |
| **Juridique & Design** | Textes UX, audits d'accessibilité, revues de design |
| **Opérations** | Documentation de processus, évaluations fournisseurs, suivi des demandes de changement, charte éditoriale |
| **Ingénierie** | Workflows de développement, processus de revue de code |
| **Finance** | Workflows d'analyse financière (orientés entreprise) |

#### Créer votre propre plugin (sans code)

Vous pouvez créer des plugins personnalisés adaptés à votre workflow :

1. Ouvrez le **panneau Plugins** dans l'interface Cowork
2. Cliquez sur **Créer un plugin**
3. Définissez vos compétences (tâches IA réutilisables) avec descriptions
4. Assignez des commandes / à chaque compétence (ex. `/devis`, `/relance`)
5. Regroupez les compétences avec les connecteurs pertinents
6. Partagez avec votre équipe

Point de départ : les 11 plugins officiels Anthropic sont en open source et disponibles comme templates à adapter.

#### Admin : Marketplace de plugins privée

Les organisations peuvent créer un catalogue privé de plugins approuvés :
- Les admins contrôlent quels plugins et connecteurs sont accessibles aux utilisateurs
- Les plugins peuvent être regroupés avec des permissions de connecteurs préconfigurées
- Outils de partage à l'échelle de l'organisation en cours de développement

> **Note** : Les connecteurs Google Calendar, Gmail et DocuSign ont été annoncés le 24 février 2026. Zoom a été ajouté au GA (9 avril 2026). Vérifiez la disponibilité actuelle dans vos paramètres Cowork.

---

## Nouvelles capacites (Fevrier 2026)

### Tâches planifiées

Cowork peut automatiser vos tâches récurrentes, elles s'exécutent aux horaires définis, sans intervention manuelle. Une configuration initiale, et votre brief matinal, votre rapport hebdo ou votre bilan mensuel se génèrent tout seuls.

#### Deux types de tâches

**Tâches récurrentes** : s'exécutent automatiquement selon un calendrier, sans action manuelle :
- Fréquences disponibles : horaire, quotidien, hebdomadaire, jours ouvrables, ou personnalisé
- Après la première exécution, Cowork **réécrit automatiquement votre prompt** pour l'optimiser selon ce qu'il a appris

**Tâches à la demande** : s'exécutent une seule fois quand vous les déclenchez manuellement :
- Utiles pour les opérations ponctuelles ou irrégulières
- Même configuration, déclenchées via "Exécuter maintenant" au lieu d'un horaire

#### Comment configurer une tâche

1. Ouvrez **Claude Desktop → barre latérale gauche → section Planifié**
2. Cliquez sur **Nouvelle tâche**
3. Rédigez votre prompt (format CTOC recommandé)
4. Choisissez le type :
   - Récurrente : définissez la cadence (horaire / quotidien / hebdomadaire / jours ouvrables / personnalisé)
   - À la demande : se déclenche quand vous cliquez sur "Exécuter maintenant"
5. Activez

**Gérer les tâches depuis la barre latérale** : voir les prochaines exécutions, l'historique, modifier le prompt ou la cadence, mettre en pause, reprendre, supprimer, ou déclencher une exécution immédiate.

> **Note** : Les tâches planifiées sont en aperçu recherche. La fiabilité peut varier. Vérifiez toujours les sorties automatisées.
>
> ⚠️ **L'appareil doit être allumé** : Si votre ordinateur est en veille ou que Claude Desktop est fermé au moment prévu, la tâche est ignorée et s'exécute au réveil. Planifiez en conséquence pour les tâches matinales ou nocturnes.

#### 4 patterns essentiels

**Pattern 1 : Brief matinal quotidien**
Se déclenche tous les jours à 9h. Consolide les entrées de la veille en un brief exploitable.

```
CONTEXTE : Fichiers ajoutés hier dans ~/Cowork-Workspace/input/quotidien/
TÂCHE : Résumer les nouveaux documents, informations clés, actions à faire aujourd'hui
OUTPUT : ~/Cowork-Workspace/output/brief-[date].md avec sections : Actions du jour, Info clés, Rien d'urgent
CONTRAINTES : Max 1 page. Bullet points uniquement. Signaler tout ce qui est urgent.
```

**Pattern 2 : Compilation hebdomadaire des ventes**
Se déclenche chaque lundi à 8h. Agrège les données de la semaine écoulée.

```
CONTEXTE : Fichiers dans ~/Cowork-Workspace/input/hebdo/ des 7 derniers jours
TÂCHE : Compiler en bilan hebdomadaire, totaux, points notables, relances en attente
OUTPUT : ~/Cowork-Workspace/output/bilan-[date].docx
CONTRAINTES : Format une page dirigeant. Inclure les totaux. Signaler les retards.
```

**Pattern 3 : Récap du vendredi**
Se déclenche chaque vendredi à 17h. Documente la semaine.

```
CONTEXTE : Tous les fichiers modifiés cette semaine dans ~/Cowork-Workspace/
TÂCHE : Créer le récap de fin de semaine, travail effectué, tâches en cours, notes pour lundi
OUTPUT : ~/Cowork-Workspace/output/recap-[date].md
CONTRAINTES : Focus sur ce qui est actionnable la semaine suivante. Format court.
```

**Pattern 4 : Dashboard mensuel**
Se déclenche le 1er de chaque mois. Crée votre vue d'ensemble mensuelle.

```
CONTEXTE : ~/Cowork-Workspace/input/mensuel/ pour le mois écoulé
TÂCHE : Synthèse mensuelle, indicateurs clés, tendances, points en suspens
OUTPUT : ~/Cowork-Workspace/output/dashboard-[mois].xlsx avec onglets Synthèse et Détail
CONTRAINTES : Syntaxe formules européenne (point-virgule). Comparaison mois précédent si possible.
```

#### Notes de fiabilité

Les tâches planifiées fonctionnent bien pour des opérations simples et répétables. Pour des workflows complexes ou dépendant de données externes, vérifiez manuellement les premières sorties pour valider le comportement.

Alternative pour l'automatisation avancée : **n8n** (open source) peut déclencher Cowork Desktop et offre une logique de scheduling plus sophistiquée avec conditions et branches.

#### 3 méthodes : ce que Cowork peut et ne peut pas planifier

Selon votre setup, les tâches automatiques ne fonctionnent pas toutes de la même façon :

| Méthode | Comment ça marche | Prérequis | Fonctionne dans Cowork ? |
|---------|------------------|-----------|--------------------------|
| **Interface native Cowork** | Barre latérale → Planifié → Nouvelle tâche | Claude Desktop ouvert, Mac allumé | ✅ Oui |
| **Mac éteint ou en veille** | La tâche se déclenche quand vous n'êtes pas là | Exécution distante | ❌ Non (utiliser Dispatch ou Claude Code) |
| **Serveur / headless** | Serveur sans interface graphique | Pas de Claude Desktop | ❌ Non (utiliser Claude Code) |

**La réponse honnête** : les tâches planifiées Cowork nécessitent que Claude Desktop soit ouvert et que votre Mac soit allumé. Si le Mac se met en veille ou que l'app est fermée au moment où la tâche doit s'exécuter, elle est ignorée et relancée au réveil.

**Pour les deux cas non supportés :**

- **Vous êtes absent mais le Mac est allumé** → utilisez [Dispatch](#dispatch--contrôler-cowork-depuis-votre-téléphone) : envoyez la tâche depuis votre téléphone, elle s'exécute sur votre bureau
- **Entièrement automatique, Mac éteint, ou serveur** → passez à Claude Code avec un cron système. Exemple : tous les lundis à 7h, Claude Code résume les tickets de la semaine et envoie sur Slack, sans machine, sans interface, sans intervention.

> **Règle de décision** : les tâches planifiées Cowork sont idéales pour les routines "pendant que vous travaillez" (brief matinal, compilation hebdo). Pour une automatisation qui doit tourner même quand vous n'êtes pas là, Claude Code est le bon outil.

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

> **Cas d'usage concret** : Créez un template PPTX réutilisable à partir de votre présentation d'entreprise existante (charte graphique, structure maison), puis générez chaque nouvelle présentation en 3 étapes. Voir le [workflow template réutilisable](../workflows/presentation-slides.md#template-réutilisable-depuis-fichier-existant).

### Add-ins Claude pour Microsoft Office (Word, Excel, PowerPoint, Outlook)

Au-delà de la génération de fichiers par Cowork, Claude est aussi disponible comme **panneau latéral persistant directement dans les applications Office**, installé une fois depuis Microsoft AppSource et présent à chaque ouverture de fichier.

> **Installation** : Dans n'importe quelle application Office, allez dans Insertion > Obtenir des compléments, puis recherchez "Claude by Anthropic".

#### Disponibilité

| Application | Statut | Plans |
|-------------|--------|-------|
| **Claude pour Excel** | ✅ Disponible | Pro, Team, Enterprise |
| **Claude pour PowerPoint** | ✅ Disponible | Pro, Team, Enterprise |
| **Claude pour Word** | ✅ Disponibilité générale (depuis le 7 mai 2026) | Pro, Team, Enterprise |
| **Claude pour Outlook** | 🔵 Bêta publique (depuis le 7 mai 2026) | Pro, Team, Enterprise |

> L'accès en plan gratuit est très limité. Un plan payant est nécessaire pour une utilisation régulière.

#### Ce que fait chaque add-in

**Excel**
- Analyser des jeux de données complexes sans quitter le tableur
- Générer des formules avec explication cellule par cellule
- Créer des tableaux croisés dynamiques, graphiques et modèles financiers à la demande

**PowerPoint**
- Lit votre template existant (mises en page, polices, couleurs, masques de diapositives)
- Génère et modifie des diapositives en respectant votre charte graphique
- Reformule et réorganise le contenu dans les présentations existantes

**Word** (disponibilité générale depuis le 7 mai 2026)
- Rédige et révise des fichiers `.docx` depuis un panneau latéral persistant
- Toutes les modifications apparaissent comme **suivi des modifications natif Word**, acceptables ou refusables une par une
- Préserve la mise en forme native du document tout au long de l'édition

**Outlook** (bêta publique depuis le 7 mai 2026)
- Assistance à la rédaction, synthèse et réponse aux emails
- Accessible depuis le panneau latéral dans Outlook desktop et web
- Partage le même contexte conversationnel qu'Excel, Word et PowerPoint

#### Contexte partagé entre les applications (depuis mars 2026, étendu en mai 2026)

Les quatre add-ins partagent un contexte conversationnel commun. Chargez un fichier Excel dans la barre latérale, passez ensuite à PowerPoint, Word ou Outlook : Claude a toujours vos données disponibles, sans copier-coller entre applications.

**Exemple de workflow : rapport trimestriel complet depuis un seul jeu de données**

1. Ouvrez votre fichier Excel de ventes avec le panneau Claude actif
2. Demandez : *"Résume les tendances clés de ces données"*
3. Passez à PowerPoint (Claude conserve le contexte) → *"Génère 5 diapositives depuis les données Excel, en respectant ce template"*
4. Passez à Word (toujours en contexte) → *"Rédige un résumé exécutif d'une page depuis les mêmes données"*
5. Passez à Outlook → *"Rédige un email au COMEX pour partager les points clés du rapport"*

Quatre fichiers et un email produits depuis un seul chargement de données, sans quitter la suite Office.

#### Distinction avec Cowork

| | Cowork | Add-ins Claude pour Office |
|---|--------|---------------------------|
| **Point de départ** | Données brutes (emails, PDFs, notes, images) | Un fichier Office déjà ouvert |
| **Résultat** | Génère un nouveau `.xlsx` / `.pptx` / `.docx` | Modifie ou enrichit le document en cours |
| **Interface** | Application Claude Desktop autonome | Panneau latéral dans Word, Excel, PowerPoint ou Outlook |
| **Idéal pour** | "Crée ce fichier depuis zéro" | "Aide-moi à travailler sur ce fichier maintenant" |

> Pour la génération de formules spécifiquement, voir aussi : [À ne pas confondre : Add-in Claude in Excel](#à-ne-pas-confondre--add-in-claude-in-excel).

> **Note Enterprise** : Les quatre add-ins Office supportent la connexion via LLM Gateway. Utilisez Claude via Amazon Bedrock, Google Cloud Vertex AI ou Microsoft Azure Foundry sans exposition directe à l'API.

### Agent Teams (aperçu recherche)

Agent Teams permet à plusieurs agents Claude de travailler en parallèle sur une même tâche. Plutôt qu'un seul agent qui traite 50 documents l'un après l'autre, vous répartissez le travail entre plusieurs agents et obtenez les résultats bien plus vite.

#### Quand utiliser Agent Teams

| Situation | Exemple |
|-----------|---------|
| **Gros lots de documents** | Analyser 50 factures fournisseurs d'un coup |
| **Recherche multi-sources** | Étudier 10 concurrents simultanément |
| **Catégorisation en parallèle** | Trier 200 fichiers par type et date au même moment |
| **Synthèse complexe** | Combiner des données de formats variés en un seul rapport |

Pour 5-10 fichiers ou des opérations séquentielles simples, Cowork standard suffit largement.

#### Comment activer Agent Teams

Demandez explicitement à Cowork d'utiliser plusieurs agents :

```
Traite toutes les factures PDF dans ~/Cowork-Workspace/input/factures/
Utilise des agents en parallèle pour analyser chaque facture simultanément.
Extrais : Date, Fournisseur, Montant, Conditions paiement, TVA
Compile dans ~/Cowork-Workspace/output/analyse-factures.xlsx
```

#### Cas d'usage TPE/PME

- **Comptabilité** : Traiter un mois de tickets de caisse en une fraction du temps habituel
- **Achats** : Comparer des devis de plusieurs fournisseurs en même temps
- **Conformité** : Vérifier plusieurs contrats sur une checklist réglementaire en parallèle
- **Communication** : Générer des variantes d'un document pour différents profils clients à la fois

#### Limitations

Agent Teams est en aperçu recherche. La coordination entre agents peut parfois être imparfaite, un agent peut mal transmettre le contexte à un autre. Pour les travaux critiques, vérifiez soigneusement le résultat assemblé. La feature est plus fiable sur des tâches clairement parallèles que sur des workflows très interdépendants.

### Mémoire cross-session (via Desktop Commander)

Par défaut, chaque session Cowork repart de zéro, Cowork ne se souvient pas de vos préférences, des noms de clients, ni du contexte des sessions précédentes. Avec **Desktop Commander** installé, vous résolvez ça avec un fichier `memory.md`.

#### Comment ça fonctionne

1. Créez `~/Cowork-Workspace/memory.md` avec votre contexte récurrent
2. Au début de chaque session : "Lis ~/Cowork-Workspace/memory.md d'abord. Puis [votre demande]"
3. Cowork charge vos préférences avant de commencer le travail

#### Structure recommandée du fichier memory.md

```markdown
# Ma mémoire Cowork

## Contexte métier
- Type d'activité : [votre secteur]
- Clients principaux : [noms et infos clés]
- Formats documents préférés : [liste]

## Préférences communication
- Ton avec les clients : [formel/informel]
- Langue : [français/anglais/les deux]
- Ce que je ne fais jamais : [liste]

## Tâches récurrentes
- Hebdomadaire : [ce que vous faites chaque semaine]
- Mensuel : [ce que vous faites chaque mois]

## Informations importantes
- SIRET : [si pertinent pour les factures]
- Conditions paiement standard : [vos conditions]
```

#### Templates par métier

**Artisan (plombier, électricien, maçon)**
```markdown
# Mémoire : [Votre nom], [Métier]

## Clients
- Client Dupont : appartement [adresse], préfère les appels l'après-midi, demande toujours devis détaillé
- Client Martin : rénovation villa en cours, besoin de factures formelles avec TVA

## Standards
- Format devis : main d'oeuvre et matériaux séparés
- Conditions paiement : 30 jours fin de mois
- TVA : 10% travaux, 20% fournitures
```

**Commerce (boutique, négoce)**
```markdown
# Mémoire : [Nom de la boutique]

## Priorités stock
- Produits phares : [top 5]
- Saisonnalité : [périodes et catégories]
- Seuil réapprovisionnement : [quantité]

## Fournisseurs
- Principal : [nom, contact, délai]
- Secours : [nom]
```

**Services (consultant, comptable, coach)**
```markdown
# Mémoire : [Votre nom], [Profession]

## Clients actifs
- Client A : consulting mensuel, rapports formels en Word
- Client B : documents bilingues FR/EN requis

## Templates documents
- Proposition : voir ~/Cowork-Workspace/templates/proposition-template.docx
- Rapport : [préférences structure]
```

> **Prérequis** : Extension Desktop Commander (voir [Démarrage Étape 8](01-getting-started.fr.md#étape-8--installer-desktop-commander-recommandé)).

---

## Personnaliser Cowork

L'**onglet Personnaliser** dans Claude Desktop est l'endroit où vous étendez et adaptez Cowork à vos besoins. Il se trouve dans la navigation principale de l'application. Trois zones principales : Compétences, Connecteurs, et personnalisations.

### Compétences (Skills) : Capacités supplémentaires

Les compétences ajoutent des pouvoirs spécifiques à Cowork, activés via des commandes /. Pensez-y comme des outils spécialisés que vous activez au besoin.

#### Compétences officielles (Anthropic)

| Compétence | Commande / | Ce que ça fait |
|-----------|-----------|----------------|
| **PDF** | `/pdf` | Traitement avancé et extraction PDF |
| **Word** | `/docx` | Création et édition enrichies de documents Word |
| **PowerPoint** | `/pptx` | Génération de slides plus complète |
| **Excel** | `/xlsx` | Opérations tableur avancées |
| **Design Canvas** | `/canvas-design` | Création de mises en page et visuels |
| **Art Algorithmique** | `/algorithmic-art` | Génération de motifs et visuels |
| **Créateur de compétences** | `/skill-creator` | Créer vos propres compétences personnalisées |

#### Comment utiliser les compétences

```
/pdf Extrais tous les tableaux des contrats dans ~/Cowork-Workspace/input/contrats/
     Sauvegarde chaque tableau en CSV séparé dans ~/Cowork-Workspace/output/
```

#### Chargement intelligent des compétences (Smart Skills Loading)

Les compétences ne consomment plus l'intégralité de votre fenêtre de contexte. Claude charge uniquement les compétences nécessaires à la tâche en cours, au moment où il en a besoin. Sur les sessions longues avec de nombreuses compétences installées, cela étend significativement la capacité de travail effective.

**Impact pratique** : Vous pouvez installer 20+ compétences sans craindre une surcharge de contexte à chaque tâche.

#### Enchaînement de compétences (Skill Chaining)

Combinez des compétences en séquence pour des opérations en plusieurs étapes :

```
/pdf Extrais les données de ces tickets de caisse
/xlsx Organise-les dans un suivi de dépenses mensuel avec totaux et catégories
Entrée : ~/Cowork-Workspace/input/tickets/
Sortie : ~/Cowork-Workspace/output/depenses-[mois].xlsx
```

#### Compétences communautaires

Au-delà des compétences officielles, la communauté en crée et partage :

| Ressource | Ce que vous trouverez |
|-----------|----------------------|
| **github.com/anthropics/skills** | Dépôt officiel Anthropic |
| **claudemarketplaces.com** | Compétences de la communauté |
| **skills.sh** | Installation en une commande |
| **[remoteopenclaw.com/skills/claude](https://www.remoteopenclaw.com/skills/claude)** | Répertoire communautaire de compétences Claude avec catégories, guides d'installation et ressources de workflow |
| **skillhub.club** | Collections de compétences sélectionnées |

Installation : onglet Personnaliser → recherche par nom ou collez l'URL de la compétence.

### Connecteurs : Connecter des outils externes

Les connecteurs permettent à Cowork d'interagir avec des outils au-delà de vos fichiers locaux. Trois types :

| Type | Ce que ça fait | Installation |
|------|---------------|-------------|
| **Recherche web** | Recherche sur le web (alternative à Chrome) | Basculer dans l'onglet Personnaliser |
| **Desktop (fichiers locaux)** | Accéder aux fichiers hors du workspace | Via Desktop Commander |
| **JSON personnalisé** | Connecter n'importe quel service | Utilisateurs avancés |

#### Niveaux de permission par outil

Chaque outil connecteur se configure indépendamment :

| Permission | Comportement |
|-----------|-------------|
| **Autoriser** | Cowork utilise cet outil automatiquement, sans demander |
| **Demander** | Cowork vous demande permission à chaque utilisation |
| **Bloquer** | Cowork n'utilise jamais cet outil |

Exemple : Mettez la recherche web sur **Demander** pour que Cowork confirme avant d'aller en ligne. Mettez la lecture de fichiers locaux sur **Autoriser** pour un accès fluide.

#### Configurer les connecteurs (sans code)

1. Allez dans **onglet Personnaliser → Connecteurs**
2. Parcourez les connecteurs disponibles
3. Cliquez sur un connecteur → définissez les permissions par outil
4. Enregistrez, le connecteur est actif immédiatement

> **Note** : Desktop Commander (un connecteur) est couvert séparément dans [Démarrage Étape 8](01-getting-started.fr.md#étape-8--installer-desktop-commander-recommandé). C'est le premier connecteur recommandé pour la plupart des utilisateurs.

### L'écosystème de l'onglet Personnaliser

| Zone | Où la trouver | Action clé |
|------|--------------|-----------|
| **Compétences** | Personnaliser → Compétences | Installer, gérer les commandes / |
| **Connecteurs** | Personnaliser → Connecteurs | Ajouter des outils, définir les permissions |
| **Desktop Commander** | Personnaliser → Extensions | Activer la mémoire cross-session |
| **Personnalisations** | Personnaliser → Profil | Comportements par défaut, langue |

> **Note** : La description ci-dessus reflète l'interface d'avril 2026.

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

1. **Faire correspondre la tâche à la capacité** : Vérifier la matrice avant de commencer
2. **Préparer les entrées** : S'assurer que les fichiers sont dans des formats lisibles
3. **Spécifier les formats** : Être explicite sur les exigences de sortie
4. **Tester d'abord en petit** : Vérifier avec peu de fichiers avant le traitement par lots

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
