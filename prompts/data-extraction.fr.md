# Prompts d'Extraction de Données

🌐 **Langues** : [Français](data-extraction.fr.md) | [English](data-extraction.md)

> **15+ prompts (instructions données à l'IA) prêts à l'emploi pour extraire des données structurées depuis des images, PDFs et documents**

---

## Prompts Reçus & Factures

### 1. Extraction Basique de Reçus

```
Extraire les données de dépenses des images de reçus dans ~/Cowork-Workspace/input/receipts/

Créer un fichier Excel avec les colonnes :
- Date
- Fournisseur/Magasin
- Montant
- Devise
- Catégorie (détection automatique : Alimentation, Transport, Bureau, etc.)
- Moyen de paiement (si visible)
- Notes

Ajouter une ligne de totaux en bas.
Enregistrer dans : ~/Cowork-Workspace/output/expenses.xlsx
```

### 2. Traitement Détaillé de Reçus

```
Traiter les reçus dans ~/Cowork-Workspace/input/receipts/ avec extraction détaillée.

Structure Excel :
Feuille 1 - Lignes détaillées :
- ID Reçu
- Date
- Fournisseur
- Description article
- Quantité
- Prix unitaire
- Prix total
- Catégorie

Feuille 2 - Synthèse :
- Total par catégorie
- Total par fournisseur
- Total par mois
- Total général

Feuille 3 - Index des reçus :
- ID Reçu
- Nom de fichier
- Date
- Fournisseur
- Total
- Statut (extraction complète/partielle)

Utiliser la syntaxe de formule [européenne/américaine].
Enregistrer dans : ~/Cowork-Workspace/output/detailed-expenses.xlsx
```

### 3. Extraction de Données de Factures

```
Extraire les données des factures dans ~/Cowork-Workspace/input/invoices/

Créer un fichier Excel avec :
- Numéro de facture
- Date de facture
- Date d'échéance
- Nom du fournisseur
- Adresse du fournisseur
- Sous-total
- Montant TVA
- Montant total
- Statut de paiement (si détectable)
- Lignes détaillées (feuille séparée)

Signaler les factures qui n'ont pas pu être entièrement analysées.
Enregistrer dans : ~/Cowork-Workspace/output/invoice-tracker.xlsx
```

---

## Prompts d'Extraction PDF

### 4. Extraction de Tableaux PDF

```
Extraire les tableaux des documents PDF dans ~/Cowork-Workspace/input/pdfs/

Pour chaque PDF :
- Identifier tous les tableaux
- Extraire vers des feuilles Excel séparées
- Préserver la structure des tableaux et les en-têtes
- Noter le PDF source et le numéro de page

Sortie : Un fichier Excel par PDF
Enregistrer dans : ~/Cowork-Workspace/output/extracted-tables/
Créer un fichier index : ~/Cowork-Workspace/output/table-index.txt
```

### 5. Extraction de Données de Formulaires PDF

```
Extraire les données de formulaires remplis depuis les PDFs dans ~/Cowork-Workspace/input/forms/

Créer une sortie structurée :
- Une ligne par formulaire
- Colonnes pour chaque champ du formulaire
- Inclure le nom de fichier comme référence

Gérer les variations de remplissage (champs vides = cellule vide).
Enregistrer dans : ~/Cowork-Workspace/output/form-data.xlsx
```

### 6. Termes Clés de Contrats PDF

```
Extraire les termes clés des contrats dans ~/Cowork-Workspace/input/contracts/

Pour chaque contrat, identifier :
- Parties impliquées
- Date d'effet
- Durée
- Conditions de renouvellement
- Résumé de la clause de résiliation
- Obligations principales
- Conditions de paiement
- Dates importantes

Créer un fichier Excel avec une ligne par contrat.
Enregistrer dans : ~/Cowork-Workspace/output/contract-summary.xlsx
```

> 💡 **Note Claude Legal** : Si vous avez accès à Claude Legal (extension Cowork), cette extraction de termes contractuels peut être automatisée avec détection de risques et clauses problématiques supplémentaire. Voir [Extensions & Plugins](../guide/02-capabilities.fr.md#extensions--plugins).

---

## Prompts de Données Image

### 7. Extraction de Cartes de Visite

```
Extraire les informations de contact des images de cartes de visite dans ~/Cowork-Workspace/input/cards/

Créer un fichier Excel avec les colonnes :
- Nom
- Titre
- Entreprise
- Email
- Téléphone
- Mobile
- Adresse
- Site web
- LinkedIn (si présent)
- Nom du fichier source

Enregistrer dans : ~/Cowork-Workspace/output/contacts.xlsx

Créer également un fichier VCF pour import : ~/Cowork-Workspace/output/contacts.vcf
```

### 8. Extraction de Données de Captures d'Écran

```
Extraire les données des captures d'écran dans ~/Cowork-Workspace/input/screenshots/

Les captures d'écran contiennent : [décrire le contenu, ex. "paramètres logiciels", "formulaires web", "graphiques"]

Créer une sortie structurée avec :
- Nom du fichier de la capture d'écran
- Type de contenu
- Texte/données extraits
- Valeurs clés identifiées

Enregistrer dans : ~/Cowork-Workspace/output/screenshot-data.xlsx
```

### 9. Extraction de Notes Manuscrites

```
Extraire le texte des images de notes manuscrites dans ~/Cowork-Workspace/input/notes/

Créer un document avec :
- Nom du fichier image source
- Texte extrait (meilleure interprétation)
- Notes de confiance (sections incertaines signalées)
- Date si visible

Format : Document Word
Enregistrer dans : ~/Cowork-Workspace/output/transcribed-notes.docx
```

---

## Prompts de Données Structurées

### 10. Nettoyage et Standardisation CSV

```
Nettoyer et standardiser les fichiers CSV dans ~/Cowork-Workspace/input/csv-files/

Opérations :
- Standardiser les formats de date en AAAA-MM-JJ
- Supprimer les espaces superflus de toutes les cellules
- Standardiser le format des numéros de téléphone
- Normaliser les noms de pays
- Supprimer les lignes en double
- Signaler les problèmes de qualité des données

Enregistrer les fichiers nettoyés dans : ~/Cowork-Workspace/output/cleaned/
Créer un rapport de qualité des données : ~/Cowork-Workspace/output/data-quality-report.md
```

### 11. Consolidation de Données Multi-Sources

```
Consolider les données de plusieurs fichiers dans ~/Cowork-Workspace/input/data-sources/

Les fichiers peuvent inclure : [CSV, Excel, fichiers texte]
Champ commun : [spécifier le champ clé, ex. "adresse email"]

Créer un fichier Excel maître avec :
- Tous les enregistrements uniques
- Données combinées de toutes les sources
- Suivi de la source (de quel fichier provient chaque donnée)
- Signalement des doublons

Enregistrer dans : ~/Cowork-Workspace/output/consolidated-data.xlsx
```

### 12. JSON/XML vers Excel

```
Convertir les fichiers JSON/XML dans ~/Cowork-Workspace/input/data/ au format Excel.

Pour chaque fichier :
- Aplatir les structures imbriquées de manière appropriée
- Créer des en-têtes de colonnes clairs
- Gérer les tableaux comme lignes multiples
- Préserver les types de données quand possible

Enregistrer les fichiers convertis dans : ~/Cowork-Workspace/output/converted/
Utiliser le nom de fichier original avec l'extension .xlsx.
```

---

## Prompts d'Extraction Spécialisée

### 13. Extraction de Détails de Réunions/Événements

```
Extraire les détails d'événements depuis les documents dans ~/Cowork-Workspace/input/events/

Pour chaque événement, capturer :
- Nom de l'événement
- Date
- Heure
- Lieu
- Organisateur
- Participants (si listés)
- Points à l'ordre du jour
- Notes particulières

Créer un fichier Excel avec une ligne par événement.
Créer un fichier ICS pour import dans le calendrier.
Enregistrer dans : ~/Cowork-Workspace/output/events.xlsx
Enregistrer dans : ~/Cowork-Workspace/output/events.ics
```

### 14. Données Produits/Inventaire

```
Extraire les informations produits depuis les documents/images dans ~/Cowork-Workspace/input/products/

Capturer :
- Nom du produit
- SKU/ID (si visible)
- Description
- Prix
- Catégorie
- Spécifications
- Document source

Créer un catalogue produits Excel.
Enregistrer dans : ~/Cowork-Workspace/output/product-catalog.xlsx
```

### 15. Données d'Articles de Recherche

```
Extraire les données structurées des articles de recherche dans ~/Cowork-Workspace/input/papers/

Pour chaque article :
- Titre
- Auteurs
- Date de publication
- Revue/Conférence
- Résumé (200 premiers mots)
- Mots-clés
- Méthodologie (bref)
- Résultats clés (3-5 points)
- Nombre de citations (si disponible)

Créer une bibliographie Excel.
Enregistrer dans : ~/Cowork-Workspace/output/research-catalog.xlsx
```

### 16. Comparaison de Devis/Estimations

```
Extraire et comparer les devis depuis ~/Cowork-Workspace/input/quotes/

Pour chaque devis :
- Nom du fournisseur
- Date du devis
- Valide jusqu'au
- Lignes détaillées avec prix
- Sous-total
- TVA
- Total
- Conditions

Créer une matrice de comparaison en Excel.
Mettre en évidence : le prix le plus bas, les meilleures conditions, l'option recommandée.
Enregistrer dans : ~/Cowork-Workspace/output/quote-comparison.xlsx
```

---

## Prompts de Contrôle Qualité

### 17. Rapport de Validation de Données

```
Valider les données extraites dans ~/Cowork-Workspace/output/[sortie-precedente].xlsx

Vérifier :
- Champs obligatoires manquants
- Formats de date invalides
- Champs numériques contenant du texte
- Entrées en double
- Valeurs aberrantes
- Formatage incohérent

Créer un rapport de validation avec :
- Type de problème
- Référence ligne/cellule
- Valeur actuelle
- Correction suggérée

Enregistrer dans : ~/Cowork-Workspace/output/validation-report.xlsx
```

---

## Notes de Personnalisation

**Pour la précision OCR :**
- "Les images sont de qualité [haute/moyenne/basse]"
- "Le texte est [imprimé/manuscrit]"
- "La langue est [français/anglais/etc.]"

**Pour les paramètres régionaux :**
- "Utiliser le format de date [européen/américain]"
- "La devise est [USD/EUR/etc.]"
- "Utiliser [la virgule/le point] comme séparateur décimal"

**Pour la gestion des erreurs :**
- "Marquer les extractions incertaines avec [?]"
- "Ignorer les fichiers qui ne peuvent pas être traités"
- "Créer un journal d'erreurs pour les extractions échouées"

---

*[Retour à l'Index des Prompts](README.fr.md) | [Documentation Cowork](../README.md)*
