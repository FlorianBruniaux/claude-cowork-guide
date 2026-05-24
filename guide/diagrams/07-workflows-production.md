---
title: "Diagrammes : Workflows Production"
description: "3 diagrammes : planification projet, cycle inventaire, contrôle qualité"
tags: [production, projet, inventaire, qualite]
---

# Workflows Production : Diagrammes

3 diagrammes pour automatiser les tâches de production : planification de projets, gestion de stock, contrôle qualité avant livraison.

---

## D26 : Flux de planification de projet {#d26}

**Quand l'utiliser** : tu dois planifier un projet ou une prestation et tu veux une structure claire dès le départ.

```mermaid
flowchart TD
    Start([📋 Demande client reçue]):::start

    Start --> Cowork1["Cowork crée le planning\nPhases, livrables, jalons\nDurées estimées"]:::cowork

    Cowork1 --> Review{Validation humaine\ndu planning ?}:::decision

    Review -- Ajustements --> Cowork1
    Review -- Validé --> Kickoff["📧 Kick-off envoyé\nau client"]:::doc

    Kickoff --> Loop["⏱️ Exécution du projet"]:::human

    Loop --> Cowork2["Cowork génère\nle compte-rendu hebdo\n(avancement, blocages, prochaines étapes)"]:::cowork

    Cowork2 --> Review2{Semaine suivante\nou livraison ?}:::decision

    Review2 -- Semaine suivante --> Loop
    Review2 -- Livraison --> Delivery["📦 Livraison au client"]:::doc

    Delivery --> Bilan["Cowork génère\nle bilan de projet\n(délais, écarts, enseignements)"]:::cowork

    Bilan --> Archive[(📁 Archivage projet\n~/Cowork-Workspace/\narchives/projets/)]:::doc

    Archive --> End([✅ Projet clôturé]):::end

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
[Demande client reçue]
         |
[Cowork crée le planning : phases, livrables, jalons, durées]
         |
  Validation humaine ?
   /           \
Ajustements    Validé
   |              |
  (loop)    [Kick-off envoyé au client]
                  |
          [Exécution du projet]
                  |
   [Cowork génère le compte-rendu hebdo]
                  |
         Livraison ou semaine suivante ?
          /                  \
   Semaine suivante         Livraison
         |                       |
       (loop)         [Livraison au client]
                               |
               [Cowork génère le bilan de projet]
                               |
               [Archivage dans archives/projets/]
                               |
                      [Projet clôturé ✅]
```
</details>

---

## D27 : Cycle de gestion d'inventaire {#d27}

**Quand l'utiliser** : tu veux automatiser le suivi de ton stock sans logiciel spécialisé.

```mermaid
flowchart TD
    Start([📦 Réception marchandise]):::start

    Start --> Cowork1["Cowork extrait les données\ndu bon de livraison\n(PDF ou photo)"]:::cowork

    Cowork1 --> Update["📊 Mise à jour fichier stock\n~/Cowork-Workspace/\nstock/inventaire.xlsx"]:::doc

    Update --> Check{Seuil minimum\natteint ?}:::decision

    Check -- Non --> Wait["En attente\nprochaine livraison"]:::human
    Check -- Oui --> Order["Cowork génère\nle bon de commande\nfournisseur"]:::cowork

    Order --> Validate{Validation humaine\n+ envoi commande ?}:::decision

    Validate -- Corrections --> Order
    Validate -- Envoyé --> Start

    Wait --> Periodic{Inventaire\npériodique ?}:::decision

    Periodic -- Non --> Wait
    Periodic -- Oui --> Photos["📸 Photos des rayons\n(inventaire physique)"]:::human

    Photos --> Cowork2["Cowork compare\nstock théorique vs photos\n(inventaire réel)"]:::cowork

    Cowork2 --> Gap["📋 Rapport d'écart\ngénéré automatiquement"]:::doc

    Gap --> Fix{Écarts\ndétectés ?}:::decision

    Fix -- Non --> Wait
    Fix -- Oui --> Correction["Correction manuelle\ndu stock"]:::alert

    Correction --> Update

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
FLUX PRINCIPAL
==============
[Réception marchandise]
         |
[Cowork extrait données du bon de livraison (PDF/photo)]
         |
[Mise à jour fichier stock Excel]
         |
   Seuil minimum atteint ?
    /              \
  Non             Oui
   |               |
[Attente]   [Cowork génère bon de commande]
                   |
          Validation humaine + envoi ?
           /               \
       Corrections         Envoyé
           |                  |
         (loop)         [Réception marchandise] ← retour au début

FLUX INVENTAIRE PÉRIODIQUE
===========================
[Attente] → Inventaire périodique ?
                    |
                  Oui
                    |
          [Photos des rayons]
                    |
[Cowork compare stock théorique vs photos]
                    |
       [Rapport d'écart généré]
                    |
            Écarts détectés ?
             /           \
           Non            Oui
            |              |
        [Attente]   [Correction manuelle → Stock Excel]
```
</details>

---

## D28 : Flux de contrôle qualité {#d28}

**Quand l'utiliser** : tu livres un document ou une prestation à un client et tu veux t'assurer qu'il est correct avant envoi.

```mermaid
flowchart TD
    Start([📄 Document ou prestation\nà livrer]):::start

    Start --> Cowork1["Cowork : relecture automatique\n✓ Orthographe & grammaire\n✓ Cohérence interne\n✓ Mentions obligatoires"]:::cowork

    Cowork1 --> Check1{Erreurs\ndétectées ?}:::decision

    Check1 -- Oui --> List["📋 Liste des corrections\ngénérée par Cowork"]:::alert

    List --> Fix["Correction humaine\ndes points signalés"]:::human

    Fix --> Cowork1

    Check1 -- Non --> HumanCheck{"Vérification humaine finale\n3 points clés :\n① Exactitude des chiffres\n② Nom / coordonnées client\n③ Délai ou date de validité"}:::decision

    HumanCheck -- Problème trouvé --> Fix2["Correction ciblée"]:::human
    Fix2 --> HumanCheck

    HumanCheck -- Tout OK --> Send["📧 Envoi au client"]:::doc

    Send --> Archive[(📁 Archivage\ndate + version + statut\n~/Cowork-Workspace/\nlivraisons/)]:::doc

    Archive --> End([✅ Livraison confirmée]):::end

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
[Document / prestation à livrer]
             |
[Cowork : relecture auto - orthographe, cohérence, mentions obligatoires]
             |
      Erreurs détectées ?
       /             \
     Oui              Non
      |                |
[Liste des        [Vérification humaine finale]
 corrections]      ① Chiffres exacts
      |            ② Nom / coordonnées client
[Correction        ③ Délais ou dates de validité
 humaine]              |                |
      |           Problème         Tout OK
    (loop)         trouvé              |
                    |           [Envoi au client]
               [Correction             |
                ciblée]      [Archivage : date + version + statut]
                    |                  |
                 (loop)      [Livraison confirmée ✅]
```
</details>
