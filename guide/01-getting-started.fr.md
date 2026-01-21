# Démarrage avec Cowork

🌐 **Langues** : [Français](01-getting-started.fr.md) | [English](01-getting-started.md)

> **Temps de lecture** : ~10 minutes
>
> **Objectif** : Passer de zéro à votre premier workflow Cowork réussi

---

## Prérequis

Avant de commencer, assurez-vous d'avoir :

| Exigence | Comment vérifier |
|----------|------------------|
| **Abonnement Pro ou Max** | claude.ai → Paramètres → Abonnement affiche "Pro" ou "Max" |
| **macOS** | Menu Apple → À propos de ce Mac |
| **Application Claude Desktop** | Dossier Applications ou recherche Spotlight |
| **Dernière version de l'app** | Claude Desktop → Vérifier les mises à jour |

### Niveaux d'abonnement

| Tier | Coût | Usage Cowork |
|------|------|--------------|
| **Pro** | 20$/mois | Usage léger (~1-1.5h intensive avant réinitialisation) |
| **Max** | 100-200$/mois | Usage intensif (5x-20x la limite du Pro) |

### Vous n'avez pas accès ?

| Situation | Action |
|-----------|--------|
| Tier gratuit | Passer au Pro (20$) ou Max (100$+) |
| Windows/Linux | Attendre l'expansion de plateforme (Windows prévu, Linux non annoncé) |

---

## Étape 1 : Activer Cowork

### 1.1 Ouvrir les paramètres

1. Lancez l'application **Claude Desktop**
2. Cliquez sur votre **icône de profil** (en haut à droite)
3. Sélectionnez **Paramètres**

### 1.2 Activer la fonctionnalité

1. Naviguez vers la section **Fonctionnalités** ou **Fonctionnalités Beta**
2. Trouvez le bouton **Cowork**
3. Activez-le

> **Note** : L'emplacement exact peut varier car l'application est mise à jour pendant la preview recherche.

### 1.3 Vérifier l'activation

Après l'activation, vous devriez voir :
- Une nouvelle option "Cowork" dans le sélecteur de mode de conversation
- Ou une section/onglet Cowork dédié

---

## Étape 2 : Créer votre espace de travail

**Critique** : N'accordez jamais à Cowork l'accès à Documents, Bureau ou au dossier principal directement.

### 2.1 Créer un dossier dédié

Ouvrez Terminal et exécutez :

```bash
mkdir -p ~/Cowork-Workspace/{input,output}
```

Cela crée :
```
~/Cowork-Workspace/
├── input/    # Fichiers que vous voulez traiter
└── output/   # Où Cowork met les résultats
```

### 2.2 Accorder l'accès au dossier

1. Démarrez une nouvelle conversation Cowork
2. Lorsque l'accès au dossier est demandé, naviguez vers `~/Cowork-Workspace/`
3. Accordez l'accès **uniquement** à ce dossier

### 2.3 Vérifier l'accès

Demandez à Cowork :
```
Liste le contenu de mon dossier workspace
```

Réponse attendue : Affiche les répertoires `input/` et `output/`.

---

## Étape 3 : Votre premier workflow

Faisons un workflow simple mais complet pour vérifier que tout fonctionne.

### 3.1 Préparer des fichiers de test

Créez quelques fichiers de test dans votre dossier input :

```bash
cd ~/Cowork-Workspace/input

# Créer des fichiers d'exemple
echo "Notes de réunion de lundi" > reunion-lundi.txt
echo "Notes de réunion de mercredi" > reunion-mercredi.txt
echo "Mise à jour du statut du projet" > statut-projet.txt
echo "Réflexions diverses" > notes-diverses.txt
```

### 3.2 Exécuter votre première tâche

Dans Cowork, entrez :

```
Organise les fichiers dans ~/Cowork-Workspace/input/ en sous-dossiers
par catégorie. Crée un résumé de ce que tu as organisé dans le dossier output.
```

### 3.3 Ce qui devrait se passer

1. **Affichage du plan** : Cowork montre ses actions prévues
2. **Votre approbation** : Vous examinez et approuvez le plan
3. **Exécution** : Cowork réorganise les fichiers
4. **Rapport** : Crée un résumé dans le dossier output

### 3.4 Vérifier les résultats

Vérifiez le résultat :

```bash
ls -la ~/Cowork-Workspace/input/
ls -la ~/Cowork-Workspace/output/
```

Vous devriez voir :
- Des sous-dossiers organisés dans `input/`
- Un fichier résumé dans `output/`

---

## Étape 4 : Comprendre le workflow

### Le cycle Cowork

Chaque tâche Cowork suit ce schéma :

```
┌─────────────────────────────────────────────────────┐
│                   VOTRE REQUÊTE                      │
│     "Organise mes fichiers par catégorie"           │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   ANALYSE                            │
│     Cowork examine vos fichiers                     │
│     Identifie les motifs et catégories              │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│               PROPOSITION DE PLAN                    │
│     "Je vais créer 3 dossiers et déplacer X files..."│
│     ⚠️ VOUS EXAMINEZ CECI AVANT L'EXÉCUTION          │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│               VOTRE APPROBATION                      │
│     "Oui, procède" ou "Non, modifie le plan"        │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   EXÉCUTION                          │
│     Cowork effectue les actions approuvées          │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   RAPPORT                            │
│     Résumé de ce qui a été fait                     │
└─────────────────────────────────────────────────────┘
```

### Points clés

1. **Examinez toujours le plan** — C'est votre point de contrôle de sécurité
2. **Soyez spécifique** — Les requêtes vagues mènent à des résultats inattendus
3. **Commencez petit** — Testez avec quelques fichiers avant les lots importants
4. **Vérifiez les résultats** — Vérifiez la sortie avant de continuer

---

## Étape 5 : Le framework CTOC

Les utilisateurs expérimentés structurent chaque prompt Cowork avec quatre composants :

```
CONTEXTE → TÂCHE → OUTPUT → CONTRAINTES
```

### Le framework

| Composant | Ce que c'est | Exemple |
|-----------|--------------|---------|
| **C**ontexte | Contexte, fichiers, situation | "J'ai 50 reçus d'un voyage d'affaires à Paris..." |
| **T**âche | Objectif unique et clair | "Extraire toutes les dépenses dans une feuille de calcul" |
| **O**utput | Format et emplacement exacts | "Enregistrer dans ~/Cowork-Workspace/output/depenses-paris.xlsx" |
| **C**ontraintes | Règles, limites, préférences | "Utiliser la devise EUR, formules avec point-virgule, catégoriser par type" |

### Exemple CTOC

```
CONTEXTE : J'ai des notes de réunion du mois dernier dans ~/Cowork-Workspace/input/notes/.
Elles proviennent de différents membres de l'équipe avec un formatage incohérent.

TÂCHE : Créer un rapport de statut consolidé à partir de ces notes.

OUTPUT : Enregistrer dans ~/Cowork-Workspace/output/statut-equipe-janvier.docx
avec les sections : Résumé exécutif, Progrès par projet, Blocages, Prochaines étapes.

CONTRAINTES : Garder sous 3 pages. Se concentrer sur les éléments actionnables.
Mettre en évidence les risques mentionnés.
```

### Schémas rapides

| Schéma | Exemple |
|--------|---------|
| **Soyez explicite** | ✅ "fichiers dans ~/Cowork-Workspace/input/" et non ❌ "mes fichiers" |
| **Spécifiez la sortie** | ✅ "enregistrer dans ~/output/rapport.docx" et non ❌ "créer un rapport" |
| **Décrivez le format** | ✅ "colonnes : Date, Montant, Catégorie" et non ❌ "faire une feuille de calcul" |
| **Ajoutez des contraintes** | ✅ "utiliser la syntaxe de formule européenne" |

### Décomposer les tâches complexes

Au lieu de :
```
❌ "Traite tous mes reçus, crée des rapports de dépenses et organise par mois"
```

Faites ceci :
```
✅ Étape 1 : "Liste tous les fichiers de reçus dans ~/Cowork-Workspace/input/"
✅ Étape 2 : "Extrais les données de dépenses de ces reçus dans un seul fichier Excel"
✅ Étape 3 : "Ajoute des feuilles de résumé mensuelles au fichier Excel"
```

Cette approche par lots optimise également l'utilisation des tokens (voir [Cheatsheet](../reference/cheatsheet.md) pour les budgets de tokens).

---

## Étape 6 : Intégration Chrome (Optionnel)

Cowork peut utiliser Chrome pour des tâches de recherche web.

### Activer l'accès Chrome

1. Lorsque Cowork demande la permission Chrome, examinez attentivement
2. Accordez uniquement pour des tâches de recherche spécifiques
3. Révoquez après l'achèvement de la tâche

### Exemple de tâche de recherche web

```
Recherche les 5 meilleurs outils de gestion de projet pour petites équipes.
Enregistre tes résultats dans ~/Cowork-Workspace/output/recherche-outils-gp.md
avec un tableau comparatif.
```

### Note de sécurité

- Examinez chaque action web que Cowork propose
- Ne laissez pas Cowork remplir des formulaires ou effectuer des achats
- Révoquez l'accès Chrome lorsqu'il n'est pas nécessaire

---

## Dépannage première exécution

### "Impossible d'accéder au dossier"

1. Allez dans Préférences Système → Sécurité et confidentialité → Fichiers et dossiers
2. Trouvez Claude Desktop
3. Assurez-vous que votre dossier workspace est listé et activé

### "Option Cowork non visible"

1. Mettez à jour Claude Desktop vers la dernière version
2. Vérifiez Paramètres → Fonctionnalités → assurez-vous que Cowork est activé
3. Redémarrez l'application

### "Le plan semble incorrect"

1. **N'approuvez pas** le plan
2. Dites "Stop. Laisse-moi clarifier : [votre clarification]"
3. Cowork révisera son plan

### "Résultats incomplets"

1. Vérifiez si Cowork a affiché des erreurs
2. Essayez de décomposer la tâche en étapes plus petites
3. Vérifiez les permissions du dossier

---

## Prochaines étapes

Vous êtes maintenant prêt à :

1. **[Explorer les capacités](02-capabilities.fr.md)** — Découvrez ce que Cowork peut faire
2. **[Examiner la sécurité](03-security.fr.md)** — Pratiques d'utilisation sûres
3. **[Essayer les workflows](../workflows/)** — Tutoriels étape par étape
4. **[Utiliser les prompts prêts](../prompts/)** — Modèles copier-coller

---

## Carte de référence rapide

| Action | Comment |
|--------|---------|
| **Démarrer Cowork** | Nouvelle conversation → Sélectionner le mode Cowork |
| **Accorder l'accès** | Naviguer vers ~/Cowork-Workspace/ lorsque demandé |
| **Examiner le plan** | Lire chaque étape avant de dire "procède" |
| **Arrêter l'exécution** | Taper "Stop" ou fermer la conversation |
| **Vérifier les résultats** | Toujours vérifier le dossier output après les tâches |

---

*[← Aperçu](00-overview.fr.md) | [Documentation Cowork](../README.md) | [Capacités →](02-capabilities.fr.md)*
