# Workflow: Planning de Chantier / Projet

> **Temps estimé**: 25 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 🔧 Production
> **Professions**: Artisans/BTP, Dirigeants

🌐 **Also available in [English](project-planning.en.md)**

---

## Cas d'usage

Vous devez organiser un chantier ou projet multi-étapes avec coordination d'intervenants et matériaux. Ce workflow vous aide à:

- Créer planning détaillé avec jalons
- Identifier dépendances entre tâches
- Anticiper approvisionnements
- Communiquer planning aux parties prenantes

> ⚠️ **Performance**: Un planning bien construit réduit retards de 30-40% et évite immobilisations équipes.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Cahier des charges ou descriptif travaux
- [ ] Délai global connu (date début + date fin souhaitée)
- [ ] Liste intervenants et sous-traitants
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Décomposer projet en tâches

```bash
mkdir -p ~/Cowork-Workspace/projets/[nom-projet]/
```

Analyser projet:

```
PROJET: [Nom du projet - ex: Rénovation appartement Dupont]
ADRESSE: [Adresse chantier]
CLIENT: [Nom client]
BUDGET: [Montant devis]€
DÉLAI GLOBAL: [Date début] → [Date fin souhaitée] ([X] jours)

Décompose ce projet en tâches élémentaires:

Pour chantier rénovation appartement 60m²:
PHASE 1: DÉMOLITION/CURAGE (3 jours)
  - Dépose cuisine
  - Dépose salle de bain
  - Dépose revêtements sols
  - Évacuation gravats

PHASE 2: GROS ŒUVRE/STRUCTURE (5 jours)
  - Reprise dalle salle de bain
  - Modification cloison (si applicable)
  - Renforcement plancher

PHASE 3: CORPS D'ÉTAT TECHNIQUES (10 jours)
  - Plomberie (tuyaux, évacuations)
  - Électricité (câblage, tableau)
  - Chauffage
  - Ventilation VMC

PHASE 4: CLOISONNEMENT/ISOLATION (4 jours)
  - Doublage murs
  - Isolation phonique
  - Placo/cloisons

PHASE 5: FINITIONS (8 jours)
  - Carrelage sol et mural
  - Peinture
  - Pose cuisine
  - Pose sanitaires
  - Sol parquet/carrelage

PHASE 6: NETTOYAGE/RÉCEPTION (2 jours)
  - Nettoyage fin de chantier
  - Levée réserves
  - Réception client

Pour chaque tâche, précise:
- Durée estimée
- Compétence nécessaire (qui fait)
- Dépendances (tâches à finir avant)
- Matériaux nécessaires

Sauvegarde: ~/Cowork-Workspace/projets/[nom-projet]/decomposition-taches.txt
```

### Étape 2: Créer diagramme Gantt

```
Depuis décomposition tâches, crée planning Gantt:

INFORMATIONS:
- Date début chantier: [ex: 3 février 2026]
- Jours travaillés: Lundi à Vendredi (pas weekends)
- Jours fériés à éviter: [si dans période]
- Contraintes: [ex: livraison cuisine semaine 15 février]

FORMAT GANTT (Excel ou Google Sheets):

COLONNES:
A. ID tâche (1.1, 1.2, 2.1, etc.)
B. Phase
C. Tâche
D. Durée (jours)
E. Début (date)
F. Fin (date)
G. Dépend de (ID tâches)
H. Responsable
I. Statut (À faire / En cours / Terminé)
J-Z. Jours calendrier (1 colonne = 1 jour, cases colorées = durée tâche)

MISE EN FORME:
- Phases en gras
- Tâches critiques (chemin critique) en rouge
- Tâches en parallèle identifiées
- Jalons (⚫ livraisons, réception) marqués

CALCULS AUTOMATIQUES:
- Date fin = Date début + Durée - 1
- Alerte si chevauchement impossible (même intervenant)
- Durée totale projet
- Chemin critique (tâches sans marge)

Exemple visuel:
```
| Phase | Tâche | Dur | Début | Fin | Dép | Resp | 3/2 | 4/2 | 5/2 | 6/2 | 7/2 | ... |
|-------|-------|-----|-------|-----|-----|------|-----|-----|-----|-----|-----|-----|
| 1 | Dépose cuisine | 1j | 3/2 | 3/2 | - | Moi | ■■■ | | | | | |
| 1 | Dépose SDB | 1j | 4/2 | 4/2 | 1.1 | Moi | | ■■■ | | | | |
| 2 | Plomberie | 3j | 5/2 | 7/2 | 1.2 | Martin | | | ■■■ | ■■■ | ■■■ | |
```

Sauvegarde: ~/Cowork-Workspace/projets/[nom-projet]/planning-gantt.xlsx
```

### Étape 3: Identifier approvisionnements

```
Depuis planning Gantt, liste matériaux à commander:

TÂCHE: Carrelage sol et mural (début 17/02)
MATÉRIAUX NÉCESSAIRES:
- Carrelage sol 60x60: 65 m² (prévoir +10% = 72m²)
- Carrelage mural 30x60: 40 m² (prévoir +10% = 44m²)
- Colle carrelage: 15 sacs
- Joint: 10 sacs
- Profilés: 20 mètres linéaires

COMMANDE À PASSER:
- Date commande: 3/02 (J-14 avant pose)
- Fournisseur: [Nom]
- Livraison souhaitée: 14/02 (3j avant début pose)
- Stockage sur chantier: Prévoir zone protégée

Pour CHAQUE phase, identifier:
- Matériaux critiques (délai livraison >7j)
- Date commande (délai livraison + marge sécurité)
- Stockage (espace, protection pluie/vol)

Créer onglet "Approvisionnements" dans planning Excel:
Colonnes: Matériau | Phase | Qté | Fournisseur | Date commande | Date livraison | Statut
```

### Étape 4: Coordination intervenants

```
Depuis planning, créer calendrier interventions:

INTERVENANT: Plombier Martin
PÉRIODES D'INTERVENTION:
- Semaine 1 (5-7 fév): Plomberie brute (3j)
- Semaine 3 (19-20 fév): Pose sanitaires (2j)
TOTAL: 5 jours

INTERVENANT: Électricien Durand
PÉRIODES D'INTERVENTION:
- Semaine 1 (5-7 fév): Câblage (3j) - PARALLÈLE plomberie OK
- Semaine 4 (24 fév): Finitions électriques (1j)
TOTAL: 4 jours

Créer document "Planning intervenants" pour chaque sous-traitant:
- Dates précises intervention
- Travaux à réaliser
- Matériel à apporter
- Prérequis (ex: électricité nécessite plomberie finie)
- Contact chef de chantier

Format: PDF à envoyer chaque intervenant
Sauvegarde: ~/Cowork-Workspace/projets/[nom-projet]/planning-[intervenant].pdf
```

### Étape 5: Suivi avancement

Durant chantier:

```
Mise à jour hebdomadaire planning:

Chaque vendredi 17h:
1. Ouvrir ~/Cowork-Workspace/projets/[nom-projet]/planning-gantt.xlsx
2. Mettre à jour colonne "Statut":
   - Tâches terminées semaine: "Terminé" (vert)
   - Tâches en cours: "En cours" (orange)
   - Tâches retardées: "Retard" (rouge) + noter raison

3. Ajuster dates si retard:
   - Décaler tâches dépendantes
   - Recalculer date fin projet
   - Identifier tâches récupérables (accélérer)

4. Alerter client si date fin impactée:
   Email type:
   "Bonjour M. Dupont,
   Point d'avancement semaine X:
   - Terminé: Phase 1 et 2 (OK planning)
   - En cours: Plomberie (retard 2j car fuite découverte)
   - Impact: Date fin repoussée au 15/03 (vs 13/03 prévu)

   Actions correctives: Doublement équipe phase 4 pour rattraper 1 jour.
   Nouvelle estimation: 14/03

   Tenons-vous informé."

5. Sauvegarder version datée:
   ~/Cowork-Workspace/projets/[nom-projet]/planning-gantt-semaine-[X].xlsx
```

---

## Exemples de prompts

### Planning simple (petit chantier)

```
Crée planning pour: Installation cuisine équipée (3 jours)

TÂCHES:
J1 Matin: Dépose ancienne cuisine + évacuation (4h)
J1 AM: Reprise plomberie + électricité si besoin (4h)
J2: Pose meubles bas + plan de travail (8h)
J3 Matin: Pose meubles hauts + crédence (4h)
J3 AM: Raccordements + tests + nettoyage (4h)

CONTRAINTES:
- Livraison cuisine: J1 avant 8h impératif
- Eau et électricité coupées J1 (prévenir client)
- Client absent J1-J2, présent J3 pour réception

Format: Planning simple 1 page PDF
Avec: Horaires, tâches, matériel nécessaire, points attention

Sauvegarde: ~/Cowork-Workspace/projets/cuisine-Dubois/planning-3jours.pdf
```

### Planning complexe multi-corps d'état

```
Crée planning pour: Construction extension maison (12 semaines)

PHASES:
S1-S2: Fondations + dalle (10j)
S3-S4: Élévation murs + charpente (10j)
S5: Couverture + zinguerie (5j)
S6-S7: Menuiseries extérieures (8j)
S8: Plomberie + électricité (5j)
S9: Isolation + placo (5j)
S10: Carrelage + faïence (5j)
S11: Peinture (5j)
S12: Finitions + nettoyage (5j)

INTERVENANTS:
- Maçon (S1-S4)
- Charpentier (S4)
- Couvreur (S5)
- Menuisier (S6-S7)
- Plombier (S8 + S10)
- Électricien (S8 + S11)
- Plaquiste (S9)
- Carreleur (S10)
- Peintre (S11)

Créer:
1. Gantt global 12 semaines
2. Chemin critique (retards bloquants)
3. Plannings individuels par intervenant
4. Liste approvisionnements (dates commande)
5. Points coordination (ex: électricien après plombier)

Format: Dossier complet avec Excel + PDF par intervenant
```

---

## Troubleshooting

### Retard imprévu

**Cause**: Aléa chantier (fuite, non-conformité, etc.)
**Solution**: Réorganisation:

```
Retard 3 jours phase plomberie (fuite cachée découverte)

ANALYSE IMPACT:
- Tâches bloquées: Carrelage SDB (dépend plomberie)
- Tâches non-bloquées: Peinture chambres (indépendant)

ACTIONS:
1. Réaffecter équipe sur tâches non-bloquées pendant réparation
2. Décaler carrelage SDB de 3 jours
3. Vérifier si récupérable sur autre phase:
   - Doubler équipe peinture? (gain 1-2j)
   - Weekend exceptionnel? (gain 2j)

COMMUNICATION CLIENT:
- Informer immédiatement du retard
- Expliquer cause (avec photos si utile)
- Proposer plan rattrapage
- Nouvelle date fin réaliste

Mise à jour planning avec version "Révisé v2"
```

### Intervenant annule

**Cause**: Maladie, autre chantier prioritaire
**Solution**: Plan B:

```
Électricien Durand annule semaine prochaine (maladie)

OPTIONS:
A. Décaler intervention (+1 semaine):
   - Impact sur planning global?
   - Autres tâches dépendantes bloquées?

B. Trouver remplaçant:
   - Appeler autre électricien
   - Fournir plans et descriptif
   - Vérifier disponibilité + tarif

C. Réorganiser:
   - Faire moi-même si habilité
   - Avancer autres tâches en attendant

DÉCISION:
Si retard acceptable: Option A (moins risqué)
Si bloque chantier: Option B (coût sup mais avance)

Documenter dans planning: "Changement intervenant" + raison
```

---

## Variations

### Planning agile (itératif)

```
Pour projets incertains ou évolutifs:

SPRINTS de 2 semaines:
Sprint 1: Phase démolition + surprise à gérer
Sprint 2: Plomberie + électricité brute
[Réunion fin sprint: Ajuster Sprint 3 selon avancement]

Avantages:
- Flexibilité si modifications client
- Adaptation selon découvertes chantier

Créer planning "Rolling" (2 sprints détaillés + estimations grossières suite)
Mise à jour fin chaque sprint
```

### Intégration budgétaire

```
Ajouter au planning Gantt:

Colonnes financières:
- Coût tâche (matériaux + main d'œuvre)
- Cumul dépenses
- Budget prévu vs réel

Alertes:
- Si cumul >80% budget à mi-projet → risque dépassement
- Coûts cachés (ex: réparation fuite) → ajuster budget

Graphique burn-down budget:
- Axe X: Temps (semaines)
- Axe Y: Budget restant
- Courbe prévu vs réel

Anticiper trésorerie (paiements fournisseurs vs facturations client)
```

---

## Bonnes pratiques

1. **Buffer temporel** : Ajouter 10-15% marge sécurité (aléas)
2. **Chemin critique** : Identifier tâches sans marge (priorité absolue)
3. **Parallélisation** : Maximiser tâches simultanées (si intervenants différents)
4. **Jalons** : Définir points validation client (éviter mauvaises surprises)
5. **Communication** : Partager planning avec TOUS intervenants (coordination)
6. **Mise à jour régulière** : Hebdomadaire minimum (planning obsolète = inutile)
7. **Réserves anticipées** : Noter points incertains (ex: "vérifier état dalle")
8. **Documentation** : Photos + notes à chaque jalon (traçabilité)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
