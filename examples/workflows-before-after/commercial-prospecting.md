# Avant / Après : Prospection Commerciale

**Profil** : Thomas, consultant en transformation organisationnelle, indépendant depuis 3 ans. Cherche 2 à 3 nouvelles missions par trimestre.

---

## La situation AVANT Cowork

Thomas passait 6 à 8 heures par semaine sur sa prospection, pour un taux de réponse de 4 à 6%.

**Le workflow manuel :**

1. Parcourir LinkedIn et les annuaires sectoriels pour identifier des entreprises cibles
2. Copier-coller les informations dans un tableur (nom entreprise, secteur, taille, contact)
3. Rédiger un email de prospection depuis une base générique, adapter manuellement pour chaque prospect (20 à 30 min par email)
4. Envoyer un par un
5. Relancer 7 jours plus tard (souvent oublié)
6. Mettre à jour le tableur de suivi (souvent pas fait)

**Ce qui ne fonctionnait pas :**

- Les emails étaient trop génériques malgré l'adaptation manuelle
- Le taux de réponse était décevant
- La relance était systématiquement oubliée
- Impossible de traiter plus de 5 à 8 prospects par semaine avec cette méthode

---

## Le workflow AVEC Cowork

**Setup préalable (30 minutes) :**

- Créer `~/Cowork-Workspace/input/prospects/` pour les données brutes
- Créer `~/Cowork-Workspace/output/prospection/` pour les emails générés
- Préparer un fichier `prospects-batch.csv` avec les colonnes : NomEntreprise, Secteur, Effectif, Interlocuteur, PosteInterlocuteur, SourceInfo

**Le nouveau workflow en 3 étapes :**

**Étape 1 : Identification (30 min, 1 fois par semaine)**

Utiliser Pappers.fr ou Infogreffe pour identifier 15 à 20 entreprises correspondant aux critères (secteur, taille, zone géographique). Copier les informations dans `prospects-batch.csv`.

**Étape 2 : Personnalisation batch (10 min pour 15 emails)**

```
CONTEXTE : J'ai un fichier de prospects dans
~/Cowork-Workspace/input/prospects/prospects-batch.csv
Je suis consultant en transformation organisationnelle spécialisé
dans [spécialité]. Mon TJM est [XXX]€.

TÂCHE : Pour chaque ligne du fichier, générer un email de prise de contact
personnalisé qui :
1. Mentionne un élément spécifique au secteur ou au contexte de l'entreprise
2. Explique en 2 phrases comment mon expertise répond à un enjeu typique de ce secteur
3. Propose un appel de 20 minutes sans engagement

SORTIE : Un fichier ~/Cowork-Workspace/output/prospection/emails-semaine-[date].txt
avec les 15 emails, séparés par une ligne "---", dans l'ordre du CSV.

CONTRAINTES :
- Maximum 150 mots par email
- Pas de formule générique ("J'espère que ce message vous trouve bien")
- Vouvoiement systématique
- Signature : Thomas [NOM], [titre], [téléphone], [email]
- Ton : professionnel mais direct, pas de bullshit
```

**Étape 3 : Relance automatique (5 min, 7 jours plus tard)**

```
CONTEXTE : Il y a 7 jours, j'ai envoyé les emails dans
~/Cowork-Workspace/output/prospection/emails-semaine-[date].txt
Voici la liste des prospects qui n'ont pas répondu :
[coller la liste des noms]

TÂCHE : Générer une relance courte et directe pour chaque prospect,
différente du premier email.

SORTIE : Fichier ~/Cowork-Workspace/output/prospection/relances-semaine-[date].txt

CONTRAINTES :
- Maximum 80 mots
- Ton légèrement plus direct que le premier email
- Rappeler en une phrase l'objet de la prise de contact initiale
- Proposer une alternative (appel 10 min ou réponse par email)
```

---

## Résultats après 2 mois

| Indicateur | Avant | Après |
|-----------|-------|-------|
| Prospects traités par semaine | 5-8 | 15-20 |
| Temps de prospection par semaine | 6-8h | 1h30 |
| Taux de réponse | 4-6% | 11-14% |
| Relances effectuées | 40% (oublies) | 95% |
| Missions signées / trimestre | 1-2 | 3-4 |

**Ce qui a fait la différence :** la personnalisation sectorielle (même sommaire) et la relance systématique. Thomas traitait 3 fois plus de prospects en 4 fois moins de temps.
