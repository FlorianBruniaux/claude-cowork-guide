---
name: "source-command-cowork-veille"
description: "Product watch — trouve les features Codex desktop non documentées, génère des entrées CHANGELOG"
---

# source-command-cowork-veille

Use this skill when the user asks to run the migrated source command `cowork-veille`.

## Command Template

# Codex Cowork Product Watch

Cherche sur le web ce qui est nouveau sur la desktop app Codex, compare avec le CHANGELOG local, et identifie les gaps non documentés.

Pipeline complet :
```
/cowork:veille          →  Découvre les gaps, propose des entrées CHANGELOG
  ↓ (review manuelle)
/cowork:update-releases →  Sync CHANGELOG → YAML → TS
```

## Step 1: Parse Arguments

- `--deep` : utilise `perplexity_deep_research` au lieu de `perplexity_search` (plus lent, plus exhaustif)
- `--since <YYYY-MM-DD>` : ne considérer que les annonces après cette date ; si absent, utiliser la date du dernier entry CHANGELOG
- `--sources <all|blog|reddit|press>` : filtrer les sources (défaut : `all`)

## Step 2: Lire l'état actuel du CHANGELOG

Lire `/Users/florianbruniaux/Sites/perso/Codex-cowork-guide/CHANGELOG.md`.

Extraire :
1. **Date baseline** : date du premier `## [X.Y.Z] - YYYY-MM-DD` (entrée la plus récente) → utilisée comme `--since` automatique si non fourni
2. **Features documentées** : liste plate de tous les items bullet de toutes les sections (Added, Changed, Fixed) de toutes les versions versionnées. Ignorer les métadonnées de versioning.
3. **Section `[Unreleased]`** : noter son contenu s'il est non vide.

Afficher en debug :
```
📋 CHANGELOG baseline: YYYY-MM-DD (vX.Y.Z)
📦 Features documentées: N items
📝 [Unreleased]: X items
```

## Step 3: Recherches web (en parallèle)

Lancer les 4 queries en parallèle via `perplexity_search` (ou `perplexity_deep_research` si `--deep`).

⚠️ Ne PAS utiliser "Cowork" dans les queries — terme interne, non utilisé publiquement.
⚠️ Filtrer les résultats mentionnant "terminal", "CLI", "npm", "Codex", "Codex" — c'est un autre produit.

| # | Query | Cible |
|---|-------|-------|
| 1 | `Anthropic Codex desktop app new features 2026` | Annonces officielles |
| 2 | `Codex.ai desktop update changelog site:anthropic.com OR site:docs.anthropic.com` | Blog/docs Anthropic |
| 3 | `Codex desktop app features reddit 2026` | Découvertes communautaires |
| 4 | `"Codex" desktop "new feature" OR "update" OR "plugin" OR "connector" 2026` | Presse tech |

Si `--sources blog` : queries 1 + 2 seulement.
Si `--sources reddit` : query 3 seulement.
Si `--sources press` : query 4 seulement.
Si `--sources all` ou absent : toutes les 4.

Appliquer le filtre `--since` pour ignorer les features annoncées avant la date baseline.

## Step 4: Fetch des pages de référence

Faire `WebFetch` sur ces 2 URLs en parallèle :
- `https://docs.anthropic.com/en/docs/Codex-ai/Codex-desktop` — docs officielles desktop
- `https://www.anthropic.com/news` — blog Anthropic (scanner pour mentions desktop/features)

Skip silencieux si 404, timeout, ou redirect vers une page non pertinente. Ne pas bloquer sur les erreurs de fetch.

## Step 5: Comparer et scorer

Pour chaque feature/claim trouvée dans les résultats de recherche et les pages fetchées :

1. **Extraire la claim concrète** : plugin X, capability Y, platform Z — quelque chose de testable et précis
2. **Fuzzy match** contre la liste des features documentées extraite au Step 2 :
   - Match exact ou quasi-exact → **DÉJÀ DOCUMENTÉ**, skip
   - Match partiel ou ambigu → **PAS CLAIR**, noter
   - Aucun match → **NOUVEAU GAP**, retenir
3. **Scorer la confiance** selon la source :
   - **HIGH** : anthropic.com, docs.anthropic.com, annonce officielle
   - **MEDIUM** : presse tech réputée (TechCrunch, The Verge, Ars Technica, etc.)
   - **LOW** : Reddit, forums, posts individuels non vérifiés

Dédupliquer les claims identiques trouvées dans plusieurs sources (garder la source la plus fiable).

## Step 6: Afficher le Gap Report

```
=== Codex Cowork Product Watch ===
Baseline: YYYY-MM-DD (vX.Y.Z)
Sources: 4 queries + 2 anchor pages
Filtre: features après YYYY-MM-DD

--- NOUVEAUX GAPS (pas dans CHANGELOG) ---

[HIGH] <Feature name> (source officielle, <date>)
  Source: <URL>
  Résumé: <1-2 phrases factuelles>
  → Catégorie suggérée: Added | Changed | Fixed

[MEDIUM] <Feature name> (<publication>, <date>)
  Source: <URL>
  Résumé: <1-2 phrases>
  → Catégorie suggérée: Added

[LOW] <Feature name> (Reddit, non confirmé)
  Source: <URL>
  → Vérification nécessaire avant documentation

--- DÉJÀ DOCUMENTÉ (<N> features matchées) ---
<liste condensée ou "Tout semble à jour.">

--- PAS CLAIR (<N> résultats ambigus) ---
<items avec incertitude, ex: "Mention de X mais contexte flou">

---
Total gaps HIGH+MEDIUM : N
Total gaps LOW (non confirmés) : N
```

Si aucun gap trouvé : afficher "✅ Aucun gap détecté. CHANGELOG à jour au YYYY-MM-DD." et terminer.

## Step 7: Draft CHANGELOG (optionnel)

Si des gaps HIGH ou MEDIUM ont été trouvés, demander :

**"Rédiger des entrées CHANGELOG pour les gaps confirmés (HIGH + MEDIUM) ? (y/n)"**

Si `n` ou pas de réponse → terminer ici.

Si `y` :
1. Générer les entrées au format Keep-a-Changelog pour chaque gap HIGH et MEDIUM
2. Les grouper sous `### Added`, `### Changed`, `### Fixed` selon la catégorie suggérée
3. Les ajouter dans la section `## [Unreleased]` du CHANGELOG (en dessous de la ligne `## [Unreleased]`)
4. Si la section `[Unreleased]` est vide : ajouter les sous-sections nécessaires
5. Si elle contient déjà des items : ajouter les nouveaux items dans les sous-sections existantes ou créer les sous-sections manquantes

Format des entrées générées :
```markdown
## [Unreleased]

### Added
- <Feature X> : <description factuelle, 1 ligne, basée sur la source>
- <Feature Y> : <description>
```

Afficher confirmation :
```
✅ <N> entrées ajoutées dans [Unreleased]
   → Relire CHANGELOG.md avant de couper une version
   → Puis : /cowork:update-releases pour sync YAML + landing
```

Les gaps LOW ne sont PAS ajoutés automatiquement — indiquer à l'utilisateur de les vérifier manuellement s'il le souhaite.
