# Workflow: Suivi des Notes de Frais

> **Temps estimé**: 20 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 🗂️ Organisation
> **Professions**: Toutes professions

🌐 **Also available in [English](expense-tracking.en.md)**

---

## Cas d'usage

Vous avez des photos de tickets de caisse, des captures d'écran ou des documents scannés et vous devez:

- Extraire les données de dépenses dans un tableur
- Catégoriser les dépenses
- Créer des totaux et des synthèses
- Assurer le suivi pour un remboursement ou la comptabilité

> ⚠️ **Important**: Claude lit très bien les **champs** d'un ticket (fournisseur, date, totaux) mais est plus faible pour l'**extraction ligne par ligne** des tableaux (63 % de précision contre 97 % pour les champs). Vérifiez toujours les totaux manuellement. Prévoyez 30 à 50 % du temps gagné pour la validation et la correction des erreurs.

---

## Prérequis

- [ ] Cowork activé avec accès à Chrome (pour les photos de tickets)
- [ ] Images de tickets (JPG, PNG) ou PDF
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Préparer les tickets

```bash
# Créer la structure du workspace
mkdir -p ~/Cowork-Workspace/{input/receipts,output}

# Copier les tickets dans le workspace
cp ~/Downloads/*.jpg ~/Cowork-Workspace/input/receipts/
cp ~/Downloads/*.png ~/Cowork-Workspace/input/receipts/
cp ~/Downloads/*.pdf ~/Cowork-Workspace/input/receipts/
```

**Astuce**: Donnez des noms de fichiers descriptifs si possible (par exemple `2024-01-15-uber.jpg`)

### Étape 2: Vérifier la qualité des tickets

Contrôlez la qualité des images. Cowork utilise la reconnaissance de caractères (OCR) et fonctionne mieux avec:
- Des photos nettes et bien mises au point
- Un bon éclairage
- Un ticket entièrement visible
- Peu de reflets et d'ombres

### Étape 3: Extraction initiale

Commencez par une extraction simple:

```
Extrais les données de dépenses des images de tickets dans ~/Cowork-Workspace/input/receipts/

Crée un fichier Excel avec les colonnes:
- Date (format AAAA-MM-JJ)
- Fournisseur/Magasin
- Montant (nombre uniquement, sans symbole monétaire)
- Devise (code à 3 lettres: USD, EUR, etc.)
- Catégorie
- Moyen de paiement (si visible: Espèces, Crédit, Débit)
- Nom du fichier du ticket (pour référence)

Sauvegarde dans: ~/Cowork-Workspace/output/expenses.xlsx
```

### Étape 4: Vérifier les premiers résultats

Ouvrez le fichier Excel et contrôlez:
- Les dates sont-elles correctes ?
- Les montants sont-ils exacts ?
- Les fournisseurs sont-ils bien reconnus ?
- Y a-t-il des données manquantes ou illisibles ?

### Étape 5: Demander des corrections

S'il y a des problèmes:

```
Relis le fichier de dépenses que tu as créé.

Corrections à faire:
- Ligne 3: le montant doit être 45.99, pas 4599
- Ligne 7: la date doit être 2024-01-15
- Ligne 12: le fournisseur est "Starbucks" et non "Slarbucks"

Applique ces corrections et sauvegarde.
```

### Étape 6: Ajouter des synthèses

Enrichissez le tableur avec une analyse:

```
Enrichis ~/Cowork-Workspace/output/expenses.xlsx avec:

Feuille 2 - "Synthèse par catégorie":
- Catégorie
- Montant total
- Nombre de transactions
- Pourcentage du total

Feuille 3 - "Synthèse mensuelle":
- Mois
- Montant total
- Nombre de transactions
- Catégorie principale

Feuille 4 - "Synthèse par fournisseur":
- Fournisseur
- Total dépensé
- Nombre de visites
- Transaction moyenne

Ajoute des formules pour que les synthèses se mettent à jour automatiquement.
Utilise la syntaxe de formules [européenne/américaine].
```

### Étape 7: Revue finale

```
Crée une synthèse finale des données de dépenses:
- Total des dépenses
- Période couverte
- Nombre de tickets traités
- Tickets dont l'extraction n'a pas pu être complète

Sauvegarde la synthèse dans ~/Cowork-Workspace/output/expense-summary.txt
```

---

## Exemples de prompts

### Extraction simple
```
Extrais les dépenses des tickets dans ~/Cowork-Workspace/input/receipts/
Colonnes: Date, Fournisseur, Montant, Catégorie
Sauvegarde dans ~/Cowork-Workspace/output/expenses.xlsx
```

### Avec catégorisation automatique
```
Extrais les dépenses et catégorise-les automatiquement:
- Restauration: restaurants, cafés, courses alimentaires
- Transport: uber, lyft, carburant, parking
- Bureau: fournitures, logiciels, abonnements
- Voyages: hôtels, vols, locations de voiture
- Autre: tout le reste

Sauvegarde avec les catégories dans ~/Cowork-Workspace/output/categorized-expenses.xlsx
```

### Avec séparation de la taxe
```
Extrais les dépenses avec le détail de la taxe:
Colonnes: Date, Fournisseur, Sous-total, Taxe, Total, Catégorie

Pour les tickets qui indiquent la taxe séparément, extrais-la.
Pour les tickets sans détail de taxe, mets le total dans la colonne Total et laisse Taxe vide.

Ajoute une synthèse indiquant le total de taxe payée.
```

### Rapport de remboursement
```
Crée un rapport de remboursement à partir des dépenses de ~/Cowork-Workspace/output/expenses.xlsx

Format document Word avec:
- Nom de l'employé: [Votre nom]
- Période du rapport: [Détection automatique à partir des dates]
- Tableau détaillé des dépenses
- Sous-totaux par catégorie
- Total général
- Ligne d'attestation à signer

Sauvegarde dans ~/Cowork-Workspace/output/reimbursement-report.docx
```

---

## Troubleshooting

### L'OCR ne parvient pas à lire un ticket

**Cause**: Mauvaise qualité d'image, police inhabituelle ou ticket abîmé

**Solutions**:
- Reprendre la photo avec un meilleur éclairage
- Essayer de scanner au lieu de photographier
- Saisir manuellement les données des tickets problématiques

```
Pour les tickets que tu n'as pas pu lire, ajoute des lignes de remplacement:
- Date: SAISIE MANUELLE NÉCESSAIRE
- Nom du fichier: [nom du fichier du ticket]
Je compléterai les détails à la main.
```

### Montants extraits incorrects

**Problèmes fréquents**:
- Confusion de la virgule décimale (1500 au lieu de 15.00)
- Symbole monétaire inclus dans le nombre
- Confusion entre total et sous-total

```
Relis tous les montants du fichier de dépenses.
Vérifie que:
- Les montants sont des nombres uniquement (pas de symbole $ ou €)
- Les décimales sont correctes (15.99 et non 1599)
- Tu utilises le montant TOTAL, pas le sous-total

Montre-moi les lignes pour lesquelles tu as un doute sur le montant.
```

### Catégories erronées

```
Recatégorise les dépenses avec ces règles:
- "Amazon" → Vérifier l'article: Bureau si fournitures, Personnel sinon
- "Uber"/"Lyft" → Transport (pas Voyages)
- Cafés → Restauration (pas Bureau)

Mets à jour le tableur avec les bonnes catégories.
```

### Doublons

```
Cherche les dépenses en double (même date, même fournisseur, même montant).
Marque les doublons potentiels mais ne supprime rien.
Ajoute une colonne indicateur "Doublon possible".
```

---

## Paramètres régionaux

### États-Unis / Canada
```
Utilise le format américain:
- Dates: MM/JJ/AAAA
- Devise: USD/CAD
- Séparateurs de formules: virgule (,)
```

### Europe
```
Utilise le format européen:
- Dates: JJ/MM/AAAA
- Devise: EUR
- Séparateurs de formules: point-virgule (;)
```

### Devises multiples
```
Gère plusieurs devises:
- Conserve la colonne de la devise d'origine
- Ajoute une colonne "Montant USD" avec la conversion
- Utilise le taux de change à la date du ticket
- Indique le taux de conversion dans la synthèse
```

---

## Variantes

### Rapprochement avec un relevé de carte bancaire
```
Compare les tickets extraits avec le relevé de carte bancaire dans ~/Cowork-Workspace/input/statement.pdf

Crée un rapport de rapprochement avec:
- Les transactions rapprochées
- Les lignes du relevé sans ticket
- Les tickets sans ligne au relevé
- Les écarts de montant
```

### Rapport de dépenses mensuel
```
À partir des dépenses de ~/Cowork-Workspace/output/expenses.xlsx, crée un rapport mensuel:

Inclus:
- Dépenses par catégorie (données pour un graphique en camembert)
- Comparaison avec le mois précédent
- Catégories de dépenses les plus élevées
- Transactions inhabituelles
- Suivi du budget (si un budget est fourni)

Sauvegarde dans ~/Cowork-Workspace/output/monthly-report.docx
```

### Consolidation des dépenses d'équipe
```
Consolide les fichiers de dépenses de ~/Cowork-Workspace/input/team-expenses/
(Plusieurs fichiers de dépenses de différents membres de l'équipe)

Crée un tableur principal avec:
- Toutes les dépenses de tous les fichiers
- Une colonne "Soumis par"
- Les totaux de l'équipe
- Les totaux par personne

Sauvegarde dans ~/Cowork-Workspace/output/team-expenses.xlsx
```

---

## Bonnes pratiques

1. **Nommer correctement les tickets** : `AAAA-MM-JJ-fournisseur.jpg` aide Cowork
2. **Traiter par lots** : Ne faites pas 200 tickets d'un coup; travaillez par 20 à 30
3. **Vérifier TOUS les totaux** : La précision de l'OCR ligne par ligne est d'environ 63 %; vérifiez toujours les sommes à la main
4. **Garder les originaux** : Ne supprimez pas les images des tickets avant vérification
5. **Noter les incertitudes** : Demandez à Cowork de signaler les extractions incertaines
6. **Prévoir la validation** : Comptez 30 à 50 % du temps « gagné » pour la correction des erreurs
7. **Utiliser Max pour les gros lots** : Le quota Pro (environ 1,5 h d'usage intensif) peut ne pas suffire pour plus de 50 tickets

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
