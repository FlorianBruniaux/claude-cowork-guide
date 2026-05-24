# Avant / Après : Organisation des Fichiers

**Profil** : Paul, gérant d'une agence de voyages de 4 personnes. Dossier `Documents/` accumulé depuis 5 ans, 3 000+ fichiers non organisés.

---

## La situation AVANT Cowork

Paul cherchait un devis d'un fournisseur de mars 2024. Il a passé 25 minutes à fouiller dans son dossier Documents avant d'abandonner et d'appeler le fournisseur pour lui demander de le renvoyer.

**La réalité du dossier :**

- Fichiers nommés `Devis (1).pdf`, `Devis (2).pdf`, `Devis final.pdf`, `Devis final V2.pdf`
- Factures mélangées avec les offres commerciales et les emails imprimés en PDF
- Photos de voyages de reconnaissance mélangées avec les photos de bureau
- Versions différentes du même document avec des noms impossibles à distinguer
- Aucune convention de nommage cohérente entre les 4 membres de l'équipe

**Les conséquences :**

- 15 à 20 min perdues par jour à chercher des fichiers (selon le calcul de Paul)
- Des doublons : le même document imprimé, scanné, sauvegardé 3 fois
- Des documents importants envoyés par erreur (mauvaise version d'un devis)
- Une impossibilité de déléguer (personne d'autre ne trouvait rien non plus)

---

## Étape 1 : Définir la structure cible

Avant de lancer Cowork, Paul a passé 30 minutes à définir la structure souhaitée :

```
~/Documents-Pro/
├── Clients/
│   └── [NomClient]/
│       ├── 2024/
│       │   ├── devis/
│       │   ├── contrats/
│       │   └── factures/
│       └── 2025/
├── Fournisseurs/
│   └── [NomFournisseur]/
│       └── [AAAA]/
├── Admin/
│   ├── comptabilite/
│   ├── rh/
│   └── juridique/
├── Marketing/
│   ├── photos/
│   └── supports-vente/
└── Archives/
    └── [AAAA]/
```

---

## Étape 2 : Audit des fichiers existants

```
CONTEXTE : J'ai un dossier ~/Documents/ avec des milliers de fichiers
accumulés depuis 5 ans sans organisation.

TÂCHE : Analyser le contenu du dossier et me donner :
1. Les 10 types de fichiers les plus fréquents (par extension et par nom pattern)
2. Les dossiers les plus volumineux (en nombre de fichiers)
3. Les doublons potentiels (fichiers avec des noms très proches)
4. Les fichiers datant de plus de 3 ans sans modification (candidats à l'archive)

SORTIE : Rapport dans le chat, en bullets organisés par catégorie.

CONTRAINTES : Ne pas déplacer ou modifier aucun fichier, uniquement analyser.
```

---

## Étape 3 : Migration par lots

Paul a choisi de migrer en 4 sessions de 2 heures, catégorie par catégorie. Exemple pour la première session (clients) :

```
CONTEXTE : Je veux organiser les fichiers clients de ~/Documents/
dans ~/Documents-Pro/Clients/.
Ma convention : NomClient/AAAA/[devis|contrats|factures]/

TÂCHE : Parcourir ~/Documents/ et identifier tous les fichiers liés
à des clients (devis, contrats, factures, propositions, itinéraires).
Pour chaque fichier identifié :
1. Proposer le dossier de destination selon ma convention
2. Proposer un nouveau nom selon le format : AAAA-MM-JJ_NomClient_type.extension

SORTIE : Liste dans ~/Cowork-Workspace/output/migration-plan-clients.csv
avec colonnes : chemin_actuel, chemin_destination, nouveau_nom, confiance (haute/moyenne/faible).

CONTRAINTES :
- Ne rien déplacer encore, seulement créer le plan
- Mettre "confiance: faible" si le nom du fichier est ambigu
- Ignorer les fichiers .tmp et les fichiers cachés
```

Paul revoyait le plan, corrigeait les "confiance: faible", puis donnait le feu vert pour l'exécution :

```
CONTEXTE : Voici le plan de migration validé dans
~/Cowork-Workspace/output/migration-plan-clients.csv
(j'ai vérifié et corrigé les lignes marquées "confiance: faible")

TÂCHE : Exécuter la migration : déplacer les fichiers et les renommer
selon le plan. Créer les dossiers manquants.

SORTIE : Rapport d'exécution dans le chat : nombre de fichiers déplacés,
erreurs rencontrées, fichiers ignorés.

CONTRAINTES :
- Ne pas supprimer les originaux avant que je confirme que tout va bien
- En cas de conflit de nom (fichier déjà existant), ajouter -v2 au nom
```

---

## Résultats après la migration complète (4 sessions sur 2 semaines)

| Indicateur | Avant | Après |
|-----------|-------|-------|
| Fichiers dans ~/Documents/ | 3 200 | 180 (fichiers personnels) |
| Fichiers dans ~/Documents-Pro/ | 0 | 2 800 (organisés) |
| Doublons supprimés | - | 340 |
| Temps pour retrouver un fichier | 15-20 min | 30 secondes |
| Convention de nommage partagée avec l'équipe | Non | Oui |

**Ce que Paul fait maintenant différemment :**

Tout fichier entrant va d'abord dans `~/Cowork-Workspace/input/inbox/`. Chaque vendredi matin, 10 minutes : Cowork trie l'inbox et propose le classement. Paul valide, Cowork déplace. L'accumulation de 5 ans ne se reproduit pas.

**La leçon :** le plus dur n'était pas de trier les 3 200 fichiers. C'était de définir la structure cible. Une fois la structure claire, Cowork gère le tri. Sans structure, même Cowork ne peut pas aider.
