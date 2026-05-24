# Prompts Immobilier

Prompts prêts à l'emploi pour agents immobiliers indépendants, mandataires et petites agences.

**Whitepaper associé** : [WP-15 : IA pour Agents et Mandataires Immobiliers](../whitepapers/fr/15-ia-agents-immobiliers.qmd)

---

## 1. Rédaction d'annonce immobilière

Rédige 3 versions d'une annonce (courte, longue, réseaux sociaux) à partir du dossier de visite, sans adjectifs génériques.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour mon style de rédaction et mes formats habituels.

Bien :
- Type : [appartement T2 / maison 4 pièces / etc.]
- Surface : [X] m2
- Etage : [X/X] (si applicable)
- Quartier : [nom du quartier + 2 caractéristiques précises du quartier]
- Atouts principaux : [liste de 5 atouts concrets, pas d'adjectifs génériques]
- Points d'attention : [ex. pas d'ascenseur / vue partielle sur immeuble]
- Travaux récents : [ex. cuisine refaite en 2023, chaudière 2022]
- Prix affiché : [X]€ [avec/sans] honoraires
- DPE : [lettre]

TÂCHE : Rédiger 3 versions de l'annonce :
- Version courte (800 caractères max) pour SeLoger / Le Bon Coin
- Version complète (1 500 caractères max) pour site agence
- Version mots-clés (titre + 3 points forts) pour réseaux sociaux

CONTRAINTES :
- Aucun adjectif générique sans preuve (pas "lumineux" sans préciser l'orientation)
- Mentionner le DPE (obligation légale)
- Zéro faute d'orthographe
- Pas d'abréviation dans la version complète

Sauvegarde :
~/Cowork-Workspace/output/annonces/[reference-bien]-[date].md
```

---

## 2. Email de prospection vendeur (pige)

Rédige un email de premier contact personnalisé à partir d'une annonce particulier, en apportant une information de valeur immédiate.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour ma zone de prospection, mes références vendues et mon ton de communication.

Bien ciblé :
- Type : [ex. appartement T3 Bordeaux Chartrons]
- Annonce (texte copié) : [coller le texte de l'annonce particulier]
- Prix demandé : [X]€
- Estimation comparative du quartier (vos données) : [X à Y]€/m2

TÂCHE : Rédiger un email de prospection vendeur de 150 à 200 mots avec :
- Une accroche qui prouve que vous connaissez le bien (citer 1 élément spécifique)
- Une information de valeur immédiate (données comparables récents du quartier)
- Une proposition concrète et sans pression (audit gratuit de l'annonce)
- Une signature avec vos coordonnées et votre carte T

CONTRAINTES :
- Ne pas promettre un prix supérieur à l'estimation comparative
- Ne pas dénigrer le prix demandé par le particulier
- Ton professionnel et bienveillant, pas commercial

Sauvegarde :
~/Cowork-Workspace/output/prospection/email-pige-[reference]-[date].md
```

---

## 3. Compte-rendu de visite pour le vendeur

Rédige un compte-rendu structuré après chaque visite, à envoyer au vendeur dans les 24h.

```
CONTEXTE : Consulte ~/Cowork-Workspace/CLAUDE.md.
Bien : [référence]
Acquéreur : [prénom ou code anonymisé]
Date de visite : [date]
Réactions pendant la visite : [notes libres, en vrac]
Points positifs mentionnés : [liste]
Points de blocage mentionnés : [liste]
Position sur le prix : [sous-entendu / direct / pas abordé]

TÂCHE : Compte-rendu de visite en 3 parties :
(1) Profil de l'acquéreur et motivation (anonymisé),
(2) Retours factuels sur le bien,
(3) Recommandation sur le prix avec justification de marché.

Ton factuel et professionnel. Pas de faux espoir sur l'acquéreur si le prix est bloquant.

Sauvegarde :
~/Cowork-Workspace/output/visites/cr-[reference]-[date]-[acquereur].md
```

---

## 4. Estimation comparative de marché

Prépare une synthèse d'estimation à partir de vos comparables DVF/Perval, avec fourchette basse/haute et recommandation de prix de mise en marché.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour mes données de marché par secteur.

Bien à estimer :
- Type : [ex. T3, 68m2, 3e étage sans ascenseur, parking, cave]
- Adresse ou secteur : [quartier, ville]
- Etat général : [très bon / bon / à rafraichir / à rénover]
- DPE : [lettre]

Comparables récents (à renseigner depuis DVF ou Perval) :
- Comparable 1 : [adresse, prix, surface, date, caractéristiques]
- Comparable 2 : [adresse, prix, surface, date, caractéristiques]
- Comparable 3 : [adresse, prix, surface, date, caractéristiques]

TÂCHE : Synthèse d'estimation en 3 parties :
(1) Prix/m2 des comparables avec ajustements motivés,
(2) Fourchette d'estimation basse/haute avec justification,
(3) Recommandation de prix de mise en marché avec délai estimé.

CONTRAINTES :
- Toujours formuler "estimation indicative" ou "valeur vénale estimée"
- Mentionner les limites de l'analyse (données DVF pas toujours à jour)
- Ne pas promettre un délai de vente précis

Sauvegarde :
~/Cowork-Workspace/output/estimations/[reference-bien]-[date]-estimation.md
```

---

## 5. Relance acquéreur après visite

Rédige un email de relance J+5 personnalisé qui rappelle un détail de la visite et propose une suite concrète.

```
CONTEXTE : Consulte ~/Cowork-Workspace/CLAUDE.md.
Acquéreur : [prénom ou code]
Bien visité : [référence]
Date de la visite : [date]
Point de blocage supposé : [prix / travaux / localisation / superficie]

TÂCHE : Email de relance J+5 avec :
- Référence à un élément spécifique de la visite
- Si prix bloquant : rappel des comparables récents et argument de négociation
- Si travaux : estimation des coûts travaux pour recadrer la valorisation
- Proposition d'un deuxième passage ou d'une offre conditionnelle

Ton bienveillant, pas insistant.

Sauvegarde :
~/Cowork-Workspace/output/relances/relance-[reference]-[acquereur]-[date].md
```

---

## Conseils d'utilisation

- Remplis ton `CLAUDE.md` avec tes données de marché par secteur (prix/m2, délais moyens) pour calibrer les estimations
- Pour les annonces, prépare le dossier de visite complet AVANT de lancer le prompt (5 atouts concrets minimum)
- Lance les relances acquéreurs systématiquement J+5 via batch, ne les laisse pas s'accumuler
- Envoie le compte-rendu de visite dans les 24h pendant que les détails sont frais

**Template CLAUDE.md agent immobilier** : [`examples/claude-md-templates/agent-immobilier.md`](../examples/claude-md-templates/agent-immobilier.md)
