# Workflow: Comparatif Prix Fournisseurs

> **Temps estimé**: 20 minutes
> **Difficulté**: Débutant
> **Catégorie**: 💼 Commercial
> **Professions**: Commerçants, Artisans

🌐 **Also available in [English](price-comparison.en.md)**

---

## Cas d'usage

Vous devez acheter matériaux ou marchandises et voulez comparer les fournisseurs pour optimiser vos coûts. Ce workflow vous aide à:

- Comparer prix de plusieurs fournisseurs rapidement
- Intégrer frais de port et délais
- Calculer prix de revient réel
- Identifier meilleur rapport qualité/prix

> ⚠️ **Rentabilité**: Une comparaison systématique peut réduire coûts d'achat de 10-25% sans perte de qualité.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Liste articles à acheter
- [ ] Catalogues ou tarifs fournisseurs (PDF, images, sites web)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Lister besoins d'achat

```bash
mkdir -p ~/Cowork-Workspace/{input,output/comparatifs}
```

Préparer liste:

```
Liste d'achat pour [projet/chantier/mois]:

ARTICLE 1:
- Désignation: [ex: Câble électrique 2,5mm² bleu]
- Référence: [si connue]
- Quantité: [ex: 100m]
- Qualité souhaitée: [Standard / Premium / Norme spécifique]

ARTICLE 2:
- Désignation: [ex: Disjoncteurs 16A]
- Quantité: 10 pièces
- Normes: NF C 15-100

[Autres articles...]

CONTRAINTES:
- Budget max: [si applicable]
- Délai livraison: [si urgent]
- Fournisseur unique préféré: Oui/Non (regrouper commande)

Sauvegarde: ~/Cowork-Workspace/input/liste-achat-[projet].txt
```

### Étape 2: Collecter tarifs fournisseurs

Rassembler informations:

```bash
# Copier catalogues/devis dans input
cp ~/Documents/Catalogues/fournisseur-A.pdf ~/Cowork-Workspace/input/
cp ~/Documents/Catalogues/fournisseur-B.pdf ~/Cowork-Workspace/input/

# OU capturer prix depuis sites web (screenshots)
```

Extraire prix:

```
Analyse ces documents pour ma liste d'achat:
- ~/Cowork-Workspace/input/fournisseur-A.pdf
- ~/Cowork-Workspace/input/fournisseur-B.pdf
- ~/Cowork-Workspace/input/fournisseur-C.pdf

Pour chaque article de ma liste, extrais:
- Prix unitaire HT
- Conditionnement (unité, lot, rouleau, etc.)
- Disponibilité (stock, délai)
- Frais de port (si mentionnés)
- Réductions quantité (paliers remise)

Si article non trouvé dans catalogue: Indiquer "N/D"
```

### Étape 3: Créer tableau comparatif

```
Génère tableau comparatif Excel:

STRUCTURE:

COLONNES FIXES:
A. Article (désignation)
B. Quantité
C. Unité

COLONNES PAR FOURNISSEUR (répéter pour chaque):
- Prix unit. HT
- Total HT article
- Dispo/Délai
- Notes

COLONNES FINALES:
- Meilleur prix (MIN automatique)
- Fournisseur recommandé
- Économie vs plus cher

LIGNES:
- 1 ligne par article
- Ligne TOTAL avec:
  * Sous-total HT par fournisseur
  * Frais de port par fournisseur
  * TOTAL TTC par fournisseur
- Ligne DÉLAI LIVRAISON (max des délais articles)

MISE EN FORME:
- Meilleur prix en vert
- Prix >20% vs meilleur en rouge
- Total le plus bas en vert gras

EXEMPLE:

| Article | Qté | Unité | Prix A | Total A | Dispo A | Prix B | Total B | Dispo B | Meilleur | Recommandé | Économie |
|---------|-----|-------|--------|---------|---------|--------|---------|---------|----------|------------|----------|
| Câble 2,5 | 100 | m | 1,20€ | 120€ | Stock | 1,10€ | 110€ | 5j | 1,10€ | Fourn. B | 10€ |
| Disjonct 16A | 10 | pce | 8,50€ | 85€ | Stock | 9,00€ | 90€ | Stock | 8,50€ | Fourn. A | 5€ |
| SOUS-TOTAL | | | | 205€ | | | 200€ | | | | |
| Port | | | | 25€ | | | 15€ | | | | |
| TOTAL TTC | | | | 276€ | | | 258€ | | | Fourn. B | 18€ |

Format: Excel avec formules automatiques
Sauvegarde: ~/Cowork-Workspace/output/comparatifs/comparatif-[projet]-[date].xlsx
```

### Étape 4: Analyser au-delà du prix

Critères complémentaires:

```
Complète tableau avec scoring global:

CRITÈRES (notation /10 par fournisseur):
1. Prix (déjà calculé)
2. Délais (disponibilité immédiate = 10, >15j = 5)
3. Qualité connue (retour expérience)
4. Service (SAV, conseil, facilité commande)
5. Conditions paiement (30j = 10, comptant = 5)
6. Fiabilité livraison (historique respect délais)

PONDÉRATION:
- Prix: 40%
- Délais: 20%
- Qualité: 20%
- Service: 10%
- Paiement: 5%
- Fiabilité: 5%

SCORE GLOBAL = Σ(Critère × Pondération)

Ajouter onglet "Scoring" dans fichier Excel
Recommandation: Fournisseur avec meilleur score global (pas forcément moins cher)

Exemple:
Fournisseur A: Moins cher (-5%) MAIS délai +10j + paiement comptant
Fournisseur B: +5% MAIS stock + paiement 30j + meilleur SAV
→ Score global B > A si chantier urgent + trésorerie tendue
```

### Étape 5: Décision et commande

Préparer commande:

```
Depuis tableau comparatif, génère bon de commande:

STRATÉGIE RECOMMANDÉE: [Fournisseur unique OU Multi-fournisseurs]

Si fournisseur unique (Fournisseur B):
- Liste tous articles
- Total commande
- Conditions (délai, paiement, port)

Si multi-fournisseurs (optimisation max):
- Articles X, Y chez Fournisseur A
- Articles Z chez Fournisseur B
- Attention: Frais de port multiples

Générer PDF bon de commande prêt à envoyer:
- En-tête avec coordonnées
- Liste articles, qté, prix
- Total HT/TTC
- Adresse livraison
- Référence chantier/projet

Sauvegarde: ~/Cowork-Workspace/output/comparatifs/commande-[fournisseur]-[date].pdf
```

---

## Exemples de prompts

### Comparatif matériaux construction

```
Comparatif achat pour chantier rénovation toiture:

ARTICLES:
1. Tuiles plates 20x30: 500 pièces
2. Liteaux 40x27: 100 mètres linéaires
3. Écran sous-toiture HPV: 150 m²
4. Vis inox: 1000 pièces

FOURNISSEURS:
- Point P (catalogue PDF joint)
- Gedimat (tarif pro joint)
- BigMat (copier-coller depuis email devis)

Créer comparatif avec:
- Prix dégressifs selon quantité
- Frais de port (gratuit si >500€?)
- Disponibilité (certains articles en rupture?)

Recommandation finale tenant compte:
- Prix global
- Livraison semaine prochaine impératif
- Qualité tuiles (préférer fabricant français)

Excel: ~/Cowork-Workspace/output/comparatifs/toiture-Martin-janvier2026.xlsx
```

### Comparatif e-commerce (commerçant)

```
Comparatif pour réapprovisionnement boutique:

PRODUITS (catalogue mode):
1. T-shirt coton bio ref TBK-001: 50 pièces
2. Jean slim ref JSL-450: 30 pièces
3. Robe été ref RET-220: 20 pièces

GROSSISTES:
- Fournisseur A: remise -30% dès 100 pièces total
- Fournisseur B: pas de minimum mais +10% prix
- Fournisseur C: nouveauté, tarif agressif mais inconnu

Comparer:
- Prix de vente public conseillé (PPC)
- Prix d'achat HT
- Marge brute (PPC - Achat)
- Taux de marge (Marge / PPC)

Objectif: Marge minimale 50% sur vêtements

Identifier si atteindre 100 pièces chez A = rentable
OU mieux répartir entre B et C

Excel avec simulation marge selon mix fournisseurs
```

---

## Troubleshooting

### Catalogues incomplets

**Cause**: Article pas dans tous catalogues
**Solution**: Contacts directs:

```
Article "Disjoncteur différentiel 40A type A" non trouvé catalogue Fournisseur C

Actions:
1. Vérifier référence constructeur (Legrand, Schneider, etc.)
2. Email fournisseur avec référence exacte
3. Si pas de réponse sous 48h: Exclure fournisseur pour cet article
4. Comparer uniquement fournisseurs ayant article

Note tableau: "Fournisseur C: Article non disponible"
```

### Frais cachés

**Cause**: Comparaison prix seul (sans port, emballage, etc.)
**Solution**: Coût total possession:

```
Au-delà du prix affiché, intégrer:

FRAIS DIRECTS:
- Port (gratuit dès quel montant?)
- Emballage/palette (si volumineux)
- Assurance transport (si fragile)

FRAIS INDIRECTS:
- Temps déplacement (si retrait magasin vs livraison)
- Carburant aller-retour
- Coût stockage (si achat gros volume)

Exemple réel:
Fournisseur A: 200€ HT + 30€ port = 230€
Fournisseur B (local): 220€ HT + retrait gratuit + 1h aller-retour (20€ coût) = 240€
→ A moins cher MAIS B si urgence (gain temps)

Ajouter colonne "Coût total réel" dans comparatif
```

### Qualité variable

**Cause**: Prix bas = qualité moindre?
**Solution**: Test échantillon:

```
Doute sur qualité Fournisseur C (30% moins cher):

Avant grosse commande:
1. Commander échantillon (1 unité)
2. Tester en conditions réelles
3. Comparer avec produit fournisseur habituel

Si qualité équivalente: Valider fournisseur C
Si qualité inférieure: Écarter même si moins cher (retours clients, SAV coûteux)

Budget échantillons: 5-10% gain potentiel (rentable si économies confirmées)
```

---

## Variations

### Comparatif récurrent (mensuel)

```
Articles achetés régulièrement (consommables):

Créer grille comparative permanente:
- Prix suivis mensuellement
- Évolution prix (flèche hausse/baisse)
- Alertes si augmentation >10%

Exemples:
- Câbles électriques (électricien)
- Farine/sucre (boulanger)
- Vis/chevilles (tous corps de métier)

Fichier: ~/Cowork-Workspace/output/comparatifs/suivi-prix-consommables-2026.xlsx
Mise à jour: 1er de chaque mois
Graphique évolution prix sur 12 mois
```

### Négociation conditions

```
Depuis comparatif, préparer arguments négociation:

"Bonjour Fournisseur A,

Votre concurrent B propose même article à 1,10€ vs votre prix 1,20€.

Pouvez-vous aligner votre tarif si je commande 500m au lieu de 100m?
OU
Proposer geste commercial (remise, port offert)?

Sinon je commanderai chez B.

Dans l'attente,
Cordialement"

Template email négociation:
- Factuel (prix concurrent)
- Proposition volume (gagnant-gagnant)
- Alternative claire (pas de bluff)

Sauvegarder: ~/Cowork-Workspace/output/comparatifs/nego-fournisseur-A-[date].txt
```

---

## Bonnes pratiques

1. **Comparer 3 mini** : Minimum 3 fournisseurs pour vraie concurrence
2. **Coût total** : Intégrer port, délai, conditions paiement (pas que prix)
3. **Scoring multi-critères** : Prix ≠ seul critère (qualité, service comptent)
4. **Historique** : Conserver comparatifs (suivre évolutions prix)
5. **Relations fournisseurs** : Fidélité peut obtenir meilleurs tarifs long terme
6. **Test nouveaux** : Tester 1 nouveau fournisseur/an (éviter routine coûteuse)
7. **Négociation** : Montrer comparatifs pour obtenir alignement tarifs
8. **Automatisation** : Si achats récurrents, créer template Excel réutilisable

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
