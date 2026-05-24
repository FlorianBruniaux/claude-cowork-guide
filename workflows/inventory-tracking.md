# Workflow: Suivi de Stock et Alertes

> **Temps estimé**: 20 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 🔧 Production
> **Professions**: Commerçants, Artisans

🌐 **Also available in [English](inventory-tracking.en.md)**

---

## Cas d'usage

Vous gérez un stock de marchandises ou de matériaux et devez éviter ruptures ou surstocks. Ce workflow vous aide à:

- Suivre niveaux de stock en temps réel
- Recevoir alertes stock bas
- Calculer stock optimal et seuils réapprovisionnement
- Analyser rotation et identifier produits dormants

> ⚠️ **Impact business**: Ruptures = perte ventes (5-15% CA). Surstock = immobilisation trésorerie + obsolescence.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Liste produits/articles à suivre
- [ ] Données historiques ventes (si disponible)
- [ ] Fournisseurs et délais livraison
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Initialiser fichier stock

```bash
mkdir -p ~/Cowork-Workspace/stock
```

Créer structure:

```
Crée fichier suivi stock pour: [Nom commerce/activité]

COLONNES:
A. Réf article (code unique)
B. Désignation
C. Catégorie (regroupement)
D. Unité (pièce, mètre, kg, etc.)
E. Stock actuel (quantité)
F. Stock minimum (seuil alerte)
G. Stock maximum (capacité stockage)
H. Stock optimal (niveau cible)
I. En commande (quantité commandée non reçue)
J. Coût unitaire (prix achat)
K. Valeur stock (Stock × Coût)
L. Dernière entrée (date)
M. Dernière sortie (date)
N. Rotation (jours moyen écoulement)
O. Fournisseur principal
P. Délai livraison (jours)
Q. Statut (OK / Alerte / Rupture / Surstock)

FORMULES AUTOMATIQUES:
- Valeur stock = E × J
- Statut = SI(E <= F, "Rupture", SI(E <= F×1.5, "Alerte", SI(E >= G, "Surstock", "OK")))
- Rotation = (Stock actuel / Ventes mensuelles moyennes) × 30

MISE EN FORME CONDITIONNELLE:
- Rupture (rouge): Stock ≤ Stock minimum
- Alerte (orange): Stock ≤ Stock minimum × 1.5
- Surstock (bleu): Stock ≥ Stock maximum
- OK (vert): Entre min et max

Format: Excel avec onglets (Stock | Mouvements | Analyses)
Sauvegarde: ~/Cowork-Workspace/stock/suivi-stock-2026.xlsx
```

### Étape 2: Définir seuils par article

Calculer stocks optimaux:

```
Pour chaque article, calcule seuils intelligents:

EXEMPLE ARTICLE: Câble électrique 2,5mm²

DONNÉES:
- Ventes moyennes: 50m/mois
- Délai livraison fournisseur: 5 jours
- Variabilité ventes: ±20%

CALCULS:
1. STOCK MINIMUM (seuil alerte):
   Formule: (Ventes quotidiennes × Délai livraison) × (1 + Marge sécurité)
   = (50/30 jours × 5j) × 1.3
   = 8.3m × 1.3 = 11m

   → Stock minimum: 15m (arrondi sécurité)

2. STOCK OPTIMAL (niveau cible):
   Formule: Stock minimum × 2 à 3
   = 15m × 2.5 = 37.5m

   → Stock optimal: 40m

3. STOCK MAXIMUM:
   Formule: Selon capacité stockage OU 3 mois ventes max
   = Min(Capacité physique, 50m × 3)
   = 150m (si espace suffisant)

4. QUANTITÉ RÉAPPRO:
   Formule: Stock optimal - Stock actuel
   Si Stock actuel = 12m → Commander 28m (pour atteindre 40m)

Appliquer cette méthode à TOUS articles:
- Adapter marge sécurité selon criticité article
- Articles critiques (demande forte): +30-50% marge
- Articles classiques: +20-30%
- Articles lents: +10-20%

Remplir colonnes F, G, H dans fichier Excel
```

### Étape 3: Enregistrer mouvements

Chaque entrée/sortie stock:

```
MOUVEMENT: Réception commande fournisseur

Onglet "Mouvements" du fichier stock:

COLONNES:
- Date
- Type (Entrée / Sortie)
- Réf article
- Quantité
- Fournisseur (si entrée) / Client (si sortie)
- N° commande/facture
- Commentaire

EXEMPLE ENTRÉE:
20/01/2026 | Entrée | CAB-25-BL | +100m | Fournisseur Legrand | CMD-2026-015 | Réappro stock bas

MISE À JOUR AUTOMATIQUE onglet "Stock":
- Stock actuel CAB-25-BL: ancien + 100m
- Dernière entrée: 20/01/2026
- En commande: -100m (commande reçue)
- Recalcul statut

EXEMPLE SORTIE:
21/01/2026 | Sortie | CAB-25-BL | -25m | Chantier Dupont | FAC-2026-042 | Installation électrique

MISE À JOUR:
- Stock actuel: ancien - 25m
- Dernière sortie: 21/01/2026
- Vérifier si déclenche alerte stock bas
```

### Étape 4: Alertes automatiques

Générer alertes hebdomadaires:

```
Chaque lundi matin, analyse stock:

RAPPORT ALERTES:

📛 RUPTURES (stock ≤ minimum):
- Câble 2,5mm² bleu: Stock 8m (min 15m) → Commander 32m URGENT
- Disjoncteur 16A: Stock 2pce (min 5pce) → Commander 20pce

⚠️ ALERTES (stock bas):
- Gaine ICTA Ø20: Stock 45m (min 30m, optimal 60m) → Commander 50m cette semaine
- Boîte dérivation: Stock 18pce (optimal 30pce) → Commander 20pce

💰 SURSTOCKS (immobilisation):
- Câble 6mm² noir: Stock 280m (max 150m) → Surstock 130m = 450€ immobilisés
  Action: Promotion OU ne pas réapprovisionner 6 mois

🐌 PRODUITS DORMANTS (rotation >90j):
- Interrupteur va-et-vient doré: Stock 25pce, aucune vente 3 mois
  Action: Déstockage -30% OU retour fournisseur si possible

COMMANDES À PASSER:
Total articles en rupture/alerte: 4
Montant commandes prioritaires: 850€
Fournisseurs à contacter: Legrand, Schneider

Format: Email auto-envoyé ou PDF
Sauvegarde: ~/Cowork-Workspace/stock/alertes-stock-semaine-[X].pdf
```

### Étape 5: Analyses rotation

Mensuel, analyser performance stock:

```
Fin de mois, génère analyses:

1. CLASSEMENT ABC (Pareto):
   Classe A (20% articles = 80% valeur):
   - Suivre quotidiennement
   - Jamais de rupture acceptable

   Classe B (30% articles = 15% valeur):
   - Suivre hebdomadairement
   - Ruptures occasionnelles tolérées

   Classe C (50% articles = 5% valeur):
   - Suivre mensuellement
   - Optimiser coûts stockage (rotation lente OK)

2. TAUX ROTATION GLOBAL:
   Formule: (CA annuel / Valeur stock moyenne) × 365
   Objectif commerce: 8-12 rotations/an
   Objectif artisan: 15-25 rotations/an

   Si <8: Trop de stock dormant
   Si >25: Risque ruptures fréquentes

3. TAUX SERVICE (disponibilité):
   % demandes satisfaites sans rupture
   Objectif: >95%

   Si <90%: Revoir stocks minimums (trop bas)

4. COÛT STOCK:
   Coût stockage = Valeur stock × Taux possession (20-30%/an)
   Inclut: Loyer entrepôt, assurance, obsolescence, casse

   Exemple: Stock 10 000€ × 25% = 2500€/an coût stockage
   Optimiser = réduire ce coût sans impacter service

Format: Dashboard Excel avec graphiques
Sauvegarde: ~/Cowork-Workspace/stock/analyse-mensuelle-[mois].xlsx
```

---

## Exemples de prompts

### Initialisation stock commerce

```
Initialise suivi stock pour: Quincaillerie

50 références principales:
- Visserie (vis, chevilles, clous): 15 refs
- Outillage main (marteaux, tournevis): 10 refs
- Électricité (douilles, interrupteurs): 10 refs
- Plomberie (raccords, joints): 10 refs
- Peinture (pots, pinceaux, rouleaux): 5 refs

Pour chaque catégorie:
- Estimer ventes mensuelles moyennes (historique OU estimation)
- Calculer stocks min/opt/max
- Identifier fournisseurs + délais
- Remplir fichier Excel

Focus produits forte rotation (vis, chevilles) → seuils élevés
Produits lents (outillage spécialisé) → seuils bas

Sauvegarde: ~/Cowork-Workspace/stock/quincaillerie-stock-2026.xlsx
```

### Inventaire physique (annuel)

```
Inventaire annuel: Compter stock réel vs fichier

PROCESSUS:
1. Imprimer liste articles (colonnes: Réf, Désignation, Stock théorique, Stock compté)
2. Compter physiquement TOUS articles
3. Noter écarts (différences théorique vs réel)

ANALYSE ÉCARTS:
- Écart <5%: Normal (arrondis, petites erreurs)
- Écart 5-10%: Vérifier mouvements non enregistrés
- Écart >10%: Investigation (vol? casse? erreur saisie?)

AJUSTEMENT STOCK:
Pour chaque écart >5%:
- Enregistrer mouvement "Ajustement inventaire"
- Mettre à jour stock fichier = stock réel compté
- Documenter raison écart si connue

RÉSULTATS INVENTAIRE:
- Taux fiabilité stock: X% (écarts <5%)
- Valeur écarts: Y€
- Actions correctives si taux <95%

Format: Rapport PDF + mise à jour fichier stock
Sauvegarde: ~/Cowork-Workspace/stock/inventaire-2026.pdf
```

---

## Troubleshooting

### Ruptures fréquentes

**Cause**: Seuils trop bas ou délais sous-estimés
**Solution**: Réévaluation:

```
Analyse ruptures mois dernier:
- Article X: 3 ruptures (sur 4 semaines)
- Stock minimum actuel: 10 unités
- Délai livraison: 5 jours

DIAGNOSTIC:
- Ventes réelles: 80 unités/mois (vs 50 estimé)
- Pic demande: Jusqu'à 30 unités/semaine

CORRECTION:
Nouveau stock minimum: (80/30j × 5j) × 1.5 = 20 unités
Nouveau stock optimal: 50 unités
Augmenter quantité commande: 60 unités (vs 30 avant)

Appliquer formule:
Si ruptures >2/mois → augmenter stock min de 30-50%
```

### Surstock chronique

**Cause**: Surestimation ventes ou commandes trop grosses
**Solution**: Déstockage:

```
Article Y: Stock 500 unités, optimal 80 unités
Surstock: 420 unités = 2100€ immobilisés

OPTIONS DÉSTOCKAGE:
1. Promotion -20-30%: Écouler rapide (perte marge mais récupère cash)
2. Retour fournisseur: Si accord (frais 10-15% mais débarrasse)
3. Revente grossiste: Perte 30-40% mais liquidité rapide
4. Don association: Défiscalisation partielle + bonne image

PRÉVENTION:
- Réduire quantité commande: 80 unités max (vs 200 avant)
- Augmenter fréquence: Commander tous les 15j (vs 1 fois/mois)
- Négocier livraisons fractionnées avec fournisseur
```

### Fichier non à jour

**Cause**: Oubli saisie mouvements
**Solution**: Routine quotidienne:

```
FIN DE JOURNÉE (5 min):
1. Lister ventes/sorties jour:
   - Factures émises → articles vendus
   - Matériaux utilisés chantier

2. Lister réceptions jour:
   - Livraisons fournisseurs
   - Retours clients

3. Saisir TOUS mouvements dans fichier stock

4. Vérifier alertes déclenchées

AUTOMATION possible:
- Lier caisse enregistreuse → stock (décrémente auto)
- Scanner codes-barres entrées/sorties
- Import factures fournisseurs → stock

Minimum: Mise à jour quotidienne (pas hebdo → trop d'oublis)
```

---

## Variations

### Stock multi-sites

```
Commerce avec 2 points vente + entrepôt:

Structure fichier:
Onglets: Magasin A | Magasin B | Entrepôt | Global

Colonnes ajoutées:
- Stock Magasin A
- Stock Magasin B
- Stock Entrepôt
- Stock Total = somme

Transferts inter-sites:
Mouvement spécial "Transfert":
- Sortie site source
- Entrée site destination
- Même jour, même quantité

Alertes par site:
- Rupture Magasin A mais stock Magasin B → Transférer
- Si global bas → Commander

Optimisation: Centraliser stock lent à l'entrepôt, répartir stock rapide dans magasins
```

### Intégration code-barres

```
Système lecture codes-barres:

MATÉRIEL:
- Lecteur code-barres USB (~50-100€)
- Étiquettes code-barres articles

PROCESS:
1. Attribution codes: EAN13 ou codes internes
2. Étiquetage tous articles
3. Scan entrée stock → enregistre mouvement
4. Scan sortie → décrémente stock

AVANTAGES:
- Rapidité saisie (scan vs frappe manuelle)
- Zéro erreur référence
- Inventaires accélérés (scan = compte)

Fichier Excel compatible:
- Colonne "Code-barres"
- Macro VBA capture scan → mise à jour auto
```

---

## Bonnes pratiques

1. **Mise à jour quotidienne** : Fichier à jour = alertes fiables
2. **Inventaires réguliers** : Physique vs fichier (annuel minimum)
3. **Seuils évolutifs** : Ajuster si ruptures/surstocks récurrents
4. **Fournisseurs backup** : 2nd source si fournisseur principal en rupture
5. **Prévisions saisonnières** : Anticiper pics (Noël, rentrée, etc.)
6. **Stock outil** : Pas objectif en soi (juste moyen servir clients)
7. **Rotation priorité** : Mieux stock faible rotatif que gros stock dormant
8. **Coût total possession** : Optimiser valeur stock (cash immobilisé)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
