---
name: "source-command-cowork-update-releases"
description: "Sync Codex Cowork releases from local CHANGELOG to guide YAML + landing TypeScript"
---

# source-command-cowork-update-releases

Use this skill when the user asks to run the migrated source command `cowork-update-releases`.

## Command Template

# Update Codex Cowork Releases

Parse the Cowork guide CHANGELOG and sync both:
1. **Guide YAML**: `/Users/florianbruniaux/Sites/perso/Codex-cowork-guide/machine-readable/Codex-cowork-releases.yaml`
2. **Landing TS**: `/Users/florianbruniaux/Sites/perso/Codex-cowork-guide-landing/src/data/releases.ts`

Unlike Codex, there is no npm package or external CHANGELOG. The source of truth is the local CHANGELOG.md in the guide repo.

## Step 1: Parse Arguments

- `--since <version>` — process only versions strictly newer than this
- `--dry-run` — show planned changes, don't write anything
- No args — auto-detect from `latest:` field in YAML (or from CHANGELOG if YAML doesn't exist yet)

## Step 2: Read Current State

Read the guide YAML to get the current `latest` version. If the YAML doesn't exist yet, treat all CHANGELOG entries as new.

## Step 3: Parse Local CHANGELOG

Read `/Users/florianbruniaux/Sites/perso/Codex-cowork-guide/CHANGELOG.md`.

The format is Keep-a-Changelog:
```
## [X.Y.Z] - YYYY-MM-DD

### Added
- item

### Changed
- item

### Fixed
- item
```

For each `## [X.Y.Z]` block:
- Extract version string (without brackets)
- Extract date directly from the `- YYYY-MM-DD` part of the header
- Flatten all Added/Changed/Fixed items into a single highlights list
- Mark items as highlights based on content significance (see ⭐ heuristic below)

Skip the `## [Unreleased]` section entirely.

**Date format conversion:**
- CHANGELOG: `YYYY-MM-DD` → YAML: `YYYY-MM-DD` (keep as-is)
- CHANGELOG: `YYYY-MM-DD` → Landing: `Mon D, YYYY` (e.g. `Mar 4, 2026`)

## Step 4: Optionally Search for Anthropic Announcements

If significant new versions are detected (minor or major bump), optionally use WebSearch to find recent Anthropic product announcements about Cowork features that might not be documented yet in the CHANGELOG.

Search queries to try:
- `"Codex Cowork" new features YYYY` (use current year)
- `"Codex.ai" Cowork release announcement YYYY`

Add any relevant findings as additional highlights with `[Anthropic announcement]` note.

## Step 5: Identify New Versions

Compare CHANGELOG versions against YAML tracked versions. Versions in CHANGELOG but not in YAML are new.

Display to the user:
```
Current latest: v1.5.1
New versions found: N
  - 1.5.2 (Mar X, 2026): [first highlight]
```

If no new versions → display "Already up to date. Latest: vX.Y.Z" and exit.

If `--dry-run`, show the full planned diff for both files and exit without writing.

If YAML doesn't exist yet → show "First run: will create YAML from scratch with all X versions from CHANGELOG."

Ask: **"Update guide YAML + landing releases.ts? (y/n)"**

## Step 6: Update (or Create) Guide YAML

**If YAML exists:** Prepend new versions to the `releases:` array (newest first).

**If YAML doesn't exist:** Create the file from scratch:

```yaml
# Codex Cowork Guide Releases
# Source: CHANGELOG.md + Anthropic product announcements
# Purpose: Track Cowork documentation + product releases

latest: "X.Y.Z"
updated: "YYYY-MM-DD"

# ════════════════════════════════════════════════════════════════
# RELEASES (newest first, condensed highlights only)
# ════════════════════════════════════════════════════════════════
releases:
```

Format each entry:

```yaml
- version: "X.Y.Z"
  date: "YYYY-MM-DD"
  highlights:
    - "⭐ Feature description"  # add ⭐ for major new features/capabilities
    - "Regular improvement"
    - "Fixed: bug description"
  breaking: []  # or list breaking changes if present
```

**⭐ heuristic for Cowork**: Add ⭐ prefix if the highlight mentions:
- New product feature (plugins, integrations, new UI)
- New workflow or template added
- New platform/OS support (e.g. Windows)
- New model support or model capability update
- New connector/integration type

Do NOT add ⭐ for: documentation corrections, version sync, terminology fixes, minor FAQ updates.

**Condensing CHANGELOG entries**: The CHANGELOG is very verbose. Condense each entry to the most impactful 2-5 highlights. Skip purely internal/housekeeping changes.

Update top-level fields:
```yaml
latest: "X.Y.Z"  # newest version
updated: "YYYY-MM-DD"  # today
```

## Step 7: Update (or Create) Landing releases.ts

**If file exists:** Prepend new releases to the `releases` array.

**If file doesn't exist:** Create from scratch with the full interface definition:

```typescript
export interface Release {
  version: string
  date: string
  highlights: string[]
  breaking?: string[]
  latest?: boolean
  initiallyVisible?: boolean
  featured?: boolean
  featuredLabel?: string
}

export interface BreakingChange {
  badge: string
  description: string
}

export const releases: Release[] = [
  // releases here, newest first
]

export const breakingChanges: BreakingChange[] = []
```

Format each release entry:

```typescript
{
  version: 'vX.Y.Z',
  date: 'Mon D, YYYY',
  highlights: [
    '⭐ <strong>Feature Name</strong> — description',
    'Improvement description',
    'Fixed: bug description',
  ],
  latest: true,         // only on the newest version
  initiallyVisible: true,  // true if significant (has ⭐ or 3+ highlights), false if minor patch
  featured: true,          // only if has a ⭐ highlight
  featuredLabel: '⭐ Feature Name',  // label for the newest featured ⭐ item
},
```

**HTML formatting rules:**
- New features → `⭐ <strong>Name</strong> — description`
- Plugin/connector names → `<strong>Name</strong>`
- Technical terms → `<code>term</code>`
- Bugfixes start with → `Fixed: description`
- Documentation fixes start with → `Docs: description`

**`latest` flag:** Set `latest: true` only on the newest version.

**`initiallyVisible` logic:**
- `true` if: has ⭐ items, OR 3+ highlights, OR is the newest version
- `false` if: minor doc fix or terminology patch

## Step 8: Handle Breaking Changes

If any highlights mention: API changes, removed features, renamed commands, deprecated workflows, security → check if it should be added to `breakingChanges`.

Badge options: `Removed`, `Renamed`, `Deprecated`, `Security`, `Behavior`

## Step 9: Summary

Show final summary:

```
✅ Guide YAML updated: +N versions (latest: vX.Y.Z)
✅ Landing releases.ts updated: +N releases
⚠️  Breaking changes added: [list if any, else "none"]

Next steps:
  cd /Users/florianbruniaux/Sites/perso/Codex-cowork-guide
  git diff machine-readable/Codex-cowork-releases.yaml

  cd /Users/florianbruniaux/Sites/perso/Codex-cowork-guide-landing
  pnpm build  # validate before pushing
```
