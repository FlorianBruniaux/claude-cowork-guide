# Workflow: Génération de Factures

> **Temps estimé**: 15 minutes
> **Difficulté**: Débutant
> **Catégorie**: 📋 Administratif
> **Professions**: Artisans/BTP, Commerçants, Indépendants

🌐 **Also available in [English](invoice-generation.en.md)**

---

## Cas d'usage

Vous devez créer des factures professionnelles rapidement à partir de templates ou de devis existants. Ce workflow vous aide à:

- Générer des factures conformes depuis des templates
- Convertir des devis acceptés en factures
- Numéroter automatiquement vos factures
- Calculer TVA et totaux automatiquement

> ⚠️ **Important**: Ce workflow génère des factures au format texte/PDF. Vérifiez toujours les montants et les mentions légales avant envoi.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Template de facture (Word, Excel ou PDF) OU informations client
- [ ] Numéro de facture suivant
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Préparer le Workspace

```bash
# Créer la structure
mkdir -p ~/Cowork-Workspace/{templates,output/factures}

# Si vous avez un template, le copier
cp ~/Documents/template-facture.docx ~/Cowork-Workspace/templates/
```

### Étape 2: Créer la facture depuis template

Si vous avez un template:

```
Utilise le template dans ~/Cowork-Workspace/templates/template-facture.docx

Remplis-le avec ces informations:
- Numéro facture: F2026-001
- Date: 20 janvier 2026
- Client: [Nom et adresse du client]
- Prestations:
  * [Désignation 1]: [quantité] x [prix HT]
  * [Désignation 2]: [quantité] x [prix HT]
- Conditions de paiement: 30 jours

Calcule automatiquement:
- Total HT
- TVA 20%
- Total TTC

Sauvegarde dans ~/Cowork-Workspace/output/factures/F2026-001.pdf
```

### Étape 3: Créer une facture depuis zéro

Si vous n'avez pas de template:

```
Crée une facture professionnelle avec:

EN-TÊTE:
- Mes coordonnées: [Nom, adresse, SIRET, TVA intracommunautaire]
- Logo: (optionnel)

CLIENT:
- Nom: [Nom du client]
- Adresse: [Adresse complète]

FACTURE:
- Numéro: F2026-001
- Date d'émission: 20/01/2026
- Date d'échéance: 19/02/2026

PRESTATIONS:
| Désignation | Qté | Prix Unit. HT | Total HT |
|-------------|-----|---------------|----------|
| [Service 1] | 1   | 500,00 €      | 500,00 € |
| [Service 2] | 2   | 250,00 €      | 500,00 € |

TOTAUX:
- Total HT: 1 000,00 €
- TVA 20%: 200,00 €
- Total TTC: 1 200,00 €

MENTIONS LÉGALES:
- Conditions de paiement: 30 jours
- Pénalités de retard: [taux légal]
- Escompte si paiement anticipé: néant

Format: PDF
Sauvegarde: ~/Cowork-Workspace/output/factures/F2026-001.pdf
```

### Étape 4: Vérifier la facture

Cowork affichera son plan. **Vérifiez**:

- ✓ Calculs corrects (HT, TVA, TTC)
- ✓ Numéro de facture unique
- ✓ Coordonnées complètes
- ✓ Mentions légales obligatoires

### Étape 5: Générer et sauvegarder

```
Procède avec la génération
```

Après génération:

```bash
# Vérifier le fichier
open ~/Cowork-Workspace/output/factures/F2026-001.pdf

# OU sur Linux
xdg-open ~/Cowork-Workspace/output/factures/F2026-001.pdf
```

---

## Exemples de prompts

### Facture simple

```
Crée une facture:
- N°: F2026-042
- Date: 20/01/2026
- Client: SARL Martin Menuiserie, 12 rue du Bois 75001 Paris
- Prestation: Pose fenêtres PVC x3, 450€ HT chacune
- TVA 20%
- Paiement 30 jours

Mes coordonnées:
Durand Plomberie, 5 avenue Général 75002 Paris
SIRET: 123 456 789 00012

Sauvegarde PDF: ~/Cowork-Workspace/output/factures/F2026-042.pdf
```

### Plusieurs factures en lot

```
Crée 5 factures depuis les devis dans ~/Cowork-Workspace/input/

Pour chaque devis accepté:
- Convertir en facture
- Numérotation: F2026-[numéro séquentiel]
- Garder les mêmes montants
- Ajouter date d'échéance: +30 jours
- Format PDF dans ~/Cowork-Workspace/output/factures/
```

---

## Troubleshooting

### Calculs TVA incorrects

**Cause**: Taux de TVA non spécifié ou erroné
**Solution**: Préciser explicitement:

```
TVA applicable: 20% (taux normal)
OU
TVA applicable: 10% (taux réduit)
OU
TVA non applicable, article 293 B du CGI (auto-entrepreneur)
```

### Numérotation en doublon

**Cause**: Numéro de facture déjà utilisé
**Solution**: Tenir un registre manuel ou demander:

```
Liste toutes les factures dans ~/Cowork-Workspace/output/factures/
Donne-moi le prochain numéro disponible
```

### Mentions légales manquantes

**Cause**: Template incomplet
**Solution**: Fournir toutes les mentions obligatoires:

```
Ajoute ces mentions:
- Numéro SIRET: [votre numéro]
- TVA intracommunautaire: [si applicable]
- Capital social: [si société]
- RCS: [si applicable]
- Conditions de paiement
- Pénalités de retard: taux BCE + 10 points
- Indemnité forfaitaire de recouvrement: 40€
```

---

## Variations

### Facture d'acompte

```
Génère facture d'acompte:
- Montant: 30% du devis D2026-015
- Mention: "Acompte de 30% - Devis D2026-015"
- Facture finale déduira cet acompte
```

### Facture récurrente (mensuelle)

```
Crée facture mensuelle Janvier 2026:
- Même client que facture précédente F2026-035
- Même prestation: Maintenance mensuelle
- Même montant: 250€ HT
- Nouvelle date et numéro: F2026-045
```

### Export Excel pour comptabilité

```
Après génération de la facture PDF, crée aussi:
- Fichier Excel: ~/Cowork-Workspace/output/factures/F2026-042.xlsx
- Avec colonnes: Date, N°, Client, HT, TVA, TTC, Échéance
```

---

## Bonnes pratiques

1. **Numérotation séquentielle** — Pas de trous dans la numérotation (obligation légale)
2. **Sauvegarde systématique** — Conservez toutes vos factures pendant 10 ans
3. **Vérification double** — Relisez toujours avant envoi au client
4. **Template validé** — Faites valider votre template par votre comptable
5. **Mentions légales à jour** — Vérifiez annuellement les obligations légales
6. **Archivage organisé** — Nommage cohérent (année/numéro ou par client)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
