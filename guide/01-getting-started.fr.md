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
| **macOS ou Windows** | macOS : Menu Apple → À propos de ce Mac / Windows : Paramètres → Système → À propos |
| **Application Claude Desktop** | Dossier Applications ou recherche Spotlight |
| **Dernière version de l'app** | Voir les étapes de vérification ci-dessous ⚠️ |

### ⚠️ Vérifiez que vous avez la dernière version de Claude Desktop

**Critique** : Cowork nécessite la dernière version de Claude Desktop. Si vous ne voyez pas "Cowork" dans le sélecteur de mode en haut de l'application, votre version est obsolète.

**Comment vérifier :**

1. Ouvrez l'application Claude Desktop
2. Regardez en haut de la barre latérale — vous devriez voir trois modes :
   ```
   Chat    Cowork    Code
   ```
3. Si vous **ne voyez pas "Cowork"**, mettez à jour votre application :
   - Allez dans le menu Claude Desktop → **Vérifier les mises à jour**
   - Ou téléchargez la dernière version depuis [claude.ai/download](https://claude.ai/download)

> **Documentation officielle** : Pour une aide supplémentaire, consultez le [guide de démarrage Cowork d'Anthropic](https://support.claude.com/en/articles/13345190-getting-started-with-cowork)

### Niveaux d'abonnement

| Tier | Coût | Usage Cowork |
|------|------|--------------|
| **Pro** | 20$/mois | Usage léger (~1-1.5h intensive avant réinitialisation) |
| **Max** | 100-200$/mois | Usage intensif (5x-20x la limite du Pro) |

### Vous n'avez pas accès ?

| Situation | Action |
|-----------|--------|
| Tier gratuit | Passer au Pro (20$) ou Max (100$+) |
| Linux | Attendre l'expansion de plateforme (Linux non annoncé) |

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

**Option A : Via le Finder (recommandé pour débutants)**

1. Ouvrez le **Finder**
2. Dans la barre de menu, cliquez sur **Aller** → **Dossier de départ** (ou appuyez sur `Cmd + Shift + H`)
3. Créez un nouveau dossier : clic droit → **Nouveau dossier**
4. Nommez-le `Cowork-Workspace`
5. Ouvrez ce dossier
6. À l'intérieur, créez deux sous-dossiers :
   - `input` (pour les fichiers à traiter)
   - `output` (pour les résultats générés)

**Option B : Via Terminal (utilisateurs avancés)**

Ouvrez Terminal et exécutez :

```bash
mkdir -p ~/Cowork-Workspace/{input,output}
```

**Résultat attendu :**
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

**Option A : Via le Finder et TextEdit (recommandé pour débutants)**

1. Ouvrez le Finder et naviguez vers `Cowork-Workspace/input/`
2. Pour chaque fichier à créer :
   - Ouvrez **TextEdit** (dans Applications → TextEdit)
   - Tapez le contenu (voir liste ci-dessous)
   - **Format** → **Convertir au format Texte** (important !)
   - **Fichier** → **Enregistrer**
   - Choisissez le dossier `input/` et donnez le nom approprié

**Fichiers à créer :**
- `reunion-lundi.txt` → "Notes de réunion de lundi"
- `reunion-mercredi.txt` → "Notes de réunion de mercredi"
- `statut-projet.txt` → "Mise à jour du statut du projet"
- `notes-diverses.txt` → "Réflexions diverses"

**Option B : Via Terminal (utilisateurs avancés)**

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

**Option A : Via le Finder**

1. Ouvrez le Finder
2. Naviguez vers `Cowork-Workspace/input/`
3. Vérifiez que des sous-dossiers ont été créés (par exemple : "Réunions", "Projets"...)
4. Naviguez vers `Cowork-Workspace/output/`
5. Vérifiez qu'un fichier résumé a été créé

**Option B : Via Terminal**

```bash
ls -la ~/Cowork-Workspace/input/
ls -la ~/Cowork-Workspace/output/
```

**Résultat attendu :**
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

## Étape 6 : Personnaliser votre profil (Optionnel)

Créez un fichier de profil personnel pour que Cowork connaisse vos préférences et votre style de communication.

### 6.1 Créer votre fichier de profil

Dans votre workspace, créez `mon-profil.md` :

```markdown
# Mon profil de communication

## Ton et style
- Formel (vouvoiement systématique avec les clients)
- Points concis plutôt que longs paragraphes
- Pas de jargon ni d'anglicismes

## Ce que je ne fais JAMAIS
- Utiliser des points d'exclamation dans les emails clients
- Promettre des délais précis
- Sauter la formule de politesse

## Signature par défaut
Cordialement,
[Votre nom] - [Entreprise]
```

### 6.2 Utiliser votre profil

Commencez chaque conversation par :
```
Lis mon-profil.md d'abord. Puis [votre demande réelle]
```

**Exemple** :
```
Lis mon-profil.md d'abord. Puis rédige un email de relance pour un client
qui n'a pas répondu à notre devis depuis 2 semaines.
```

### 6.3 Avantages

| Avantage | Pourquoi c'est important |
|----------|--------------------------|
| **Voix cohérente** | Toutes les sorties correspondent à votre style |
| **Gain de temps** | Plus besoin de répéter vos préférences |
| **Alignement équipe** | Partagez le fichier avec vos collègues |
| **Portable** | Le même fichier fonctionne avec d'autres outils IA |

> **Conseil** : 80% d'un profil efficace concerne ce que vous *ne voulez pas*. Concentrez-vous sur les contraintes et les anti-patterns.

---

## Étape 7 : Intégration Chrome (Optionnel)

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

**Cause la plus fréquente** : Version de l'application obsolète.

1. **Vérifiez votre version** — Voir la section [Prérequis](#️-vérifiez-que-vous-avez-la-dernière-version-de-claude-desktop) ci-dessus
2. Si vous ne voyez pas "Chat | Cowork | Code" en haut, mettez à jour votre application
3. Après la mise à jour, vérifiez Paramètres → Fonctionnalités → assurez-vous que Cowork est activé
4. Redémarrez l'application

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
