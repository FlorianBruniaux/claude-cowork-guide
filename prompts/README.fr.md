# Bibliothèque de prompts Cowork

🌐 **Langues** : [Français](README.fr.md) | [English](README.md)

> **Prompts (instructions données à l'IA) prêts à l'emploi organisés par catégorie**

---

## Comment utiliser

1. **Copier le prompt** de la catégorie pertinente
2. **Personnaliser** les placeholders (marqués avec `[crochets]`)
3. **Coller dans Cowork** et vérifier le plan avant d'approuver

### Structure des prompts

Tous les prompts suivent ce modèle :
```
Tâche : [Objectif clair]
Entrée : [Emplacement source]
Sortie : [Destination et format]
[Contraintes supplémentaires ou exigences de format]
```

---

## Catégories

| Catégorie | Description | Prompts |
|----------|-------------|---------|
| [Opérations sur fichiers](file-ops.fr.md) | Organisation, renommage, nettoyage | 15+ |
| [Création de documents](document-creation.fr.md) | Rapports, synthèses, présentations | 15+ |
| [Extraction de données](data-extraction.fr.md) | Images vers données, parsing PDF | 15+ |
| [Recherche](research.fr.md) | Recherche web, synthèse | 10+ |
| [Conciergerie et Location Saisonnière](conciergerie.fr.md) | Analyse prospects LBC, estimation LCD, messages personnalisés, argumentaires | 4 |
| [Restauration](restauration.fr.md) | Carte saisonnière, food cost, réponses avis, comparatif fournisseurs, posts réseaux | 5 |
| [Immobilier](immobilier.fr.md) | Annonces différenciantes, prospection vendeur, compte-rendu visite, estimation, relance acquéreur | 5 |
| [E-commerce](ecommerce.fr.md) | Fiches produits SEO, batch fiches, réponses SAV, newsletter, posts réseaux | 5 |

---

## Référence rapide

### Prompts les plus utilisés

**Organiser les téléchargements**
```
Organiser tous les fichiers dans ~/Cowork-Workspace/input/ par type.
Créer des dossiers : Documents, Images, Tableurs, Archives, Autres.
Déplacer les fichiers (ne pas copier). Sauvegarder un rapport de synthèse dans ~/Cowork-Workspace/output/organisation-synthese.txt
```

**Reçu vers Excel**
```
Extraire les données de dépenses des images de reçus dans ~/Cowork-Workspace/input/reçus/
Créer un fichier Excel avec les colonnes : Date, Fournisseur, Montant, Catégorie, Notes.
Ajouter une feuille de synthèse avec les totaux par catégorie.
Utiliser la syntaxe de formule européenne (points-virgules).
Enregistrer dans ~/Cowork-Workspace/output/depenses.xlsx
```

**Notes vers rapport**
```
Combiner toutes les notes dans ~/Cowork-Workspace/input/notes/ en un rapport de statut de projet.
Structure : Résumé exécutif, Progrès par domaine, Décisions clés, Risques, Prochaines étapes.
Formater en document Word.
Enregistrer dans ~/Cowork-Workspace/output/rapport-statut.docx
```

**Recherche web**
```
Rechercher les 5 meilleurs outils/solutions [sujet].
Créer un tableau comparatif avec : Nom, Site web, Fonctionnalités clés, Tarification, Pour, Contre.
Inclure une section de recommandation.
Enregistrer dans ~/Cowork-Workspace/output/recherche-[sujet].md
```

---

## Conseils pour de meilleurs prompts

### Soyez spécifique sur le périmètre

```
❌ "Organiser mes fichiers"
✅ "Organiser les fichiers dans ~/Cowork-Workspace/input/ en sous-dossiers par type de fichier"
```

### Spécifier l'emplacement de sortie

```
❌ "Créer une synthèse"
✅ "Enregistrer la synthèse dans ~/Cowork-Workspace/output/synthese.txt"
```

### Décrire le format attendu

```
❌ "Faire un tableur"
✅ "Créer un Excel avec les colonnes : Date, Montant, Catégorie. Ajouter une ligne de totaux."
```

### Gérer les paramètres régionaux

```
✅ "Utiliser la syntaxe de formule européenne (séparateurs point-virgule)"
✅ "Utiliser le format de date américain (MM/JJ/AAAA)"
```

### Demander confirmation

```
✅ "Me montrer le plan avant d'exécuter tout déplacement de fichiers"
```

---

## Créer vos propres prompts

### Modèle

```
Tâche : [Ce que vous voulez que Cowork fasse]
Entrée : ~/Cowork-Workspace/input/[sous-dossier ou fichiers]
Sortie : ~/Cowork-Workspace/output/[nomdefichier.extension]
Format : [Exigences spécifiques]
Contraintes : [Limitations ou préférences]
```

### Exemple de prompt personnalisé

```
Tâche : Créer un document de briefing client
Entrée : ~/Cowork-Workspace/input/client-acme/
Sortie : ~/Cowork-Workspace/output/briefing-acme.docx

Format :
- Aperçu de l'entreprise (1 page)
- Contacts clés avec titres
- Actualités récentes (3 derniers mois)
- Points de discussion (5-7 puces)
- Questions à poser (5-7 questions)

Contraintes :
- Ton professionnel
- Maximum 5 pages
- Inclure la date de préparation dans l'en-tête
```

---

## Catégories de prompts

### [Opérations sur fichiers →](file-ops.fr.md)
- Organiser par type, date, projet
- Renommer les fichiers avec des motifs
- Trouver et gérer les doublons
- Nettoyer et archiver

### [Création de documents →](document-creation.fr.md)
- Rapports de statut
- Synthèses de réunions
- Présentations
- Documents formatés

### [Extraction de données →](data-extraction.fr.md)
- Reçus vers tableur
- Extraction de données PDF
- Extraction de texte d'images
- Parsing de données structurées

### [Recherche →](research.fr.md)
- Analyse concurrentielle
- Recherche thématique
- Matrices de comparaison
- Synthèses de tendances

### [Conciergerie et Location Saisonnière →](conciergerie.fr.md)
- Analyse d'annonce Le Bon Coin (score potentiel 1-5, atouts quartier)
- Estimation revenus LCD vs LLD (tableau comparatif chiffré)
- Message de premier contact (150-200 mots, ton qualitatif)
- Argumentaire propriétaire (document de suivi 1-2 pages)

### [Restauration →](restauration.fr.md)
- Carte saisonnière (entrées, plats, desserts avec allergènes et food cost)
- Food cost par plat et tri par rentabilité
- Réponse personnalisée aux avis Google et TripAdvisor
- Comparatif fournisseurs (prix, qualité, logistique)
- Posts réseaux sociaux (plat du jour ou événement)

### [Immobilier →](immobilier.fr.md)
- Annonce immobilière (3 versions : SeLoger, site agence, réseaux sociaux)
- Email de prospection vendeur depuis une annonce particulier
- Compte-rendu de visite pour le vendeur (J+1)
- Estimation comparative de marché (avec comparables DVF)
- Relance acquéreur après visite (J+5)

### [E-commerce →](ecommerce.fr.md)
- Fiche produit SEO (titre optimisé, accroche bénéfice, description, specs)
- Batch fiches produits (10 fiches en une session)
- Réponse SAV client (retard, produit abimé, remboursement)
- Newsletter mensuelle (avec objet A/B testable)
- Posts réseaux sociaux par plateforme (Instagram, Facebook, Pinterest)

---

*[Retour à la documentation Cowork](../README.md)*
