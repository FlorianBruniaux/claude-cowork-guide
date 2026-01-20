# Claude Products Comparison

> **Purpose**: Choose the right Claude interface for your task

---

## Quick Comparison Matrix

| Aspect | Claude Code | Cowork | Projects |
|--------|-------------|--------|----------|
| **Target user** | Developers | Knowledge workers | Everyone |
| **Interface** | Terminal/CLI | Desktop app | Web chat |
| **Primary use** | Software development | File manipulation | Conversations |
| **Execute code** | ✅ Full shell | ❌ No | ❌ No |
| **File access** | Full filesystem | Folder sandbox | Upload only |
| **Create files** | Any type | Office, PDF, text | None |
| **Web access** | Via tools | Chrome integration | In-chat search |
| **Memory** | CLAUDE.md files | Via files | Project knowledge |
| **Maturity** | Production-ready | Research preview | Production-ready |
| **Platform** | macOS, Linux, Windows | macOS only | All (web) |
| **Subscription** | Usage-based | Pro/Max ($20-200/mo) | All tiers |
| **Security docs** | Extensive | None yet | Standard |

---

## Detailed Feature Comparison

### File Operations

| Capability | Code | Cowork | Projects |
|------------|------|--------|----------|
| Read local files | ✅ Any | ✅ Sandbox | ❌ Upload only |
| Write local files | ✅ Any | ✅ Sandbox | ❌ No |
| Create Office docs | ⚠️ Via scripts | ✅ Native | ❌ No |
| Organize folders | ✅ Via shell | ✅ Native | ❌ No |
| Bulk operations | ✅ Scripts | ✅ Agentic | ❌ No |

### Code Execution

| Capability | Code | Cowork | Projects |
|------------|------|--------|----------|
| Run shell commands | ✅ Full | ❌ No | ❌ No |
| Execute Python | ✅ Yes | ❌ No | ❌ No |
| Run tests | ✅ Yes | ❌ No | ❌ No |
| Git operations | ✅ Yes | ❌ No | ❌ No |
| Build projects | ✅ Yes | ❌ No | ❌ No |

### Document Processing

| Capability | Code | Cowork | Projects |
|------------|------|--------|----------|
| Read PDFs | ⚠️ Via tools | ✅ Native | ✅ Upload |
| Read images (OCR) | ⚠️ Via tools | ✅ Native | ✅ Upload |
| Read spreadsheets | ⚠️ Via scripts | ✅ Native | ✅ Upload |
| Generate Word | ⚠️ Via scripts | ✅ Native | ❌ No |
| Generate Excel | ⚠️ Via scripts | ✅ Native | ❌ No |
| Generate presentations | ⚠️ Via scripts | ✅ Native | ❌ No |

### Agentic Capabilities

| Capability | Code | Cowork | Projects |
|------------|------|--------|----------|
| Multi-step planning | ✅ Yes | ✅ Yes | ⚠️ Limited |
| Sub-agent delegation | ✅ Yes | ✅ Yes | ❌ No |
| Plan review before execution | ✅ Yes | ✅ Yes | N/A |
| Parallel execution | ✅ Yes | ✅ Yes | ❌ No |
| Extended thinking | ✅ Yes | ✅ Yes | ✅ Yes |

### Web & Research

| Capability | Code | Cowork | Projects |
|------------|------|--------|----------|
| Web search | ✅ Via tools | ✅ Chrome | ✅ In-chat |
| Browse pages | ✅ Via tools | ✅ Chrome | ❌ No |
| API calls | ✅ Via code | ❌ No | ❌ No |
| Download files | ✅ Yes | ⚠️ Via Chrome | ❌ No |

---

## Use Case Decision Matrix

### Choose Claude Code When:

| Scenario | Why Code |
|----------|----------|
| Building software | Full development environment |
| Running tests | Test framework execution |
| Git operations | Version control integration |
| API development | HTTP requests, debugging |
| Automation scripts | Full scripting capability |
| DevOps tasks | Shell access, deployment |
| Any code execution | Only option with shell |

### Choose Cowork When:

| Scenario | Why Cowork |
|----------|------------|
| Organizing files | Native folder operations |
| Creating reports | Word, Excel, PowerPoint native |
| Processing receipts | OCR + spreadsheet output |
| Research compilation | Chrome + document generation |
| Data extraction | Images → structured data |
| Document synthesis | Multi-source → single output |
| Non-technical users | No code knowledge required |

### Choose Projects When:

| Scenario | Why Projects |
|----------|--------------|
| Q&A about documents | Upload and discuss |
| Brainstorming | Conversation-focused |
| Writing assistance | Draft in chat |
| Quick analysis | No file creation needed |
| Mobile use | Web interface |
| Budget constraints | All subscription tiers |

---

## Decision Flowchart

```
What do you need to do?
│
├─ Execute code, scripts, or shell commands?
│   └─ Yes → Claude Code
│
├─ Manipulate local files without coding?
│   ├─ Create Office documents?
│   │   └─ Yes → Cowork
│   ├─ Organize folders?
│   │   └─ Yes → Cowork
│   └─ Extract data from images/PDFs?
│       └─ Yes → Cowork
│
├─ Just have a conversation about documents?
│   └─ Yes → Projects
│
├─ Need it on mobile?
│   └─ Yes → Projects (web)
│
├─ Budget constrained?
│   ├─ Have Pro ($20/mo) or Max ($100-200/mo)?
│   │   └─ Yes → Cowork available (Pro: light use; Max: heavy use)
│   └─ No → Projects or Claude Code (usage-based)
│
└─ Not sure?
    └─ Start with Projects, escalate as needed
```

---

## Hybrid Workflows

### Developer + PM Collaboration

```
┌─────────────────────────────────────┐
│ Developer (Claude Code)             │
│ • Generate technical spec           │
│ • Output to ~/Shared/specs/         │
└───────────────┬─────────────────────┘
                ↓
┌─────────────────────────────────────┐
│ PM (Cowork)                         │
│ • Read tech spec                    │
│ • Create stakeholder summary        │
│ • Output to ~/Shared/docs/          │
└─────────────────────────────────────┘
```

### Research + Implementation

```
┌─────────────────────────────────────┐
│ Analyst (Cowork)                    │
│ • Web research via Chrome           │
│ • Compile comparison matrix         │
│ • Save to ~/Shared/research/        │
└───────────────┬─────────────────────┘
                ↓
┌─────────────────────────────────────┐
│ Developer (Claude Code)             │
│ • Read research output              │
│ • Implement based on findings       │
│ • Create code + tests               │
└─────────────────────────────────────┘
```

---

## Pricing Comparison

| Product | Cost Model | Typical Cost |
|---------|------------|--------------|
| **Claude Code** | Usage-based (API) | Variable, $10-100+/mo |
| **Cowork** | Pro or Max subscription | $20-200/month |
| **Projects** | All tiers | Free - $20+/month |

### Cost Decision

| Budget | Recommendation |
|--------|----------------|
| Free/minimal | Projects only |
| $20/month | Pro: Cowork (light use) + Projects |
| $50-100/month | Claude Code (usage-based) |
| $100-200/month | Max: All products + extended Cowork usage |

---

## Migration Paths

### Projects → Cowork

When to migrate:
- Need to create Office documents
- Want batch file processing
- Tired of manual file management

### Projects → Code

When to migrate:
- Need code execution
- Want version control integration
- Building software

### Cowork → Code

When to migrate:
- Need shell access
- Want to run scripts
- Require programmatic automation

---

## Feature Availability Timeline

| Feature | Code | Cowork | Projects |
|---------|------|--------|----------|
| **Available now** | ✅ | ⚠️ Research preview | ✅ |
| **Windows** | ✅ | ❌ (planned, no ETA) | ✅ |
| **Linux** | ✅ | ❌ (not announced) | ✅ |
| **Enterprise** | ✅ | ❌ (unknown) | ✅ |
| **Team features** | ⚠️ Limited | ❌ | ✅ |

---

## Cowork vs Chat: When to Use Each

> **Key insight**: Cowork is not a Chat replacement—it's a specialist tool for specific task categories.

### Architecture Difference

| Aspect | Chat (Projects/Web) | Cowork |
|--------|---------------------|--------|
| **Model** | Conversational (prompt → response → iterate) | Autonomous agent (task → plan → execute) |
| **Interaction** | Dialogue-driven | Task-driven |
| **Best for** | Thinking, reasoning, iteration | Execution, automation, batch ops |

### Where Cowork Wins

| Use Case | Why Cowork | Chat Alternative |
|----------|------------|------------------|
| **10+ file operations** | Direct folder access, parallel execution | Manual upload (20-file limit), sequential |
| **Cross-document analysis** | Reads entire directories at once | Context fragmentation, attention decay |
| **Repetitive automation** | Set up once, runs autonomously | Re-prompt every cycle |
| **Browser automation** | Navigates, clicks, fills forms | Can only describe what you should do |
| **Privacy-sensitive files** | Local processing, no upload | Files sent to cloud servers |

**Example**: 30 receipts → expense Excel
- Cowork: Drop folder → 5 minutes autonomous
- Chat: Upload 5 at a time, manually extract → 45 minutes

### Where Chat Wins

| Use Case | Why Chat | Cowork Limitation |
|----------|----------|-------------------|
| **Strategy/reasoning** | Iterative dialogue, hypothesis testing | Mechanical outputs lacking nuance |
| **Code development** | Claude Code integration, rapid test cycles | Can execute but feels unnatural |
| **Writing/drafting** | Live artifacts, inline iteration | Download-edit-reupload friction |
| **Multi-domain synthesis** | Cross-domain reasoning | File-centric architecture |
| **Collaboration** | Shareable links, team visibility | Desktop-only, no sharing |
| **Zero-install access** | Any device, any browser | macOS app required |

**Example**: Marketing strategy memo
- Chat: Iterative discussion, nuanced thesis → thoughtful output
- Cowork: Mechanical structure from files → lacks strategic insight

### Performance Comparison

| Metric | Cowork | Chat |
|--------|--------|------|
| Cold start | ~3 seconds | 10-12 seconds (web login) |
| Memory usage | 200-400 MB | 1.2-2.0 GB (extended sessions) |
| Token consumption | ~1.5-2x Chat (planning overhead) | Baseline |
| Session persistence | Requires app open | Survives tab reloads |

### Decision Framework

**Use Cowork when**:
- Task involves 10+ files or batch operations
- Need browser automation (scraping, forms)
- Files are compliance-sensitive (prefer local)
- Task is mechanical and well-defined
- Output is file-based (Excel, PPT, docs)

**Use Chat when**:
- Task requires reasoning, judgment, creativity
- Coding/debugging needed
- Iterative drafting or collaboration
- Task is ambiguous or exploratory
- Need mobile/zero-install access
- Output is discussion-based

**Use both**:
- Thinking phase (Chat) → refined requirements → execution phase (Cowork)
- Example: Chat for strategy → Cowork for batch content creation

### The 80/20 Rule

For most knowledge workers:
- **Chat: 80-85%** of use cases (thinking, writing, coding, analysis)
- **Cowork: 15-20%** of use cases (batch files, automation, browser tasks)

Together they enable workflows impossible with either alone: **thinking at chat-speed + execution at agent-speed**.

---

## Competitive Landscape (January 2026)

How does Cowork compare to other AI desktop assistants?

### Feature Matrix

| Feature | Cowork | Copilot (MS) | Gemini | ChatGPT | Apple Intelligence |
|---------|--------|--------------|--------|---------|-------------------|
| **Local file access** | ✅ Sandbox | ✅ Office only | ⚠️ Drive | ⚠️ Limited | ✅ System-wide |
| **Document creation** | ✅ Office, PDF | ✅ Office native | ✅ Docs | ⚠️ Artifacts | ⚠️ Basic |
| **Browser automation** | ✅ Chrome | ❌ No | ❌ No | ⚠️ Operator (beta) | ❌ No |
| **True autonomy** | ✅ Multi-step | ❌ Copilot | ❌ No | ⚠️ GPTs | ❌ No |
| **OCR/Vision** | ✅ Good | ✅ Best | ✅ Good | ✅ Good | ✅ Good |
| **Privacy (local)** | ⚠️ API calls | ⚠️ Cloud | ⚠️ Cloud | ⚠️ Cloud | ✅ On-device |
| **Free tier** | ❌ Pro/Max | ⚠️ Limited | ⚠️ Limited | ✅ Yes | ✅ Built-in |
| **Platform** | macOS | Windows/Mac | Cross | Cross | Apple only |

### Autonomy Ranking

| Product | Autonomy Level | Description |
|---------|----------------|-------------|
| **Cowork** | 🟢 High | Plans, executes multi-step tasks, delegates to sub-agents |
| **ChatGPT Operator** | 🟡 Medium | Browser automation but limited file access |
| **Copilot** | 🟡 Medium | Office integration but not truly autonomous |
| **Gemini** | 🔴 Low | Chat-centric, limited execution |
| **Apple Intelligence** | 🔴 Low | Utilities only, no complex workflows |

**Key differentiator**: Cowork is the only assistant that combines true multi-step autonomy + local file manipulation + browser automation in one package.

### Best Fit by Use Case

| Use Case | Best Choice | Why |
|----------|-------------|-----|
| **Office document creation** | Copilot | Native Word/Excel/PowerPoint integration |
| **Receipt/invoice OCR** | Copilot or Cowork | Best accuracy (Copilot) vs autonomy (Cowork) |
| **Browser automation** | Cowork | Only option with Chrome control |
| **Privacy-sensitive work** | Apple Intelligence | On-device, no cloud |
| **Cross-platform team** | ChatGPT | Available everywhere |
| **Budget-conscious** | Apple Intelligence | Free with Apple devices |
| **Complex file workflows** | Cowork | Sub-agent architecture, batch processing |
| **Deep Office integration** | Copilot | Native APIs, best formulas |
| **Large context** | Gemini | 1M+ token window |

### Privacy Architecture

| Product | Data Flow | Concern Level |
|---------|-----------|---------------|
| **Apple Intelligence** | On-device | 🟢 Low |
| **Cowork** | Files → Anthropic API → Results | 🟡 Medium |
| **Copilot** | Files → Microsoft Graph | 🟡 Medium |
| **Gemini** | Files → Google Cloud | 🟡 Medium |
| **ChatGPT** | Files → OpenAI | 🟡 Medium |

**Note**: All cloud-based options process file content on their servers. Only Apple Intelligence runs entirely locally. Cowork files leave your machine during processing.

### Pricing Comparison

| Product | Cost | Notes |
|---------|------|-------|
| **Apple Intelligence** | Free | Included with devices |
| **Cowork** | $20-200/mo | Pro (light) or Max (heavy) |
| **Copilot** | $20/mo (personal), $30/mo (enterprise) | M365 Copilot |
| **ChatGPT** | Free-$20+/mo | Plus required for advanced |
| **Gemini** | Free-$20/mo | Advanced for 1M context |

### When NOT to Use Cowork

| Scenario | Better Alternative | Why |
|----------|-------------------|-----|
| Need best OCR accuracy | Microsoft Copilot | Native Office, better extraction |
| Need 1M+ context | Gemini Advanced | Largest context window |
| Privacy non-negotiable | Apple Intelligence | On-device only |
| Need cross-platform | ChatGPT | Works everywhere |
| On Windows/Linux | Copilot or ChatGPT | Cowork is macOS only |
| Free tier only | ChatGPT or Gemini | Cowork requires paid subscription |

---

## Summary

| If you are... | Use |
|---------------|-----|
| A developer | Claude Code |
| A knowledge worker (non-technical) | Cowork |
| Just chatting/analyzing | Projects |
| On a budget | Projects |
| Need file creation | Cowork |
| Need code execution | Claude Code |
| On Windows/Linux | Claude Code or Projects |
| Need reasoning/iteration | Chat (Projects) |
| Need batch file processing | Cowork |
| Need best OCR | Microsoft Copilot |
| Privacy-critical | Apple Intelligence |
| Large documents (1M+) | Gemini Advanced |

---

*[Back to Cowork Documentation](../README.md)*
