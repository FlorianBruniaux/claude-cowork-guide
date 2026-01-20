# GitHub Templates for Cowork Documentation

This directory contains templates for issues and pull requests to make contributing easier.

## Templates Available

### Issue Templates

1. **Bug Report** (`ISSUE_TEMPLATE/bug_report.md`)
   - For documentation errors, broken links, typos
   - Requires: Location, expected vs actual behavior, environment

2. **Feature Request** (`ISSUE_TEMPLATE/feature_request.md`)
   - For suggesting new content or improvements
   - Types: New workflow, new prompts, improved docs, etc.

3. **Workflow Contribution** (`ISSUE_TEMPLATE/workflow_contribution.md`)
   - For sharing real-world Cowork workflows
   - Requires: Tested multiple times, CTOC format, success criteria

### Pull Request Template

**PULL_REQUEST_TEMPLATE.md**
- Standard PR template with checklist
- Covers all contribution types
- Includes testing requirements

## How to Use

### Creating an Issue

1. Go to [Issues](../../issues/new/choose)
2. Select appropriate template
3. Fill in all required sections
4. Submit

### Creating a Pull Request

1. Fork the repository
2. Create a branch: `git checkout -b feature/my-contribution`
3. Make your changes
4. Test thoroughly (use scripts in `../scripts/`)
5. Push: `git push origin feature/my-contribution`
6. Open PR - template will auto-populate
7. Complete all checklist items

## Contribution Guidelines

See [CONTRIBUTING.md](../CONTRIBUTING.md) for:
- Style guide
- CTOC format for prompts
- Review process
- Testing requirements

## Scripts for Contributors

Before submitting a PR, run these scripts:

```bash
# Check version sync
./scripts/check-version-sync.sh

# Update statistics (prompts count, workflows count)
./scripts/update-stats.sh

# View changes
git diff
```

## Labels

When creating issues, maintainers will apply these labels:

| Label | Purpose |
|-------|---------|
| `bug` | Documentation errors |
| `enhancement` | New features or improvements |
| `workflow` | Workflow contributions |
| `prompt` | Prompt contributions |
| `community` | Community-contributed content |
| `good-first-issue` | Great for new contributors |
| `help-wanted` | Extra attention needed |

## Future Repository

**Note**: This `.github/` structure is prepared for when Cowork documentation moves to a dedicated repository (`claude-cowork-guide`). Until then, contributions should go to the [main repository](https://github.com/FlorianBruniaux/claude-cowork-guide) with `[cowork]` prefix in titles.

---

*Questions? Open a [Discussion](https://github.com/FlorianBruniaux/claude-cowork-guide/discussions)*
