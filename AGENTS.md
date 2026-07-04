# Codex Cowork Guide - Project Context

## Purpose
Documentation complète pour Codex Cowork (feature desktop Anthropic).
Focus: TPE/PME françaises (artisans, commerçants, dirigeants).

## Repository Structure
guide/           # Documentation (5 fichiers)
workflows/       # 26 workflows par catégorie
prompts/         # 67 prompts copy-paste
reference/       # Cheatsheet, FAQ, glossaire
machine-readable/ # Pour LLMs
scripts/         # Sync version, stats
tools/           # Onboarding interactif
whitepapers/     # Livres blancs (à venir)

## Key Files
| File | Purpose |
|------|---------|
| VERSION | Source de vérité version (1.9.0) |
| workflows/README.md | Index des 26 workflows |
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
1. Codex-ultimate-guide → Devs
2. Codex-cowork-guide → TPE/PME (ce repo)
3. code-landing → Vitrine devs
4. cowork-landing → Vitrine TPE/PME

## Model Configuration
Recommandé: /model opusplan pour restructuration
Sonnet suffisant pour: éditions mineures, sync version


<claude-mem-context>
# Memory Context

# [claude-cowork-guide] recent context, 2026-06-11 3:40pm GMT+2

No previous sessions found.
</claude-mem-context>