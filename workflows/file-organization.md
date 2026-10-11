# Workflow: Organisation de Fichiers

> **Temps estimé**: 15 minutes
> **Difficulté**: Débutant
> **Catégorie**: 🗂️ Organisation
> **Professions**: Toutes professions

🌐 **Also available in [English](file-organization.en.md)**

---

## Cas d'usage

Vous avez un dossier en désordre avec des fichiers de toutes sortes (dossier Téléchargements, dossier de projet ou toute collection désorganisée). Ce workflow vous aide à:

- Trier les fichiers par type, date ou projet
- Créer des arborescences de dossiers logiques
- Générer des rapports d'organisation
- Corriger les incohérences de nommage

> ⚠️ **Gardez des attentes réalistes**: Il n'existe aucun benchmark indépendant sur la productivité de l'IA pour l'organisation de fichiers. Les promesses des éditeurs sur un « gain de temps de 5x » relèvent du marketing, pas de la recherche. L'IA aide surtout pour la **catégorisation routinière**; les fichiers complexes ou ambigus demandent toujours un jugement humain.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Fichiers à organiser (en nombre quelconque)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Préparer votre Workspace

```bash
# Créer le workspace si nécessaire
mkdir -p ~/Cowork-Workspace/{input,output}

# Copier les fichiers à organiser (ne déplacez pas encore les originaux)
cp -R ~/Downloads/* ~/Cowork-Workspace/input/

# OU pour un dossier précis
cp -R ~/SomeMessyFolder/* ~/Cowork-Workspace/input/
```

**Important**: Copiez d'abord, ne déplacez pas. Les originaux restent intacts jusqu'à ce que vous soyez satisfait.

### Étape 2: Faire l'inventaire des fichiers

Démarrez une conversation Cowork et demandez un aperçu:

```
Liste tous les fichiers dans ~/Cowork-Workspace/input/ et montre-moi:
- Le nombre total
- Les types de fichiers présents
- Une répartition approximative par type
- Les régularités dans le nommage
```

Relisez ce résultat avant de continuer. Il vous aide à comprendre ce avec quoi vous travaillez.

### Étape 3: Choisir la stratégie d'organisation

**Option A: Organiser par type**
```
Organise tous les fichiers de ~/Cowork-Workspace/input/ par type de fichier.

Crée ces dossiers:
- Documents (pdf, doc, docx, txt, md, rtf)
- Tableurs (xls, xlsx, csv, numbers)
- Images (jpg, jpeg, png, gif, svg, webp)
- Vidéos (mp4, mov, avi, mkv)
- Audio (mp3, wav, m4a, flac)
- Archives (zip, rar, tar, gz, 7z)
- Code (js, py, html, css, json, xml)
- Autres (tout le reste)

Déplace les fichiers dans les dossiers appropriés.
Sauvegarde le rapport d'organisation dans ~/Cowork-Workspace/output/organization-report.txt
```

**Option B: Organiser par date**
```
Organise tous les fichiers de ~/Cowork-Workspace/input/ par date.

Crée une arborescence année/mois:
- 2024/
  - 01-Janvier/
  - 02-Février/
  - ...
- 2025/
  - 01-Janvier/
  - ...

Utilise la date de modification du fichier pour le tri.
Déplace les fichiers dans les dossiers.
Crée le rapport dans ~/Cowork-Workspace/output/date-organization.txt
```

**Option C: Organiser par projet**
```
Analyse les fichiers de ~/Cowork-Workspace/input/ et organise-les par projet.

Identifie les projets à partir de:
- Les modèles de noms de fichiers
- Le contenu (lis les fichiers texte)
- Les groupes de fichiers liés

Crée un dossier pour chaque projet identifié.
Place les fichiers impossibles à classer dans le dossier "Non-classés/".
Crée l'index des projets dans ~/Cowork-Workspace/output/project-index.md
```

### Étape 4: Examiner le plan

Cowork vous présentera les actions prévues. **Lisez attentivement**:

- L'arborescence correspond-elle à vos attentes ?
- Les catégorisations de fichiers sont-elles correctes ?
- Le périmètre est-il adapté ?

Si quelque chose ne va pas, dites:
```
Attends. Modifie le plan:
- [Votre correction]
```

### Étape 5: Exécuter et vérifier

Si le plan vous convient:
```
Procède avec le plan
```

Une fois terminé:
```bash
# Vérifier les résultats
ls -la ~/Cowork-Workspace/input/

# Consulter le rapport
cat ~/Cowork-Workspace/output/organization-report.txt
```

### Étape 6: Appliquer à l'original (facultatif)

Si l'organisation vous satisfait:
```bash
# Supprimer l'ancien dossier en désordre (ATTENTION !)
rm -rf ~/Downloads/*

# Déplacer les fichiers organisés vers l'emplacement d'origine
mv ~/Cowork-Workspace/input/* ~/Downloads/
```

---

## Exemple de session

```
UTILISATEUR: Liste tous les fichiers de ~/Cowork-Workspace/input/

COWORK: 247 fichiers trouvés:
- Documents: 45
- Images: 120
- Vidéos: 15
- Archives: 22
- Autres: 45

UTILISATEUR: Organise par type. Crée des dossiers pour Documents, Images,
Vidéos, Archives et Autres. Déplace les fichiers au bon endroit.
Crée le rapport dans ~/Cowork-Workspace/output/organization.txt

COWORK: [Présente le plan avec 5 dossiers et la répartition des fichiers]

UTILISATEUR: Procède

COWORK: [Exécute et signale la fin de l'opération]
```

---

## Troubleshooting

### « Permission denied » sur certains fichiers

```bash
# Vérifier les permissions des fichiers
ls -la ~/Cowork-Workspace/input/

# Corriger les permissions si nécessaire
chmod 644 ~/Cowork-Workspace/input/*
```

### Fichiers mal catégorisés

Soyez plus précis sur les règles:
```
Recatégorise: déplace les fichiers .md dans Documents, pas dans Code.
Déplace les fichiers .json dont le nom contient "config" dans un dossier Configuration.
```

### Fichiers cachés ignorés

```
Traite aussi les fichiers cachés (commençant par .)
Inclus-les dans les catégories appropriées.
```

### Trop de fichiers dans « Autres »

Précisez des catégories supplémentaires:
```
Crée des dossiers supplémentaires:
- Polices (ttf, otf, woff)
- Installateurs (dmg, pkg, exe)
- Données (json, xml, yaml)
```

---

## Variantes

### Nettoyer les noms de fichiers en organisant

```
Organise par type ET uniformise les noms de fichiers:
- Supprime les caractères spéciaux
- Remplace les espaces par des tirets
- Convertis en minuscules
- Ajoute un préfixe de date (AAAA-MM-JJ)
```

### Repérer les doublons

```
Avant d'organiser, repère les fichiers en double.
Crée un rapport des doublons dans ~/Cowork-Workspace/output/duplicates.txt
Regroupe les doublons mais n'en supprime aucun.
Organise ensuite les fichiers uniques par type.
```

### Archiver les anciens fichiers

```
Organise les fichiers récents (6 derniers mois) par type.
Déplace les fichiers plus anciens vers ~/Cowork-Workspace/input/archive/
Crée un inventaire des fichiers archivés.
```

---

## Bonnes pratiques

1. **Toujours copier d'abord** : Travaillez sur des copies tant que vous n'êtes pas satisfait
2. **Examiner le plan** : N'approuvez pas automatiquement
3. **Contrôler le rapport** : Vérifiez la justesse des catégorisations
4. **Commencer par de petits tests** : Testez avec 20 fichiers avant 2000
5. **Garder des sauvegardes** : Jusqu'à ce que vous soyez sûr des résultats
6. **Prévoir la relecture** : Comptez 30 à 50 % du temps pour vérifier et corriger les fichiers mal classés
7. **Surveiller votre quota** : Les gros lots (500+ fichiers) consomment beaucoup de tokens; les utilisateurs Pro peuvent atteindre leurs limites

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
