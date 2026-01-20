# Cowork FAQ

> **20+ frequently asked questions** about Claude Cowork

---

## Getting Started

### Q: What is Cowork?
**A:** Cowork is Claude's agentic desktop feature that lets you manipulate local files, create documents, and organize your workspace—without writing code. It runs in the Claude Desktop app and can autonomously execute multi-step file operations.

### Q: How do I get access to Cowork?
**A:** You need:
1. A Pro ($20/mo) or Max ($100-200/mo) subscription
2. macOS (Windows planned, Linux not announced)
3. Claude Desktop app (latest version)
4. Enable in Settings → Features

### Q: What are the usage limits?
**A:** Usage resets every 5 hours, not daily/monthly. Pro tier: ~45 short messages per reset (~1-1.5 hours intensive use). Max tier: 5x or 20x Pro's limit. File organization and document processing tasks consume tokens rapidly—budget accordingly.

### Q: Does Cowork work on Windows or Linux?
**A:** Not yet (January 2026). **Windows** is on Anthropic's roadmap but has no ETA. **Linux** has no official announcement.

**Important distinction:**
- **Claude Desktop** on Linux: Community workarounds exist (NixOS Flake is most reliable, also Debian packages, AUR)
- **Cowork** on Linux: NO workaround. Cowork requires macOS-specific system APIs for computer use that have no Linux equivalent

If you need agentic capabilities on Linux, use **Claude Code** (native support) instead of Cowork.

### Q: Is Cowork the same as Claude Code?
**A:** They share architecture but differ in interface and capabilities:
- **Claude Code**: Terminal interface, full shell access, for developers
- **Cowork**: Desktop app, file-only access, for knowledge workers

See [full comparison](comparison.md).

---

## Capabilities

### Q: What can Cowork do?
**A:** Core capabilities:
- Read and write local files
- Create Word, Excel, PowerPoint, PDF documents
- Organize and rename folders/files
- Extract data from images (OCR)
- Process PDFs
- Web research via Chrome

### Q: What can't Cowork do?
**A:** Cowork cannot:
- Execute code or scripts
- Make API calls
- Access cloud storage directly (Google Drive, Dropbox)
- Process audio or video
- Decrypt encrypted files
- Access network resources (except via Chrome)

### Q: Can Cowork browse the web?
**A:** Yes, through Chrome integration. You grant Chrome access for specific tasks, and Cowork can search, read pages, and extract information. It cannot fill forms or make purchases for security reasons.

### Q: Can Cowork access Google Drive or Dropbox?
**A:** No direct integration confirmed (January 2026). Workaround: Download cloud files to your local workspace first.

### Q: Can Cowork run Python or shell scripts?
**A:** No. Cowork manipulates files only—it cannot execute code. Use Claude Code for code execution.

### Q: What file formats can Cowork create?
**A:**
- Office: .docx, .xlsx, .pptx
- Document: .pdf, .txt, .md
- Data: .csv, .json
- Web: .html

### Q: Can Cowork create Excel formulas?
**A:** Yes! Cowork can create Excel files with working formulas, multiple sheets, and formatting. Specify your regional setting (US comma vs EU semicolon syntax) in your prompt.

---

## Security

### Q: Is Cowork secure?
**A:** There's no official security documentation yet (research preview). You should:
- Use a dedicated workspace folder
- Never grant access to Documents/Desktop
- Keep credentials out of workspace
- Review every execution plan
- Backup before destructive operations

See [Security Guide](../guide/03-security.md).

### Q: Can Cowork access all my files?
**A:** Only folders you explicitly grant access to. Best practice: create a dedicated `~/Cowork-Workspace/` folder and only grant access there.

### Q: What is prompt injection and should I worry?
**A:** Prompt injection is when malicious content in files tries to manipulate AI behavior. Mitigation:
- Only process files from trusted sources
- Avoid files with instruction-like content
- Review Cowork's plan before approval

### Q: Is my data sent to Anthropic's servers?
**A:** File content is processed by Claude's API, similar to pasting text in chat. No official data retention policy specific to Cowork yet. For sensitive data, consider if cloud AI processing is appropriate.

### Q: Can I use Cowork for confidential business documents?
**A:** Not recommended during research preview. Wait for:
- Official security documentation
- Enterprise features (audit trail, access controls)
- Compliance certifications

---

## Troubleshooting

### Q: Cowork stopped mid-task. What do I do?
**A:**
1. Check output folder for partial results
2. Break the task into smaller pieces
3. Resume with explicit state: "Continue from X, remaining items are Y"

Common causes: context limit, timeout, network issues.

### Q: Can I use Cowork with a VPN?
**A:** **No.** VPN software creates routing conflicts with Cowork's internal VM networking. This is the **#1 reported issue** on r/ClaudeAI.

**Exact error**:
```
Failed to start Claude's workspace — VM connection timeout after 60 seconds
```

**Why it happens**: Cowork runs in a sandboxed virtual machine. VPNs intercept and reroute network traffic at the system level, breaking the host↔VM communication channel.

**Solutions**:
1. **Disconnect VPN completely** before using Cowork
2. If VPN required: Use split tunneling to exclude Claude Desktop
3. Corporate environment: May need to batch Cowork tasks when VPN is off

There's no workaround that keeps VPN active. See [Troubleshooting](../guide/04-troubleshooting.md#vm-connection-issues) for details.

### Q: My Excel formulas show as text or errors.
**A:** Regional syntax issue. Specify in your prompt:
- US/UK: "Use comma separators in formulas"
- EU: "Use semicolon separators in formulas"

### Q: Cowork can't access my folder.
**A:**
1. System Preferences → Security & Privacy → Files and Folders
2. Find Claude Desktop
3. Enable your workspace folder
4. Restart the app if needed

### Q: Chrome integration isn't working.
**A:** Grant additional permissions:
- System Preferences → Security & Privacy → Accessibility → Add Claude
- Ensure Chrome is installed (not Chromium)

### Q: How do I stop a running task?
**A:** Type "Stop" in the chat or close the conversation window.

### Q: My task failed when my computer went to sleep.
**A:** Cowork requires the desktop app to remain open and active. There is:
- No offline mode
- No cross-device sync
- No memory persistence between sessions

**Prevention**: Disable sleep during long tasks. For critical work, break into smaller checkpointed batches that can be resumed.

### Q: What happens during an Anthropic outage?
**A:** Cowork sessions may:
- Show elevated error rates
- Fail tasks that previously worked
- Become unresponsive

**Action**: Check [status.anthropic.com](https://status.anthropic.com), wait for resolution, don't retry repeatedly (wastes quota).

---

## Pricing & Access

### Q: How much does Cowork cost?
**A:** Requires Pro ($20/month) or Max ($100-200/month) subscription. Pro is available now but has tighter usage limits—recommended for light use only.

### Q: Pro or Max—which should I choose?
**A:**
- **Pro ($20/mo)**: Occasional use, light file organization, small batches. Quota exhausts in ~1-1.5 hours intensive use.
- **Max ($100-200/mo)**: Heavy daily use, large batch processing, document-intensive workflows. 5x-20x more usage than Pro.

### Q: Is there a usage limit with Cowork?
**A:** Yes. Usage resets every 5 hours (not daily/monthly). The ~200K token context window is the limit per session. Heavy tasks (file processing, OCR) consume tokens faster than chat.

---

## Technical

### Q: How does Cowork handle multiple files?
**A:** Cowork can spawn sub-agents that work in parallel. Each sub-agent has fresh context and works on part of the task. The main orchestrator assembles results.

### Q: What's the context limit?
**A:** ~200K tokens, roughly:
- 150-500 text pages
- 50-100 typical documents
- 50-100 images (OCR)

### Q: Does Cowork remember across sessions?
**A:** No built-in memory. Workaround: Save context to a file and load it next session.

### Q: Can I automate Cowork with scripts?
**A:** Not currently. Cowork has no API or automation interface (January 2026). For automation, use Claude Code.

---

## Comparison

### Q: When should I use Cowork vs Claude Code?
**A:**
- **Cowork**: File organization, document creation, data extraction—no coding
- **Claude Code**: Software development, shell access, code execution

### Q: When should I use Cowork vs Projects?
**A:**
- **Cowork**: Need to create files, organize folders, batch process
- **Projects**: Just want to chat about documents, brainstorm, write

### Q: When should I just use Chat instead of Cowork?
**A:** Chat (Projects/web) is better for:
- **Reasoning & strategy**: Iterative dialogue, hypothesis testing, nuanced thinking
- **Code development**: Claude Code integration, rapid test cycles
- **Writing & drafting**: Live artifacts, inline iteration
- **Exploratory tasks**: When requirements aren't clear yet
- **Collaboration**: Shareable links, team visibility
- **Mobile/any device**: Zero-install access

**Rule of thumb**: Is the challenge *intellectual* (reason/write/code) or *operational* (organize/automate/batch)? Chat for the first, Cowork for the second. Most users: ~80% Chat, ~20% Cowork.

### Q: Can developers benefit from Cowork?
**A:** Yes, for non-code tasks:
- Organizing documentation
- Creating reports from logs
- Research compilation
- File management

---

## Future

### Q: Is Cowork still in beta?
**A:** It's in "research preview" status as of January 2026. Expect bugs and missing features. Not recommended for production use.

### Q: What features are coming?
**A:** Announced but no dates:
- Windows support (on roadmap)
- Possibly cloud storage integration
- Possibly enterprise features

Note: Linux has no official announcement.

### Q: Will there be an API for Cowork?
**A:** Unknown. Currently Cowork is desktop-only with no automation interface.

### Q: Should I expect breaking changes?
**A:** Yes. Anthropic's research previews have low stability patterns:
- Models deprecated ~6-12 months post-release (60+ day notice)
- UI features get backend changes that may affect workflows
- Behavior may change between updates

**Mitigation**: Don't build critical workflows that depend on Cowork's exact behavior. Have fallback plans. Check r/ClaudeAI and status.anthropic.com for change announcements.

---

## Still Have Questions?

- **Support**: support.anthropic.com
- **Community**: Reddit r/ClaudeAI
- **Feedback**: Claude Desktop app → Feedback option

---

*[Back to Cowork Documentation](../README.md)*
