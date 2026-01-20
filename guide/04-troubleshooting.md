# Cowork Troubleshooting Guide

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

---

## Setup Issues

### Cowork Option Not Visible

**Symptoms**:
- No Cowork mode in conversation selector
- Feature toggle missing in settings

**Solutions**:

| Step | Action |
|------|--------|
| 1 | **Check subscription**: Must be Pro or Max tier |
| 2 | **Update app**: Claude Desktop → Check for Updates |
| 3 | **Restart app**: Quit completely (Cmd+Q), relaunch |
| 4 | **Check region**: Some features may have regional rollout |
| 5 | **Clear cache**: Delete `~/Library/Application Support/Claude/` and restart |

### "Cowork is not available"

**Symptoms**:
- Error message when trying to enable
- Feature grayed out

**Solutions**:
- Verify Pro or Max subscription is active (claude.ai → Settings)
- Wait 24h after subscription upgrade
- Contact support if persists after 48h

### App Crashes on Cowork Launch

**Symptoms**:
- App closes unexpectedly
- Spinning beach ball

**Solutions**:

```bash
# Check crash logs
open ~/Library/Logs/DiagnosticReports/

# Reset app preferences (caution: loses settings)
rm -rf ~/Library/Preferences/com.anthropic.claude.plist

# Reinstall app
# Download latest from claude.ai
```

---

## VM & Connection Issues

### "VM Connection Timeout" (VPN Issue)

**Exact Error**:
```
Failed to start Claude's workspace — VM connection timeout after 60 seconds
```

**Root Cause**: VPN software creates routing conflicts with Cowork's internal VM networking. This is the **#1 reported issue** on r/ClaudeAI.

**Solutions**:

| Priority | Action |
|----------|--------|
| 1 | **Disconnect VPN completely** before starting Cowork |
| 2 | If VPN required: Use split tunneling to exclude Claude |
| 3 | Try mobile hotspot as workaround |

**Why It Happens**:
Cowork runs in a sandboxed virtual machine. VPNs intercept and reroute network traffic at the system level, breaking the host↔VM communication channel. There's no fix that keeps VPN active.

**Workaround for VPN-Required Environments**:
1. Disconnect VPN
2. Complete Cowork tasks
3. Reconnect VPN
4. Note: Some corporate environments may block this workflow

### "Workspace Failed to Initialize"

**Symptoms**:
- Cowork mode available but fails on first task
- Spinning indefinitely then error

**Solutions**:
1. Restart Claude Desktop completely (Cmd+Q, relaunch)
2. Check for macOS updates (VM requires specific APIs)
3. Ensure 4GB+ free RAM
4. Try in Safe Mode: Hold Shift during macOS boot

---

## Permission Issues

### "Cannot access folder"

**Symptoms**:
- Cowork says it can't read your workspace
- "Permission denied" errors

**Solutions**:

**Step 1: Check System Permissions**
1. Open **System Preferences** → **Security & Privacy**
2. Go to **Privacy** → **Files and Folders**
3. Find **Claude** or **Claude Desktop**
4. Ensure your workspace folder is listed and checked

**Step 2: Re-grant Access**
1. In Cowork, start a new task that needs folder access
2. When prompted, click "Grant Access"
3. Navigate to your workspace folder
4. Select it explicitly

**Step 3: Full Disk Access (Last Resort)**
1. System Preferences → Security & Privacy → Privacy
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

**Important**: Cowork sessions require the desktop app to remain open. There is no:
- Cross-device sync
- Offline mode
- Memory persistence between sessions

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
1. System Preferences → Security & Privacy → Privacy
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
- macOS version
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
| Permission denied | Re-grant folder access in System Preferences |
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
