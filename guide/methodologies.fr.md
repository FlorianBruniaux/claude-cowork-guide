---
title: "Méthodologies Cowork"
description: "Méthodes de travail pour les utilisateurs non techniques : CTOC, itération, traitement par lots et vérification qualité"
tags: [methodologies, ctoc, workflow, qualité, lots]
---

# Méthodologies : travailler avec Cowork

Ces cinq méthodes rendent les résultats plus prévisibles. Elles s'appliquent aux tâches de fichiers et de documents, sous réserve des fonctions disponibles sur votre plan et votre surface Claude.

---

## 1. Le cadre CTOC

CTOC structure un prompt en quatre blocs : **C**ontexte, **T**âche, **O**utput (sortie), **C**ontraintes.

### Les quatre blocs

**CONTEXTE** : situation, fichiers concernés et contexte métier.

> « J'ai 30 factures fournisseurs dans `~/Cowork-Workspace/input/factures-mars/` pour mars 2026. »

**TÂCHE** : un objectif précis.

> « Extrais le fournisseur, la date, le montant HT, la TVA et le montant TTC de chaque facture. »

**SORTIE** : format et emplacement exacts.

> « Enregistre `~/Cowork-Workspace/output/factures-mars.xlsx`, une ligne par facture et une colonne par champ. »

**CONTRAINTES** : règles, formats et cas limites.

> « Devise EUR, dates JJ/MM/AAAA, tri chronologique. Si un champ est illisible, écris “À VÉRIFIER”. »

| Erreur | Correction |
|--------|------------|
| Aucun chemin de sortie | Donner le chemin complet |
| Format absent | Nommer les colonnes ou la structure attendue |
| Plusieurs tâches mélangées | Découper en prompts distincts |
| Cas limites ignorés | Ajouter une règle « si X, alors Y » |

---

## 2. Affiner par itérations

Pour un document, demandez d'abord un brouillon utilisable, relisez-le, puis formulez des corrections ciblées. Cette séquence évite de refaire un livrable entier après une première interprétation imparfaite.

1. **Brouillon** : demander une structure courte et exploitable.
2. **Revue** : relever ce qui manque, ce qui est juste et ce qui ne correspond pas au contexte.
3. **Finition** : demander les changements exacts sans modifier le reste.

```
CONTEXTE : Voici le brouillon préparé précédemment.
TÂCHE : Ajoute un exemple chiffré en section 2 et rends le ton plus direct.
SORTIE : Le texte complet révisé dans la conversation.
CONTRAINTES : Conserve la structure et tous les autres passages.
```

---

## 3. Traiter par lots

Pour une opération identique sur plusieurs fichiers, demandez un lot et une sortie vérifiable, plutôt qu'une succession de traitements individuels.

| Volume | Approche |
|--------|----------|
| 1 à 20 fichiers | Un lot, puis vérification |
| 20 à 50 fichiers | Plan, validation, exécution |
| 50 à 100 fichiers | Deux lots d'environ 50 |
| Plus de 100 fichiers | Lots de 20 à 30, séquentiels |

```
CONTEXTE : J'ai [N] fichiers dans ~/Cowork-Workspace/input/[dossier]/.
TÂCHE : Pour chaque fichier, [opération précise].
SORTIE : Enregistre ~/Cowork-Workspace/output/[fichier].xlsx, une ligne par source.
CONTRAINTES : Signale les fichiers illisibles par « ERREUR » et fournis le nombre de réussites et d'erreurs.
```

---

## 4. Vérifier la qualité

Ne validez pas une sortie sans contrôle. Vérifiez d'abord la complétude, puis un échantillon, enfin les cas limites.

1. **Complétude** : le nombre de lignes de sortie correspond-il au nombre de fichiers source ?
2. **Échantillon** : contrôlez manuellement quelques éléments contre leurs fichiers d'origine.
3. **Cas limites** : vérifiez en priorité les scans peu lisibles, les tableaux, les formats atypiques et les langues étrangères.

Pour une extraction, corrigez un exemple précis avant de relancer un lot entier : indiquez la ligne erronée, le fichier source, la correction attendue et demandez une explication courte.

---

## 5. Augmenter progressivement la complexité

Commencez par un prompt minimal, puis ajoutez uniquement les contraintes justifiées par un besoin constaté.

```
Organise les fichiers de ~/Cowork-Workspace/input/ par type.
```

Puis, si nécessaire :

```
Organise-les par type puis par année. Utilise des noms de dossiers en français.
Ne déplace pas les fichiers créés il y a moins de 7 jours. Crée un journal des déplacements.
```

Adoptez aussi Cowork progressivement : maîtrisez un workflow répétitif, ajoutez-en deux ou trois, puis seulement les tâches récurrentes et la continuité de contexte. La disponibilité des fonctions peut évoluer : vérifiez les [instructions officielles](https://support.claude.com/en/articles/13345190-get-started-with-cowork) avant de bâtir un processus critique.
