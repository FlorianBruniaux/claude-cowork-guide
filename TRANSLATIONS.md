# Translation Status

This file tracks the synchronization status between French and English versions of all documentation.

## Convention

| Content Type | Primary Language | Pattern |
|--------------|------------------|---------|
| **workflows/** | French (FR) | `file.md` (FR) + `file.en.md` (EN) |
| **guide/** | English (EN) | `file.md` (EN) + `file.fr.md` (FR) |
| **prompts/** | English (EN) | `file.md` (EN) + `file.fr.md` (FR) |
| **reference/** | English (EN) | `file.md` (EN) + `file.fr.md` (FR) |
| **README** | English (EN) | `README.md` (EN) + `README.fr.md` (FR) |

## Status Legend

- ✅ **Current**: Both versions exist and are synchronized
- ⏳ **Pending**: Translation needs to be created
- ⚠️ **Outdated**: Translation exists but source file was modified
- ❌ **Missing**: Translation file doesn't exist

---

## Workflows (25 files)

| File | Primary | FR Status | EN Status | Last Sync |
|------|---------|-----------|-----------|-----------|
| README.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| client-followup-tracker.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| competitor-analysis.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| compliance-checklist.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| email-templates.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| expense-tracking.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| file-organization.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| inventory-tracking.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| invoice-generation.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| knowledge-transfer.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| meeting-prep.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| newsletter-creation.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| payment-reminders.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| presentation-slides.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| price-comparison.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| project-planning.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| prospect-research.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| quality-checklist.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| quote-creation.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| quote-to-invoice.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| report-synthesis.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| review-response.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| social-media-posts.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| supplier-order.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| team-handoff.md | FR | ✅ Current | ✅ Current | 2026-01-21 |
| work-log.md | FR | ✅ Current | ✅ Current | 2026-01-21 |

**Summary**: 25/25 EN translations complete (0 pending)

---

## Guide (5 files)

| File | Primary | EN Status | FR Status | Last Sync |
|------|---------|-----------|-----------|-----------|
| 00-overview.md | EN | ✅ Current | ⏳ Pending | - |
| 01-getting-started.md | EN | ✅ Current | ⏳ Pending | - |
| 02-capabilities.md | EN | ✅ Current | ⏳ Pending | - |
| 03-security.md | EN | ✅ Current | ⏳ Pending | - |
| 04-troubleshooting.md | EN | ✅ Current | ⏳ Pending | - |

**Summary**: 0/5 FR translations complete (5 pending)

---

## Prompts (5 files)

| File | Primary | EN Status | FR Status | Last Sync |
|------|---------|-----------|-----------|-----------|
| README.md | EN | ✅ Current | ⏳ Pending | - |
| data-extraction.md | EN | ✅ Current | ⏳ Pending | - |
| document-creation.md | EN | ✅ Current | ⏳ Pending | - |
| file-ops.md | EN | ✅ Current | ⏳ Pending | - |
| research.md | EN | ✅ Current | ⏳ Pending | - |

**Summary**: 0/5 FR translations complete (5 pending)

---

## Reference (4 files)

| File | Primary | EN Status | FR Status | Last Sync |
|------|---------|-----------|-----------|-----------|
| cheatsheet.md | EN | ✅ Current | ⏳ Pending | - |
| comparison.md | EN | ✅ Current | ⏳ Pending | - |
| faq.md | EN | ✅ Current | ⏳ Pending | - |
| glossary.md | EN | ✅ Current | ⏳ Pending | - |

**Summary**: 0/4 FR translations complete (4 pending)

---

## Root Files (1 file)

| File | Primary | EN Status | FR Status | Last Sync |
|------|---------|-----------|-----------|-----------|
| README.md | EN | ✅ Current | ⏳ Pending | - |

**Summary**: 0/1 FR translations complete (1 pending)

---

## Overall Progress

| Category | Total Files | Translations Complete | Pending | Percentage |
|----------|-------------|----------------------|---------|------------|
| Workflows | 25 | 25 EN | 0 EN | 100% |
| Guide | 5 | 0 FR | 5 FR | 0% |
| Prompts | 5 | 0 FR | 5 FR | 0% |
| Reference | 4 | 0 FR | 4 FR | 0% |
| Root | 1 | 0 FR | 1 FR | 0% |
| **Total** | **40** | **25** | **15** | **62.5%** |

---

## Maintenance Workflow

1. **When modifying a source file:**
   - Update the corresponding translation file
   - Update "Last Sync" date in this file
   - Run `scripts/check-translations.sh` to verify

2. **CI checks:**
   - GitHub Actions automatically runs translation checks on push
   - PRs will be commented with outdated translation warnings

3. **Creating new files:**
   - Create source file first (primary language)
   - Add translation file
   - Add language switcher to both files
   - Update this TRANSLATIONS.md file

---

**Last updated**: 2026-01-21
