# Prompts Restauration

Prompts prêts à l'emploi pour restaurateurs indépendants, gérants, traiteurs.

**Whitepaper associé** : [WP-14 : IA pour Restaurateurs et Hôteliers](../whitepapers/fr/14-ia-restauration-hotellerie.qmd)

---

## 1. Carte saisonnière

Crée une proposition de carte complète à partir de vos contraintes saison, fournisseurs et marges cibles.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour ma ligne culinaire, mes fournisseurs habituels et mes contraintes.

Saison : [printemps / été / automne / hiver]
Nombre d'entrées : [X]
Nombre de plats : [X]
Nombre de desserts : [X]
Contraintes : [végétarien, sans gluten, budget matières <[X]€/portion]
Prix moyen cible : entrée [X]€, plat [X]€, dessert [X]€

TÂCHE : Proposer une carte saisonnière avec :
- Nom du plat (court, mémorable)
- Composition principale (4 ingrédients max)
- Ingrédients à surveiller pour les allergènes (parmi les 14 réglementaires)
- Food cost estimé si j'indique le coût matière dans mon CLAUDE.md

CONTRAINTES :
- Produits de saison pour la période indiquée
- Cohérence avec la ligne culinaire de mon CLAUDE.md
- Indiquer les allergènes concernés pour chaque plat (règlement INCO UE 1169/2011)

Sauvegarde :
~/Cowork-Workspace/output/menus/carte-[saison]-[annee].md
```

---

## 2. Food cost par plat

Calcule le ratio coût matière / prix de vente pour chaque plat et trie votre carte par rentabilité.

```
CONTEXTE : Consulte ~/Cowork-Workspace/CLAUDE.md.
Voici ma carte avec les coûts matières par plat :
[coller le tableau nom / coût matière / prix de vente]

TÂCHE : Calculer le food cost % pour chaque plat,
trier par marge (du plus rentable au moins rentable),
identifier les plats sous les 25% et ceux au-dessus des 40%.

Sauvegarde :
~/Cowork-Workspace/output/menus/food-cost-[mois].md
```

**Note** : le food cost mesure uniquement le coût matière. Ajoutez main-d'oeuvre, énergie et charges fixes pour le coût total.

---

## 3. Réponse personnalisée aux avis

Rédige une réponse personnalisée à un avis Google ou TripAdvisor, en citant les éléments spécifiques de l'avis.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour mon nom de restaurant, mon style de communication et mes valeurs.

Avis reçu :
[Coller l'avis complet, avec la note /5]

TÂCHE : Rédiger une réponse à cet avis avec :
- Une accroche personnalisée (citer l'élément principal de l'avis)
- Si avis positif : remerciement sincère + un élément qui prolonge la conversation
- Si avis négatif : reconnaissance du ressenti + explication factuelle si pertinent
  + engagement concret d'amélioration + invitation à revenir
- Signature avec prénom et nom de l'établissement

CONTRAINTES :
- 80 à 120 mots
- Ton chaleureux mais professionnel
- Jamais défensif sur un avis négatif
- Ne pas promettre ce qu'on ne peut pas tenir

Sauvegarde :
~/Cowork-Workspace/output/avis/reponse-[date]-[plateforme].md
```

---

## 4. Comparatif fournisseurs

Compare jusqu'à 3 fournisseurs pour un même produit selon prix, qualité annoncée et logistique.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour mes critères prioritaires (fraîcheur, délai de livraison, minimum de commande).

Produit : [ex. filet de saumon Label Rouge]
Fournisseur A : [prix/kg, délai livraison, minimum commande, conditions paiement]
Fournisseur B : [prix/kg, délai livraison, minimum commande, conditions paiement]
Fournisseur C : [prix/kg, délai livraison, minimum commande, conditions paiement]

TÂCHE : Tableau comparatif avec score global (prix 40%, qualité annoncée 30%,
logistique 30%). Recommandation motivée en 3 lignes.

Sauvegarde :
~/Cowork-Workspace/output/fournisseurs/comparatif-[produit]-[date].md
```

---

## 5. Posts réseaux sociaux (plat du jour ou événement)

Génère 3 versions d'un post adapté à chaque réseau à partir d'un angle ou d'un plat phare.

```
CONTEXTE : Consulte ~/Cowork-Workspace/CLAUDE.md.
Semaine du [date] : [événement ou plat mis en avant cette semaine]

TÂCHE : Rédiger 3 versions d'un post pour [Instagram / Facebook / Google My Business].
Format : légende courte (120 caractères max pour Instagram), texte complet pour Facebook.
Ton conforme à mon CLAUDE.md.
Inclure 3 hashtags locaux pertinents.

Sauvegarde :
~/Cowork-Workspace/output/social/posts-semaine-[date].md
```

---

## Conseils d'utilisation

- Remplis d'abord ton `CLAUDE.md` avec ta ligne culinaire, tes fournisseurs et ton style de communication
- Pour le food cost, lance le prompt #2 chaque mois avec les prix fournisseurs actualisés
- Pour les avis, traite-les en batch le vendredi soir (15 min pour 5-6 réponses)
- Pour les posts, prépare 4 semaines de contenu en une session de 45 min en début de mois

**Template CLAUDE.md restaurateur** : [`examples/claude-md-templates/restaurateur.md`](../examples/claude-md-templates/restaurateur.md)
