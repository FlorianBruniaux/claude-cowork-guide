# Workflow: Prospection Conciergerie LCD — Conversion LLD vers Location Saisonnière

> **Temps estimé**: 15 à 30 min par lot de 10-15 prospects
> **Difficulté**: Intermédiaire
> **Catégorie**: 💼 Commercial
> **Professions**: Conciergeries de location courte durée

🌐 **Also available in [English](conciergerie-lcd-prospection.en.md)**

---

## Cas d'usage

Vous gérez une conciergerie de location saisonnière (Airbnb, Booking, Abritel). Vous cherchez à développer votre portefeuille en convainquant des propriétaires actuellement en location longue durée (LLD) de confier leur bien à votre conciergerie pour la location courte durée (LCD).

Votre approche : identifier des annonces de location longue durée sur Le Bon Coin, analyser le potentiel LCD du bien et du quartier, estimer l'écart de revenus, et envoyer un message de premier contact personnalisé et qualitatif.

Ce workflow vous aide à :

- Analyser chaque annonce LLD pour évaluer son potentiel LCD (score 1-5)
- Estimer les revenus LCD nets propriétaire selon vos données de calibrage locales
- Rédiger un message de premier contact personnalisé (150-200 mots, ton qualitatif)
- Traiter des lots de 10-15 annonces avec un tableau récapitulatif et scoring
- Préparer un argumentaire de suivi pour les propriétaires qui répondent positivement

> ⚠️ **Approche qualitative, pas quantitative** : Ce workflow est conçu pour 10-15 prospects/jour traités avec soin, pas pour le démarchage de masse. Un message qui mentionne 2 éléments spécifiques au bien ou au quartier convertit nettement mieux qu'un template générique.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Fichier `~/Cowork-Workspace/CLAUDE.md` créé avec vos données de calibrage marché — voir le [template CLAUDE.md conciergerie](../examples/claude-md-templates/conciergerie.md)
- [ ] Données de calibrage renseignées : prix nuit moyen par zone, taux d'occupation, commission, charges ménage
- [ ] Dossiers créés :
  ```
  ~/Cowork-Workspace/
  ├── input/prospects/
  │   └── batch-[date]/     ← annonces copiées manuellement
  ├── output/prospects/
  │   └── batch-[date]/     ← analyses et messages
  └── output/argumentaires/ ← documents de suivi
  ```
- [ ] Alertes Le Bon Coin configurées par zone pour être notifié des nouvelles annonces (gratuit, légal)

> 🔒 **Cadre légal** : La collecte manuelle d'annonces publiques est légale. Le scraping automatisé est interdit par les CGU de Le Bon Coin, le droit sui generis des bases de données (art. L.341-1 CPI) et constitue un accès frauduleux à un système informatique (art. 323-1 CP). Ne jamais automatiser la collecte.

---

## Instructions étape par étape

### Étape 1 : Collecte manuelle des annonces

Pour chaque annonce Le Bon Coin identifiée via vos alertes ou votre navigation manuelle :

1. Ouvrir l'annonce dans le navigateur
2. Créer un fichier texte dans `~/Cowork-Workspace/input/prospects/batch-[date]/`
3. Nommer le fichier selon la convention : `[ville]-[type]-[loyer]€-[date].txt`
   - Exemple : `bordeaux-T2-850€-2026-04-12.txt`
4. Copier-coller dans ce fichier : titre de l'annonce, description complète, loyer, localisation, informations de contact si visibles

> Ne stocker aucune donnée personnelle identifiante (nom, email, téléphone du propriétaire) sans base légale. En cas de doute, anonymiser ou supprimer ces champs.

---

### Étape 2 : Analyse du bien

Pour chaque annonce collectée, lancer l'analyse dans Cowork :

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes données de marché et mon positionnement.

Voici l'annonce à analyser :

[Coller le contenu du fichier texte ici]

TÂCHE : Analyser ce bien pour évaluer son potentiel en location courte durée.

SORTIE :
1. Extraction : type de bien, surface, localisation précise (quartier), loyer LLD, points forts mentionnés
2. Analyse du quartier : atouts touristiques et économiques à proximité, profil voyageurs potentiels, 2-3 éléments spécifiques à citer dans le message
3. Score de potentiel LCD (1 à 5) avec justification en une phrase
4. Points d'accroche pour le message de contact

CONTRAINTES : Ne pas inventer d'atouts. Si la localisation est imprécise, indiquer "zone à confirmer".

Sauvegarde : ~/Cowork-Workspace/output/prospects/batch-[date]/[nom-fichier]-analyse.md
```

---

### Étape 3 : Estimation LCD vs LLD

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes données de calibrage marché.

Bien : [type], [quartier], [ville]
Loyer LLD affiché : [X]€/mois

TÂCHE : Calculer le revenu LCD potentiel net propriétaire et comparer à la LLD.

SORTIE : Tableau comparatif avec revenus bruts LCD, charges déduites (ménage, commission Airbnb 3%, taxe de séjour, ma commission, linge), revenu net propriétaire LCD, écart mensuel et annuel vs LLD.

CONTRAINTES :
- Formuler en "revenu potentiel estimé", jamais "garanti"
- Préciser la source des données (mes données de calibrage zone CLAUDE.md)
- Si zone absente de mes données : indiquer "estimation à affiner"

Sauvegarde : ~/Cowork-Workspace/output/prospects/batch-[date]/[nom-fichier]-estimation.md
```

---

### Étape 4 : Rédaction du message de premier contact

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mon ton et mes services.

Données du prospect :
- Type : [T1/T2/T3+], [quartier], [ville]
- Loyer LLD : [X]€/mois
- Revenu LCD estimé net : [X]€/mois
- Éléments du quartier à citer : [les 2-3 points identifiés à l'étape 2]

TÂCHE : Rédiger un message de premier contact de 150-200 mots.

CONTRAINTES :
- Ton : professionnel mais humain, pas commercial agressif
- Proposer un audit gratuit, pas une vente frontale
- Citer au moins 2 éléments spécifiques au bien ou au quartier
- Utiliser "revenu potentiel estimé" — jamais "garanti", "forcément" ou "à coup sûr"
- Structure : accroche liée au bien → une phrase sur qui je suis → observation sur le potentiel → proposition d'échange sans engagement → clôture détendue

Sauvegarde : ~/Cowork-Workspace/output/prospects/batch-[date]/[nom-fichier]-message.txt
```

---

### Étape 5 : Traitement par lots

Pour traiter 10-15 annonces d'un coup en une seule session :

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes données de marché et mon ton.

J'ai [X] annonces dans ~/Cowork-Workspace/input/prospects/batch-[date]/.
Chaque fichier .txt contient une annonce copiée manuellement.

TÂCHE : Pour chaque annonce, effectuer l'analyse complète (informations clés, score potentiel 1-5, estimation revenu LCD net vs loyer LLD, 2 éléments quartier à utiliser dans le message).

SORTIE :
- Une analyse par fichier dans ~/Cowork-Workspace/output/prospects/batch-[date]/
- Un tableau récapitulatif final :

| Fichier | Type | Quartier/Ville | Loyer LLD | Revenu LCD estimé | Score | Priorité |
|---------|------|----------------|-----------|-------------------|-------|----------|

CONTRAINTES :
- Classer par score décroissant dans le tableau
- Marquer les 3 prospects prioritaires (score ≥4) avec ★
- Si un fichier est illisible ou incomplet : indiquer "À vérifier" plutôt que deviner

Sauvegarde synthèse : ~/Cowork-Workspace/output/prospects/batch-[date]-synthese.md
```

---

### Étape 6 : Suivi et relances

Pour les propriétaires qui ont répondu positivement au premier contact :

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes services et mes charges.

Propriétaire intéressé : [Prénom si connu]
Bien : [type], [quartier], [ville]
Loyer LLD : [X]€/mois
Mon estimation LCD nette : [X]€/mois
Points discutés lors du premier échange : [résumé]

TÂCHE : Rédiger le document d'argumentaire à envoyer avant ou après le rendez-vous.

STRUCTURE :
1. En-tête avec mon nom de conciergerie et date
2. Tableau comparatif chiffré LLD vs LCD pour ce bien spécifique
3. Services inclus dans ma gestion (reformulés en bénéfices propriétaire)
4. Cadre légal simplifié (LCD légale pour résidence secondaire, déclaration mairie, fiscalité micro-BIC)
5. Prochaine étape concrète (visite sans engagement ou appel de 20 min)

CONTRAINTES :
- Ton rassurant et factuel (le propriétaire découvre souvent la LCD)
- Zéro promesse de revenus garantis
- Maximum 2 pages
- Insister sur la transparence (compte-rendu mensuel, accès réservations)

Sauvegarde : ~/Cowork-Workspace/output/argumentaires/[ville]-[type]-[date]-argumentaire.docx
```

Pour une relance à J+7 sans réponse :

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md.

J'ai envoyé un premier message il y a 7 jours à un propriétaire sans réponse.
Contexte du bien : [type], [quartier], [ville], loyer LLD [X]€/mois.

TÂCHE : Rédiger une relance courte (80-100 mots maximum).

CONTRAINTES :
- Pas de reproche ou d'insistance
- Apporter un élément nouveau (une stat locale, un événement dans le quartier, une actualité LCD)
- Proposer une alternative de contact (appel rapide plutôt qu'email)
- Terminer sur une note légère, sans pression

Sauvegarde : ~/Cowork-Workspace/output/prospects/[nom-fichier]-relance-j7.txt
```

---

## Exemples de prompts

### Analyse d'une annonce Bordeaux T2

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes données de marché et mon positionnement.

Voici l'annonce :

Titre : "T2 meublé 45m² — Saint-Michel — 850€/mois"
Description : Appartement lumineux au 3ème étage avec ascenseur. Séjour avec coin cuisine ouverte, une chambre, salle de bain. Double vitrage. Proche tramway B. Quartier vivant, marché du samedi, nombreux restaurants. Disponible le 1er mai. Caution 2 mois.

TÂCHE : Analyser ce bien pour évaluer son potentiel en location courte durée.
```

Résultat attendu : score 4/5 (Saint-Michel = quartier très demandé à Bordeaux, marché, tramway, dynamique touristique), accroche sur le marché du samedi et la proximité tram, estimation ~1 600-1 800€/mois bruts LCD.

---

### Message de contact pour un T3 proche gare

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md.

Prospect : T3, 70m², quartier Gare Saint-Jean (Bordeaux)
Loyer LLD : 1 100€/mois
Revenu LCD estimé net propriétaire : 1 650€/mois
Éléments quartier : gare TGV à 5 min à pied (clientèle professionnelle en déplacement), festival des Chartrons en juillet, tramway C direct centre

TÂCHE : Rédiger un message de premier contact de 150 à 200 mots.
```

---

### Lot du mardi matin

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md.

J'ai 12 annonces dans ~/Cowork-Workspace/input/prospects/batch-2026-04-15/.
Créer le tableau récapitulatif avec scoring, puis rédiger les 3 messages pour les prospects notés ★.

Sauvegarde synthèse : ~/Cowork-Workspace/output/prospects/batch-2026-04-15-synthese.md
Messages : ~/Cowork-Workspace/output/prospects/batch-2026-04-15/
```

---

## Troubleshooting

### "Cowork ne connaît pas le prix Airbnb de ma zone"

**Cause** : Les données de calibrage ne sont pas dans votre CLAUDE.md, ou la zone demandée est absente.

**Solution** :
1. Renseigner vos données de calibrage dans `~/Cowork-Workspace/CLAUDE.md` section "Mes données de marché"
2. Utiliser vos propres biens en gestion comme référence (données réelles > estimation)
3. Compléter avec AirDNA, Airbtics ou Lodgify pour les zones non couvertes
4. Si vraiment incertain : demander à Cowork d'indiquer "estimation à affiner selon données AirDNA locale"

---

### "Le message sonne robotique ou générique"

**Cause** : L'analyse n'a pas trouvé d'éléments spécifiques au quartier, ou les éléments sont trop génériques.

**Solution** :
```
CONTEXTE : [...]

Le message précédent était trop générique. Voici un exemple d'un message qui a bien converti pour moi :

[Coller un vrai message qui a bien fonctionné]

TÂCHE : Rédiger un nouveau message pour le prospect [X] en adoptant ce ton et cette structure.
Éléments spécifiques à intégrer : [gare, festival, quartier historique, zone touristique précise...]
```

Cowork s'adapte au ton d'un exemple concret mieux qu'à des instructions abstraites.

---

### "L'estimation LCD est trop optimiste"

**Cause** : Les charges ne sont pas toutes déduites, ou le taux d'occupation est surestimé.

**Solution** : Vérifier que le prompt d'estimation demande bien de déduire :
- Commission Airbnb 3% (côté hôte)
- Ménage (X€ × nombre de rotations estimées)
- Linge et consommables
- Taxe de séjour
- Votre commission de gestion
- Assurance PNO si à votre charge

Et d'utiliser un taux d'occupation réaliste (basse saison + haute saison, pas uniquement la haute).

---

### "Le propriétaire demande si c'est légal pour sa résidence secondaire"

**Réponse type à personnaliser** :

```
CONTEXTE : Un propriétaire me demande si la LCD est légale pour son bien.
Type de bien : [résidence secondaire / résidence principale]
Commune : [ville]

TÂCHE : Rédiger une réponse courte, rassurante et factuelle sur le cadre légal.

POINTS À COUVRIR :
- Pour une résidence secondaire : pas de plafond de 120 nuits (uniquement pour la RP)
- Déclaration en mairie obligatoire (formulaire cerfa) — je m'en charge
- Règlement de copropriété à vérifier (si appartement)
- Régime fiscal : micro-BIC avec abattement 50% (meublé de tourisme classé : 71%)
- Taxe de séjour : collectée par Airbnb et reversée directement dans la plupart des communes

CONTRAINTES : Ton rassurant. Ne pas promettre une consultation juridique. Recommander de vérifier avec son comptable pour la fiscalité personnelle.
```

---

## Variations

### Prospection SeLoger ou PAP

Même workflow, source différente. Copier l'annonce depuis SeLoger, PAP ou Bien'ici dans le même format de fichier texte. L'analyse et les prompts sont identiques.

Avantage SeLoger/PAP : annonces souvent plus détaillées (diagnostics, charges de copropriété, étage). Ces informations enrichissent l'analyse du potentiel LCD.

---

### Ciblage autour d'un événement local

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md.

Événement à venir : [Festival, congrès, salon, match, concert] à [ville] le [date].
Zone cible : [rayon de X km autour du lieu].

TÂCHE : Identifier les types de biens les plus adaptés à cet événement et affiner le message de prospection pour mettre en avant la demande spécifique générée par l'événement.

SORTIE : Angle d'accroche personnalisé + estimation revenus pour les nuits de l'événement vs les autres nuits.
```

---

### Prospection biens vacants (Castorus)

L'extension Castorus (gratuite, pour Chrome) permet de voir l'historique des annonces Le Bon Coin et d'identifier les biens en LLD depuis longtemps sans preneur. Ces propriétaires sont souvent plus ouverts à une alternative LCD.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md.

Ce bien est en annonce LLD depuis [X semaines/mois] sans trouver preneur.
[Contenu de l'annonce]

TÂCHE : Adapter le message de premier contact pour intégrer le contexte de vacance prolongée sans être condescendant.
L'angle : le marché LLD est difficile dans cette zone, la LCD peut être une solution pour couvrir les charges en attendant ou à titre durable.
```

---

### Suivi CRM simple

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md.

Voici les résultats de mon batch de la semaine :
[Coller le tableau de synthèse]

TÂCHE : Créer un fichier Excel de suivi CRM avec les colonnes :
Ville | Type | Loyer LLD | Revenu LCD estimé | Score | Date contact | Statut (envoyé / répondu / RDV / refus) | Notes

Sauvegarde : ~/Cowork-Workspace/output/prospects/suivi-crm-[mois].xlsx
```

---

## Bonnes pratiques

1. **Jamais de scraping automatisé** — Copier manuellement les annonces. Le scraping est illégal (CGU + art. 323-1 CP + droit sui generis L.341-1 CPI) et vous expose à des poursuites civiles et pénales.

2. **Calibrer avec ses propres données d'abord** — Vos biens en gestion dans la même zone sont la meilleure source de calibrage. Plus fiable qu'AirDNA pour votre marché spécifique.

3. **Personnaliser chaque message** — Le minimum : 2 éléments spécifiques au bien ou au quartier. Un message qui mentionne le marché du samedi de Saint-Michel convertit mieux qu'un message qui parle de "votre beau quartier".

4. **Respecter le RGPD** — La base légale de votre prospection est l'intérêt légitime (art. 6.1.f RGPD). Cela implique : mentionner l'opt-out dans vos messages, ne pas recontacter un propriétaire qui refuse, ne pas stocker de données personnelles au-delà de ce qui est nécessaire.

5. **Jamais de revenus garantis** — Utiliser systématiquement "revenu potentiel estimé", "selon notre expérience dans ce secteur", "sous réserve d'occupation". L'engagement de résultat vous expose juridiquement.

6. **Vérifier la carte G** — Si vous gérez des biens pour le compte de tiers (facturation, signature de contrats, encaissement des loyers), vous exercez une activité de gestion locative soumise à la carte G (loi Hoguet). Sans carte G, votre activité est illégale.

7. **Traiter en lots, pas en continu** — 10-15 annonces en une session de 30 min est plus efficace que traiter 2-3 annonces au fil de la journée. La concentration améliore la cohérence des analyses.

8. **Mesurer pour calibrer** — Suivre le taux de réponse par zone et par type de message. Un tableau CRM simple suffit. Après 1 mois, vous saurez quels quartiers et quels angles convertissent le mieux.

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
