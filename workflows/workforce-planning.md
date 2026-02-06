# Workflow : Planification des Effectifs

🌐 **Langues** : [Français](workforce-planning.md) | [English](workforce-planning.en.md)

> **Temps estimé** : 40-60 minutes
> **Difficulté** : Intermédiaire
> **Catégorie** : 📊 Administratif
> **Professions** : Responsables RH, Directeurs des opérations, Chefs d'entreprise

---

## Cas d'usage

Vous devez planifier les effectifs pour le prochain trimestre/année et souhaitez :

- Consolider la structure d'équipe actuelle depuis plusieurs sources
- Modéliser des scénarios de croissance (embauches, départs, promotions)
- Calculer les coûts totaux de rémunération
- Visualiser les changements d'organigramme
- Générer une justification budgétaire pour les parties prenantes

> ⚠️ **Important** : Ce workflow utilise les **capacités de génération Excel de Cowork** (création de nouveaux fichiers de planification). Il n'utilise PAS l'**add-in Claude in Excel** (complément Microsoft Excel pour l'assistance aux formules). Voir [comparaison](../reference/comparison.fr.md#confusion-frequente).

---

## Prérequis

- [ ] Cowork activé (abonnement Pro ou Max)
- [ ] Liste d'employés actuelle (CSV, Excel, ou texte)
- [ ] Données salaires/rémunération
- [ ] Objectifs de croissance ou notes de plan d'embauche
- [ ] Dossier de travail créé

---

## Instructions étape par étape

### Étape 1 : Préparer les données d'entrée

```bash
# Créer la structure du workspace
mkdir -p ~/Cowork-Workspace/{input/donnees-rh,output}

# Copier les données employés dans le workspace
cp ~/chemin/vers/liste-employes.xlsx ~/Cowork-Workspace/input/donnees-rh/
cp ~/chemin/vers/remunerations.csv ~/Cowork-Workspace/input/donnees-rh/
```

**Astuce** : Anonymiser les données sensibles si le modèle est partagé avec parties prenantes.

### Étape 2 : Consolider les effectifs actuels

Créer un instantané de référence :

```
Analyse les données employés dans ~/Cowork-Workspace/input/donnees-rh/

Crée ~/Cowork-Workspace/output/effectifs-baseline.xlsx avec :

Feuille 1 - "Équipe Actuelle" :
- ID Employé
- Nom (ou ID si anonymisé)
- Service
- Poste/Titre
- Type Contrat (CDI, CDD, Freelance)
- Date d'Embauche
- Salaire Brut
- Coût Avantages (si disponible)
- Rémunération Totale

Feuille 2 - "Résumé par Service" :
- Service
- Effectifs (équivalent ETP)
- Rémunération Totale
- Salaire Moyen
- Répartition des Postes

Feuille 3 - "Centres de Coûts" :
- Centre de Coûts
- Effectifs
- Coût Total
- Pourcentage du Budget Total
```

### Étape 3 : Modéliser les scénarios de croissance

Planifier embauches et départs :

```
En utilisant les données de ~/Cowork-Workspace/output/effectifs-baseline.xlsx

Crée ~/Cowork-Workspace/output/scenarios-croissance.xlsx avec :

Feuille 1 - "Plan T1 2026" :
- Effectifs Actuels (par service)
- Embauches Prévues (poste, mois début, salaire estimé)
- Départs Prévus (poste, mois départ)
- Variation Nette Effectifs
- Impact Coût Total

Feuille 2 - "Plan T2 2026" :
[Même structure que T1]

Feuille 3 - "Résumé Année Complète" :
- Service
- Effectifs Janvier
- Effectifs Mars (fin T1)
- Effectifs Juin (fin T2)
- Effectifs Septembre (fin T3)
- Effectifs Décembre (fin année)
- Total Nouvelles Embauches
- Total Départs
- Croissance Nette

Feuille 4 - "Projection Coûts" :
- Mois (Jan-Déc 2026)
- Coût Salaires Bruts
- Charges Patronales (% du brut)
- Coût Freelances
- Coût Mensuel Total
- Coût Annuel Cumulé
- Variation % Année/Année

Utilise des formules pour que je puisse ajuster dates d'embauche et salaires de manière interactive.
```

### Étape 4 : Analyse d'impact des postes

Comprendre les priorités d'embauche :

```
Depuis les scénarios de croissance à ~/Cowork-Workspace/output/scenarios-croissance.xlsx :

Crée ~/Cowork-Workspace/output/impact-postes.xlsx avec :

Feuille 1 - "Postes Prioritaires" :
- Poste/Titre
- Service
- Date Embauche Prévue
- Impact Business (Élevé/Moyen/Faible)
- Dépendances (quels projets/objectifs ce poste permet)
- Risque si Non Pourvu

Feuille 2 - "Écart de Compétences" :
- Inventaire Compétences Équipe Actuelle
- Compétences Requises pour Croissance
- Écart (compétences nécessaires mais manquantes)
- Recommandation Formation vs Embauche
```

### Étape 5 : Benchmark de rémunération

Valider les fourchettes salariales :

```
Analyse les données de rémunération dans ~/Cowork-Workspace/input/donnees-rh/

Crée ~/Cowork-Workspace/output/analyse-remunerations.xlsx avec :

Feuille 1 - "Fourchettes Salariales" :
- Poste/Titre
- Salaire Min Actuel
- Salaire Max Actuel
- Moyenne Actuelle
- Fourchette Proposée (pour nouvelles embauches)
- Justification

Feuille 2 - "Analyse Équité" :
- Service
- Salaire Moyen
- Salaire Médian
- Écart-Type
- Valeurs Aberrantes (employés >2 écart-types de la moyenne)
- Préoccupations Équité (postes sous-payés, disparités genre/expérience si données disponibles)

Feuille 3 - "Comparaison Marché" :
- Poste
- Notre Moyenne
- Moyenne Marché (si données disponibles)
- Écart
- Score Compétitivité
```

### Étape 6 : Visualisation organigramme

Visualiser les changements de structure :

```
Depuis ~/Cowork-Workspace/output/effectifs-baseline.xlsx et scenarios-croissance.xlsx :

Crée un document Word à ~/Cowork-Workspace/output/organigramme.docx avec :

1. Organigramme Actuel (hiérarchie textuelle)
2. Organigramme Proposé T4 2026 (avec nouveaux postes)
3. Changements Clés Mis en Évidence :
   - Nouveaux postes (gras, marqués "NOUVEAU")
   - Départs (marqués "DÉPART")
   - Promotions/Mutations (marqués "PROMOTION")

Format : Liste hiérarchique avec indentation montrant structure de reporting.
```

### Étape 7 : Rapport de justification budgétaire

Compiler le document pour parties prenantes :

```
Crée un document Word à ~/Cowork-Workspace/output/plan-effectifs-2026.docx

Inclus :

1. Résumé Exécutif (1 page)
   - Effectifs actuels : X ETP
   - Effectifs proposés fin année : Y ETP
   - Croissance nette : +Z (ou -Z)
   - Budget rémunération total : €X XXX XXX
   - Variation année/année : +X%

2. Justification Stratégique
   - Pourquoi ces embauches sont critiques
   - Objectifs business permis par la croissance
   - Risques de ne pas embaucher

3. Répartition par Service
   - Variations effectifs par service
   - Postes clés à pourvoir
   - Calendrier

4. Impact Financier
   - Montée en charge coûts mensuels
   - Coût total annuel
   - Allocation budgétaire par service

5. Plans de Contingence
   - Que faire si embauches retardées ?
   - Quels postes flexibles vs critiques ?
   - Options embauche par phases

6. Annexes
   - Scénarios croissance détaillés (référence Excel)
   - Analyse rémunération (référence Excel)
   - Organigramme (visuel)
```

---

## Critères de succès

✅ **Complété quand** :
- Baseline actuel documenté avec rémunération complète
- Scénarios croissance modélisés pour 4 trimestres
- Projections coûts calculées avec formules
- Organigramme montre structure avant/après
- Rapport justification budgétaire prêt pour parties prenantes

---

## Pièges courants

| Problème | Solution |
|----------|----------|
| Données employés incomplètes | Commencer avec services où données complètes disponibles |
| Calculs avantages sociaux complexes | Utiliser % simplifié du salaire (ex : 45% charges patronales) |
| Dates embauches incertaines | Modéliser 3 scénarios : optimiste, réaliste, pessimiste |
| Données salaires confidentielles | Anonymiser individus, montrer fourchettes/moyennes uniquement |

---

## Adaptations pour contexte français

Pour TPE/PME françaises :

**Cadre légal** :
- Inclure charges patronales : ~45% du salaire brut
- Référencer conventions collectives applicables
- Respecter minimums légaux (SMIC)
- Considérer participation obligatoire (50+ salariés)

**Terminologie** :
- Utiliser titres de postes français (Directeur Commercial, Chargé de Mission, etc.)
- Centres de coûts = "Centres de coûts" ou "Services"
- FTE = "Équivalent Temps Plein (ETP)"

**Conformité** :
- Documenter pour revue URSSAF (vérification coûts sociaux)
- Maintenir compatibilité DADS/DSN (déclarations sociales)
- Suivre exigences convention collective

**Paramètres régionaux** :
```
Lors de la génération de fichiers Excel, utilise syntaxe européenne :
- Séparateur formule : point-virgule (;) pas virgule (,)
- Devise : EUR (€)
- Format date : JJ/MM/AAAA
- Séparateur décimal : virgule (,) pas point (.)
- Charges patronales : Salaire brut × 1,45 = coût total
```

**Exemple ajout prompt français** :
```
Inclus les charges patronales françaises :
- Cotisations sociales patronales : 45% du salaire brut
- Coût total = Salaire brut × 1,45
- Colonnes séparées pour : Salaire brut, Charges patronales, Coût total employeur
```

---

## Conseils avancés

**Planification multi-années** :
- Étendre scénarios sur 2-3 ans
- Modéliser effets croissance composée
- Intégrer inflation dans projections salariales

**Comparaison de scénarios** :
- Conservateur (embauches minimales)
- Baseline (croissance planifiée)
- Agressif (croissance accélérée)
- Montrer analyse coûts/bénéfices côte à côte

**Modélisation attrition** :
- Utiliser taux attrition historique (ex : 15% annuel)
- Appliquer départs probabilistes aux plans long terme
- Budgétiser coûts remplacement embauches

**Modèle interactif** :
Demander des formules pour pouvoir :
- Changer fourchettes salariales et voir impact coût instantané
- Décaler dates embauches et voir changements trésorerie
- Activer/désactiver postes pour tester scénarios

---

## Exemple de prompt (workflow complet)

```
J'ai des données employés à ~/Cowork-Workspace/input/donnees-rh/employes.xlsx

Exécute ce workflow de planification effectifs :

1. Consolider Effectifs Actuels :
   - Extraire liste employés avec rémunération
   - Créer résumés par service
   - Calculer centres de coûts
   - Sauvegarder vers effectifs-baseline.xlsx

2. Modéliser Scénarios Croissance :
   - Plans embauches T1-T4 2026
   - Hypothèses attrition (15% annuel)
   - Projections coûts mensuels avec formules
   - Sauvegarder vers scenarios-croissance.xlsx

3. Analyse Impact Postes :
   - Postes prioritaires classés par impact business
   - Analyse écart compétences
   - Recommandations formation vs embauche
   - Sauvegarder vers impact-postes.xlsx

4. Benchmark Rémunération :
   - Fourchettes salariales par poste
   - Analyse équité (identifier valeurs aberrantes)
   - Comparaison marché si données disponibles
   - Sauvegarder vers analyse-remunerations.xlsx

5. Organigramme :
   - Structure actuelle (texte hiérarchique)
   - Structure proposée T4 2026 avec nouveaux postes
   - Mettre en évidence changements (NOUVEAU, DÉPART, PROMOTION)
   - Sauvegarder vers organigramme.docx

6. Rapport Justification Budgétaire :
   - Résumé exécutif (1 page)
   - Justification stratégique
   - Impact financier
   - Plans contingence
   - Sauvegarder vers plan-effectifs-2026.docx

Utilise syntaxe européenne (point-virgules, devise EUR).
Pour entreprise française : inclus charges patronales (45% du salaire brut).
```

---

## Workflows associés

- [Validation Modèle Financier](financial-model-validation.md) — Auditer formules budgétaires
- [Suivi des Dépenses](expense-tracking.md) — Suivre coûts réels masse salariale
- [Analyse Budget vs Réel](budget-vs-actual.md) — Comparer coûts effectifs prévus vs réels

---

*[← Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
