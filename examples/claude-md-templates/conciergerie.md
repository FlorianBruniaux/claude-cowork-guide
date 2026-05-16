# Template CLAUDE.md — Conciergerie Location Courte Durée

Copier ce fichier sous `~/Cowork-Workspace/CLAUDE.md` et remplacer les parties entre `[crochets]`.

---

```markdown
# Mon contexte Cowork

## Qui je suis

Je gère [Nom de la conciergerie], une conciergerie de location courte durée basée à [ville].
Structure : [auto-entrepreneur / SARL / SAS] depuis [année].
Je gère actuellement [X] biens en location saisonnière sur les plateformes Airbnb, Booking et Abritel.
Zone principale d'activité : [ville(s) et quartiers couverts].
Positionnement : [premium avec conciergerie haut de gamme / standard avec bon rapport qualité-prix].

## Ce que je fais avec Cowork

Usage principal :

- Analyser des annonces Le Bon Coin pour identifier des prospects en location longue durée
- Estimer le potentiel de revenus en location courte durée pour chaque bien prospecté
- Rédiger des messages de premier contact personnalisés et des argumentaires propriétaires
- Gérer la comptabilité de la conciergerie (BNC, notes de frais, facturation)
- Rédiger les descriptions d'annonces Airbnb/Booking pour les nouveaux biens
- Répondre aux avis voyageurs et gérer la communication client
- Comparer les offres de prestataires (ménage, linge, maintenance)

## Mes données de marché (calibrage local)

Ces données me servent à calculer les estimations de revenus LCD pour mes prospects.

Zone [quartier/ville 1] :
- Prix moyen par nuit : [X]€ (studio/T1), [X]€ (T2), [X]€ (T3+)
- Taux d'occupation moyen : [X]% haute saison (juin-sept), [X]% basse saison
- Revenu mensuel brut moyen : [X]€ (studio), [X]€ (T2), [X]€ (T3+)

Zone [quartier/ville 2] :
- Prix moyen par nuit : [X]€ (studio/T1), [X]€ (T2)
- Taux d'occupation moyen : [X]%
- Revenu mensuel brut moyen : [X]€

Source des données : [AirDNA / mes propres biens en gestion / estimation marché]

## Mes charges et commissions

Charges déduites des revenus bruts pour calculer le revenu net propriétaire :

- Ma commission de gestion : [X]% du revenu brut HT
- Ménage : [X]€ par rotation (à la charge du [propriétaire / voyageur])
- Linge et consommables : [X]€ par séjour
- Commission plateforme Airbnb : 3% (côté hôte)
- Taxe de séjour : [X]€/nuit/personne (variable selon commune)
- Assurance PNO : incluse dans mes services / à la charge du propriétaire

## Mes services inclus dans la gestion

Ce que je prends en charge pour le propriétaire :

- Création et optimisation des annonces (photos, description, tarifs)
- Pricing dynamique (adaptation des prix selon saison, événements)
- Communication voyageurs (réponses, gestion des demandes)
- Check-in et check-out (accueil physique ou boîte à clés)
- Ménage et linge entre chaque séjour
- Gestion des avis voyageurs
- Compte-rendu mensuel des revenus au propriétaire
- Déclaration taxe de séjour auprès de la mairie (selon commune)

## Mon ton de communication avec les prospects

Ton : professionnel mais humain, qualitatif, pas commercial agressif.
Approche : je propose d'abord un audit gratuit du potentiel du bien, pas une vente frontale.
Personnalisation : chaque message mentionne au moins 2 éléments spécifiques au quartier du bien.
Mots à éviter : "garantis", "forcément", "à coup sûr" (pour les revenus).
Formules préférées : "revenu potentiel estimé", "selon notre expérience dans ce secteur".

## Ma structure de fichiers

```
~/Cowork-Workspace/
├── input/
│   ├── prospects/          ← annonces Le Bon Coin copiées (un .txt par annonce)
│   │   └── batch-[date]/   ← lots quotidiens
│   ├── documents-proprietaires/ ← mandats, contrats, documents reçus
│   └── factures/           ← factures de prestataires
├── output/
│   ├── prospects/          ← analyses et messages par prospect
│   │   └── batch-[date]/   ← résultats du lot quotidien
│   ├── argumentaires/      ← documents PDF envoyés aux propriétaires intéressés
│   ├── annonces-airbnb/    ← descriptions rédigées pour nouveaux biens
│   ├── reponses-avis/      ← réponses aux avis voyageurs
│   └── compta/             ← comptabilité mensuelle
└── templates/
    ├── message-premier-contact.txt
    ├── argumentaire-proprietaire.docx
    └── compte-rendu-mensuel.docx
```

## Mes conventions de nommage

Fichiers prospects :
- `[ville]-[type]-[loyer]€-[date].txt`
- Exemple : `bordeaux-T2-850€-2026-04-12.txt`

Fichiers de sortie :
- `[ville]-[type]-[date]-analyse.md`
- `[ville]-[type]-[date]-message.txt`

## Ce que je ne veux pas dans Cowork

- Pas de données personnelles de voyageurs (noms, emails, numéros) sans anonymisation
- Pas de données bancaires de propriétaires
- Pas de mots de passe ou accès aux plateformes (Airbnb, Booking)
- Jamais de promesses de revenus "garantis" dans les messages prospects

## Dernière mise à jour

[Date]
```

---

## Comment utiliser ce template

1. Copier le contenu entre les balises de code dans un fichier `CLAUDE.md`
2. Le placer à la racine de `~/Cowork-Workspace/`
3. Remplir les données de calibrage marché dès le départ (c'est ce qui rend les estimations pertinentes)
4. Mettre à jour les données de marché tous les 3-6 mois (les prix LCD évoluent)
5. Dans chaque prompt de prospection, ajouter : "Consulte ~/Cowork-Workspace/CLAUDE.md pour mes données de marché et mon ton."
