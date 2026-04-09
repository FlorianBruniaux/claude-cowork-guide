---
title: "Claude Cowork — Diagrammes visuels"
description: "32 diagrammes Mermaid interactifs couvrant tous les concepts Claude Cowork"
tags: [reference, diagrammes, mermaid, workflows]
---

# Claude Cowork — Diagrammes visuels

32 diagrammes Mermaid interactifs organisés en 8 fichiers thématiques. Chaque diagramme inclut une version Mermaid (rendue nativement sur GitHub) et un fallback ASCII.

---

## Palette visuelle

Tous les diagrammes utilisent la palette Bold Guy :

| Couleur | Hex | Usage |
|---------|-----|-------|
| Warm Beige | `#F5E6D3` | Actions utilisateur, inputs |
| Orange Brûlé | `#E87E2F` | Décisions clés, actions Cowork |
| Soft Green | `#7BC47F` | Chemins de succès, recommandations |
| Alert Red | `#E85D5D` | Danger, erreurs, risques |
| Neutral Gray | `#B8B8B8` | Éléments passifs, infrastructure |
| Light Blue | `#6DB3F2` | Informations, références documentation |

## Conventions Mermaid

| Forme | Syntaxe | Signification |
|-------|---------|---------------|
| Rectangle arrondi | `(texte)` | Étape, action |
| Losange | `{texte}` | Point de décision |
| Stadium | `([texte])` | Début / Fin |
| Hexagone | `{{texte}}` | Système externe, plugin |
| Rectangle | `[texte]` | Composant Cowork |
| Cylindre | `[(texte)]` | Données, fichiers persistants |

---

## Navigation

| Fichier | Diagrammes | Sujets |
|---------|-----------|--------|
| [01-getting-started.md](./01-getting-started.md) | 3 | Cowork vs Chat vs Code, setup workspace, CTOC anatomie |
| [02-capabilities.md](./02-capabilities.md) | 3 | Carte des capacités, écosystème 11 plugins, automatisation planifiée |
| [03-security.md](./03-security.md) | 2 | "Où vont mes données ?", arbre décision document sensible |
| [04-troubleshooting.md](./04-troubleshooting.md) | 1 | Arbre diagnostic "ça marche pas" |
| [05-workflows-admin.md](./05-workflows-admin.md) | 4 | Pipeline facturation, devis-facture, conformité, relances |
| [06-workflows-commercial.md](./06-workflows-commercial.md) | 3 | Prospection SIREN, analyse concurrence, cycle client |
| [07-workflows-production.md](./07-workflows-production.md) | 3 | Planification projet, inventaire, contrôle qualité |
| [08-workflows-commu-orga.md](./08-workflows-commu-orga.md) | 4 | Création contenu, templates email, organisation fichiers, transfert connaissances |
| **Total** | **23** | Phase 1-2 : 16 diagrammes |

---

## Par use case

**Je veux comprendre ce qu'est Cowork**
→ [D01 — Cowork vs Chat vs Code](./01-getting-started.md#d01)
→ [D06 — Carte des capacités](./02-capabilities.md#d06)

**Je veux démarrer**
→ [D02 — Setup workspace](./01-getting-started.md#d02)
→ [D03 — CTOC anatomie](./01-getting-started.md#d03)

**Je veux sécuriser mon usage**
→ [D11 — Où vont mes données ?](./03-security.md#d11)
→ [D13 — Arbre décision document sensible](./03-security.md#d13)

**Quelque chose ne fonctionne pas**
→ [D15 — Arbre diagnostic](./04-troubleshooting.md#d15)

**Je veux automatiser ma facturation**
→ [D19 — Pipeline facturation](./05-workflows-admin.md#d19)
→ [D20 — Devis vers facture](./05-workflows-admin.md#d20)

**Je veux prospecter**
→ [D23 — Pipeline prospection](./06-workflows-commercial.md#d23)
→ [D25 — Cycle de vie client](./06-workflows-commercial.md#d25)
