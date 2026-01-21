# Workflow: Préparation Commandes Fournisseurs

> **Temps estimé**: 15 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 🔧 Production
> **Professions**: Commerçants, Artisans

🌐 **Also available in [English](supplier-order.en.md)**

---

## Cas d'usage

Vous devez commander matériaux ou marchandises auprès de vos fournisseurs de manière optimisée. Ce workflow vous aide à:

- Générer bons de commande professionnels
- Grouper articles pour optimiser ports et remises
- Suivre commandes en cours
- Vérifier réceptions conformes

> ⚠️ **Économies**: Optimiser commandes (quantités, regroupements) peut réduire coûts d'achat de 10-20%.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Besoins identifiés (stock bas, chantier à venir)
- [ ] Catalogues fournisseurs avec tarifs
- [ ] Coordonnées fournisseurs
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Consolider besoins

```bash
mkdir -p ~/Cowork-Workspace/achats/{besoins,commandes,receptions}
```

Lister ce qu'il faut commander:

```
Consolide besoins achat pour: [Semaine X / Chantier Y / Réappro stock]

SOURCES BESOINS:
1. Alertes stock (articles sous seuil)
2. Chantiers planifiés (matériaux nécessaires)
3. Commandes clients à honorer

EXEMPLE:

SOURCE: Alerte stock
- Câble 2,5mm² bleu: 100m
- Disjoncteurs 16A: 20 pièces
- Boîtes dérivation: 30 pièces

SOURCE: Chantier "Rénovation Dupont" (début 5 février)
- Tableau électrique 3 rangées: 1
- Disjoncteur différentiel 40A: 2
- Prises 16A: 25
- Interrupteurs: 15

SOURCE: Commande client Martin (urgent)
- Spot LED encastrable: 12

CONSOLIDATION:
Regroupe articles identiques:
- Disjoncteurs 16A: 20 (stock) + besoin chantier → TOTAL 20 (suffisant)
- Câble 2,5mm²: 100m (stock) + 80m (chantier) → TOTAL 180m

Priorise selon urgence:
- URGENT (client attend): Spots LED (délai 48h max)
- IMPORTANT (chantier proche): Matériaux Dupont (livraison avant 3 fév)
- NORMAL (stock): Câbles, disjoncteurs (livraison semaine prochaine OK)

Sauvegarde: ~/Cowork-Workspace/achats/besoins/besoins-semaine-4-2026.txt
```

### Étape 2: Répartir par fournisseur

Optimiser commandes:

```
Depuis besoins consolidés, répartis par fournisseur:

FOURNISSEUR A (Legrand - spécialiste électricité):
Articles disponibles:
- Tableau 3 rangées: OUI (ref LEG-T3R)
- Disjoncteur diff: OUI (ref LEG-DD40)
- Prises: OUI
- Câbles: NON (pas en catalogue)

FOURNISSEUR B (Rexel - généraliste):
Articles disponibles:
- Tous articles électricité: OUI
- Prix: Légèrement plus cher que A
- Avantage: Livraison gratuite dès 200€ HT

FOURNISSEUR C (Grossiste local):
- Tous articles: OUI
- Prix: Compétitifs
- Avantage: Retrait immédiat (pas d'attente livraison)
- Inconvénient: Frais déplacement

STRATÉGIES RÉPARTITION:

OPTION 1: Fournisseur unique (simplicité)
→ Tout chez Rexel (livraison gratuite + 1 seul suivi)
Coût: 580€ HT + port 0€ = 580€

OPTION 2: Multi-fournisseurs (optimisation prix)
→ Matériel spécialisé chez Legrand (meilleure qualité): 320€ + port 25€
→ Câbles/consommables chez C (moins cher): 200€ + déplacement 15€
Coût total: 560€ (économie 20€ MAIS 2 commandes à gérer)

OPTION 3: Urgence
→ Articles urgents: Retrait immédiat chez C
→ Reste: Commande normale chez Rexel livraison semaine prochaine

RECOMMANDATION:
Si économie <5%: Préférer fournisseur unique (temps gagné > économie)
Si économie >10%: Multi-fournisseurs rentable
Si urgence: Accepter surprix pour réactivité

Génère plan commande:
- Commande 1: Fournisseur X (articles A, B, C) - Total Y€
- Commande 2: Fournisseur Z (articles D, E) - Total W€

Sauvegarde: ~/Cowork-Workspace/achats/besoins/plan-commande-optimise.xlsx
```

### Étape 3: Générer bons de commande

Créer BC professionnels:

```
Génère bon de commande pour: Fournisseur Rexel

EN-TÊTE:
BON DE COMMANDE N°: BC-2026-012
Date: 20 janvier 2026

ÉMETTEUR (mes coordonnées):
[Nom entreprise]
[Adresse complète]
SIRET: [numéro]
Contact: [nom] - [tel] - [email]

DESTINATAIRE:
Rexel Agence Lyon Est
[Adresse]
Contact commercial: [nom si connu]

RÉFÉRENCES:
Votre devis: [si applicable]
Notre affaire: Réappro stock + Chantier Dupont

ADRESSE LIVRAISON:
[Si différente de adresse entreprise]
[Préciser: Chantier / Magasin / Entrepôt]
Contact sur place: [nom + tel]
Horaires accès: [si contraintes]

TABLEAU ARTICLES:
| Réf Fournisseur | Désignation | Qté | Unité | P.U. HT | Total HT |
|-----------------|-------------|-----|-------|---------|----------|
| LEG-T3R | Tableau 3 rangées | 1 | pce | 85,00€ | 85,00€ |
| LEG-DD40 | Disj. diff 40A type AC | 2 | pce | 42,00€ | 84,00€ |
| CAB-25-BL | Câble 2,5mm² bleu | 180 | m | 1,10€ | 198,00€ |
| PRI-16A | Prise 16A blanche | 25 | pce | 3,20€ | 80,00€ |
[...autres articles...]

TOTAUX:
Sous-total HT: 580,00€
Port: OFFERT (>200€)
Remise accordée: -5% soit -29,00€
TOTAL HT: 551,00€
TVA 20%: 110,20€
TOTAL TTC: 661,20€

CONDITIONS:
Délai livraison souhaité: 3 février 2026
Mode paiement: Virement 30 jours fin de mois
Conditions particulières: Livraison avant 16h si possible

VALIDATION:
Date: 20/01/2026
Signature: [Nom émetteur]

MENTIONS:
"Merci de confirmer réception de ce bon de commande et de nous communiquer
la date de livraison prévue."

Format: PDF professionnel
Sauvegarde: ~/Cowork-Workspace/achats/commandes/BC-2026-012-Rexel.pdf
```

### Étape 4: Envoi et suivi

Transmettre et tracker:

```
Envoie BC-2026-012-Rexel.pdf par email:

OBJET: Bon de commande BC-2026-012 - Livraison 3 février

Bonjour [Contact],

Veuillez trouver ci-joint notre bon de commande BC-2026-012 pour un montant
de 661,20€ TTC.

Merci de nous confirmer:
- Bonne réception de la commande
- Disponibilité articles
- Date livraison prévue (souhaitée: 3 février avant 16h)
- Numéro de suivi si applicable

Pour toute question, je reste à votre disposition.

Cordialement,
[Signature]

PJ: BC-2026-012-Rexel.pdf

---

SUIVI COMMANDE:

Crée ligne dans tableau ~/Cowork-Workspace/achats/suivi-commandes-2026.xlsx:

| N° BC | Date | Fournisseur | Montant TTC | Livraison prévue | Statut | Réception | Facture |
|-------|------|-------------|-------------|------------------|--------|-----------|---------|
| BC-012 | 20/01 | Rexel | 661,20€ | 3/02 | Confirmée | - | - |

STATUTS:
- Envoyée: BC transmis, en attente confirmation
- Confirmée: Fournisseur confirme, date livraison OK
- En cours: Commande préparée
- Expédiée: En transit
- Livrée: Réception OK
- Facturée: Facture reçue et validée
- Litige: Problème (manquant, erreur, retard)

Mettre à jour statut dès info reçue fournisseur
```

### Étape 5: Réception et contrôle

À la livraison:

```
PROCESSUS RÉCEPTION commande BC-2026-012:

AVANT DÉCHARGEMENT:
□ Vérifier bon de livraison (BL) correspond à BC-2026-012
□ Compter nombre colis (correspond à BL?)
□ Inspecter extérieur (dommages transport?)
□ Photographier camion + colis si doute

DÉCHARGEMENT:
□ Ouvrir colis en présence livreur
□ Vérifier articles un par un:
  - Tableau 3 rangées: ✓ 1 pièce conforme
  - Disj diff 40A: ✓ 2 pièces conformes
  - Câble 2,5mm² bleu: ✓ 180m (vérifier métrage bobine)
  - Prises 16A: ✓ 25 pièces conformes
  [etc.]

ANOMALIES:
Si article manquant / non-conforme / endommagé:
1. NE PAS SIGNER BL sans réserves
2. Noter sur BL: "Réserves: Article X manquant, Article Y endommagé"
3. Photographier anomalies
4. Livreur signe BL avec réserves
5. Email fournisseur dans l'heure avec photos + réclamation

RÉCEPTION OK:
□ Signer BL "Reçu en bon état"
□ Conserver copie BL
□ Mettre à jour fichier suivi: Statut "Livrée" + Date réception
□ Ranger articles en stock
□ Mettre à jour fichier stock (entrée marchandises)

FACTURE FOURNISSEUR:
Quand reçue:
□ Vérifier montant facture = BC (661,20€)
□ Vérifier quantités facturées = livrées
□ Vérifier remises appliquées (-5%)
□ Si conforme: Valider paiement
□ Archiver: BC + BL + Facture ensemble

Sauvegarde checklist: ~/Cowork-Workspace/achats/receptions/reception-BC-012.txt
```

---

## Exemples de prompts

### Commande urgente

```
Commande express pour chantier démarrant demain:

BESOIN CRITIQUE:
- Client appelle: Chantier commence demain 8h
- Manque 50m câble 1,5mm² rouge
- Stock actuel: 0m

ACTION:
1. Identifier fournisseur avec stock immédiat:
   - Appeler 3 fournisseurs locaux
   - Vérifier dispo + possibilité retrait aujourd'hui avant 17h

2. Générer BC urgent:
   - Mention: "RETRAIT IMMÉDIAT - Chantier demain matin"
   - Paiement comptant si nécessaire (vs conditions habituelles)

3. Retrait:
   - Aller chercher (vs livraison trop longue)
   - Accepter surprix si nécessaire (éviter perte chantier)

Coût câble: 75€ + déplacement 20€ + surprix 10€ = 105€
vs
Annulation chantier: Perte facturation 800€ + image client

Décision: Accepter 105€ (rentable)

BC express: ~/Cowork-Workspace/achats/commandes/BC-2026-URGENT-015.pdf
```

### Commande groupée mensuelle

```
Optimise commande mensuelle récurrente:

CONSOMMABLES RÉGULIERS (tous les mois):
- Vis 4x40: 1000 pièces
- Chevilles 8mm: 500 pièces
- Câble 1,5mm²: 200m
- Câble 2,5mm²: 150m
- Gaines ICTA: 100m
- [etc. 15 articles]

STRATÉGIE:
1. Négocier tarif préférentiel (achat récurrent):
   "Je commande ces articles chaque mois, pouvez-vous me faire -10%?"

2. Livraison fixe (ex: chaque 1er du mois):
   - Simplifie organisation
   - Fournisseur peut optimiser tournée

3. Quantités ajustables (±20%):
   - Possibilité modifier selon activité
   - Email ajustement avant date limite

4. Paiement mensualisé:
   - Facilite trésorerie vs paiement gros montant ponctuel

Format: BC mensuel type + ajustements
Sauvegarde: ~/Cowork-Workspace/achats/commandes/BC-MENSUEL-TEMPLATE.xlsx
```

---

## Troubleshooting

### Livraison partielle

**Cause**: Fournisseur en rupture partielle
**Solution**: Gestion scindée:

```
Livraison BC-2026-012: 80% articles reçus, 20% manquants

REÇU:
- Tableau, prises, câbles: ✓ OK

MANQUANT:
- Disjoncteurs diff 40A: Rupture fournisseur (délai +10j)

ACTIONS:
1. Signer BL avec réserves: "Disjoncteurs 40A manquants - Livraison partielle"

2. Demander fournisseur:
   - Bon de livraison complémentaire (BLC) pour articles manquants
   - OU annulation partielle + avoir sur facture

3. Options:
   A. Attendre 10j livraison complétée (si chantier flexible)
   B. Commander ailleurs en urgence (si chantier bloqué)
   C. Solution temporaire (emprunter à confrère, louer)

4. Mise à jour suivi:
   BC-012: Statut "Livrée partielle - BLC attendu"

5. Facture:
   Payer uniquement articles reçus (prorata)
   Complément à réception articles manquants
```

### Erreur réception

**Cause**: Article livré non conforme commande
**Solution**: Réclamation:

```
Réception BC-2026-012: Câble livré 2,5mm² NOIR vs commandé BLEU

CONSTAT:
- Commandé: 180m câble bleu H07VU 2,5mm²
- Reçu: 180m câble NOIR H07VU 2,5mm²
- Erreur: Préparation fournisseur

ACTIONS IMMÉDIATES:
1. NE PAS accepter livraison: "Refus article non-conforme"
2. Livreur repart avec article erroné
3. Photos BL + article + étiquette bobine

Email fournisseur (dans l'heure):
Objet: BC-2026-012 - Article non-conforme refusé

"Bonjour,
Livraison BC-2026-012 ce jour 10h.
Article ref CAB-25-BL commandé: Câble BLEU
Article livré: Câble NOIR
Refus livraison article non-conforme.

Merci de:
- Reprendre article noir
- Livrer article bleu commandé dans les 48h (chantier urgent)

Photos en pièce jointe.
Cordialement"

SUIVI:
- Si reliv rapide: Attendre
- Si délai >2j: Commander ailleurs + facturer surcoût à fournisseur initial
```

---

## Variations

### Intégration EDI (échange électronique)

```
Gros fournisseurs (Rexel, Point P, etc.) = EDI possible:

AVANTAGES:
- Commandes en ligne (catalogue intégré)
- Confirmation automatique
- Suivi temps réel (statut préparation, expédition)
- Facture électronique (import compta direct)

MISE EN PLACE:
1. Créer compte pro fournisseur
2. Lier compte EDI à votre SIRET
3. Importer catalogue dans votre système
4. Commander en ligne vs BC papier

Gain temps: 60% (vs BC manuel + email + suivi téléphone)
```

### Commandes négociées

```
Avant grosse commande (>2000€):

PROCESS NÉGOCIATION:
1. Demander devis à 3 fournisseurs (comparatif)
2. Utiliser meilleur prix pour négocier:
   "Fournisseur X propose même articles à -15%, pouvez-vous aligner?"

3. Négocier conditions:
   - Remise quantité (si commande volume)
   - Port offert
   - Délai paiement (45j vs 30j)
   - Livraison express gratuite

4. Formaliser accord:
   Email fournisseur confirmant tarif négocié
   Générer BC avec tarifs négociés

Économie potentielle: 5-15% sur grosses commandes
```

---

## Bonnes pratiques

1. **Consolidation hebdo** — Regrouper commandes (vs quotidien) → ports optimisés
2. **BC écrit systématique** — Même fournisseur connu (preuve en cas litige)
3. **Numérotation unique** — BC-[année]-[numéro séquentiel] (traçabilité)
4. **Contrôle réception rigoureux** — Vérifier AVANT signature BL (après = trop tard)
5. **Relances préventives** — J-2 avant livraison prévue: Confirmer fournisseur
6. **Relations fournisseurs** — Payer à temps = meilleurs tarifs + priorité livraisons
7. **Stock tampon urgence** — Articles critiques: Garder mini stock (éviter commandes express coûteuses)
8. **Archivage triptyque** — BC + BL + Facture ensemble (contrôle comptable facilité)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
