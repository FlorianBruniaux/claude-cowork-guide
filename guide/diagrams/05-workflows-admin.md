---
title: "Diagrammes : Workflows Administratifs"
description: "4 diagrammes : pipeline facturation, flux devis-facture, conformité par secteur, escalade relances"
tags: [admin, facturation, devis, relances, conformite]
---

# Workflows Administratifs : Diagrammes

4 diagrammes pour les flux administratifs les plus courants en TPE/PME : facturation, devis, relances, conformité.

---

## D19 : Pipeline de facturation complet {#d19}

**Quand l'utiliser** : tu veux visualiser le flux complet de la facturation, depuis la prestation jusqu'à l'encaissement.

```mermaid
flowchart LR
    A([Prestation\nterminée]):::start --> B[Bon de travaux\nou relevé]:::doc

    B --> C{Format\ndisponible ?}:::decision

    C -->|Photo ou scan| D[Cowork extrait\nles données]:::cowork
    C -->|Fichier texte| E[Cowork génère\nla facture directement]:::cowork

    D --> F[Vérification\nhumaine]:::human
    E --> F

    F -->|OK| G[Facture PDF\ngénérée]:::doc
    F -->|Correction| D

    G --> H[Envoi client]:::action
    H --> I{Paiement\nreçu ?}:::decision

    I -->|Oui, sous 30j| J([Archivage\ncomptable]):::end
    I -->|Non après 30j| K[Cowork rédige\nrelance J+30]:::cowork
    K --> L{Réponse ?}:::decision
    L -->|Paiement| J
    L -->|Silence| M[Relance J+45\nton ferme]:::cowork
    M --> N[Mise en demeure\nmanuelle]:::human

    classDef start fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef end fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef cowork fill:#E87E2F,stroke:#c06020,color:#fff
    classDef decision fill:#6DB3F2,stroke:#4a90d0,color:#fff,font-weight:bold
    classDef doc fill:#F5E6D3,stroke:#E87E2F,color:#333
    classDef human fill:#B8B8B8,stroke:#888,color:#333
    classDef action fill:#F5E6D3,stroke:#6DB3F2,color:#333
```

<details>
<summary>Fallback ASCII : Pipeline facturation</summary>

```
PIPELINE FACTURATION
====================

1. Prestation terminée
   ↓
2. Document source (bon de travaux, relevé, photo)
   ↓ si photo → Cowork extrait les données
   ↓ si texte → Cowork génère directement
   ↓
3. Vérification humaine (montants, coordonnées)
   ↓ si erreur → retour extraction
   ↓ si OK →
4. Facture PDF générée
   ↓
5. Envoi client
   ↓
6. Suivi paiement
   ├── Reçu sous 30j → Archivage ✓
   ├── 30j sans réponse → Cowork rédige relance J+30
   └── 45j sans réponse → Relance J+45 + mise en demeure manuelle
```
</details>

---

## D20 : Flux devis vers facture {#d20}

**Quand l'utiliser** : tu veux comprendre comment transformer un devis accepté en facture sans ressaisie.

```mermaid
flowchart TD
    A([Demande client]):::start --> B{Type de\ndemande ?}:::decision

    B -->|Standard| C[Cowork génère\ndevis depuis template]:::cowork
    B -->|Sur-mesure| D[Décrire le besoin\nà Cowork en langage naturel]:::human
    D --> E[Cowork propose\nles lignes du devis]:::cowork
    E --> F{Ajustements ?}:::decision
    F -->|Oui| D
    F -->|Non| G

    C --> G[Devis PDF\nfinalisé]:::doc

    G --> H[Envoi pour\nvalidation client]:::action

    H --> I{Réponse\nclient ?}:::decision
    I -->|Refus| J([Archivage\ndevis refusé]):::end
    I -->|Modifications| D
    I -->|Accord| K[Cowork convertit\ndevis → facture]:::cowork

    K --> L[Vérification\nrapide]:::human
    L --> M[Facture envoyée]:::action
    M --> N([Dossier\nclient mis à jour]):::end

    classDef start fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef end fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef cowork fill:#E87E2F,stroke:#c06020,color:#fff
    classDef decision fill:#6DB3F2,stroke:#4a90d0,color:#fff,font-weight:bold
    classDef doc fill:#F5E6D3,stroke:#E87E2F,color:#333
    classDef human fill:#B8B8B8,stroke:#888,color:#333
    classDef action fill:#F5E6D3,stroke:#6DB3F2,color:#333
```

<details>
<summary>Fallback ASCII : Flux devis vers facture</summary>

```
FLUX DEVIS → FACTURE
====================

Demande client
  ↓
Standard → Cowork génère depuis template
Sur-mesure → Décrire à Cowork → Cowork propose lignes → Ajuster
  ↓
Devis PDF → Envoi client
  ↓
Client refuse → Archivage
Client modifie → Retour négociation
Client accepte → Cowork convertit devis en facture (sans ressaisie)
  ↓
Vérification rapide → Facture envoyée → Dossier mis à jour
```
</details>

---

## D21 : Arbre de conformité par secteur {#d21}

**Quand l'utiliser** : tu veux savoir quels documents sont obligatoires selon ton secteur et si Cowork peut les générer.

```mermaid
flowchart TD
    A([Mon secteur ?]):::start --> B{BTP / Artisan ?}:::decision
    A --> C{Commerce ?}:::decision
    A --> D{Services /\nConsultant ?}:::decision

    B -->|Oui| E[Attestation assurance décennale\nDevis signé obligatoire\nFiche de réception de travaux]:::doc
    B -->|Oui, + de 10 salariés| F[DUERP obligatoire\nRegistre du personnel]:::doc

    C -->|Oui| G[Affichage prix TTC\nMentions légales CGV\nTicket de caisse conforme]:::doc
    C -->|Vente en ligne| H[CGV e-commerce\nDélai de rétractation 14j\nPolitique retours]:::doc

    D -->|Oui| I[Contrat de mission\nConditions générales de prestation\nFacture conforme (mentions légales)]:::doc
    D -->|Professions réglementées| J[Vérifier avec\nl'ordre professionnel]:::human

    E --> K{Cowork\npeut générer ?}:::decision
    F --> K
    G --> K
    H --> K
    I --> K

    K -->|Oui| L([Utiliser les\ntemplates Cowork]):::end
    K -->|Partiellement| M[Cowork génère\nla structure, tu complètes]:::cowork
    J --> N([Consulter un juriste\nspécialisé]):::end

    classDef start fill:#E87E2F,stroke:#c06020,color:#fff,font-weight:bold
    classDef end fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef cowork fill:#E87E2F,stroke:#c06020,color:#fff
    classDef decision fill:#6DB3F2,stroke:#4a90d0,color:#fff,font-weight:bold
    classDef doc fill:#F5E6D3,stroke:#E87E2F,color:#333
    classDef human fill:#B8B8B8,stroke:#888,color:#333
```

<details>
<summary>Fallback ASCII : Conformité par secteur</summary>

```
DOCUMENTS OBLIGATOIRES PAR SECTEUR
====================================

BTP / Artisan
  ├── Attestation assurance décennale
  ├── Devis signé obligatoire avant travaux
  ├── Fiche de réception de travaux
  └── [+10 salariés] DUERP + registre personnel

Commerce
  ├── Affichage prix TTC en vitrine
  ├── Mentions légales CGV
  ├── Ticket de caisse conforme
  └── [E-commerce] CGV + délai rétractation 14j + politique retours

Services / Consultant
  ├── Contrat de mission
  ├── CGP (conditions générales de prestation)
  └── Facture avec mentions légales complètes

Professions réglementées → Consulter l'ordre professionnel

Cowork peut générer la plupart de ces documents depuis un template.
Relecture humaine obligatoire avant envoi ou signature.
```
</details>

---

## D22 : Escalade des relances impayées {#d22}

**Quand l'utiliser** : une facture n'est pas payée, tu veux savoir quel ton adopter et quand passer à l'étape suivante.

```mermaid
flowchart TD
    A([Facture envoyée]):::start --> B{Paiement\nreçu ?}:::decision

    B -->|Oui| C([Classé ✓]):::end
    B -->|Non après 30j| D[Relance amiable J+30\nTon : cordial et factuel]:::cowork

    D --> E{Réponse ?}:::decision
    E -->|Paiement| C
    E -->|Promesse de paiement| F[Suivi J+5\nRappel de la promesse]:::cowork
    E -->|Silence| G[Relance J+45\nTon : ferme, sans agressivité]:::cowork

    F --> E
    G --> H{Réaction ?}:::decision
    H -->|Paiement| C
    H -->|Silence| I[Mise en demeure J+60\nLR avec AR\nRédigée par Cowork, envoyée par vous]:::cowork

    I --> J{Réponse dans\n15 jours ?}:::decision
    J -->|Paiement| C
    J -->|Contestation| K[Médiation\namiable]:::human
    J -->|Silence total| L[Procédure\ninjonction de payer]:::human

    K --> M{Accord ?}:::decision
    M -->|Oui| C
    M -->|Non| L

    L --> N([Tribunal compétent\nTPE/PME : tribunal de commerce]):::end

    classDef start fill:#E87E2F,stroke:#c06020,color:#fff,font-weight:bold
    classDef end fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef cowork fill:#E87E2F,stroke:#c06020,color:#fff
    classDef decision fill:#6DB3F2,stroke:#4a90d0,color:#fff,font-weight:bold
    classDef human fill:#B8B8B8,stroke:#888,color:#333
```

<details>
<summary>Fallback ASCII : Escalade relances</summary>

```
ESCALADE RELANCES IMPAYÉES
===========================

J+0   : Facture envoyée
J+30  : Relance amiable (ton cordial) → Cowork rédige
J+45  : Relance ferme (sans agressivité) → Cowork rédige
J+60  : Mise en demeure LR avec AR → Cowork rédige, vous envoyez
J+75  : Si silence → Injonction de payer (tribunal de commerce)

Ton par étape
  J+30 : "Nous vous rappelons que la facture n°X de X€ est échue..."
  J+45 : "Sans règlement sous 8 jours, nous serons contraints de..."
  J+60 : "Par la présente mise en demeure, nous vous mettons en
          demeure de régler la somme de X€ dans un délai de 15 jours..."

Cowork peut rédiger les 3 premières étapes.
L'injonction de payer se fait sans avocat, via cerfa 12948*06.
```
</details>
