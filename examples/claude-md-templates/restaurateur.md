# Template CLAUDE.md : Restaurateur et Hôtelier

Copier ce fichier sous `~/Cowork-Workspace/CLAUDE.md` et remplacer les parties entre `[crochets]`.

---

```markdown
# Mon contexte Cowork

## Qui je suis

Je tiens [Nom du restaurant], un restaurant [traditionnel / bistronomique / rapide / brasserie] à [ville].
Structure : [auto-entrepreneur / SARL / SAS] depuis [année].
Capacité : [X] couverts, service [déjeuner / dîner / les deux].
Nombre de salariés : [X] (hors moi-même).

## Ma ligne culinaire

Style de cuisine : [ex. "cuisine du terroir lyonnais, produits locaux, circuits courts"]
Spécialités : [ex. "quenelles maison, saucisson brioché, tarte tatin"]
Contraintes alimentaires fréquentes : [ex. "30% de la clientèle demande sans gluten"]
Saisons prioritaires : [ex. "printemps et été sont les plus chargés"]

## Mon style de communication

Ton général : [ex. "chaleureux et décontracté, on se tutoie avec les habitués"]
Ce qu'on ne fait jamais : [ex. "on ne promet pas de table sans réservation"]
Signature email/réseaux : [ex. "Marc, Le Comptoir des Saisons"]

## Mes fournisseurs habituels

| Catégorie | Fournisseur | Contact | Conditions |
|-----------|-------------|---------|------------|
| Viandes | [Nom] | [tel/email] | [livraison J, paiement 30j] |
| Poissons | [Nom] | [tel/email] | [livraison J, paiement 30j] |
| Fruits et légumes | [Nom] | [tel/email] | [livraison J, paiement 30j] |
| Epicerie sèche | [Nom] | [tel/email] | [livraison semaine] |
| Produits laitiers | [Nom] | [tel/email] | [livraison J] |
| Boissons | [Nom] | [tel/email] | [livraison semaine] |

## Mes prix et marges cibles

Fourchette de prix : entrée [X à X]€, plat [X à X]€, dessert [X à X]€
Food cost cible : [25 à 35]% (adapter selon mon positionnement)
TVA restauration : 10% sur les boissons chaudes et aliments, 20% sur l'alcool

## Ma carte actuelle

[Coller votre carte actuelle ou un résumé par catégorie]

Saison actuelle : [printemps / été / automne / hiver]
Prochain changement de carte prévu : [mois]

## Mes données de commande

Couverts moyens par service :
- Déjeuner semaine : [X]
- Déjeuner week-end : [X]
- Dîner semaine : [X]
- Dîner week-end : [X]

## Mes plateformes en ligne

Google My Business : [lien ou "configuré"]
TripAdvisor : [lien ou "pas de compte"]
TheFork / La Fourchette : [lien ou "pas de compte"]
Instagram : [@handle ou "pas de compte"]
Facebook : [lien ou "pas de compte"]

## Structure de mon workspace

~/Cowork-Workspace/
├── input/
│   ├── avis/           # Avis à traiter (copier-coller depuis Google/TripAdvisor)
│   ├── commandes/      # Bons de commande fournisseurs reçus
│   └── menus/          # Cartes actuelles et en cours
├── output/
│   ├── avis/           # Réponses aux avis générées
│   ├── commandes/      # Bons de commande générés
│   ├── fournisseurs/   # Comparatifs et négociations
│   ├── menus/          # Cartes saisonnières générées, food cost
│   └── social/         # Posts réseaux sociaux générés
└── archive/            # Fichiers traités, classés par mois
```

---

## Utilisation recommandée

**Lundi matin (30 min)** : bon de commande de la semaine + comparatif prix si hausse fournisseur
**Mardi matin (15 min)** : planning équipe si besoin d'ajustement
**Mercredi matin (20 min)** : post réseaux sociaux de la semaine (plat phare ou événement)
**Vendredi soir (20 min)** : réponses aux avis de la semaine + food cost des nouveaux plats

**Changement de carte (trimestriel)** : lancer le prompt carte saisonnière 3 semaines avant la date de changement pour avoir le temps d'ajuster.

**Prompts associés** : [`prompts/restauration.fr.md`](../../prompts/restauration.fr.md)
**Whitepaper complet** : [`whitepapers/fr/14-ia-restauration-hotellerie.qmd`](../../whitepapers/fr/14-ia-restauration-hotellerie.qmd)
