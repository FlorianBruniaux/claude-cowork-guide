# Cowork Glossary

> **Terminology specific to Claude Cowork and related concepts**

---

## A

### Agentic
Describes AI systems that can autonomously plan and execute multi-step tasks with minimal human intervention. Cowork is "agentic" because it analyzes your request, creates a plan, and executes it (with your approval).

### Approval Gate
The checkpoint where Cowork shows its planned actions and waits for your confirmation before executing. **Critical security measure**—always review before approving.

---

## C

### Claude Code
Anthropic's CLI tool for developers. Shares architecture with Cowork but provides full shell access and code execution. Terminal-based interface.

### Claude Desktop
The macOS application that hosts Cowork. Different from the web interface (claude.ai).

### Context Limit
The maximum amount of text/data Claude can process in a single session (~200K tokens). When exceeded, tasks may fail or produce incomplete results.

### Context Window
The "memory" space where Claude holds your conversation and file contents during a session. Measured in tokens.

### Cowork
Claude's agentic desktop feature for knowledge workers. Manipulates files without code execution.

---

## E

### Execution Plan
The detailed list of actions Cowork proposes before starting work. Shows what files will be affected and how. **Review this carefully.**

### Extended Thinking
Claude's ability to reason through complex problems step-by-step. Shared capability between Claude Code and Cowork.

---

## F

### Folder Sandbox
The restricted area where Cowork can operate. You grant access to specific folders; Cowork cannot access anything outside this boundary.

---

## K

### Knowledge Worker
Non-technical professionals who work primarily with information and documents (project managers, analysts, writers, consultants). Cowork's target audience.

---

## L

### Local-First
Design principle where data and processing stay on your computer rather than in the cloud. Cowork accesses local files only.

---

## M

### Max Tier
The highest Claude subscription level ($100-200/month, with 5x or 20x usage multipliers). Recommended for heavy Cowork usage.

### Pro Tier
The standard Claude subscription level ($20/month). Now includes Cowork access, but with tighter usage limits (~1-1.5 hours intensive use before quota resets).

### Multi-Step Task
An operation requiring multiple sequential actions. Example: "read files → analyze → create report → organize output." Cowork excels at these.

---

## O

### OCR (Optical Character Recognition)
Technology that extracts text from images. Cowork uses OCR to read receipts, screenshots, and scanned documents.

### Orchestrator
The main Cowork agent that receives your request, creates the plan, coordinates sub-agents, and assembles results.

---

## P

### Prompt Injection
A security attack where malicious instructions are hidden in files, attempting to manipulate AI behavior. Mitigation: only process trusted files.

### Projects
Claude's conversation interface on claude.ai. Allows document uploads but no local file access or creation.

---

## R

### Research Preview
Anthropic's term for early-access features that aren't production-ready. Cowork is in research preview (January 2026). Expect bugs.

---

## S

### Sub-Agent
Specialized workers spawned by the orchestrator to handle specific parts of a task. Each sub-agent has fresh context and can work in parallel with others.

### Sandbox
See [Folder Sandbox](#folder-sandbox).

---

## T

### Token
The unit Claude uses to measure text. Roughly 4 characters or 0.75 words. Used to calculate context limits.

---

## W

### Workspace
The dedicated folder structure for Cowork operations. Best practice: `~/Cowork-Workspace/` with `input/` and `output/` subfolders.

---

## Common Acronyms

| Acronym | Meaning |
|---------|---------|
| CLI | Command Line Interface |
| OCR | Optical Character Recognition |
| PDF | Portable Document Format |
| API | Application Programming Interface |
| SSO | Single Sign-On |

---

## Related Terms from Claude Code

| Term | In Code Context | In Cowork Context |
|------|-----------------|-------------------|
| **CLAUDE.md** | Project context file | Can use for shared team context |
| **Sub-agents** | Task-specific workers | Same concept, file-focused |
| **Hooks** | Event handlers | Not available in Cowork |
| **MCP** | Model Context Protocol | Not exposed in Cowork |

---

*[Back to Cowork Documentation](../README.md)*
