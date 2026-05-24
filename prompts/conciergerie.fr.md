# Prompts Conciergerie et Location Saisonnière

🌐 **Langues** : [Français](conciergerie.fr.md) | [English](conciergerie.md)

> **4 prompts prêts à l'emploi pour la prospection de propriétaires en location longue durée et la conversion vers la location courte durée**

Ces prompts sont conçus pour les conciergeries LCD qui prospectent des propriétaires sur Le Bon Coin et autres plateformes d'annonces immobilières.

**Prérequis** : Avoir un fichier `~/Cowork-Workspace/CLAUDE.md` avec vos données de calibrage marché (prix nuit moyen, taux d'occupation, charges). Voir le [template CLAUDE.md conciergerie](../examples/claude-md-templates/conciergerie.md).

---

## Prompts d'Analyse de Prospect

### 1. Analyse d'Annonce Le Bon Coin

À utiliser pour chaque annonce copiée manuellement depuis Le Bon Coin ou une autre plateforme d'annonces immobilières.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes données de marché et mon positionnement.

Voici l'annonce à analyser :

[Coller le texte complet de l'annonce ici : titre, description, loyer, surface, localisation]

TÂCHE : Analyser ce bien pour évaluer son potentiel en location courte durée.

SORTIE :
1. Extraction des informations clés
   - Type de bien (studio, T1, T2, T3+)
   - Surface approximative (si mentionnée)
   - Localisation précise (rue, quartier, ville)
   - Loyer LLD actuel demandé
   - Points forts mentionnés dans l'annonce (vue, parking, terrasse, etc.)

2. Analyse du quartier
   - Atouts touristiques et économiques à proximité (hôtels, gares, sites, zones d'activité)
   - Profil des voyageurs potentiels (touristes, professionnels en déplacement, familles)
   - 2 à 3 éléments spécifiques à ce quartier que je pourrai citer dans mon message

3. Score de potentiel LCD (1 à 5)
   - 5 : Très fort potentiel (localisation prime, bien adapté)
   - 4 : Bon potentiel (quelques atouts majeurs)
   - 3 : Potentiel moyen (à creuser selon les charges)
   - 2 : Potentiel limité (marché saturé ou bien inadapté)
   - 1 : Déconseillé (zone difficile, bien trop grand, charges prohibitives)

4. Points d'accroche pour le message de contact
   - Raison principale pour laquelle ce propriétaire devrait envisager le LCD
   - Élément différenciant du quartier à valoriser

CONTRAINTES : Si la localisation est imprécise, indiquer "zone à confirmer" pour le score. Ne pas inventer d'atouts non mentionnés dans l'annonce ou non vérifiables.

Sauvegarde : ~/Cowork-Workspace/output/prospects/[ville]-[type]-[date]-analyse.md
```

---

### 2. Estimation Revenus LCD vs LLD

À utiliser après l'analyse d'annonce, pour calculer le gain potentiel que le propriétaire peut espérer en passant de la LLD à la LCD avec votre gestion.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes données de calibrage marché (prix par nuit, taux d'occupation, charges).

Bien à estimer :
- Type : [T1 / T2 / T3+]
- Localisation : [quartier, ville]
- Loyer LLD actuel : [X]€/mois
- Surface : [X] m² (si connue)

TÂCHE : Calculer une estimation comparative des revenus mensuels et annuels.

SORTIE : Tableau comparatif LLD vs LCD

**Revenus LCD bruts (mensuel)**
- Prix par nuit estimé : [selon mes données de calibrage zone]€
- Taux d'occupation : [selon saison]%
- Nombre de nuits louées/mois : [calcul]
- Revenu brut mensuel : [calcul]€

**Charges LCD à déduire (mensuel)**
- Commission Airbnb (3% côté hôte) : [calcul]€
- Ménage ([X]€ × [nb rotations] rotations) : [calcul]€
- Linge et consommables ([X]€/séjour) : [calcul]€
- Taxe de séjour (estimation) : [calcul]€
- Ma commission de gestion ([X]%) : [calcul]€
- **Total charges** : [calcul]€

**Revenu net propriétaire LCD** : [calcul]€/mois
**Revenu LLD actuel** : [X]€/mois
**Écart mensuel en faveur du LCD** : +[calcul]€/mois (+[calcul]%)
**Écart annuel** : +[calcul]€/an

CONTRAINTES :
- Toujours utiliser le terme "revenu potentiel estimé" (jamais "garanti" ou "assuré")
- Préciser la source des données de calibrage (mes données marché du CLAUDE.md)
- Si la zone est absente de mes données de calibrage, indiquer "estimation à affiner"
- Présenter les fourchettes haute/basse saison si les taux d'occupation varient significativement

Sauvegarde : ~/Cowork-Workspace/output/prospects/[ville]-[type]-[date]-estimation.md
```

---

## Prompts de Communication Prospect

### 3. Message de Premier Contact

À utiliser pour rédiger le message personnalisé envoyé au propriétaire suite à l'analyse de l'annonce.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mon ton de communication et mes services.

Données du prospect :
- Type de bien : [T1 / T2 / T3+], [surface] m²
- Localisation : [quartier + ville]
- Loyer LLD affiché : [X]€/mois
- Revenu LCD potentiel estimé : [X]€/mois net propriétaire (selon mon estimation)
- Atouts du quartier à mentionner : [les 2 éléments identifiés dans l'analyse]

TÂCHE : Rédiger un message de premier contact pour ce propriétaire.

CONTRAINTES DE FOND :
- Longueur : 150 à 200 mots maximum, pas plus
- Ton : professionnel mais humain, pas commercial agressif
- Approche : proposer un audit gratuit du potentiel, pas une vente frontale
- Mentionner l'écart de revenus comme "revenu potentiel estimé" (jamais "garanti")
- Citer au moins 2 éléments spécifiques au quartier ou au bien
- Mots à éviter : "garanti", "forcément", "à coup sûr", "rentabilité maximale"
- Ne pas mentionner les plateformes (Airbnb, Booking) par leur nom si possible, préférer "location courte durée" ou "location saisonnière"

STRUCTURE DU MESSAGE :
1. Accroche liée au bien ou au quartier (1 phrase)
2. Mon positionnement en une phrase (qui je suis, ce que je fais)
3. Observation sur le potentiel du bien en LCD (avec l'écart estimé, formulé prudemment)
4. Proposition concrète et sans engagement : un échange ou un audit gratuit
5. Clôture courte et détendue

SORTIE : Le message prêt à envoyer, sans formule d'introduction ni de conclusion génériques.

Sauvegarde : ~/Cowork-Workspace/output/prospects/[ville]-[type]-[date]-message.txt
```

---

### 4. Argumentaire Propriétaire (Document de suivi)

À utiliser quand un propriétaire répond positivement au premier contact et souhaite en savoir plus. Ce document est envoyé en pièce jointe ou partagé avant le rendez-vous.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes services, mes charges et mon positionnement.

Données du bien :
- Propriétaire : [Prénom] (si connu)
- Type de bien : [T1 / T2 / T3+], [surface] m², [adresse ou quartier]
- Loyer LLD actuel : [X]€/mois
- Estimation LCD nette propriétaire : [X]€/mois (selon mon calcul)
- Éléments spécifiques à valoriser : [atouts du bien et du quartier notés dans l'analyse]

TÂCHE : Rédiger un document d'argumentaire de 1 à 2 pages envoyé avant ou après un premier échange.

STRUCTURE :
1. En-tête
   - Nom de ma conciergerie + contact
   - "Document préparé pour [Prénom]" + date

2. Comparatif chiffré LLD vs LCD pour ce bien
   - Tableau mensuel et annuel (reprendre l'estimation calculée)
   - Mention explicite : "Revenu potentiel estimé selon les données de marché [zone]"

3. Ce que je prends en charge (services inclus)
   - Liste des services de mon CLAUDE.md, reformulés en bénéfices propriétaire
   - Insister sur : zéro gestion pour le propriétaire, transparence mensuelle, pilotage des prix

4. Cadre légal simplifié
   - La location saisonnière est légale pour les résidences secondaires sans plafond annuel
   - Déclaration en mairie requise selon les communes (je m'en charge)
   - Fiscalité avantageuse en régime micro-BIC (abattement 50%)

5. Prochaine étape
   - Proposition d'une visite de courtoisie (sans engagement) pour finaliser l'estimation
   - Contact direct

CONTRAINTES :
- Ton rassurant et factuel (le propriétaire découvre souvent la LCD)
- Zéro promesse de revenus garantis
- Mettre en avant la transparence (compte-rendu mensuel, accès aux réservations)
- Format sobre : pas de jargon marketing

Sauvegarde : ~/Cowork-Workspace/output/argumentaires/[ville]-[type]-[date]-argumentaire.docx
```

---

## Utilisation en lot

Pour traiter plusieurs annonces dans la même session :

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md pour mes données de marché et mon ton.

J'ai [X] annonces dans le dossier ~/Cowork-Workspace/input/prospects/batch-[date]/.
Chaque fichier contient une annonce copiée manuellement depuis Le Bon Coin.

TÂCHE : Pour chaque annonce, effectuer l'analyse complète.

SORTIE PAR ANNONCE :
- Informations clés extraites
- Score de potentiel LCD (1-5) avec justification en une phrase
- Revenu LCD estimé net propriétaire vs loyer LLD affiché
- 2 éléments de quartier à utiliser dans le message

SYNTHÈSE FINALE :
Tableau récapitulatif de toutes les annonces avec les colonnes :
Fichier | Type | Ville/Quartier | Loyer LLD | Revenu LCD estimé | Score | Priorité de contact

CONTRAINTES :
- Classer par score décroissant dans la synthèse
- Identifier les 3 prospects prioritaires avec une étoile (★)
- Si un fichier est illisible ou incomplet, indiquer "À vérifier" plutôt que de deviner

Sauvegarde :
- Analyses : ~/Cowork-Workspace/output/prospects/batch-[date]/
- Synthèse : ~/Cowork-Workspace/output/prospects/batch-[date]-synthese.md
```

---

## Notes de personnalisation

**Adapter les placeholders prioritaires dans CLAUDE.md :**
- Données de calibrage par zone (prix nuit, taux occupation) : c'est ce qui rend les estimations pertinentes
- Commission de gestion : variable selon positionnement (15-25%)
- Charges ménage : selon vos prestataires locaux (30-60€ par rotation)

**Ajuster le ton selon votre positionnement :**
- Conciergerie premium : insister sur la gestion haut de gamme, les clients professionnels en déplacement, le score Superhost
- Conciergerie standard : insister sur la simplicité, la transparence, le rapport qualité-prix

**Sur la collecte des annonces :**
- Utiliser les alertes Le Bon Coin (gratuit, légal) pour être notifié des nouvelles annonces correspondant à vos critères
- Copier manuellement le texte de l'annonce dans un fichier `.txt` (un fichier par annonce)
- Ne jamais automatiser la collecte : le scraping est interdit par les CGU et passible de sanctions

---

*[Retour à l'Index des Prompts](README.fr.md) | [Documentation Cowork](../README.md)*
