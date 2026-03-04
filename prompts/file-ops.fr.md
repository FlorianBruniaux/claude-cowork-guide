# Prompts d'opérations sur fichiers

🌐 **Langues** : [Français](file-ops.fr.md) | [English](file-ops.md)

> **15+ prompts prêts à l'emploi pour l'organisation, le renommage et le nettoyage de fichiers**

---

## Prompts d'organisation

### 1. Organiser par type de fichier

```
Organise tous les fichiers dans ~/Cowork-Workspace/input/ par type de fichier.

Crée ces dossiers :
- Documents (pdf, doc, docx, txt, md)
- Spreadsheets (xls, xlsx, csv)
- Images (jpg, jpeg, png, gif, svg)
- Archives (zip, tar, gz, rar)
- Other (tout le reste)

Déplace les fichiers dans les dossiers appropriés. Ne pas copier.
Crée un résumé dans ~/Cowork-Workspace/output/organization-report.txt indiquant :
- Nombre total de fichiers traités
- Fichiers par catégorie
- Fichiers impossibles à catégoriser
```

### 2. Organiser par date

```
Organise les fichiers dans ~/Cowork-Workspace/input/ par date.

Crée une structure de dossiers année/mois :
- 2024/
  - 01-January/
  - 02-February/
  - ...
- 2025/
  - ...

Utilise la date de modification du fichier pour le tri.
Déplace les fichiers dans les dossiers appropriés.
Enregistre le résumé dans ~/Cowork-Workspace/output/date-organization.txt
```

### 3. Organiser par projet

```
Organise les fichiers dans ~/Cowork-Workspace/input/ par projet.

Analyse les noms de fichiers et leur contenu pour identifier les projets.
Crée un dossier pour chaque projet identifié.
Place les fichiers inclassables dans un dossier "Uncategorized/".

Enregistre un index de projets dans ~/Cowork-Workspace/output/project-index.md avec :
- Nom du projet
- Nombre de fichiers
- Types de fichiers présents
- Plage de dates des fichiers
```

### 4. Organiser le dossier Téléchargements

```
Organise mes fichiers téléchargés dans ~/Cowork-Workspace/input/downloads/

Crée la structure :
- Applications/ (dmg, pkg, exe, app)
- Documents/ (pdf, doc, docx, txt)
- Images/ (jpg, png, gif, svg)
- Videos/ (mp4, mov, avi, mkv)
- Music/ (mp3, wav, flac, m4a)
- Archives/ (zip, rar, tar, gz)
- Code/ (js, py, html, css, json)
- Other/

Déplace les fichiers de manière appropriée. Supprime les dossiers source vides ensuite.
Rapport dans ~/Cowork-Workspace/output/downloads-cleanup.txt
```

---

## Prompts de renommage

### 5. Standardiser les noms de fichiers

```
Renomme les fichiers dans ~/Cowork-Workspace/input/ selon ce format :
YYYY-MM-DD_descriptive-name.ext

Règles :
- Utiliser la date du fichier pour YYYY-MM-DD
- Convertir les espaces en tirets
- Supprimer les caractères spéciaux
- Convertir en minuscules
- Garder l'extension d'origine

Crée un journal de renommage dans ~/Cowork-Workspace/output/rename-log.csv avec :
Original Name, New Name, Date
```

### 6. Ajouter un préfixe aux fichiers

```
Ajoute le préfixe "[PROJECT-X]_" à tous les fichiers dans ~/Cowork-Workspace/input/

Garde le nom de fichier original après le préfixe.
Exemple : document.pdf → [PROJECT-X]_document.pdf

Enregistre les changements dans ~/Cowork-Workspace/output/prefix-log.txt
```

### 7. Numérotation séquentielle

```
Renomme les fichiers dans ~/Cowork-Workspace/input/ avec des numéros séquentiels.

Format : 001_original-name.ext, 002_original-name.ext, etc.

Trier par : [date du fichier / alphabétiquement / taille du fichier]
Commencer la numérotation à : 001

Enregistre le mapping dans ~/Cowork-Workspace/output/number-mapping.csv
```

### 8. Supprimer les dates des noms de fichiers

```
Supprime les motifs de date des noms de fichiers dans ~/Cowork-Workspace/input/

Motifs à supprimer :
- YYYY-MM-DD
- YYYYMMDD
- DD-MM-YYYY
- MM-DD-YYYY

Garde le reste du nom de fichier intact.
Enregistre les changements dans ~/Cowork-Workspace/output/date-removal-log.txt
```

---

## Prompts de nettoyage

### 9. Trouver les doublons

```
Trouve les fichiers en doublon dans ~/Cowork-Workspace/input/

Vérifie :
- Les doublons exacts (même contenu)
- Les noms de fichiers similaires
- Les fichiers de même taille

NE RIEN SUPPRIMER.
Crée un rapport dans ~/Cowork-Workspace/output/duplicates-report.md avec :
- Groupes de doublons potentiels
- Tailles des fichiers
- Emplacements
- Recommandation (lequel garder)
```

### 10. Archiver les anciens fichiers

```
Identifie les fichiers de plus de [6 mois / 1 an] dans ~/Cowork-Workspace/input/

Crée un dossier d'archive : ~/Cowork-Workspace/input/archive-[date]/
Déplace les anciens fichiers dedans (ne pas supprimer).

Crée un manifeste dans ~/Cowork-Workspace/output/archive-manifest.txt avec :
- Fichiers archivés
- Emplacements d'origine
- Dates des fichiers
- Taille totale archivée
```

### 11. Trouver les fichiers volumineux

```
Trouve les fichiers de plus de [100MB / 500MB / 1GB] dans ~/Cowork-Workspace/input/

Crée un rapport dans ~/Cowork-Workspace/output/large-files.md avec :
- Chemin du fichier
- Taille
- Type
- Date de dernière modification

Trier par taille, du plus gros au plus petit.
Inclure la taille totale de tous les fichiers volumineux.
```

### 12. Nettoyage des dossiers vides

```
Trouve les dossiers vides dans ~/Cowork-Workspace/input/

Liste tous les dossiers vides trouvés.
NE PAS SUPPRIMER sans ma confirmation.

Rapport dans ~/Cowork-Workspace/output/empty-folders.txt avec :
- Chemin du dossier
- Dossier parent
```

---

## Prompts de filtrage

### 13. Extraire par type de fichier

```
Copie tous les fichiers [PDF / image / tableur] depuis ~/Cowork-Workspace/input/
vers ~/Cowork-Workspace/output/extracted-[type]/

Inclure les fichiers dans les sous-dossiers.
Maintenir la structure de sous-dossiers d'origine dans la destination.
Créer une liste des fichiers extraits dans ~/Cowork-Workspace/output/extracted-files.txt
```

### 14. Filtrer par motif de nom de fichier

```
Trouve tous les fichiers correspondant au motif "*[pattern]*" dans ~/Cowork-Workspace/input/

Copie les fichiers correspondants dans ~/Cowork-Workspace/output/matching-files/
Crée une liste avec les chemins complets dans ~/Cowork-Workspace/output/pattern-matches.txt
```

### 15. Filtrer par contenu

```
Trouve tous les fichiers texte dans ~/Cowork-Workspace/input/ contenant "[terme recherché]"

Crée un rapport dans ~/Cowork-Workspace/output/content-search.md avec :
- Chemin du fichier
- Numéros de lignes contenant le terme
- Contexte (ligne avant et après)

Copie les fichiers correspondants dans ~/Cowork-Workspace/output/matching-content/
```

---

## Prompts utilitaires

### 16. Créer une structure de dossiers

```
Crée cette structure de dossiers dans ~/Cowork-Workspace/input/ :

Projects/
├── Active/
│   ├── project-a/
│   │   ├── docs/
│   │   ├── assets/
│   │   └── deliverables/
│   └── project-b/
│       ├── docs/
│       ├── assets/
│       └── deliverables/
├── Completed/
└── Templates/

Confirme la structure créée.
```

### 17. Inventaire de fichiers

```
Crée un inventaire complet de ~/Cowork-Workspace/input/

Résultat dans ~/Cowork-Workspace/output/inventory.xlsx avec les colonnes :
- Filename
- Path
- Extension
- Size (KB)
- Date Modified
- Type Category

Inclure une feuille de résumé avec :
- Nombre total de fichiers
- Taille totale
- Fichiers par type
- Fichiers par année
```

---

## Utilisation avancée : Organisation basée sur des règles

Issu d'une utilisation réelle — tri complexe avec règles explicites :

### 18. Système de tri multi-règles

```
CONTEXTE : Mon dossier ~/Cowork-Workspace/input/downloads/ contient plus de 200 fichiers accumulés sur plusieurs mois.
J'ai besoin de les organiser pour une passation de projet.

TÂCHE : Organise les fichiers selon ces règles par ordre de priorité :

RÈGLES :
1. Fichiers client (contenant "ClientX" ou "ProjectY") → Clients/[ClientName]/
2. Financier (factures, reçus, devis) → Finance/[Year]/
3. Ressources design (.psd, .ai, .fig, .sketch) → Design/
4. Documentation (.doc, .pdf, .md) → Docs/[Topic]/
5. Code/scripts → Code/
6. Tout le reste → Archive/[Month-Year]/

RÉSULTAT :
- Déplacer les fichiers selon les règles
- Créer ~/Cowork-Workspace/output/organization-manifest.xlsx avec :
  - Chemin d'origine, Nouveau chemin, Règle appliquée, Date de déplacement
- Totaux par catégorie

CONTRAINTES :
- Traiter par lots de 20 fichiers (pour l'efficacité des tokens)
- Demander confirmation avant chaque lot
- Ne jamais supprimer, uniquement déplacer
- Signaler les fichiers ambigus pour décision manuelle
```

---

## Optimisation des tokens pour les grandes opérations

L'organisation de fichiers consomme rapidement des tokens. Optimisez avec ces stratégies :

### Stratégie de traitement par lots

| Nombre de fichiers | Approche | Pourquoi |
|-------------------|----------|----------|
| 1-20 | Requête unique | Convient facilement |
| 20-50 | 2-3 requêtes groupées | Efficacité optimale |
| 50-100 | Checkpoint tous les 20 | Récupération en cas d'échec |
| 100+ | Lots par sous-dossier | Évite le débordement de contexte |

### 19. Traitement optimisé de grands lots

```
CONTEXTE : ~/Cowork-Workspace/input/ contient plus de 80 fichiers à organiser.

TÂCHE : Organise par type, mais travaille efficacement :

APPROCHE :
1. D'abord : liste tous les fichiers et crée un plan de tri (ne rien déplacer encore)
2. Enregistre le plan dans ~/Cowork-Workspace/output/sorting-plan.md
3. Attends mon approbation
4. Puis traite par lots de 20 fichiers
5. Après chaque lot, fais un rapport d'avancement et attends "continue"

CONTRAINTES :
- Faire un checkpoint après chaque lot
- En cas d'interruption, le fichier de plan montre ce qui est fait vs ce qui reste
- Estimation totale : 4-5 lots
```

### 20. Reprendre après interruption

```
CONTEXTE : L'organisation des fichiers a été interrompue.
~/Cowork-Workspace/output/sorting-plan.md indique la progression.
Les fichiers marqués [DONE] sont déjà traités.

TÂCHE : Continue là où on s'est arrêté.
Traite uniquement les éléments NON marqués [DONE] dans le plan.

RÉSULTAT : Mets à jour sorting-plan.md au fur et à mesure.
Marque les éléments terminés avec [DONE].
```

---

## Notes de personnalisation

**Remplacer les placeholders :**
- `~/Cowork-Workspace/input/` → Votre dossier d'entrée réel
- `~/Cowork-Workspace/output/` → Votre dossier de sortie réel
- `[crochets]` → Vos valeurs spécifiques

**Ajouter des contraintes au besoin :**
- "Exclure les fichiers cachés"
- "Traiter uniquement le niveau supérieur, pas les sous-dossiers"
- "Ignorer les fichiers de plus de X"
- "Traiter uniquement les fichiers des 30 derniers jours"

**Conscience du budget de tokens :**
- Inventaire simple : ~20K-30K tokens
- Petite organisation (10-20 fichiers) : ~30K-50K tokens
- Grande organisation (50+ fichiers) : ~80K-150K tokens
- Tier Pro : Prévoir 1-2 grandes opérations par fenêtre de 5 heures

---

*[Retour à l'index des prompts](README.md) | [Documentation Cowork](../README.md)*
