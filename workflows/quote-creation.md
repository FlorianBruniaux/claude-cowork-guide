# Workflow: Création de Devis

> **Temps estimé**: 20 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 💼 Commercial
> **Professions**: Artisans, Commerçants

🌐 **Also available in [English](quote-creation.en.md)**

---

## Cas d'usage

Vous devez rédiger des devis détaillés pour vos clients. Ce workflow vous aide à:

- Créer des devis professionnels chiffrés
- Calculer prix de revient et marges
- Générer descriptions techniques claires
- Adapter rapidement un devis existant pour nouveau client

> ⚠️ **Important**: Un devis engage votre responsabilité professionnelle. Vérifiez toujours les prix, quantités et délais avant envoi.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Informations client (nom, projet, contact)
- [ ] Liste des prestations à chiffrer
- [ ] Grille tarifaire ou prix de revient
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Préparer les informations

```bash
# Créer la structure
mkdir -p ~/Cowork-Workspace/{input,output/devis}

# Si vous avez une grille tarifaire
cp ~/Documents/grille-tarifs.xlsx ~/Cowork-Workspace/input/
```

### Étape 2: Créer le devis

```
Crée un devis professionnel pour:

CLIENT:
- Nom: [Nom du client]
- Projet: [Nature du projet]
- Adresse chantier: [Adresse si applicable]

MES COORDONNÉES:
- Entreprise: [Votre raison sociale]
- Adresse: [Votre adresse complète]
- SIRET: [Votre SIRET]
- Contact: [Tel + email]

DEVIS N°: D2026-001
Date: 20 janvier 2026
Validité: 3 mois

PRESTATIONS:
[Liste détaillée avec quantités, descriptions, prix]

Pour chaque ligne:
- Désignation précise
- Quantité
- Unité
- Prix unitaire HT
- Total HT

CALCULS:
- Sous-total HT
- TVA 20%
- Total TTC

CONDITIONS:
- Délai d'exécution: [X jours/semaines]
- Acompte: [si applicable]
- Conditions de paiement: [modalités]
- Validité: 3 mois

Format: PDF
Sauvegarde: ~/Cowork-Workspace/output/devis/D2026-001.pdf
```

### Étape 3: Ajouter descriptions techniques

Pour artisans/BTP:

```
Pour chaque prestation, ajoute:
- Description technique détaillée
- Matériaux utilisés (marques, références)
- Normes applicables (DTU, NF, etc.)
- Délais d'intervention
- Garanties

Exemple:
"Pose de 3 fenêtres PVC double vitrage 4/16/4 argon,
coefficient Uw=1,3 W/m².K, conformité RE2020,
coloris blanc RAL 9016, pose selon DTU 36.5,
garantie décennale, délai 2 semaines"
```

### Étape 4: Vérifier et ajuster

Cowork montrera le plan. **Vérifiez**:

- ✓ Calculs corrects (marges incluses)
- ✓ Descriptions compréhensibles par le client
- ✓ Délais réalistes
- ✓ Conditions claires

Si ajustement nécessaire:

```
Modifie le devis:
- Augmente marge sur prestation 2 de 25% à 30%
- Réduis délai de 4 à 3 semaines
- Ajoute option: [description option] +[prix]
```

### Étape 5: Générer le devis

```
Procède avec la génération du devis
```

Vérifier le résultat:

```bash
open ~/Cowork-Workspace/output/devis/D2026-001.pdf
```

---

## Exemples de prompts

### Devis électricité (artisan)

```
Devis électricien pour Mme Dubois, 45 rue Victor Hugo 69001 Lyon

Prestations:
1. Mise aux normes tableau électrique:
   - Remplacement tableau vétuste
   - Installation disjoncteur diff 30mA
   - 12 disjoncteurs modulaires
   - Mise à la terre
   - Prix: 1200€ HT

2. Installation prises cuisine:
   - 6 prises 16A avec terre
   - Câblage 2,5mm² sous goulotte
   - Prix: 450€ HT

3. Points lumineux salon (3 spots LED):
   - Câblage + spots
   - Interrupteur va-et-vient
   - Prix: 280€ HT

Conformité NF C 15-100
Délai: 3 jours
Acompte 30% à la commande
Paiement solde fin de chantier
Garantie décennale

Mes coordonnées: Dupont Électricité, SIRET 123456789, Lyon

PDF: ~/Cowork-Workspace/output/devis/D2026-018-Dubois.pdf
```

### Devis avec options

```
Crée devis plomberie avec 3 options:

BASE (obligatoire):
- Remplacement chaudière gaz: 3500€ HT
- Pose radiateurs x5: 1800€ HT

OPTION 1 (si client accepte):
- Thermostat connecté: +350€ HT

OPTION 2 (alternative):
- Robinets thermostatiques: +280€ HT

OPTION 3 (complémentaire):
- Contrat entretien annuel: +120€ HT/an

Présente 3 totaux:
- Minimum (base seule)
- Recommandé (base + option 1)
- Complet (base + toutes options)
```

---

## Troubleshooting

### Calcul de marge difficile

**Cause**: Prix de revient mal estimé
**Solution**: Demander aide au calcul:

```
Mon coût matériaux: 450€
Mon temps: 8h à 35€/h
Frais déplacement: 40€
Charges fixes (20% CA): ?
Marge souhaitée: 25%

Calcule mon prix de vente HT
```

### Descriptions trop techniques

**Cause**: Jargon professionnel
**Solution**: Adapter au client:

```
Réécris les descriptions techniques en langage client:
- Évite jargon
- Explique bénéfices (confort, économies, sécurité)
- Garde précision réglementaire en petit
```

### Devis trop long

**Cause**: Trop de détails
**Solution**: Regrouper par lots:

```
Regroupe les prestations par lots:
- Lot 1: Gros œuvre (total HT)
- Lot 2: Second œuvre (total HT)
- Lot 3: Finitions (total HT)

Détails en annexe séparée
```

---

## Variations

### Devis comparatif (3 formules)

```
Crée 3 versions du devis:

FORMULE ÉCO:
- Matériaux standard
- Garantie légale uniquement
- Total: [calculer]

FORMULE CONFORT (recommandée):
- Matériaux qualité supérieure
- Garantie étendue 5 ans
- Total: [calculer]

FORMULE PREMIUM:
- Matériaux haut de gamme
- Garantie 10 ans
- Service prioritaire
- Total: [calculer]
```

### Devis depuis ancienne affaire

```
Reprends le devis ~/Cowork-Workspace/input/D2025-156.pdf

Adapte pour nouveau client:
- Nouveau nom: Martin SAS
- Même prestations
- Nouveaux prix (indexation +3% inflation)
- Nouveau numéro: D2026-022
- Nouvelle date validité

Sauvegarde: ~/Cowork-Workspace/output/devis/D2026-022-Martin.pdf
```

### Export Excel récapitulatif

```
Après création du devis PDF, génère aussi:

Fichier Excel: ~/Cowork-Workspace/output/devis/D2026-001-calculs.xlsx

Avec onglets:
- Prix de revient (matériaux + main d'œuvre)
- Marges par poste
- Comparatif avec concurrence
- Planning prévisionnel
```

---

## Bonnes pratiques

1. **Numérotation unique** : Système de numérotation continu (D[année]-[numéro])
2. **Validité limitée** : Généralement 3 mois (préciser explicitement)
3. **Conditions claires** : Acompte, délais, paiement, garanties
4. **Photos si utile** : Joindre photos chantier pour devis rénovation
5. **Versions** : Conserver historique si devis modifié (v1, v2, etc.)
6. **Relecture** : Faire relire par tiers si montant important
7. **Délai réponse** : Relancer client après 1 semaine sans réponse
8. **Devis = engagement** : Prix et prestations figés sauf mention contraire

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
