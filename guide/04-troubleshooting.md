# Cowork Troubleshooting Guide

🌐 **Languages**: [English](04-troubleshooting.md) | [Français](04-troubleshooting.fr.md)

> **Reading time**: ~8 minutes
>
> **Purpose**: Diagnose and resolve common Cowork issues

---

## Diagnostic Decision Tree

Use this flowchart to identify your issue:

```
What's happening?
│
├─ Cowork won't start or isn't visible
│   └─ Go to: § SETUP ISSUES
│
├─ "VM connection timeout" or "workspace failed"
│   └─ Go to: § VM & CONNECTION ISSUES (VPN likely cause)
│
├─ Cowork can't access my files
│   └─ Go to: § PERMISSION ISSUES
│
├─ Task stops mid-execution or "context limit"
│   └─ Go to: § EXECUTION ISSUES
│
├─ Output is wrong or unexpected
│   └─ Go to: § OUTPUT ISSUES
│
├─ Browser/Chrome integration problems
│   └─ Go to: § BROWSER ISSUES
│
├─ Option missing, macOS too old, computer use unavailable, message sent during a reply, 5-hour limit
│   └─ Go to: § CHANGES SINCE SEPTEMBER 2026
│
└─ Something else
    └─ Go to: § GENERAL TROUBLESHOOTING
```

---

## Known Error Messages (Quick Reference)

| Error Message | Likely Cause | Quick Fix |
|--------------|--------------|-----------|
| `Failed to start Claude's workspace — VM connection timeout after 60 seconds` | VPN active | Disconnect VPN → retry |
| `Chrome native messaging host not found` | Extension mismatch | Manual host installation (see below) |
| `Context limit reached` (at ~165K, not 200K) | System overhead | Break task into smaller batches |
| `Access denied — path outside allowed directories` | Folder not granted | Re-grant folder access |
| `Session terminated unexpectedly` | Sleep/background | Keep app foreground, disable sleep |
| `Cannot connect to Chrome` | Permissions missing | Grant Accessibility permission |
| Cowork cannot reach files after a Windows update (September 8, 2026) | Known Windows issue, resolved September 14, 2026 | Install the Microsoft fix for your Windows version (see below) |

---

## Setup Issues

### Cowork Option Not Visible

**Symptoms**:
- No Cowork mode in conversation selector
- Feature toggle missing in settings

**Note**: since September 16, 2026, Anthropic is rolling out "Unified Claude" gradually to Pro and Max accounts (web, desktop, mobile). There is no Chat or Cowork mode to choose: Claude decides whether a request is a quick answer or a task. If your account already has it, a missing selector is expected. Separate Chat and Cowork tabs had already disappeared on July 7, 2026. Source: support.claude.com release notes + claude.com/docs/cowork/changelog.

**Solutions**:

| Step | Action |
|------|--------|
| 1 | **Check subscription**: Cowork needs Pro, Max, Team or Enterprise. It is not part of the Free plan (see [FAQ](../reference/faq.md#q-is-cowork-free)) |
| 2 | **Update app**: Claude Desktop → Check for Updates. Since September 8, 2026 the app needs macOS 13 (Ventura) or newer |
| 3 | **Restart app**: Quit completely (Cmd+Q on macOS, Alt+F4 on Windows), relaunch |
| 4 | **Check region**: Some features may have regional rollout |
| 5 | **Clear cache**: macOS: Delete `~/Library/Application Support/Claude/` and restart. Windows: Delete `%APPDATA%\Claude\` and restart |

### "Cowork is not available"

**Symptoms**:
- Error message when trying to enable
- Feature grayed out

**Solutions**:
- Verify your Pro, Max, Team or Enterprise subscription is active (claude.ai → Settings). On Team and Enterprise, Cowork in the cloud is a beta: it is on by default on Team and off by default on Enterprise until an owner turns it on
- Wait 24h after subscription upgrade
- Contact support if persists after 48h

### App Crashes on Cowork Launch

**Symptoms**:
- App closes unexpectedly
- Spinning beach ball

**Solutions**:

**macOS:**
```bash
# Check crash logs
open ~/Library/Logs/DiagnosticReports/

# Reset app preferences (caution: loses settings)
rm -rf ~/Library/Preferences/com.anthropic.claude.plist

# Reinstall app
# Download latest from claude.ai
```

**Windows:**
```powershell
# Check crash logs
explorer %LOCALAPPDATA%\CrashDumps

# Reset app preferences (caution: loses settings)
rmdir /s /q "%APPDATA%\Claude"

# Reinstall app
# Download latest from claude.ai
```

---

## Changes since September 2026

Sources for this section: claude.com/docs/cowork/changelog and support.claude.com, read on October 11, 2026.

### "I can't find the Only on your computer option anymore"

**Why**: on October 6, 2026, Anthropic removed the "Only on your computer" option from Settings > General for Pro and Max. New Cowork tasks now run in the cloud (on Anthropic's servers, in a temporary isolated environment). An account still set to local switches at the next launch of Claude Desktop, with a notice, and there is no way back.

**What stays the same**:
- Your folders stay on your computer. A cloud session only reaches the folders you connected, and only while Claude Desktop is open.
- The files Claude reads are processed on Anthropic's servers.
- Tasks started on your computer before October 6, 2026 stay local until they finish.
- Local Cowork sessions do not use memory.

On Team, Cowork in the cloud is a beta, on by default. On Enterprise it is a beta, off by default, and an owner must turn it on.

### "Computer use is unavailable"

Open the Computer use section of Settings: since the app update of October 1, 2026 (v2.19675.0) it says why. The usual reasons:

| Reason | Detail |
|--------|--------|
| macOS too old | Computer use needs macOS 14 or newer. Working in the background needs macOS 15 or newer |
| Plan | Beta for Pro and Max only. Not available on Team or Enterprise |
| System | Available on macOS and Windows. Not on Linux |

Since October 6, 2026 (macOS), computer use no longer edits hidden files in your home folder, such as `~/.vimrc` or `~/.aws`. If a task needs one, change it yourself. Source: support.claude.com/en/articles/14128542.

### "The app won't install on macOS 12"

Claude Desktop needs macOS 13 (Ventura) or newer since version 1.49585.0 (September 8, 2026, move to Electron 44). On macOS 12 or older, update macOS first. The installation page on support.claude.com still shows an older minimum (macOS 11): follow the changelog, which is more recent. Source: claude.com/docs/cowork/changelog.

### Windows: Cowork cannot reach my files (resolved)

**What happened**: a Windows update released on September 8, 2026 (including KB5124008) stopped Cowork from reaching files when it ran on the PC. Tasks failed or the workspace did not start. Anthropic reported the issue on September 10 and it was resolved on September 14, 2026.

**Who was affected**: local sessions and third-party deployments only. Cloud sessions and Claude Code were not affected.

**Fix**: install the Microsoft update that matches your Windows version:

| Windows version | Update |
|-----------------|--------|
| Windows 11 24H2 and 25H2 | KB5129195 |
| Windows 11 23H2 | KB5129242 |
| Windows 10 21H2 and 22H2 | KB5129236 |

No Claude Desktop update is needed, and restarting or reinstalling Claude does not help. Source: claude.com/docs/cowork/changelog, notices "Known issue" and "Resolved: Cowork on Windows".

### ChromeOS: Cowork does not work

Cowork does not run on systems that cannot provide the virtualization its isolated environment needs, ChromeOS included. Since July 7, 2026 (v1.19367.0), it no longer offers terminal access or an impossible fix suggestion there, where every command used to fail immediately. Use Windows, macOS or Linux (beta) instead.

### "The built-in browser does not work from the web or my phone"

The built-in browser lives in Claude Desktop (macOS, Windows, Linux beta). A cloud session started from the web or mobile uses it too, so **Claude Desktop must be open and online on your computer**. Check that:
1. Claude Desktop is running and connected to the internet.
2. Your plan includes it: Pro, Max and Team, or Enterprise if an owner turned it on.
3. You are not expecting your personal browser: the built-in browser is separate and does not see your saved passwords unless you import them. Logins made in it stay available for later Cowork sessions on that computer.

Source: support.claude.com/en/articles/16607400 and 13455879.

### I sent a message while Claude was still answering

Since September 10, 2026, a message sent during a reply waits in the conversation. The first waiting message offers **Send now**, which stops the current reply and sends yours next. **Cmd+Enter** (macOS) or **Ctrl+Enter** (Windows) sends it immediately and interrupts the current turn. Source: claude.com/docs/cowork/changelog v1.52386.0.

### The 5-hour limit: waiting messages

Paid plans have a rolling 5-hour limit plus weekly limits. Two changelog entries describe what happens to a message sent once the 5-hour limit is reached:
- September 4-5, 2026 (v1.46388.x): the message waits above the input box instead of failing. You can edit it, cancel it, or send it when the limit resets.
- September 8, 2026 (v1.49585.0): waiting messages are sent automatically at the reset, and stay editable, cancellable or sendable earlier.

Careful: the Claude Desktop changelog lists both entries in its **Code** section, not in its Cowork section. Whether they apply to Cowork is not confirmed. If your message simply fails, wait for the reset, or use usage credits to continue at API rates (Pro and Max).

### "Claude no longer opens by default for my .docx files"

Since version 2.7032.0 (September 22, 2026), Claude no longer becomes the default application for files such as `.md` and `.docx`, and no longer appears in the macOS "Open with" menu for Excel and PowerPoint files. To open a file in Claude, choose "Other…" in the "Open with" menu. This partly reverses the September 2, 2026 change that added Claude to this menu. Source: claude.com/docs/cowork/changelog.

---

## VM & Connection Issues

### "VM Connection Timeout" (network diagnosis)

**Exact Error**:
```
Failed to start Claude's workspace — VM connection timeout after 60 seconds
```

**Possible cause, not a universal diagnosis**: corporate networking, VPN software, endpoint security, or a temporary service issue may interfere with workspace initialization. Anthropic does not document one universal VPN failure mode, so record the exact error before changing network controls.

**Solutions**:

| Priority | Action |
|----------|--------|
| 1 | Restart Claude Desktop and retry once |
| 2 | Check Anthropic service status and your organization's network policy |
| 3 | If policy permits, compare with another trusted network to isolate the cause |

**Why it may happen**:
Cowork uses an isolated execution environment. Network controls can affect connectivity, but a timeout alone does not identify the cause.

**Workaround for VPN-Required Environments**:
1. Do not bypass mandatory corporate controls.
2. Capture the exact error and time.
3. Ask your administrator whether Claude traffic is allowed.
4. Escalate to Anthropic support if the failure persists.

### "Workspace Failed to Initialize"

**Symptoms**:
- Cowork mode available but fails on first task
- Spinning indefinitely then error

**Solutions**:
1. Restart Claude Desktop completely (Cmd+Q on macOS, Alt+F4 on Windows)
2. Check for OS updates (VM requires specific APIs)
3. Ensure 4GB+ free RAM
4. macOS: Try in Safe Mode (hold Shift during boot). Windows: Try clean boot (msconfig → Selective startup)

---

## Permission Issues

### "Cannot access folder"

**Symptoms**:
- Cowork says it can't read your workspace
- "Permission denied" errors

**Solutions**:

**Step 1: Check System Permissions**

**macOS:**
1. Open **System Settings** → **Privacy & Security** (macOS 13+)
   *Note: On macOS 12 and earlier, use System Preferences → Security & Privacy*
2. Go to **Privacy** → **Files and Folders**
3. Find **Claude** or **Claude Desktop**
4. Ensure your workspace folder is listed and checked

**Windows:**
1. Right-click the workspace folder → **Properties** → **Security** tab
2. Ensure your user account has Full Control
3. Check that Claude Desktop is not blocked by Windows Defender or antivirus

**Step 2: Re-grant Access**
1. In Cowork, start a new task that needs folder access
2. When prompted, click "Grant Access"
3. Navigate to your workspace folder
4. Select it explicitly

**Step 3: Full Disk Access (Last Resort)**
1. System Settings → Security & Privacy → Privacy
2. Full Disk Access → Add Claude Desktop
3. Restart the app

### Workspace Shows Empty

**Symptoms**:
- Cowork says folder is empty
- Files exist but aren't listed

**Solutions**:
- Verify files are in the exact granted folder (not a subfolder)
- Check file permissions: `ls -la ~/Cowork-Workspace/`
- Try granting access again to refresh

### "Access denied" for Specific Files

**Symptoms**:
- Some files accessible, others not
- Specific file types fail

**Solutions**:
- Check file ownership: `ls -la filename`
- Fix ownership: `sudo chown $(whoami) filename`
- Check if file is locked (Get Info → Locked checkbox)

---

## Execution Issues

### Task Stops Mid-Execution

**Symptoms**:
- Cowork stops responding
- Partial results only
- "Task interrupted" message

**Possible Causes and Solutions**:

| Cause | Solution |
|-------|----------|
| **Context limit** | Break task into smaller batches (see note below) |
| **Timeout** | Keep app active, reduce task scope |
| **App backgrounded** | Keep Claude Desktop in foreground |
| **Network issues** | Check internet connection |
| **File locks** | Close other apps using the files |

### Context Limit Reached Early (Known Bug)

**Symptoms**:
- "Context limit reached" appears at ~165-175K tokens
- Should be 200K but hits limit earlier
- More common with file-heavy tasks

**Why It Happens**:
System overhead (tool definitions, safety instructions, execution logs) consumes ~25-35K tokens before your task even starts. The effective usable context is closer to 165K, not 200K.

**Workarounds**:

| Strategy | Implementation |
|----------|----------------|
| **Batch processing** | Process 10-20 files per session, not 50+ |
| **Fresh session** | Start new conversation to reset context |
| **Progressive output** | Save intermediate results to files |
| **Checkpoint prompts** | "Save progress to checkpoint.txt, continue in new session" |

**Token Budget Reference**:

| Task Type | Estimated Tokens | Sessions (Pro tier) |
|-----------|------------------|---------------------|
| Simple Q&A | 5K-10K | Many |
| File inventory (20 files) | 20K-30K | 6-8 |
| Small file org (10-20 files) | 30K-50K | 3-5 |
| Large file org (50+ files) | 80K-150K | 1-2 |
| Multi-doc synthesis | 50K-100K | 2-3 |
| OCR batch (10+ images) | 60K-100K | 2-3 |

**Recovery**:
```
1. Check ~/Cowork-Workspace/output/ for partial results
2. Review what was completed vs planned
3. Restart with explicit next step:
   "Continue from where you stopped. The following files
   were already processed: [list]. Next, process: [remaining]"
```

### Task Runs Forever

**Symptoms**:
- Progress indicator spinning indefinitely
- No output being generated

**Solutions**:
1. Wait up to 5 minutes for complex tasks
2. Type "Status?" to check progress
3. If no response, start new conversation
4. Break task into smaller pieces

### "Node.js Download" Prompts

**Symptoms**:
- Unexpected download dialog appears
- Asked to install Node.js

**Solutions**:
- This is a known research preview bug
- Cancel the dialog
- Task should continue without it
- Report to Anthropic if it blocks execution

### Session Terminates Unexpectedly

**Symptoms**:
- Task was running, now Cowork is unresponsive
- Progress lost mid-operation
- "Session ended" or similar message

**Common Causes**:

| Cause | Prevention |
|-------|------------|
| **Computer sleep** | Disable sleep during long tasks, or check "Prevent sleep while app is active" |
| **App closed** | Keep Claude Desktop visible, not minimized |
| **Network interruption** | Ensure stable connection for long operations |
| **Usage quota exhausted** | Monitor quota, batch large tasks appropriately |

**Important**: this section describes local sessions. Since October 6, 2026, new Cowork tasks on Pro and Max run in the cloud (see "I can't find the Only on your computer option anymore" above). A cloud task does not need your computer to stay awake, but it only reaches your connected folders while Claude Desktop is open. Tasks started on your computer before October 6, 2026 stay local: for those, the app must remain open and the computer awake, and local sessions do not use memory.

On Team and Enterprise, Cowork in the cloud is a beta. Check with your owner whether it is turned on.

**Recovery**:
1. Restart Claude Desktop
2. Check output folder for partial results
3. Resume manually with explicit continuation prompt
4. For critical tasks, break into smaller checkpointed batches

### Connector Reliability Issues

**Symptoms** (if using Gmail, Drive, or other connectors):
- Connector fails to authenticate
- Tasks fail with vague errors
- Inconsistent results between runs

**Current Status** (January 2026):
- Connector reliability is inconsistent
- Some tasks succeed, others fail without clear pattern
- No official troubleshooting for connectors yet

**Workarounds**:
- Export data locally first, then process with Cowork
- Use Chrome web research as fallback for cloud content
- Retry failed connector tasks (sometimes works on second attempt)
- Report persistent failures to Anthropic

### Outage-Related Errors

**Symptoms**:
- Elevated error rates
- Tasks fail that previously worked
- Multiple users reporting similar issues

**Check Status**:
- Visit [status.anthropic.com](https://status.anthropic.com)
- Check Reddit r/ClaudeAI for community reports

**During Outages**:
- Wait for resolution before retrying
- Don't retry repeatedly (wastes quota)
- Save your work locally

---

## Output Issues

### Excel Formulas Don't Work

**Symptoms**:
- Formulas show as text
- `#NAME?` errors
- Calculations incorrect

**Solutions**:

| Issue | Fix |
|-------|-----|
| **Regional syntax** | Specify in prompt: "Use semicolons for formula separators" (EU) or "Use commas for formula separators" (US) |
| **Formula as text** | Cell may be formatted as text; change to Number format |
| **Missing sheet reference** | Ensure cross-sheet references include sheet name |

**Example Fix Prompt**:
```
The Excel formulas aren't working. Please regenerate the file
using European regional settings (semicolon separators in formulas).
```

### Wrong File Format

**Symptoms**:
- Requested .docx, got .txt
- File won't open in expected application

**Solutions**:
- Be explicit: "Save as Microsoft Word .docx format"
- Check file actually has correct extension
- Try opening with "Open With" to verify format

### Missing Content in Output

**Symptoms**:
- Some input files not included
- Partial data extraction

**Solutions**:
- Check if context limit was hit (ask Cowork)
- Process in smaller batches
- Verify all input files are readable

### OCR/Extraction Errors

**Symptoms**:
- Extracted text is garbled
- Wrong data in fields
- Missing information

**Solutions**:
- Use higher quality images
- Ensure good lighting/contrast in photos
- Specify expected format in prompt
- Review and correct manually

---

## Browser Issues

### Chrome Integration Not Working

**Symptoms**:
- "Cannot access Chrome" error
- Web research fails
- Browser doesn't open

**Solutions**:

**Step 1: Check Chrome Installation**
- Ensure Chrome is installed (not just Chromium)
- Update to latest Chrome version

**Step 2: Grant Chrome Permissions**
1. System Settings → Security & Privacy → Privacy
2. Accessibility → Add Claude Desktop
3. Screen Recording → Add Claude Desktop (if needed)

**Step 3: Test Browser Access**
```
In Cowork: "Open Chrome and search for 'test'"
```

### "Chrome Native Messaging Host Not Found"

**Exact Error**:
```
Chrome native messaging host not found
```
or silently fails with no Chrome interaction.

**Root Cause**: The native messaging host allows Claude Desktop to communicate with Chrome. It may not install correctly during setup.

**Manual Fix**:

```bash
# 1. Find the Claude native messaging manifest
ls ~/Library/Application\ Support/Google/Chrome/NativeMessagingHosts/

# 2. If empty or missing "com.anthropic.claude.json", create it:
mkdir -p ~/Library/Application\ Support/Google/Chrome/NativeMessagingHosts

# 3. Create manifest (adjust path if Claude is installed elsewhere)
cat > ~/Library/Application\ Support/Google/Chrome/NativeMessagingHosts/com.anthropic.claude.json << 'EOF'
{
  "name": "com.anthropic.claude",
  "description": "Claude Desktop Native Messaging Host",
  "path": "/Applications/Claude.app/Contents/Resources/native-messaging-host",
  "type": "stdio",
  "allowed_origins": [
    "chrome-extension://YOUR_EXTENSION_ID/"
  ]
}
EOF

# 4. Restart Chrome and Claude Desktop
```

**Note**: The extension ID varies. Check Chrome extensions (chrome://extensions) to find the Claude extension ID if installed.

**If Still Failing**:
1. Completely uninstall Claude Desktop
2. Delete `~/Library/Application Support/Claude/`
3. Reinstall from claude.ai
4. Re-grant all permissions

### Browser Actions Failing

**Symptoms**:
- Clicks don't register
- Pages don't load
- Forms not filling

**Solutions**:
- Ensure Chrome is in foreground
- Close other Chrome extensions that might interfere
- Try in Chrome incognito mode
- Grant additional accessibility permissions

### Web Research Returns Poor Results

**Symptoms**:
- Irrelevant search results
- Missing expected information
- "Could not find" messages

**Solutions**:
- Be more specific in research requests
- Provide example URLs if you know good sources
- Try breaking research into multiple specific queries

---

## Windows-Specific Issues

### Installation Problems

**Symptoms**:
- Installer fails or hangs
- App doesn't launch after installation

**Solutions**:

| Step | Action |
|------|--------|
| 1 | Run installer as Administrator (right-click → Run as administrator) |
| 2 | Ensure Windows 10 (build 1903+) or Windows 11 |
| 3 | Temporarily disable antivirus during installation |
| 4 | Check Windows Event Viewer for specific error codes |

### PATH and Permission Issues

**Symptoms**:
- "Claude is not recognized" errors
- App launches but cannot access workspace folder
- File operations fail silently

**Solutions**:

1. **Verify installation path**: Check that Claude Desktop is installed in `%LOCALAPPDATA%\Programs\Claude\` or `C:\Program Files\Claude\`
2. **Run as Administrator**: Right-click Claude Desktop → Run as administrator (for initial setup)
3. **Folder permissions**: Ensure your workspace folder is not in a system-protected location (avoid `C:\Windows\`, `C:\Program Files\`)
4. **Controlled Folder Access**: Windows Security → Virus & threat protection → Ransomware protection → Allow Claude through Controlled Folder Access
5. **Firewall**: Ensure Windows Firewall allows Claude Desktop for both private and public networks

### Windows Defender Blocking

**Symptoms**:
- Features blocked or disabled
- Security warnings when running Cowork tasks

**Solutions**:
1. Open **Windows Security** → **Virus & threat protection**
2. Go to **Protection history** and check if Claude was blocked
3. Add Claude Desktop to **Exclusions** if needed (Settings → Virus & threat protection → Manage settings → Exclusions)

### VPN on Windows

The same VPN routing conflict applies on Windows. If you experience VM connection timeouts:
1. Disconnect VPN before launching Cowork
2. If using corporate VPN, check if split tunneling is available
3. Windows-specific: Some VPN clients (e.g., Cisco AnyConnect) may require a full restart after disconnecting

---

## General Troubleshooting

### Cowork Doesn't Understand Request

**Symptoms**:
- Wrong interpretation of task
- Unexpected plan proposed
- Asks clarifying questions that seem off

**Solutions**:
- Be more explicit in your request
- Use the prompt patterns from [Getting Started](01-getting-started.md)
- Break complex tasks into steps
- Provide examples of expected output

**Better Prompt Pattern**:
```
Task: [clear single objective]
Input: [exact folder/files]
Output: [exact format and location]
Constraints: [any limitations]
Example: [what success looks like]
```

### Files in Unexpected State

**Symptoms**:
- Files moved to wrong location
- Unexpected renaming
- Missing files

**Recovery**:
```
1. DON'T let Cowork "fix" without understanding
2. Review manually what changed
3. Restore from backup if needed
4. Restart with clearer instructions
```

**Prevention**:
- Always backup before destructive operations
- Review plans carefully before approval
- Start with small test batches

### Context Confusion Across Tasks

**Symptoms**:
- Cowork references previous task
- Mixed up file handling
- Unexpected behavior

**Solutions**:
- Start new conversation for unrelated tasks
- Clear workspace between different projects
- Be explicit about current context

---

## Reporting Issues

### When to Report

Report to Anthropic when:
- Bugs are reproducible
- Behavior seems clearly wrong
- Data loss occurs
- Security concerns arise

### How to Report

1. **General Support**: support.anthropic.com
2. **Feature Requests**: Claude Desktop app → Feedback
3. **Community**: Reddit r/ClaudeAI

### What to Include

```
- Operating system and version (macOS or Windows)
- Claude Desktop version
- Subscription tier
- Steps to reproduce
- Expected vs actual behavior
- Screenshots if applicable
- Relevant error messages
```

---

## Quick Fixes Summary

| Issue | Quick Fix |
|-------|-----------|
| Can't see Cowork | Update app + restart |
| Permission denied | Re-grant folder access in System Settings |
| Task stops | Break into smaller batches |
| Excel formulas broken | Specify regional syntax in prompt |
| Chrome not working | Grant Accessibility permission |
| Wrong output | Be more explicit in prompt |
| Files missing | Check backup, review what Cowork did |

---

## Prevention Checklist

Before starting any task:

- [ ] Recent backup exists
- [ ] Workspace folder is clean
- [ ] Files are from trusted sources
- [ ] Request is specific and scoped
- [ ] Expected output is clear

---

*[← Security](03-security.md) | [Cowork Documentation](../README.md)*
