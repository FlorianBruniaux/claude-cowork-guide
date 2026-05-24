---
title: "Diagrammes : Communication et Organisation"
description: "4 diagrammes : création contenu, choix template email, organisation fichiers, transfert connaissances"
tags: [communication, organisation, contenu, email, fichiers]
---

# Communication et Organisation : Diagrammes

4 diagrammes pour structurer ta communication et ton organisation quotidienne : contenu régulier, emails professionnels, classement de fichiers, documentation interne.

---

## D29 : Pipeline de création de contenu {#d29}

**Quand l'utiliser** : tu veux créer du contenu régulier pour tes réseaux sociaux ou ta newsletter sans y passer des heures.

```mermaid
flowchart TD
    Start([📅 Calendrier éditorial du mois]):::start

    Start --> Cowork1["Cowork génère les idées de sujets\npar catégorie :\n① Éducation / conseils\n② Coulisses de ton activité\n③ Preuves sociales (témoignages)\n④ Offres et actualités"]:::cowork

    Cowork1 --> Draft["Pour chaque sujet :\nCowork rédige un premier jet"]:::cowork

    Draft --> Review{Relecture humaine\nton, exactitude,\npersonnalisation}:::decision

    Review -- À retravailler --> Draft
    Review -- Validé --> Adapt["Adaptation par plateforme"]:::cowork

    Adapt --> LI["💼 LinkedIn\nTon professionnel\nformat article ou post court"]:::doc
    Adapt --> IG["📸 Instagram\nVisuel + hashtags\nlégende courte"]:::doc
    Adapt --> FB["👥 Facebook\nTon communautaire\nformat conversationnel"]:::doc
    Adapt --> NL["📧 Newsletter\nLong format\nstructuré avec sections"]:::doc

    LI --> Publish["Publication / Envoi"]:::human
    IG --> Publish
    FB --> Publish
    NL --> Publish

    Publish --> Wait["⏱️ Attente 7 jours"]:::human

    Wait --> Metrics["📊 Suivi des métriques\n(portée, engagement, clics,\ntaux d'ouverture newsletter)"]:::cowork

    Metrics --> Next([📅 Prochain cycle\ncalendrier éditorial]):::end

    classDef start fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef end fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef cowork fill:#E87E2F,stroke:#c06020,color:#fff
    classDef decision fill:#6DB3F2,stroke:#4a90d0,color:#fff,font-weight:bold
    classDef doc fill:#F5E6D3,stroke:#E87E2F,color:#333
    classDef human fill:#B8B8B8,stroke:#888,color:#333
    classDef alert fill:#E85D5D,stroke:#c04040,color:#fff
```

<details>
<summary>Fallback ASCII</summary>

```
[Calendrier éditorial du mois]
           |
[Cowork génère idées par catégorie]
  ① Éducation  ② Coulisses  ③ Preuves sociales  ④ Offres
           |
[Cowork rédige premier jet par sujet]
           |
    Relecture humaine
    /            \
À retravailler   Validé
     |               |
   (loop)    [Adaptation par plateforme]
                     |
        ┌────────────┼────────────┐────────────┐
        |            |            |            |
   [LinkedIn]  [Instagram]  [Facebook]  [Newsletter]
        |            |            |            |
        └────────────┴────────────┴────────────┘
                          |
                   [Publication / Envoi]
                          |
                   [Attente 7 jours]
                          |
              [Suivi métriques par Cowork]
                          |
               [Prochain cycle éditorial]
```
</details>

---

## D30 : Arbre de choix du template email {#d30}

**Quand l'utiliser** : tu dois envoyer un email professionnel et tu ne sais pas quel ton ou format adopter.

```mermaid
flowchart TD
    Start([✉️ Email à envoyer]):::start

    Start --> Q1{Qui est\nle destinataire ?}:::decision

    Q1 -- Client existant --> Q2a{Objectif ?}:::decision
    Q1 -- Prospect --> Q2b{Objectif ?}:::decision
    Q1 -- Fournisseur --> Q2c{Objectif ?}:::decision
    Q1 -- Administration --> Q2d{Objectif ?}:::decision

    Q2a -- Informer --> T1["📄 Template : Mise à jour\nTon cordial, bref, factuel"]:::doc
    Q2a -- Relancer --> T2["📄 Template : Relance douce\nTon cordial, rappel clair"]:::doc
    Q2a -- Remercier --> T3["📄 Template : Remerciement\nTon chaleureux, personnalisé"]:::doc
    Q2a -- Réclamation --> T4["📄 Template : Gestion réclamation\nTon empathique, solution proposée"]:::alert

    Q2b -- Prendre contact --> T5["📄 Template : Prospection initiale\nTon professionnel, valeur ajoutée"]:::doc
    Q2b -- Relancer --> T6["📄 Template : Relance prospect\nTon neutre, rappel bénéfice"]:::doc

    Q2c -- Commande --> T7["📄 Template : Bon de commande\nTon neutre, données précises"]:::doc
    Q2c -- Négocier --> T8["📄 Template : Négociation\nTon professionnel, demande claire"]:::doc

    Q2d -- Demande --> T9["📄 Template : Courrier administratif\nTon formel, références légales"]:::doc
    Q2d -- Répondre --> T10["📄 Template : Réponse administrative\nTon formel, accusé de réception"]:::doc

    T1 & T2 & T3 & T4 & T5 & T6 & T7 & T8 & T9 & T10 --> Generate["Cowork génère\ndepuis le template\nsélectionné"]:::cowork

    Generate --> End([✅ Email prêt à relire\npuis envoyer]):::end

    classDef start fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef end fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef cowork fill:#E87E2F,stroke:#c06020,color:#fff
    classDef decision fill:#6DB3F2,stroke:#4a90d0,color:#fff,font-weight:bold
    classDef doc fill:#F5E6D3,stroke:#E87E2F,color:#333
    classDef human fill:#B8B8B8,stroke:#888,color:#333
    classDef alert fill:#E85D5D,stroke:#c04040,color:#fff
```

<details>
<summary>Fallback ASCII</summary>

```
[Email à envoyer]
       |
  Destinataire ?
  /     |      |        \
Client  Prospect  Fourn.  Admin

CLIENT EXISTANT → Objectif ?
  Informer    → Template Mise à jour (ton cordial)
  Relancer    → Template Relance douce (ton cordial)
  Remercier   → Template Remerciement (ton chaleureux)
  Réclamation → Template Gestion réclamation (ton empathique)

PROSPECT → Objectif ?
  Premier contact → Template Prospection (ton pro, valeur ajoutée)
  Relancer        → Template Relance prospect (ton neutre)

FOURNISSEUR → Objectif ?
  Commande  → Template Bon de commande (ton neutre, données précises)
  Négocier  → Template Négociation (ton pro, demande claire)

ADMINISTRATION → Objectif ?
  Demande  → Courrier administratif (ton formel, références légales)
  Répondre → Réponse administrative (ton formel, accusé de réception)

        [Cowork génère depuis le template sélectionné]
                          |
               [Email prêt à relire puis envoyer ✅]
```
</details>

---

## D31 : Arbre d'organisation des fichiers {#d31}

**Quand l'utiliser** : ton dossier de travail est en désordre et tu veux une structure que tout le monde peut suivre.

```mermaid
flowchart TD
    Start([📂 Fichier entrant\ndans le workspace]):::start

    Start --> Cowork1{"Cowork identifie\nle type de document"}:::decision

    Cowork1 -- Facture / avoir --> D1["📁 Clients/[NomClient]/[AAAA]/factures/\nou Fournisseurs/[Nom]/[AAAA]/"]:::doc
    Cowork1 -- Devis / offre --> D2["📁 Clients/[NomClient]/[AAAA]/devis/"]:::doc
    Cowork1 -- Contrat / accord --> D3["📁 Clients/[NomClient]/contrats/\nou Fournisseurs/[Nom]/contrats/"]:::doc
    Cowork1 -- Communication --> D4["📁 Clients/[NomClient]/communications/\n(emails, courriers, comptes-rendus)"]:::doc
    Cowork1 -- Admin / RH / légal --> D5["📁 Admin/[AAAA]/\n(social, fiscal, juridique)"]:::doc
    Cowork1 -- Template / modèle --> D6["📁 Templates/[catégorie]/"]:::doc
    Cowork1 -- Autre / incertain --> Human["❓ Alerte : Cowork demande\nle dossier cible à l'humain"]:::human

    D1 & D2 & D3 & D4 & D5 & D6 --> DupCheck{Doublon\ndétecté ?}:::decision

    DupCheck -- Non --> Filed([✅ Fichier classé]):::end
    DupCheck -- Oui --> Alert["⚠️ Alerte doublon\nNom + date + taille comparés"]:::alert

    Alert --> HumanChoice{Décision humaine}:::decision
    HumanChoice -- Garder les deux --> Rename["Renommage automatique\n_v2 ou _doublon"]:::cowork
    HumanChoice -- Écraser --> Overwrite["Remplacement\ndu fichier existant"]:::human
    HumanChoice -- Supprimer le nouveau --> Delete["Suppression\ndu fichier entrant"]:::human

    Rename & Overwrite & Delete --> Filed2([✅ Fichier classé]):::end

    Human --> Filed

    Start --> Annual{Archivage\nannuel ?}:::decision
    Annual -- Non --> Start
    Annual -- Oui --> Archive["Cowork déplace\nles dossiers [AAAA-1]\nvers Archives/[AAAA-1]/"]:::cowork
    Archive --> Archived([📦 Archives organisées]):::end

    classDef start fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef end fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef cowork fill:#E87E2F,stroke:#c06020,color:#fff
    classDef decision fill:#6DB3F2,stroke:#4a90d0,color:#fff,font-weight:bold
    classDef doc fill:#F5E6D3,stroke:#E87E2F,color:#333
    classDef human fill:#B8B8B8,stroke:#888,color:#333
    classDef alert fill:#E85D5D,stroke:#c04040,color:#fff
```

<details>
<summary>Fallback ASCII</summary>

```
STRUCTURE CIBLE
===============
~/Cowork-Workspace/
├── Clients/
│   └── [NomClient]/
│       ├── [AAAA]/
│       │   ├── factures/
│       │   ├── devis/
│       │   └── communications/
│       └── contrats/
├── Fournisseurs/
│   └── [NomFournisseur]/
│       ├── [AAAA]/
│       └── contrats/
├── Admin/
│   └── [AAAA]/    ← social, fiscal, juridique
├── Templates/
│   └── [catégorie]/
└── Archives/
    └── [AAAA-1]/  ← archivage annuel automatique

LOGIQUE DE TRI
==============
[Fichier entrant]
       |
[Cowork identifie le type]
       |
Facture → Clients ou Fournisseurs/[AAAA]/factures/
Devis   → Clients/[AAAA]/devis/
Contrat → [entité]/contrats/
Email   → Clients/[AAAA]/communications/
Admin   → Admin/[AAAA]/
Template → Templates/[catégorie]/
Autre   → ❓ Cowork demande à l'humain
       |
Doublon détecté ? → Alerte + décision humaine
       |
[Fichier classé ✅]
```
</details>

---

## D32 : Flux de transfert de connaissances {#d32}

**Quand l'utiliser** : tu veux documenter tes processus pour former un nouvel employé ou pour ne pas tout réapprendre si tu reprends une tâche 6 mois plus tard.

```mermaid
flowchart TD
    Start([🧠 Processus à documenter]):::start

    Start --> Session["Session de travail\nCowork observe et note\nchaque étape réalisée"]:::human

    Session --> Cowork1["Cowork génère\nla documentation\nétape par étape\n(avec captures d'écran si nécessaire)"]:::cowork

    Cowork1 --> Review{Vérification et\nenrichissement humain\n(contexte, exceptions, conseils)}:::decision

    Review -- Incomplet --> Session
    Review -- Validé --> Store["📁 Documentation stockée\n~/Cowork-Workspace/\ndocs/processus/\n[nom-du-processus].md"]:::doc

    Store --> Training{Formation\nd'un nouveau collègue ?}:::decision

    Training -- Non --> End1([✅ Processus documenté\ndisponible à tout moment]):::end

    Training -- Oui --> Follow["Nouveau collègue suit la doc\nétape par étape"]:::human

    Follow --> Questions{Questions\nen cours de formation ?}:::decision

    Questions -- Oui --> Cowork2["Cowork répond\naux questions spécifiques\nsur le processus"]:::cowork

    Cowork2 --> Follow

    Questions -- Non --> Feedback["Retour d'expérience\naprès 2 semaines de pratique"]:::human

    Feedback --> Update["Cowork met à jour\nla documentation\n(corrections, ajouts, clarifications)"]:::cowork

    Update --> Store2[(📁 Documentation\nmise à jour\nv2 archivée)]:::doc

    Store2 --> End2([✅ Processus maîtrisé\net documentation vivante]):::end

    classDef start fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef end fill:#7BC47F,stroke:#5a9e5a,color:#fff,font-weight:bold
    classDef cowork fill:#E87E2F,stroke:#c06020,color:#fff
    classDef decision fill:#6DB3F2,stroke:#4a90d0,color:#fff,font-weight:bold
    classDef doc fill:#F5E6D3,stroke:#E87E2F,color:#333
    classDef human fill:#B8B8B8,stroke:#888,color:#333
    classDef alert fill:#E85D5D,stroke:#c04040,color:#fff
```

<details>
<summary>Fallback ASCII</summary>

```
[Processus à documenter]
          |
[Session de travail : Cowork observe et note chaque étape]
          |
[Cowork génère la documentation étape par étape]
          |
   Vérification humaine
    /             \
Incomplet         Validé
   |                 |
(loop)    [Stockage : docs/processus/[nom].md]
                     |
            Formation d'un collègue ?
             /               \
           Non               Oui
            |                 |
     [Processus        [Collègue suit la doc]
      documenté ✅]           |
                       Questions en formation ?
                        /           \
                      Oui           Non
                       |              |
               [Cowork répond]  [Retour d'expérience
                       |          après 2 semaines]
                    (loop)             |
                              [Cowork met à jour la doc]
                                       |
                          [Documentation vivante ✅]
```
</details>
