# Workflow: Transformation Devis → Facture

> **Temps estimé**: 10 minutes
> **Difficulté**: Débutant
> **Catégorie**: 📋 Administratif
> **Professions**: Tous

🌐 **Also available in [English](quote-to-invoice.en.md)**

---

## Cas d'usage

Un client a accepté votre devis et vous devez rapidement le transformer en facture. Ce workflow vous aide à:

- Convertir devis en facture automatiquement
- Garder cohérence numérotation et montants
- Ajouter les mentions légales facture
- Archiver correctement

> ⚠️ **Important**: Vérifiez toujours que le devis accepté correspond exactement aux prestations facturées.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Devis accepté (PDF ou Word)
- [ ] Numéro de facture suivant
- [ ] Accord client (email, signature, bon pour accord)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Préparer le devis source

```bash
mkdir -p ~/Cowork-Workspace/{input,output/factures}

# Copier devis accepté
cp ~/Documents/Devis/D2026-042.pdf ~/Cowork-Workspace/input/
```

### Étape 2: Convertir en facture

```
Convertis le devis ~/Cowork-Workspace/input/D2026-042.pdf en facture

TRANSFORMATIONS:
1. Remplacer "DEVIS" par "FACTURE"
2. Remplacer numéro devis D2026-042 par F2026-085
3. Remplacer date devis par date facture: 20 janvier 2026
4. Ajouter date échéance: 19 février 2026 (30 jours)

CONSERVER À L'IDENTIQUE:
- Coordonnées client
- Prestations et quantités
- Prix unitaires et totaux (HT, TVA, TTC)
- Conditions générales de vente (si présentes)

AJOUTER:
- Mention "Devis D2026-042 du [date devis] accepté le [date acceptation]"
- Conditions de paiement: 30 jours net
- Pénalités de retard: Taux BCE + 10 points + indemnité forfaitaire 40€
- Mode de paiement: [Virement / Chèque / Espèces si <1000€]
- Coordonnées bancaires (RIB)

SUPPRIMER (si présent):
- Mention "Devis gratuit et sans engagement"
- Validité devis (n'a plus de sens sur facture)

Format: PDF
Sauvegarde: ~/Cowork-Workspace/output/factures/F2026-085.pdf
```

### Étape 3: Vérifier la cohérence

Cowork montrera le plan. **Vérifiez**:

- ✓ Montants identiques devis/facture
- ✓ Numérotation correcte et unique
- ✓ Dates cohérentes (facture ≥ devis)
- ✓ Toutes mentions légales présentes

Si écart avec devis:

```
ATTENTION: Le client a demandé modification après devis

Devis initial D2026-042:
- Prestation A: 500€

Client demande:
- Prestation A: 600€ (option premium ajoutée)

Facture F2026-085:
- Prestation A option premium: 600€
- Ajouter note: "Modification convenue avec client le [date]"
```

### Étape 4: Générer et archiver

```
Procède avec la conversion
```

Vérifier et archiver:

```bash
# Ouvrir facture générée
open ~/Cowork-Workspace/output/factures/F2026-085.pdf

# Créer lien devis ↔ facture pour traçabilité
echo "Devis D2026-042 → Facture F2026-085 le 20/01/2026" >> ~/Cowork-Workspace/output/correspondances.txt
```

### Étape 5: Suivi (optionnel)

Créer rappel échéance:

```
Depuis facture F2026-085 (échéance 19/02/2026):

Crée rappel paiement:
- Date alerte: 12/02/2026 (7 jours avant échéance)
- Action: Vérifier si paiement reçu
- Si non: Relance courtoise

Format: Ligne dans ~/Cowork-Workspace/output/rappels-paiement.csv
Colonnes: Facture | Client | Montant | Échéance | Rappel | Statut
```

---

## Exemples de prompts

### Conversion simple

```
Devis D2026-038 accepté → Facture F2026-074

Devis: ~/Cowork-Workspace/input/D2026-038.pdf
Date facture: 20/01/2026
Échéance: +30 jours (19/02/2026)
Aucune modification aux prestations

Ajoute:
- Mention "Devis D2026-038 du 12/01/2026 accepté le 18/01/2026"
- RIB: IBAN FR76... BIC BNPAFRPP...
- Paiement virement bancaire

Sauvegarde: ~/Cowork-Workspace/output/factures/F2026-074.pdf
```

### Conversion avec acompte

```
Devis D2026-051 Total TTC: 5000€

Client verse acompte 30% = 1500€

Génère 2 factures:

FACTURE 1 (acompte):
- Numéro: F2026-089
- Date: 20/01/2026
- Montant: 1500€ TTC
- Mention: "Acompte 30% - Devis D2026-051"
- Échéance: Immédiate (paiement à la commande)

FACTURE 2 (solde - à émettre plus tard):
- Numéro: F2026-XXX (à déterminer)
- Montant: 3500€ TTC
- Mention: "Solde - Devis D2026-051 - Acompte F2026-089 déduit"
- Échéance: Après livraison/fin travaux

Pour l'instant, génère uniquement F2026-089 (acompte)
Sauvegarde: ~/Cowork-Workspace/output/factures/F2026-089-acompte.pdf
```

### Lot de conversions

```
Convertis en lot 5 devis acceptés dans ~/Cowork-Workspace/input/devis-acceptes/

Pour chaque devis:
1. Lire numéro devis D2026-XXX
2. Générer facture F2026-YYY (numérotation séquentielle à partir de F2026-090)
3. Date facture: 20/01/2026
4. Échéance: +30 jours
5. Ajouter mentions standard

Créer aussi fichier récapitulatif Excel:
- Colonnes: Devis | Facture | Client | Montant | Date | Échéance
- Sauvegarde: ~/Cowork-Workspace/output/conversions-janvier-2026.xlsx
```

---

## Troubleshooting

### Devis incomplet ou modifié

**Cause**: Négociation après devis
**Solution**: Documenter changements:

```
Le devis D2026-042 a été modifié après acceptation:

DEVIS INITIAL:
- Prestation A: 1000€
- Prestation B: 500€
Total: 1500€

ACCORD CLIENT (email du 18/01):
- Prestation A supprimée
- Prestation B: 500€
- Prestation C ajoutée: 700€
Total: 1200€

FACTURE F2026-085:
Reprendre accord final (1200€)
Ajouter note: "Prix selon accord email du 18/01/2026"
Joindre copie email acceptation
```

### Numérotation décalée

**Cause**: Oubli d'une facture ou doublon
**Solution**: Vérifier registre:

```
Liste toutes factures dans ~/Cowork-Workspace/output/factures/
Trie par numéro chronologique
Identifie dernier numéro utilisé: F2026-084
Prochain numéro: F2026-085

Si trou dans numérotation (ex: F2026-082 manquant):
→ Investiguer: facture annulée? oubliée?
→ Ne jamais réutiliser numéro annulé (créer F2026-085bis si besoin)
```

### TVA changée entre devis et facture

**Cause**: Changement statut entreprise
**Solution**: Expliciter:

```
Devis émis quand j'étais sous franchise TVA
Facture émise après passage régime normal TVA

Facture F2026-085:
- Reprendre montants HT du devis
- Ajouter TVA 20%
- Nouveau total TTC
- Ajouter note explicative:
  "TVA applicable depuis le [date] - Changement régime fiscal"

Informer client avant émission si montant TTC change
```

---

## Variations

### Conversion avec facture intermédiaire

```
Devis D2026-055 pour chantier 3 mois
Facturation par étapes:

FACTURE 1 (30% avancement):
Mois 1: F2026-091 = 30% total devis

FACTURE 2 (30% avancement):
Mois 2: F2026-105 = 30% total devis

FACTURE 3 (solde):
Mois 3: F2026-118 = 40% total devis

Chaque facture mentionne:
- "Devis D2026-055 - Phase X/3"
- Cumul facturé: X% sur Y€ total
```

### Conversion automatique emails

```
Surveille ma boîte email pour sujets "[ACCEPTÉ] Devis D2026-XXX"

Quand email reçu:
1. Extraire numéro devis
2. Chercher PDF devis dans ~/Documents/Devis/
3. Convertir en facture automatiquement
4. Sauvegarder dans ~/Cowork-Workspace/output/factures/
5. M'envoyer email avec:
   - Confirmation conversion
   - Lien facture générée
   - Rappel vérifier avant envoi client

(Workflow avancé - nécessite automation email)
```

### Export comptabilité

```
Après conversion devis → facture:

Génère aussi ligne comptable pour export logiciel compta:

Format CSV:
Date | Compte | Libellé | Débit | Crédit | Référence
20/01/2026 | 411000 | Client Dupont F2026-085 | 1200.00 | | F2026-085
20/01/2026 | 706000 | Vente prestation | | 1000.00 | F2026-085
20/01/2026 | 445710 | TVA collectée 20% | | 200.00 | F2026-085

Ajouter au fichier ~/Cowork-Workspace/output/export-compta-2026.csv
```

---

## Bonnes pratiques

1. **Conservation devis** : Archiver devis ET facture ensemble (traçabilité)
2. **Acceptation formelle** : Toujours avoir preuve acceptation (email, signature, BPA)
3. **Délai raisonnable** : Émettre facture max 1 mois après acceptation devis
4. **Cohérence montants** : Si modification, documenter et informer client
5. **Numérotation unique** : Jamais 2 factures avec même numéro
6. **Vérification double** : Relire avant envoi (erreur facture = avoir + nouvelle facture)
7. **Échéance claire** : Toujours mentionner date limite paiement
8. **Envoi rapide** : Envoyer facture dans 48h après acceptation (crédibilité)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
