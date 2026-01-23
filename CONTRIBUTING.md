# Contributing to Cowork Documentation

Thank you for your interest in improving the Cowork documentation! This guide will help you contribute effectively.

---

## 📍 Repository

**Location**: [claude-cowork-guide](https://github.com/FlorianBruniaux/claude-cowork-guide)

**Status**: Active development, contributions welcome.

---

## 🎯 Ways to Contribute

### 1. Report Issues

Found a problem? Open an issue in the [repository](https://github.com/FlorianBruniaux/claude-cowork-guide/issues).

**Good issue titles**:
- ✅ `VPN workaround instructions unclear`
- ✅ `OCR accuracy claim needs source`
- ❌ `File organization doesn't work` (too vague)

**Include**:
- Platform (macOS version)
- Subscription tier (Pro or Max)
- Cowork version (from Claude Desktop → Settings → About)
- Exact error message (if applicable)
- Steps to reproduce

### 2. Suggest Improvements

Have an idea? Open an issue with:
- **Problem**: What's missing or could be better
- **Proposed solution**: Specific improvement
- **Use case**: Why this helps users

### 3. Submit Workflows

Share your real-world Cowork workflows:

**Requirements**:
- **Tested**: You've used this workflow successfully
- **Practical**: Solves a real problem
- **Documented**: Clear steps with example prompts
- **Reproducible**: Others can follow and achieve similar results

**Template**:
```markdown
# [Workflow Name]

## Use Case
[What problem this solves]

## Prerequisites
- [File types needed]
- [Workspace setup]
- [Estimated time]

## Steps

### 1. [Step Name]
**Prompt**:
```
CONTEXT: [situation]
TASK: [what to do]
OUTPUT: [format and location]
CONSTRAINTS: [rules]
```

**Expected result**: [what happens]

[Continue for all steps...]

## Common Issues
- [Issue 1]: [Solution]
- [Issue 2]: [Solution]

## Success Criteria
[How to know it worked]
```

### 4. Contribute Prompts

Add prompts to the library:

**Requirements**:
- **Tested**: Works reliably in Cowork
- **Categorized**: Fits in file-ops/document-creation/data-extraction/research
- **CTOC Format**: Uses Context→Task→Output→Constraints structure
- **Documented**: Includes expected result and common variations

**Template**:
```markdown
### [Prompt Name]

**Use case**: [When to use this]

**Prompt**:
```
CONTEXT: [situation]
TASK: [what to do]
OUTPUT: [format and location]
CONSTRAINTS: [rules]
```

**Expected result**: [what Cowork will produce]

**Variations**:
- [Variation 1]: [How to adapt]
- [Variation 2]: [How to adapt]

**Common issues**:
- [Issue]: [Solution]
```

### 5. Fix Documentation Errors

Found a typo, broken link, or outdated information? Submit a PR.

**Small fixes** (typos, links): Direct PR welcome
**Large changes** (restructure, new sections): Open an issue first to discuss

### 6. Share Research

Found useful data about Cowork? Share it!

**Valuable contributions**:
- Official Anthropic announcements
- Community pain points (Reddit, forums)
- OCR accuracy tests on specific document types
- Token consumption measurements
- Performance benchmarks
- Platform compatibility updates

**Format**: Open an issue with `[research]` label and include sources.

---

## 📝 Style Guide

### Writing Principles

1. **Practical over theoretical** - Focus on actionable knowledge
2. **Accuracy over marketing** - No invented stats, cite sources
3. **Specific over vague** - "OCR accuracy ~97% for vendor names" not "OCR is good"
4. **Examples included** - Every concept has a real example
5. **Beginner-friendly** - Knowledge workers, not developers

### Prompts

- **Always use CTOC format** (Context→Task→Output→Constraints)
- **Include file paths** in prompts (`~/Cowork-Workspace/input/`)
- **Specify output format** (Excel with formulas, Word with headers, etc.)
- **Add constraints** (currency, separators, regional settings)

Example:
```
CONTEXT: I have 15 PDF invoices from different vendors in ~/Cowork-Workspace/input/invoices/
TASK: Extract invoice data into a structured format
OUTPUT: Save as ~/Cowork-Workspace/output/invoices.xlsx with columns: Date, Vendor, Invoice#, Amount, Status
CONSTRAINTS: Use EUR currency, European Excel formula syntax (semicolons), flag amounts >1000 in red
```

### Documentation Structure

- **Headers**: Sentence case, not Title Case
- **Lists**: Parallel structure, consistent punctuation
- **Code blocks**: Specify language for syntax highlighting
- **Tables**: Use for comparisons, structured data
- **Collapsibles**: For long content that breaks flow

### Tone

- **Professional but approachable** - Not academic, not casual
- **Confident but honest** - Admit limitations, cite uncertainties
- **Helpful not patronizing** - Respect reader's intelligence

---

## 🔍 Review Process

### For Issues

- **Response time**: ~48 hours for acknowledgment
- **Triage**: `bug`, `enhancement`, `documentation`, `question`
- **Priority**: Based on impact and community feedback

### For Pull Requests

**Checklist** (add this to your PR):
```markdown
- [ ] Tested on Cowork (macOS, Pro/Max tier)
- [ ] Follows CTOC format (for prompts)
- [ ] Includes examples
- [ ] Updated relevant cross-references
- [ ] No broken links
- [ ] Follows style guide
```

**Review timeline**:
- Small fixes: ~24 hours
- New prompts: ~48 hours
- New workflows: ~1 week (requires testing)
- Major changes: ~2 weeks (requires discussion)

---

## ❓ Questions?

- **Documentation questions**: Open an issue with `[question]` label
- **Technical support**: Use [Claude Desktop support](https://support.anthropic.com/)
- **General discussion**: Use repository [Discussions](https://github.com/FlorianBruniaux/claude-cowork-guide/discussions)

---

## 📄 License

By contributing, you agree that your contributions will be licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

**This means**:
- ✅ Free to share and adapt
- ✅ Must give attribution
- ✅ Share-alike (derivatives under same license)
- ❌ No additional restrictions

---

## 🙏 Recognition

Contributors are recognized in:
- Repository contributors graph
- CHANGELOG.md (for significant contributions)
- Documentation credits (for major additions)

---

*Thank you for helping make Cowork documentation better for everyone!*
