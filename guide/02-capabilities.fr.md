# Capacités de Cowork

🌐 **Langues** : [Français](02-capabilities.fr.md) | [English](02-capabilities.md)

> **Temps de lecture** : ~8 minutes
>
> **Objectif** : Comprendre exactement ce que Cowork peut et ne peut pas faire

---

## Sélection du modèle et usage

Les modèles, la capacité de contexte et les limites d'usage disponibles dans Cowork peuvent varier selon le plan et la surface. Ce guide ne maintient pas de fenêtre de tokens, de prix ou de ratio de quota figés. Choisissez parmi les modèles affichés dans votre surface Claude, testez une tâche représentative, puis découpez le travail plus large en lots révisables.

**Plans** : Cowork est proposé sur Pro, Max, Team et Enterprise. Les pages d'Anthropic se contredisent sur le plan Free (la page d'installation coche Cowork sous Free) : ne comptez pas sur Cowork avec un compte Free.

### Modèles actuels (au 11 octobre 2026)

La famille la plus récente est Claude 5.5 :

| Modèle | Sortie | Ce que dit Anthropic |
|--------|--------|----------------------|
| **Claude Opus 5.5** | 22 septembre 2026 | Atteint le niveau de Claude Fable 5.1 sur la plupart des tâches et coûte 40 % de moins à faire tourner qu'Opus 5 |
| **Claude Sonnet 5.5** | 28 septembre 2026 | Plus de 30 % plus rapide que Sonnet 5 et jusqu'à 30 % moins cher sur la plupart des tâches |
| **Claude Haiku 5.5** | 7 octobre 2026 | Le plus petit, le moins cher et le plus rapide des modèles d'Anthropic, conçu pour les tâches à fort volume |

Les modèles précédents restent dans la liste : Claude Fable 5.1 et Claude Mythos 5.1 (1er septembre 2026) et Claude Opus 5 (24 juillet 2026). Ne les présentez plus comme les plus récents.

**Niveaux d'effort** : Low, Medium, High, Extra high et Max. Ce que chaque niveau consomme de votre limite d'usage n'est pas documenté dans ce guide.

Le modèle par défaut de chaque plan est `UNKNOWN` : Anthropic ne l'a pas publié. Sources : notes de version de support.claude.com et claude.com/docs/cowork/changelog.

Pour l'accès produit, consultez le [guide Anthropic actuel de disponibilité Cowork](https://support.claude.com/en/articles/13345190-get-started-with-claude-cowork). Le lien exact entre un modèle et Cowork est `UNKNOWN` dans ce guide tant qu'Anthropic ne le documente pas pour la surface utilisée.

---

## Un seul Claude, exécution cloud et approbations

### Une seule conversation, pas de mode à choisir

Les onglets séparés Chat et Cowork ont été fusionnés le 7 juillet 2026. Depuis le 16 septembre 2026 (déploiement progressif sur Pro et Max, sur le web, le desktop et le mobile), vous ne choisissez plus de mode au départ : Claude décide si un message appelle une réponse rapide ou une tâche plus longue. Anthropic l'écrit ainsi : « Claude Cowork is now just Claude ». Vos conversations, tâches Cowork, projets, connecteurs et skills sont conservés.

Pour les déploiements tiers administrés, la clé `desktopHome` active la vue unifiée (`standard`) ou coupe Chat et Cowork (`off`). Sans la clé, la séparation actuelle reste en place jusqu'au 10 novembre 2026, date à laquelle la vue unifiée s'active pour toutes les organisations.

### Où s'exécutent les tâches : le cloud

Avant le 6 octobre 2026, Cowork tournait par défaut sur votre ordinateur. Depuis cette date, les nouvelles tâches Cowork des plans Pro et Max s'exécutent dans le cloud, sur les serveurs d'Anthropic, dans un environnement isolé temporaire.

- L'option « Only on your computer » de Settings > General est supprimée. Un compte encore réglé ainsi bascule au prochain lancement de Claude Desktop, avec une notice, sans retour possible.
- Les tâches lancées sur votre ordinateur avant le 6 octobre 2026 y restent jusqu'à leur fin.
- Vos dossiers restent sur votre ordinateur. Une session cloud n'y accède que pour les dossiers que vous avez connectés, et seulement quand Claude Desktop est ouvert. Les fichiers lus sont traités sur les serveurs d'Anthropic.
- Sur Team, Cowork dans le cloud est en bêta et activé par défaut. Sur Enterprise, il est en bêta et désactivé par défaut : un owner doit l'activer.
- Les sessions Cowork exécutées localement n'utilisent pas la mémoire (voir [Mémoire cross-session](#mémoire-cross-session-via-desktop-commander)).

Source : support.claude.com/en/articles/15520349.

### Modes d'approbation

Claude demande avant d'agir selon le mode choisi. Les noms ont changé (constat du 11 octobre 2026) :

| Mode | Ancien nom | Comportement |
|------|------------|--------------|
| **Manual** | Ask before acting | Claude attend Allow ou Deny à chaque demande |
| **Auto** | n/a | Claude avance sans demander à chaque étape. Chaque action est filtrée, une action jugée dangereuse est bloquée, et Claude cherche une autre voie ou demande. S'il est bloqué à répétition, il revient au mode demande. Consomme davantage de limite d'usage |
| **Skip all approvals** | Act without asking | Aucune pause et aucun filtrage automatique des actions |

Sur Team et Enterprise, Auto est proposé par défaut tant qu'un owner ne le coupe pas. « Always allow » pour les outils de connecteurs est désactivé par défaut : les choix « toujours autoriser » déjà enregistrés pour les outils d'écriture ne sont alors pas appliqués. Un outil de connecteur réglé « Restrict to Ask » par l'organisation demande l'approbation même en mode Skip all approvals. Source : support.claude.com/en/articles/13345190 et 13455879.

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
| **Vidéo** | ❌ Non | Ne peut pas traiter (voir la lecture ci-dessous) |
| **Fichiers chiffrés** | ❌ Non | Ne peut pas déchiffrer |

**Lecture vidéo** : depuis le 29 septembre 2026, les vidéos produites dans Cowork se lisent directement dans le panneau de fichiers, avec des miniatures dans la conversation. L'analyse d'un fichier vidéo existant n'est toujours pas documentée : non vérifié.

**Dossiers plus larges** (4 septembre 2026) : Cowork peut attacher le dossier utilisateur complet, Documents et AppData sous Windows, le dossier Library sur macOS, et des disques entiers. La configuration et les données de session de Claude restent hors de portée, de même que certains emplacements d'identifiants : clés SSH, identifiants AWS et GCP, profils bash, zsh et PowerShell.

**Menu « Ouvrir avec »** : le 2 septembre 2026, Claude est apparu dans le menu système « Ouvrir avec » pour les tableurs, PDF, fichiers Word et PowerPoint, fichiers texte et images. Depuis le 22 septembre 2026 la liste est réduite : Claude n'est plus l'application par défaut de fichiers comme `.md` et `.docx`, et n'apparaît plus dans le menu « Ouvrir avec » de macOS pour les fichiers Excel et PowerPoint. « Other… » permet toujours de les ouvrir dans Claude.

### Capacités Web (via le navigateur intégré ou Chrome)

| Action | Peut faire | Notes |
|--------|------------|-------|
| **Rechercher sur le web** | ✅ Oui | Via intégration Chrome |
| **Lire des pages** | ✅ Oui | Extraire le contenu |
| **Sauvegarder du contenu** | ✅ Oui | Vers des fichiers locaux |
| **Remplir des formulaires** | ⚠️ Limité | Nécessite approbation explicite |
| **Faire des achats** | ❌ Non | Restriction de sécurité |
| **Se connecter à des sites** | ❌ Non | Restriction de sécurité |
| **Appels API** | Selon la surface | Les fonctions navigateur et connecteurs demandent disponibilité et permission |

**Navigateur intégré** (déploiement progressif depuis septembre 2026) : Claude Desktop inclut un navigateur que Cowork peut utiliser, sur macOS, Windows et Linux (bêta). Il est disponible sur Pro, Max et Team, et sur Enterprise (actif par défaut à partir du 10 septembre 2026 sauf désactivation par l'organisation ; les pages d'Anthropic décrivent aussi l'activation par un owner, vérifiez donc le réglage de votre organisation).

- Il est séparé de votre navigateur personnel : Claude ne voit pas vos mots de passe enregistrés, sauf si vous les importez.
- Les sites où vous vous connectez dans ce navigateur restent connectés pour les sessions Cowork suivantes sur cet ordinateur.
- Claude Desktop doit rester ouvert et en ligne pour que Claude l'utilise, y compris depuis une session cloud lancée sur le web ou le téléphone.

**Panneau latéral de Claude in Chrome** : ouvrir le panneau latéral de Claude in Chrome démarre directement une session Cowork. Disponible sur Max et Team, en déploiement sur Pro, et sur Enterprise si un admin l'a activé (constat du 11 octobre 2026, date de lancement non trouvée).

Sources : support.claude.com/en/articles/16607400, 13455879, 13345190 et 15520349.

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
- La capacité de contexte varie selon le modèle, le plan et la surface ; valider d'abord un lot représentatif
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
> Voir [comparaison complète](../reference/comparison.fr.md#confusion-courante).

### Considérations régionales

La syntaxe des formules Excel varie selon les régions :
- **US/UK** : `=SUM(A1,A2)` (séparateur virgule)
- **EU** : `=SOMME(A1;A2)` (séparateur point-virgule)

**Astuce** : Spécifiez votre paramètre régional dans les prompts :
```
Crée un fichier Excel en utilisant la syntaxe de formules européenne (séparateurs point-virgule)
```

---

## Contexte et limites de lot

La capacité de contexte dépend du modèle, du plan et de la surface. Le guide ne prétend pas donner une limite fixe de tokens, documents ou images. Validez un lot représentatif avant une opération large et conservez les sources pour pouvoir revoir un lot qui échoue.

### Lorsqu'une tâche atteint une limite

**Message d'erreur** :
```
Limite de contexte atteinte
```

**Réponses** :
- Sauvegarder les sorties intermédiaires dans des fichiers de contrôle.
- Réduire le lot suivant à une taille révisable.
- Démarrer une nouvelle conversation pour un travail sans lien.

### Planifier par type de tâche

| Tâche | Règle de planification |
|-------|------------------------|
| Inventaire de fichiers | Commencer par un dossier représentatif |
| Grande organisation de fichiers | Découper en lots révisables |
| Lot OCR | Vérifier des exemples et les totaux contre les sources |
| Synthèse de documents | Conserver les sources et la sortie traçables |

N'utilisez pas les nombres de sessions, budgets de tokens ou horaires de réinitialisation historiques de ce dépôt pour estimer l'usage d'un plan payant.

---

## Claude Design (Anthropic Labs)

Claude Design est né comme un produit Anthropic distinct, très pertinent pour les professionnels qui ont besoin de produire des livrables visuels sans passer par un graphiste. Depuis le 16 septembre 2026, on peut demander un design, une présentation (Slides) ou un document (Docs) dans n'importe quelle conversation, y compris dans Claude Code et dans l'onglet Artifacts, sur tous les plans, Free compris. On édite ensuite le résultat avec Claude ou directement. Le 8 octobre 2026, Docs, Slides et Design sont sortis de bêta.

**Accès** : tous les plans, Free compris. Sur Enterprise, ces outils sont désactivés par défaut jusqu'à activation par un owner (Docs s'active par défaut le 15 octobre 2026).

| Outil | Ce qu'il produit | Statut (11 octobre 2026) |
|-------|------------------|--------------------------|
| **Claude Design** | Prototypes, maquettes, visuels, avec édition sur le canevas et import du design system | Hors bêta |
| **Claude Slides** | Présentations, avec leur propre point de départ | Hors bêta |
| **Claude Docs** | Documents vivants partagés en équipe. Export en Word, PDF, Markdown et Google Docs | Hors bêta |
| **Claude Dashboards** | Tableaux de bord à partir d'entrepôts de données (Amazon Redshift, BigQuery, ClickHouse, Databricks, Snowflake) ou d'apps connectées comme Salesforce. Claude écrit une requête SQL par graphique et l'affiche | Bêta, Pro, Max, Team, Enterprise (désactivé par défaut sur Enterprise) |
| **Claude Motion** | Animations codées, sans génération vidéo réaliste, exportables en MP4 | Bêta, Team (activé par défaut) et Enterprise (désactivé par défaut) uniquement |

Dashboards et Motion consomment les limites d'usage de votre plan et sont privés par défaut. Sources : notes de version de support.claude.com, claude.com/resources/product-announcements et articles support 17454700, 17454997 et 16923645.

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

> **Enterprise** : Claude Design, Slides et Docs sont désactivés par défaut. Un owner doit les activer dans les paramètres de l'organisation.

### Relation avec Cowork

Claude Design gère la couche de création visuelle ; Cowork gère l'automatisation documentaire. Depuis le changement du 16 septembre 2026, les deux sont accessibles depuis la même conversation. Utilisez Cowork pour traiter vos données sources (factures, recherches, rapports), puis demandez un design, une présentation ou un document pour transformer le résultat en livrable soigné.

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

#### Disponibilité des connecteurs

L'entrée suivante est une documentation historique, pas une preuve de disponibilité Cowork actuelle. Vérifiez le connecteur dans votre surface Claude et ses permissions avant un workflow de production :

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

**Tarif** : `UNKNOWN` dans ce guide. Vérifiez les tarifs Anthropic et partenaires actuels avant d'activer un workflow.

> **Pour activer** : ouvrir Claude Cowork → panneau latéral → toggle Claude for Small Business.

#### Google Workspace, Salesforce et Microsoft 365 (juillet à octobre 2026)

| Intégration | Date et statut | Ce qu'elle fait |
|-------------|----------------|-----------------|
| **Google Docs, Sheets et Slides** | 6 octobre 2026, bêta | Un add-on Google Workspace et des connecteurs permettent de travailler avec Claude dans les fichiers Google, ou de créer et modifier ces fichiers depuis Claude. Depuis la v2.16120.0 du desktop (29 septembre 2026), le sélecteur Output d'une nouvelle conversation crée directement un Google Doc, Sheet ou Slides quand Google Drive est connecté |
| **Salesforce in Claude** | 15 septembre 2026, bêta, plans payants | Un plugin qui amène comptes, opportunités et pipeline dans Claude, avec 37 skills de vente préconstruits (préparer un appel, revoir un deal, créer un dashboard de pipeline, envoyer un forecast). Réservé aux organisations que Salesforce approuve via son inscription bêta |
| **Microsoft 365, outils d'écriture** | 7 juillet 2026 | Le connecteur passe de la lecture seule à l'écriture : rédiger, envoyer et classer des e-mails, gérer les événements de calendrier, modifier les paramètres de boîte mail, créer et mettre à jour des fichiers OneDrive et SharePoint. Teams reste en lecture seule. Le consentement d'un administrateur est requis avant un déploiement en organisation |

Sources : claude.com/resources/product-announcements, notes de version de support.claude.com et claude.com/docs/cowork/changelog.

#### Publier votre propre plugin : le portail développeur

Depuis le 25 septembre 2026, un portail développeur permet de soumettre des plugins à l'annuaire Claude, de suivre la revue et de consulter les statistiques d'usage une fois le plugin publié. Source : notes de version de support.claude.com.

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

> **Note** : La disponibilité d'un connecteur dépend de la surface, du connecteur et des permissions. Vérifiez les réglages Claude actuels avant de vous y fier.

---

## Nouvelles capacites (Fevrier 2026)

### Tâches planifiées

Cowork peut automatiser vos tâches récurrentes, elles s'exécutent aux horaires définis, sans intervention manuelle. Une configuration initiale, et votre brief matinal, votre rapport hebdo ou votre bilan mensuel se génèrent tout seuls.

> **Depuis le 6 octobre 2026** : les nouvelles tâches planifiées s'exécutent dans le cloud, sans appareil allumé. Vos dossiers restent sur votre ordinateur : une tâche planifiée qui lit un dossier local n'y accède que pendant que Claude Desktop est ouvert (voir [Où s'exécutent les tâches](#où-sexécutent-les-tâches--le-cloud)).

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

> **Note** : Vérifiez toujours les sorties automatisées. Le statut « aperçu recherche » des tâches planifiées, écrit plus haut dans ce guide, n'est pas confirmé par les sources d'octobre 2026 : non vérifié.
>
> **Approbation des tâches créées par Claude** (1er octobre 2026) : quand votre organisation l'autorise, les tâches planifiées que Claude crée utilisent « Automatically approve » par défaut. Leurs exécutions utilisent les outils sans demander et ne s'arrêtent que si quelque chose paraît dangereux. Relisez ce qu'une telle tâche a le droit de faire avant de la laisser tourner seule.

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

#### Où s'exécutent les tâches planifiées

Avant le passage au cloud, une tâche planifiée Cowork sur le desktop exigeait Claude Desktop ouvert et l'ordinateur allumé. Ce n'est plus vrai pour les nouvelles tâches.

| Cas | Prérequis | Fonctionne dans Cowork ? |
|-----|-----------|--------------------------|
| **Nouvelle tâche planifiée** (depuis le 6 octobre 2026, Pro et Max) | Aucun : elle s'exécute dans le cloud, sans appareil allumé | ✅ Oui |
| **Tâche planifiée qui lit un dossier local** | Claude Desktop ouvert, et dossier connecté | ✅ Oui, tant que Desktop est ouvert |
| **Tâche lancée sur votre ordinateur avant le 6 octobre 2026** | Elle y reste jusqu'à sa fin | ✅ Oui. Sort des anciens plannings récurrents : non vérifié |
| **Team et Enterprise** | Cowork dans le cloud est en bêta : activé par défaut sur Team, désactivé par défaut sur Enterprise jusqu'à activation par un owner | ⚠️ Selon votre organisation |
| **Serveur / headless** | Pas de Claude Desktop | ❌ Non (utiliser Claude Code) |

Depuis le 7 juillet 2026 (bêta web et mobile, Max d'abord), les tâches Cowork pouvaient déjà tourner en arrière-plan dans le cloud sans appareil connecté. Anthropic maintient que le desktop reste le meilleur endroit pour l'expérience complète (fichiers locaux et navigateur).

**Pour une tâche qui doit tourner sur un serveur** : utilisez un planificateur système avec un workflow contrôlé par un développeur, ou Claude Code.

> **Règle de décision** : pour une routine qui ne travaille que sur des outils connectés ou des fichiers dans le cloud, la planification tourne désormais sans votre ordinateur. Pour une routine qui lit des dossiers locaux, gardez Claude Desktop ouvert. Pour une automatisation qui doit tourner sur un serveur sans Claude Desktop, Claude Code est le bon outil.

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
| **Claude pour Excel** | Vérifier la documentation produit actuelle | Varie selon le plan et la surface |
| **Claude pour PowerPoint** | Vérifier la documentation produit actuelle | Varie selon le plan et la surface |
| **Claude pour Word** | Vérifier la documentation produit actuelle | Varie selon le plan et la surface |
| **Claude pour Outlook** | Vérifier la documentation produit actuelle | Varie selon le plan et la surface |

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

**Word**
- Rédige et révise des fichiers `.docx` depuis un panneau latéral persistant
- Toutes les modifications apparaissent comme **suivi des modifications natif Word**, acceptables ou refusables une par une
- Préserve la mise en forme native du document tout au long de l'édition

**Outlook**
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

Claude dispose désormais d'une mémoire intégrée, et un fichier `memory.md` avec **Desktop Commander** reste utile comme alternative manuelle.

#### Mémoire intégrée (cloud)

- **Mémoire cloud** (25 août 2026) : la mémoire fonctionne entre Chat et Cowork dans le cloud. Chaque élément mémorisé apparaît sous Settings > Memory > Topics, où vous pouvez l'éditer ou le supprimer individuellement.
- **Réglage par défaut** : activée sur Free, Pro et Max, désactivée sur Team et Enterprise.
- **Sujets sensibles** : le réglage « Include sensitive topics in memory » exclut par défaut les sujets de santé et de croyances.
- **Format** (10 juillet 2026) : la mémoire est un ensemble d'entrées catégorisées que Claude lit et met à jour au fil des conversations, en remplacement du résumé de mémoire quotidien.
- **Pas de mémoire en session locale** : les sessions Cowork exécutées localement n'utilisent pas la mémoire. Depuis le 6 octobre 2026, les nouvelles tâches Pro et Max s'exécutent dans le cloud ; les tâches lancées localement avant cette date restent locales.
- **Fin de l'export de l'ancienne mémoire** : les comptes migrés depuis l'ancienne mémoire pouvaient l'exporter depuis Settings > Memory jusqu'au 9 septembre 2026. Cette option n'existe plus.
- **Import et export avec d'autres assistants** (constat du 11 octobre 2026, date non trouvée) : Claude peut transférer une mémoire vers ou depuis d'autres assistants IA. Anthropic qualifie la fonction d'« experimental and still in active development ». Source : support.claude.com/en/articles/11817273.
- **Reflect** (9 juillet 2026, bêta Free, Pro et Max, web et Claude Desktop) : Settings > Reflect affiche les sujets sur lesquels vous avez passé du temps, votre jour le plus actif, votre heure de pointe et des observations sur votre façon de travailler avec Claude, sur 1, 3, 6 ou 12 mois. La mémoire doit être activée. Settings > Time and focus règle des rappels de pause et des heures calmes.

#### Alternative manuelle : memory.md (via Desktop Commander)

Si vous préférez une mémoire que vous maîtrisez entièrement, ou si vous travaillez en session locale, installez **Desktop Commander** et utilisez un fichier `memory.md`.

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

> **Prérequis** : Extension Desktop Commander (voir [Démarrage Étape 8](01-getting-started.fr.md#étape-8--installer-desktop-commander-recommandé)). Sur les déploiements administrés, les Desktop Extensions (`.dxt` et `.mcpb`) sont désactivées par défaut depuis le 7 juillet 2026 tant qu'un administrateur ne les autorise pas.

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

## Nouvelles capacités (Mars 2026)

### Dispatch : piloter Cowork depuis votre téléphone

Dispatch permet de gérer les tâches Cowork à distance depuis l'application iOS ou Android, pendant que votre ordinateur exécute le travail.

**Fonctionnement** :
1. Ouvrez Claude pour iOS/Android
2. Un fil Cowork persistant est disponible dans l'application mobile
3. Associez votre téléphone au desktop en scannant un QR code dans les réglages de Claude Desktop
4. Envoyez des tâches, suivez l'avancement ou ajoutez des instructions depuis n'importe où. Claude travaille sur votre Mac pendant votre absence.

**Prérequis** : ce workflow dépend du desktop connecté et de la disponibilité de la fonction. Cowork web et mobile sont en bêta sur les plans éligibles, et les nouvelles tâches Pro et Max s'exécutent désormais dans le cloud depuis le 6 octobre 2026. Le comportement de Dispatch avec l'exécution cloud n'est pas vérifié : consultez le guide des surfaces actuel avant de dépendre de cette fonction.

**Limites connues (research preview)** :
- Les tâches s'exécutent dans un fil unique, les tâches complexes peuvent donc se mettre en file et prendre une ou deux minutes de retard
- Claude ne peut pas ouvrir d'applications Mac natives comme Photos via Dispatch
- Les notifications de fin de tâche demandent une vérification manuelle

### Visualisations interactives

Claude génère des graphiques, diagrammes et visuels interactifs directement dans ses réponses, sans export ni outil tiers.

| Surface | Disponible | Exemples |
|---------|------------|---------|
| **Claude Desktop** | ✅ Oui | Graphiques interactifs, curseurs, arbres de décision, widgets météo, fiches recette |
| **Claude pour iOS/Android** | ✅ Oui (25 mars 2026) | Graphiques dynamiques, croquis, visuels interactifs partageables |

Le rendu passe par HTML/CSS/JS (Chart.js et équivalents). Curseurs, champs de saisie et éléments cliquables se manipulent directement dans la conversation.

> **Cas d'usage pour une TPE/PME** : calculateurs de prix avec curseurs, visualisation de planning de chantier, arbres de décision à choix multiples pour l'accueil client, récapitulatifs de devis interactifs.

### Computer Use : contrôle direct du bureau

Computer Use permet à Claude d'agir via un desktop connecté éligible et autorisé. La fonction est désormais en bêta (elle a été lancée en aperçu recherche le 23 mars 2026) et ne signifie pas que toute surface Cowork peut piloter toute application hôte.

**Activation** : voir [Démarrage étape 9](01-getting-started.fr.md#étape-9--activer-computer-use-bêta).

**Disponibilité** (constat du 11 octobre 2026) :

- Bêta sur Pro et Max, sur macOS et Windows.
- Indisponible sur Team, Enterprise et Linux.
- macOS 14 ou plus récent est requis (macOS 13 n'est plus pris en charge pour cette fonction). Le travail en arrière-plan demande macOS 15 ou plus récent. Si la fonction est indisponible, la section Computer use des Settings explique désormais pourquoi.
- Depuis le 6 octobre 2026, sur macOS, Computer Use n'édite ni n'enregistre plus de fichiers ou dossiers cachés de votre dossier personnel, comme `~/.vimrc` ou `~/.aws`.

Le [guide Anthropic actuel](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork) est la source de vérité pour les plans et surfaces.

#### Ce que Claude sait faire

| Action | Exemple |
|--------|---------|
| Ouvrir des applications | Lancer Excel, Word, le Finder, un navigateur |
| Naviguer et cliquer | Boutons, menus, cases à cocher |
| Remplir des formulaires | Saisir des données dans une app ou un formulaire web |
| Transférer des données | Copier du contenu entre applications sans API |
| Naviguer sur le web | Consulter des sites dépourvus d'intégration |
| Travailler avec du logiciel ancien | N'importe quelle application graphique, même sans accès API |

#### Comment Claude décide de l'utiliser

Claude suit une hiérarchie d'accès à trois niveaux avant de recourir au contrôle d'écran (connecteur d'abord, puis navigateur, puis écran) :

| Priorité | Méthode | Quand |
|----------|---------|-------|
| **1 : Connecteurs/Plugins** | Intégration API directe (Slack, Google Calendar, etc.) | En priorité, plus rapide et plus fiable |
| **2 : Navigateur** | Le navigateur intégré de Claude Desktop, ou Chrome | Quand aucun connecteur n'existe mais que le service a une interface web |
| **3 : Contrôle d'écran** | Souris, clavier, boucle de captures | En dernier recours, quand ni connecteur ni navigateur ne suffisent |

Computer Use ne se déclenche donc que si les deux méthodes plus rapides sont indisponibles. Une tâche sur un logiciel de bureau ancien, sans interface web ni API, active directement le contrôle d'écran. Une tâche sur un outil web sans connecteur passera d'abord par le navigateur.

> **Conséquence pratique** : Computer Use est plus lent qu'une intégration par connecteur, chaque action exigeant un cycle de capture d'écran. Si votre processus est sensible au temps, vérifiez d'abord qu'un connecteur ou l'automatisation du navigateur ne peut pas faire le travail.

#### Comportement de sécurité

- **Autorisation explicite par tâche** : Claude demande l'accès avant d'interagir avec chaque nouvelle application
- **Refus entraînés** : Claude ne passera pas d'ordres de bourse, n'enregistrera pas d'identifiants sensibles et ne collectera pas d'images de visages
- **Coût en tokens** : supérieur à Cowork standard, chaque cycle d'action capturant une image de l'écran

> ⚠️ **Recommandation officielle d'Anthropic** : n'utilisez pas Computer Use avec des applications ayant accès à des données de santé, des comptes financiers ou des dossiers personnels. Anthropic reconnaît explicitement que la fonctionnalité est « encore à ses débuts » et déconseille d'ouvrir l'accès à des systèmes sensibles tant qu'elle n'a pas mûri. Commencez par des tâches réversibles et à faible enjeu, sur des applications qui ne détiennent pas de données critiques.

#### Cas d'usage TPE/PME

- Remplir des portails fournisseurs dépourvus d'API
- Mettre à jour un ERP ou un logiciel comptable ancien
- Recopier des données entre applications qui ne communiquent pas
- Automatiser des manipulations répétitives dans une interface graphique (saisie de formulaires, mises à jour de statut)
- Tester des parcours utilisateur sur vos propres produits

> ⚠️ **Réserves liées à la bêta** : Computer Use peut se tromper en naviguant dans une interface qu'il ne connaît pas. Supervisez toujours les premières exécutions d'une nouvelle tâche. Interrompez l'exécution dès que Claude fait quelque chose d'inattendu.

---

## Limites des capacités

### Exécution de code

Cowork peut exécuter du code dans un environnement de tâche isolé. Il ne fournit pas un shell hôte sans restriction et ne promet pas le contrôle de toutes les applications installées ni de tous les outils en ligne de commande. Utilisez Claude Code si un terminal ou un dépôt contrôlé par un développeur est nécessaire.

### Opérations réseau

L'accès navigateur et connecteurs dépend de la surface et des permissions. N'inférez pas un accès universel à une API, base de données ou stockage cloud d'un connecteur configuré. Télécharger une copie locale reste une solution de repli lorsque la connexion est indisponible.

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

| Limite | Guide actuel |
|--------|--------------|
| macOS | macOS 13 Ventura ou plus récent depuis Claude Desktop v1.49585.0 (8 septembre 2026, Electron 44). La page d'installation du support affiche encore macOS 11 : ce guide suit le changelog |
| Windows | Une mise à jour Windows du 8 septembre 2026 (KB5124008) a bloqué l'accès aux fichiers des sessions locales jusqu'au correctif de Microsoft le 14 septembre 2026. Détails dans le [dépannage](04-troubleshooting.fr.md) |
| Linux | Claude Desktop sur Linux est en bêta (Ubuntu 22.04+ ou Debian 12+, installation par apt, pas de mise à jour automatique, ni computer use ni dictée) |
| Web et mobile | Cowork est en bêta sur les plans éligibles |
| Exécution cloud | Les nouvelles tâches Pro et Max s'exécutent dans le cloud depuis le 6 octobre 2026. Les dossiers locaux ne sont accessibles que pendant que Claude Desktop est ouvert |
| VPN | `UNKNOWN` comme limitation universelle ; diagnostiquer un problème de connexion avec le guide produit actuel plutôt que désactiver un VPN par défaut |
| Arrière-plan et persistance | Varient selon la surface et la fonction ; vérifier le comportement actuel avant un workflow non supervisé |

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
         ├─ Besoin d'un shell contrôlé par un développeur → Utiliser Claude Code
         ├─ Intégration API → Manuel ou Claude Code
         ├─ Changements système → Opération manuelle
         └─ Recherche web → Cowork + navigateur intégré ou Chrome ✅
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
| Shell contrôlé par un développeur | Claude Code |
| Intégration API | Claude Code + scripts |
| Synchronisation de fichiers cloud | Apps cloud natives |
| Audio/vidéo | Outils spécialisés |
| Données en temps réel | Processus manuel |

---

*[← Démarrage](01-getting-started.fr.md) | [Documentation Cowork](../README.md) | [Sécurité →](03-security.fr.md)*
