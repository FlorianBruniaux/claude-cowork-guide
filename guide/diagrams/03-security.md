---
title: "Diagrammes : Sécurité"
description: "2 diagrammes : où vont tes données, arbre décision document sensible"
tags: [security, privacy, données, confiance]
---

# Sécurité : Diagrammes

2 diagrammes pour comprendre où vont tes données et comment décider si un document peut être traité par Cowork.

---

## D11 : Où vont mes données ? {#d11}

**Quand l'utiliser** : tu t'interroges sur la confidentialité avant de donner accès à des fichiers.

```mermaid
flowchart LR
    Local[(📁 Tes fichiers\nlocaux)]:::local

    Local -->|"Cowork lit\nle fichier"| Sandbox[🖥️ Sandbox\nCowork\nIsolée]:::sandbox

    Sandbox -->|"Contenu du fichier\n+ ton prompt"| API{{☁️ API\nAnthropic}}:::api

    API -->|Réponse| Sandbox
    Sandbox -->|"Cowork écrit\nle résultat"| Output[(📄 Fichier de\nsortie local)]:::local

    Local -.->|"❌ Jamais envoyé\ndirectement"| API
    Local -.->|"✅ Reste sur\nta machine"| Stay[Tes autres\nfichiers]:::safe

    API -.-> Retention["🔒 Rétention Anthropic\n• Défaut : 5 ans\n• Opt-out : 30 jours\n• Enterprise : 0 jour"]:::info

    classDef local fill:#F5E6D3,stroke:#E87E2F,color:#333,font-weight:bold
    classDef sandbox fill:#6DB3F2,stroke:#4a90d0,color:#fff
    classDef api fill:#B8B8B8,stroke:#888,color:#333
    classDef safe fill:#7BC47F,stroke:#5a9e5e,color:#fff
    classDef info fill:#fff,stroke:#B8B8B8,color:#555,font-size:12px
```

> **Action recommandée** : désactiver l'utilisation pour l'entraînement sur [claude.ai/settings/data-privacy-controls](https://claude.ai/settings/data-privacy-controls)

<details>
<summary>Fallback ASCII</summary>

```
Flux des données Cowork
========================

[Tes fichiers] → [Sandbox Cowork] → [API Anthropic] → [Réponse] → [Fichier de sortie]

Ce qui part chez Anthropic :
  ✓ Le contenu du fichier que tu as fourni
  ✓ Ton prompt

Ce qui NE part pas :
  ✗ Tes autres fichiers locaux
  ✗ Ton système de fichiers complet
  ✗ Tes mots de passe ou identifiants

Rétention par défaut : 5 ans
Opt-out disponible : claude.ai/settings/data-privacy-controls
```
</details>

---

## D13 : Dois-je laisser Cowork traiter ce document ? {#d13}

**Quand l'utiliser** : tu as un document sensible (contrat, RH, financier...) et tu hésites à le donner à Cowork.

```mermaid
flowchart TD
    Start([📄 J'ai un document\nà traiter]):::start

    Start --> Q1{Contient-il des données\npersonnelles clients\nou employés ?}:::decision

    Q1 -- Non --> Q2{Contient-il des\nsecrètes commerciaux\nou R&D ?}:::decision
    Q1 -- Oui --> Warn1[⚠️ Attention RGPD\nMinimiser les données]:::warning

    Warn1 --> Anon{Possible d'anonymiser\navant de transmettre ?}:::decision
    Anon -- Oui --> DoAnon[Anonymiser d'abord\npuis utiliser Cowork]:::safe
    Anon -- Non --> NeedLegal[Consulter ton\nconseil juridique]:::danger

    Q2 -- Non --> Q3{Contient-il des\nmots de passe, tokens\nou credentials ?}:::decision
    Q2 -- Oui --> NeverSend[❌ Ne pas utiliser Cowork\nTraiter manuellement]:::danger

    Q3 -- Non --> Safe[✅ Document sûr\nCowork peut traiter]:::success
    Q3 -- Oui --> RemoveCreds[Supprimer les credentials\npuis utiliser Cowork]:::safe

    classDef start fill:#F5E6D3,stroke:#E87E2F,color:#333,font-weight:bold
    classDef decision fill:#E87E2F,stroke:#c06020,color:#fff
    classDef warning fill:#F5E6D3,stroke:#E87E2F,color:#333
    classDef safe fill:#6DB3F2,stroke:#4a90d0,color:#fff
    classDef success fill:#7BC47F,stroke:#5a9e5e,color:#fff,font-weight:bold
    classDef danger fill:#E85D5D,stroke:#c04040,color:#fff,font-weight:bold
```

<details>
<summary>Fallback ASCII : Règle simple</summary>

```
Document OK pour Cowork si :
  ✓ Pas de données personnelles clients/employés non anonymisées
  ✓ Pas de secrets commerciaux ou R&D critiques
  ✓ Pas de mots de passe, tokens ou credentials

Ne jamais donner à Cowork :
  ✗ Secrets de commerce, formules propriétaires
  ✗ Données RH sans anonymisation
  ✗ Fichiers .env, config avec mots de passe
  ✗ Données de santé (RGPD strict)

En cas de doute : anonymiser d'abord, traiter ensuite.
```
</details>
