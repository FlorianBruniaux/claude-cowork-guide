# Claude Cowork Guide - Project Context

## Purpose
Documentation complète pour Claude Cowork (feature desktop Anthropic).
Focus: TPE/PME françaises (artisans, commerçants, dirigeants).

## Repository Structure
guide/           # Documentation (5 fichiers)
workflows/       # 24 workflows par catégorie
prompts/         # 67 prompts copy-paste
reference/       # Cheatsheet, FAQ, glossaire
machine-readable/ # Pour LLMs
scripts/         # Sync version, stats
tools/           # Onboarding interactif
whitepapers/     # Livres blancs (à venir)

## Key Files
| File | Purpose |
|------|---------|
| VERSION | Source de vérité version (1.3.0) |
| workflows/README.md | Index des 24 workflows |
| reference/cheatsheet.md | Quick reference |

## Commands
./scripts/sync-version.sh --check  # Vérifier cohérence
./scripts/check-version-sync.sh    # Sync complet

## Conventions
- Workflows en français (audience TPE/PME FR)
- Guides en anglais (accessibilité internationale)
- CTOC format pour tous les prompts
- Références françaises (SIREN, Infogreffe, URSSAF)

## Écosystème (4 repos)
1. claude-code-ultimate-guide → Devs
2. claude-cowork-guide → TPE/PME (ce repo)
3. code-landing → Vitrine devs
4. cowork-landing → Vitrine TPE/PME

## Model Configuration
Recommandé: /model opusplan pour restructuration
Sonnet suffisant pour: éditions mineures, sync version
