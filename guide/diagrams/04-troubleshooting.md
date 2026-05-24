---
title: "Diagrammes : Dépannage"
description: "1 diagramme : arbre diagnostic complet quand Cowork ne fonctionne pas"
tags: [troubleshooting, diagnostic, erreurs, vpn]
---

# Dépannage : Diagrammes

---

## D15 : Arbre diagnostic "ça marche pas" {#d15}

**Quand l'utiliser** : Cowork plante, timeout, erreur, résultat mauvais. Ce diagramme couvre 90% des cas.

```mermaid
flowchart TD
    Problem([❌ Cowork\nne fonctionne pas]):::start

    Problem --> Q1{Cowork\ndémarre ?}:::decision

    Q1 -- Non → timeout --> VPN{VPN actif\nen ce moment ?}:::decision
    VPN -- Oui --> FixVPN[Déconnecter le VPN\nredémarrer Cowork]:::fix
    VPN -- Non --> Restart[Forcer la fermeture\net relancer Claude Desktop]:::fix

    Q1 -- Oui mais erreur --> Q2{Type d'erreur ?}:::decision

    Q2 --> ErrAccess["'Access denied'\nou 'path outside'"]:::error
    Q2 --> ErrContext["'Context limit'\nou session lente"]:::error
    Q2 --> ErrChrome["'Chrome host\nnot found'"]:::error
    Q2 --> ErrOutput["Résultat incorrect\nou incomplet"]:::error
    Q2 --> ErrQuota["Limite de messages\natteinte"]:::error

    ErrAccess --> FixAccess["Réaccorder l'accès\nau dossier dans\nSystème > Confidentialité"]:::fix
    ErrContext --> FixContext["Découper en lots\nde 10-20 fichiers\nCommencer une nouvelle session"]:::fix
    ErrChrome --> FixChrome["Réinstaller l'extension Chrome\nvia terminal (voir guide troubleshooting)"]:::fix
    ErrOutput --> FixOutput["Revoir le prompt CTOC\nAjouter des contraintes\nDemander à Cowork d'expliquer son plan"]:::fix
    ErrQuota --> FixQuota["Attendre le reset (5h)\nPasser au modèle Haiku\npour les tâches simples"]:::fix

    FixVPN --> Check([✅ Retester]):::success
    Restart --> Check
    FixAccess --> Check
    FixContext --> Check
    FixChrome --> Check
    FixOutput --> Check
    FixQuota --> Check

    Check --> Still{Toujours\nun problème ?}:::decision
    Still -- Non --> Done([✅ Résolu]):::success
    Still -- Oui --> Guide["Consulter le guide\ntroubleshooting complet\nguide/04-troubleshooting.md"]:::info

    classDef start fill:#E85D5D,stroke:#c04040,color:#fff,font-weight:bold
    classDef decision fill:#E87E2F,stroke:#c06020,color:#fff
    classDef fix fill:#6DB3F2,stroke:#4a90d0,color:#fff
    classDef error fill:#F5E6D3,stroke:#E85D5D,color:#333
    classDef success fill:#7BC47F,stroke:#5a9e5e,color:#fff,font-weight:bold
    classDef info fill:#F5E6D3,stroke:#B8B8B8,color:#555
```

<details>
<summary>Fallback ASCII : Check-list de démarrage rapide</summary>

```
COWORK NE DÉMARRE PAS
  1. VPN actif ? → Déconnecter, relancer
  2. Sinon → Forcer fermeture Claude Desktop, relancer

ERREURS FRÉQUENTES
  "Access denied"        → Réaccorder accès dossier dans Préférences Système
  "Context limit"        → Découper en lots 10-20 fichiers, nouvelle session
  "Chrome host not found"→ Réinstaller extension Chrome (voir guide)
  Résultat incorrect     → Améliorer le prompt CTOC, ajouter des contraintes
  Limite messages        → Attendre reset 5h, ou utiliser Haiku pour tâches simples

RÈGLE N°1 : 90% des pannes au démarrage = VPN actif
```
</details>
