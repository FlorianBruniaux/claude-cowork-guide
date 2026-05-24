# Template CLAUDE.md : Agent et Mandataire Immobilier

Copier ce fichier sous `~/Cowork-Workspace/CLAUDE.md` et remplacer les parties entre `[crochets]`.

---

```markdown
# Mon contexte Cowork

## Qui je suis

Je suis [agent immobilier indépendant / mandataire réseau / directeur d'agence] à [ville].
Réseau ou agence : [IAD / Optimhome / BSK / agence indépendante [Nom]].
Zone principale : [villes, quartiers, arrondissements couverts].
Carte T numéro : [XXXXX] délivrée par CCI [département] (obligatoire pour toute activité de transaction).

## Mon positionnement

Types de biens principaux : [appartements / maisons / mixte / locaux commerciaux]
Fourchette de prix habituelle : [X à X]€
Segment : [première accession / investisseurs / haut de gamme]
Volume habituel : [X mandats actifs en même temps]

## Mon ton de communication

Ton général : [ex. "professionnel et bienveillant, vouvoiement systématique avec les clients"]
Ce qu'on ne fait jamais : [ex. "on ne promet pas de prix de vente supérieur à l'estimation"]
Signature : [ex. "Karim Bensalem, Mandataire IAD, 06 XX XX XX XX, RSAC Bordeaux XXXXX"]

## Mes données de marché par secteur

Ces données servent à calibrer les estimations et les emails de prospection.
Mettre à jour chaque mois avec les dernières transactions DVF.

| Secteur / Quartier | Type | Prix/m2 moyen | Délai moyen | Mise à jour |
|--------------------|------|---------------|-------------|-------------|
| [Quartier 1] | T2-T3 | [X]€/m2 | [X] jours | [date] |
| [Quartier 2] | T3-T4 | [X]€/m2 | [X] jours | [date] |
| [Quartier 3] | Maisons | [X]€/m2 | [X] jours | [date] |

## Mes références vendues (12 derniers mois)

[Lister 5 à 10 références récentes pour crédibiliser les estimations et les emails de prospection]

| Bien | Surface | Prix | Délai | Quartier |
|------|---------|------|-------|---------|
| T3 | 68m2 | 285 000€ | 45j | [Quartier] |
| Maison | 120m2 | 420 000€ | 62j | [Secteur] |

## Mes sources de données

- DVF (data.gouv.fr) : transactions des 12 derniers mois
- MeilleursAgents : prix du marché en temps réel
- Perval : si accès via réseau
- Mes propres ventes : base interne, la plus fiable pour ma zone

## Structure de mon workspace

~/Cowork-Workspace/
├── input/
│   ├── pige/           # Annonces particuliers copiées (une par fichier)
│   └── dossiers/       # Dossiers de visite (notes, photos, informations acheteur)
├── output/
│   ├── annonces/       # Annonces rédigées (3 versions par bien)
│   ├── estimations/    # Synthèses d'estimation avec comparables
│   ├── prospection/    # Emails de prospection vendeur
│   ├── visites/        # Comptes-rendus de visite
│   └── relances/       # Emails de relance acquéreur
└── archive/            # Mandats conclus, classés par trimestre
```

---

## Utilisation recommandée

**Lundi matin (45 min)** : traitement pige (3 meilleures annonces particuliers + email de prospection)
**Mardi/mercredi** : visites + compte-rendu dans les 24h pour chaque visite
**Jeudi matin (30 min)** : relances acquéreurs J+5 de la semaine précédente
**Vendredi matin (20 min)** : reporting propriétaires actifs (nombre de contacts, visites, retours)

**Mise à jour données marché** : premier lundi du mois, actualiser le tableau des prix/m2 avec DVF.

**Prompts associés** : [`prompts/immobilier.fr.md`](../../prompts/immobilier.fr.md)
**Whitepaper complet** : [`whitepapers/fr/15-ia-agents-immobiliers.qmd`](../../whitepapers/fr/15-ia-agents-immobiliers.qmd)
