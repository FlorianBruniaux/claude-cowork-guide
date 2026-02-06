# Workflow : Validation de Modèle Financier

🌐 **Langues** : [Français](financial-model-validation.md) | [English](financial-model-validation.en.md)

> **Temps estimé** : 30-45 minutes
> **Difficulté** : Intermédiaire
> **Catégorie** : 📊 Administratif
> **Professions** : Responsables financiers, Contrôleurs de gestion, Chefs d'entreprise

---

## Cas d'usage

Vous avez un modèle financier (budget, prévisionnel, calculateur de prix) dans Excel et vous devez :

- Vérifier l'intégrité des formules sur toutes les feuilles
- Détecter les références circulaires ou erreurs
- Valider la logique de calcul
- Documenter les hypothèses et dépendances
- Créer une piste d'audit pour les parties prenantes

> ⚠️ **Important** : Ce workflow utilise les **capacités de génération Excel de Cowork** (création de nouveaux fichiers d'analyse). Il n'utilise PAS l'**add-in Claude in Excel** (complément Microsoft Excel pour l'assistance aux formules). Voir [comparaison](../reference/comparison.fr.md#confusion-frequente).

---

## Prérequis

- [ ] Cowork activé (abonnement Pro ou Max)
- [ ] Fichier de modèle financier (.xlsx) prêt
- [ ] Dossier de travail créé
- [ ] Compréhension de base de la structure de votre modèle

---

## Instructions étape par étape

### Étape 1 : Préparer le modèle pour la revue

```bash
# Créer la structure du workspace
mkdir -p ~/Cowork-Workspace/{input/modele-financier,output}

# Copier votre modèle dans le workspace
cp ~/chemin/vers/votre-modele.xlsx ~/Cowork-Workspace/input/modele-financier/
```

**Astuce** : Faites une sauvegarde du fichier original avant la validation.

### Étape 2 : Analyse de structure initiale

Demander une vue d'ensemble :

```
Analyse le fichier Excel à ~/Cowork-Workspace/input/modele-financier/votre-modele.xlsx

Fournis :
1. Liste des feuilles avec l'objectif de chacune
2. Cellules d'entrée clés (où les hypothèses sont saisies)
3. Cellules de sortie clés (résultats finaux)
4. Dépendances entre feuilles

Sauvegarde le résumé vers : ~/Cowork-Workspace/output/structure-modele.md
```

### Étape 3 : Audit des formules

Vérifier l'intégrité des formules :

```
Audite toutes les formules dans ~/Cowork-Workspace/input/modele-financier/votre-modele.xlsx

Crée un rapport Excel à ~/Cowork-Workspace/output/audit-formules.xlsx avec :

Feuille 1 - "Inventaire Formules" :
- Référence Cellule
- Formule
- Nom Feuille
- Type Formule (SOMME, SI, RECHERCHEV, etc.)
- Références (cellules dont elle dépend)

Feuille 2 - "Problèmes Potentiels" :
- Référence Cellule
- Type Problème (valeur codée en dur dans formule, gestion d'erreur manquante, formule imbriquée complexe)
- Sévérité (Faible/Moyenne/Élevée)
- Recommandation

Feuille 3 - "Dépendances Inter-Feuilles" :
- Feuille Source
- Feuille Cible
- Nombre de Références
- Cellules Liées Clés
```

### Étape 4 : Détection des erreurs

Identifier les erreurs de calcul :

```
Vérifie ~/Cowork-Workspace/input/modele-financier/votre-modele.xlsx pour :

1. Cellules avec erreurs #REF!, #VALEUR!, #DIV/0!, #N/A
2. Références circulaires
3. Cellules masquées avec formules
4. Modèles de formules incohérents (ex : ligne 5 utilise une logique différente des lignes 1-4)

Sauvegarde les résultats vers : ~/Cowork-Workspace/output/rapport-erreurs.md
```

### Étape 5 : Documentation des hypothèses

Extraire et documenter les hypothèses :

```
Analyse ~/Cowork-Workspace/input/modele-financier/votre-modele.xlsx

Crée ~/Cowork-Workspace/output/hypotheses.xlsx avec :

Feuille 1 - "Hypothèses d'Entrée" :
- Nom Paramètre
- Valeur Actuelle
- Unité
- Source/Justification
- Dernière Mise à Jour
- Sensibilité (Impact Faible/Moyen/Élevé sur résultats)

Feuille 2 - "Hypothèses Calculées" :
- Nom Paramètre
- Formule
- Valeur Actuelle
- Dépendances
```

### Étape 6 : Analyse de sensibilité

Tester la sensibilité des hypothèses :

```
Pour le modèle financier à ~/Cowork-Workspace/input/modele-financier/votre-modele.xlsx :

Identifie les 5 hypothèses d'entrée les plus critiques (celles avec l'impact le plus élevé sur les résultats finaux).

Crée ~/Cowork-Workspace/output/analyse-sensibilite.md documentant :
- Quelles hypothèses génèrent le plus de variance
- Plages recommandées pour la planification de scénarios
- Drapeaux rouges si les hypothèses sont modifiées
```

### Étape 7 : Générer le rapport de validation

Compiler les résultats en synthèse exécutive :

```
Crée un document Word à ~/Cowork-Workspace/output/rapport-validation.docx

Inclus :
1. Résumé Exécutif
   - Objectif du modèle
   - Date de validation
   - Score de santé global (Validé/Attention/Échec)

2. Constats
   - Problèmes de formules détectés
   - Erreurs trouvées
   - Lacunes dans les hypothèses

3. Recommandations
   - Corrections critiques requises
   - Améliorations bonnes pratiques
   - Besoins en documentation

4. Annexes
   - Audit détaillé des formules (référence fichier Excel)
   - Liste des hypothèses (référence fichier Excel)
```

---

## Critères de succès

✅ **Complété quand** :
- Toutes les formules documentées et auditées
- Aucune erreur critique (#REF!, références circulaires) non résolue
- Hypothèses documentées avec sources
- Rapport de validation livré aux parties prenantes

---

## Pièges courants

| Problème | Solution |
|----------|----------|
| Modèle trop volumineux (>10 Mo) | Diviser en modules, valider séparément |
| Macros VBA complexes | Cowork ne peut pas exécuter de macros—documenter manuellement |
| Liens de données externes | Noter les dépendances, valider les sources séparément |
| Feuilles protégées par mot de passe | Déverrouiller avant analyse |

---

## Adaptations pour contexte français

Pour TPE/PME françaises :

**Terminologie** :
- Utiliser les noms de fonctions Excel français : `SOMME` pas `SUM`, `SI` pas `IF`
- Devise : EUR (€) au lieu de USD ($)
- Format de date : JJ/MM/AAAA (européen) pas MM/JJ/AAAA (US)

**Conformité** :
- Documenter les hypothèses pour revue expert-comptable
- Maintenir piste d'audit pour contrôle fiscal
- Référencer normes comptables françaises (PCG - Plan Comptable Général)

**Paramètres régionaux** :
```
Lors de l'analyse, utilise la syntaxe Excel européenne :
- Séparateur de formule : point-virgule (;) pas virgule (,)
- Séparateur décimal : virgule (,) pas point (.)
- Exemple : =SOMME(A1;A2) pas =SUM(A1,A2)
```

---

## Conseils avancés

**Modèles volumineux** :
- Traiter par lots : valider une feuille à la fois
- Focus sur les chemins de calcul critiques d'abord
- Documenter les frontières de modules pour clarté

**Validation récurrente** :
- Sauvegarder les prompts pour réutilisation chaque trimestre/année
- Créer checklist pour validation cohérente
- Suivre les changements entre cycles de validation

**Communication aux parties prenantes** :
- Générer synthèse exécutive d'abord (1 page)
- Fournir annexe technique détaillée séparément
- Utiliser aides visuelles (graphiques) pour sensibilité hypothèses

---

## Exemple de prompt (workflow complet)

```
J'ai un modèle financier à ~/Cowork-Workspace/input/modele-financier/budget-2026.xlsx

Exécute ce workflow de validation :

1. Analyse de Structure :
   - Liste toutes les feuilles avec objectifs
   - Identifie feuilles entrée vs calcul vs sortie
   - Sauvegarde vers structure-analyse.md

2. Audit Formules :
   - Inventorie toutes les formules
   - Signale problèmes potentiels (valeurs codées en dur, imbrications complexes)
   - Crée audit-formules.xlsx

3. Détection Erreurs :
   - Trouve erreurs #REF!, #VALEUR!, #DIV/0!
   - Vérifie références circulaires
   - Signale formules masquées
   - Sauvegarde vers rapport-erreurs.md

4. Documentation Hypothèses :
   - Extrait toutes hypothèses d'entrée
   - Documente sources et sensibilité
   - Crée hypotheses.xlsx

5. Rapport de Validation :
   - Résumé exécutif (1 page)
   - Constats détaillés
   - Recommandations
   - Sauvegarde vers rapport-validation.docx

Utilise syntaxe Excel européenne (séparateurs point-virgule, noms de fonctions français).
```

---

## Workflows associés

- [Suivi des Dépenses](expense-tracking.md) — Extraire données financières depuis reçus
- [Planification des Effectifs](workforce-planning.md) — Valider modèles masse salariale
- [Analyse Budget vs Réel](budget-vs-actual.md) — Comparer dépenses prévues vs réelles

---

*[← Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
