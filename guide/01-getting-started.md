# Getting Started with Cowork

🌐 **Languages**: [English](01-getting-started.md) | [Français](01-getting-started.fr.md)

> **Reading time**: ~10 minutes
>
> **Goal**: Go from zero to your first successful Cowork workflow

---

## Prerequisites

Before starting, ensure you have:

| Requirement | How to Check |
|-------------|--------------|
| **Eligible paid Claude plan** | Pro, Max, Team or Enterprise. Not the Free plan. Check your plan in Settings |
| **Supported surface** | Claude Desktop on macOS, Windows or Linux (beta), the web, mobile, or the Claude in Chrome side panel |
| **Operating system** | macOS 13 Ventura or later; Windows; Linux (beta) on Ubuntu 22.04+ or Debian 12+. Computer use needs macOS 14 or later |
| **Claude Desktop app** | Applications folder or Spotlight search (macOS) |
| **Latest app version** | See verification steps below ⚠️ |

### ⚠️ Verify You Have the Latest Claude Desktop Version

**Critical**: Cowork requires the latest version of Claude Desktop. Since July 7, 2026, Anthropic merged Chat and Cowork into a single view on web and desktop, and since September 16, 2026 ("Unified Claude", gradual rollout on Pro and Max) you no longer choose between modes at all: Claude decides whether your request is a quick answer or a task to carry out. What you see at the top of the app depends on which build you're running.

**How to verify:**

1. Open Claude Desktop app
2. Look at the top of the sidebar.
   - **Build from July 2026 or later**: Chat and Cowork share one combined view instead of separate tabs, so there is no "Cowork" entry to look for. With Unified Claude, there is no mode to pick either: you just describe what you want.
   - **Older build**: you should see three separate modes:
     ```
     Chat    Cowork    Code
     ```
     If "Cowork" isn't listed, your version predates the feature.
3. Either way, if Cowork isn't available, update your app:
   - Go to Claude Desktop menu → **Check for Updates**
   - Or download the latest version from [claude.ai/download](https://claude.ai/download)

> **Official Documentation**: For additional help, see [Anthropic's Getting Started with Cowork guide](https://support.claude.com/en/articles/13345190-getting-started-with-cowork)

### Subscription and availability

Cowork is available on the **Pro, Max, Team and Enterprise** plans, not on the Free plan. One Anthropic installation page still ticks Cowork under Free: that is an inconsistency on Anthropic's side, so do not count on Cowork with a Free account. Consult Anthropic's current [Cowork availability guidance](https://support.claude.com/en/articles/13345190-get-started-with-cowork) for details.

Prices on claude.com/pricing on October 11, 2026 (US dollars, excluding tax; no euro price is published):

| Plan | Price |
|------|-------|
| **Free** | $0 (no Cowork) |
| **Pro** | $20/month, or $200/year (about $17/month) |
| **Max** | From $100/month (5x or 20x the Pro usage) |
| **Team** | Standard $20/seat/month billed annually ($25 monthly); Premium $100 ($125 monthly); 2 to 150 people |
| **Enterprise** | $20/seat/month billed annually, plus usage at API rates |

Paid plans have a rolling 5-hour limit and weekly limits. On Pro and Max, "usage credits" let you continue at API rates. Max and Team also include monthly API credits (Max 5x $100, Max 20x $200, Team up to $500 pooled).

### Where your tasks run

Since October 6, 2026, new Cowork tasks on **Pro and Max** run in the cloud (a temporary isolated environment on Anthropic's servers). The option "Only on your computer" in Settings > General no longer exists, with no way back. In practice:

- **Your folders stay on your computer.** A cloud session reaches them only for the folders you connected, and only while **Claude Desktop is open**. The files Claude reads are processed on Anthropic's servers.
- **Scheduled tasks created from now on run in the cloud**, so your computer no longer needs to be switched on.
- Tasks you started on your computer before October 6, 2026 stay there until they finish.

On **Team**, cloud execution is in beta and on by default. On **Enterprise**, it is in beta and off by default until an owner turns it on.

### Install Claude Desktop

| System | How |
|--------|-----|
| **macOS** (13 Ventura or later) | Download from [claude.ai/download](https://claude.ai/download) |
| **Windows** | Download from [claude.ai/download](https://claude.ai/download) |
| **Linux** (beta; Ubuntu 22.04+ or Debian 12+) | Install through `apt`, following the commands on Anthropic's [installation page](https://support.claude.com/en/articles/10065433-install-claude-desktop). No automatic update, no computer use, no dictation |

One Anthropic help page still lists macOS 11 as the minimum. The Claude Desktop changelog says macOS 13 Ventura since v1.49585.0 (September 8, 2026): use macOS 13.

### Don't Have Access?

| Situation | Action |
|-----------|--------|
| Free plan | Cowork needs Pro, Max, Team or Enterprise |
| Plan or surface unavailable | Check current Anthropic availability guidance |
| macOS older than 13 | Update macOS, or use the web or mobile surface |
| Linux | Install the Claude Desktop beta (Ubuntu 22.04+ or Debian 12+) if it fits your environment |

---

## Step 1: Enable Cowork

### 1.1 Open Settings

1. Launch **Claude Desktop** app
2. Click your **profile icon** (top right)
3. Select **Settings**

### 1.2 Enable the Feature

1. Navigate to **Features** section
2. Find **Cowork** toggle
3. Enable it

> **Note**: The exact location may vary slightly as the app is updated. On recent builds, Cowork is part of every conversation, so you may find no separate toggle at all; this guide has not re-checked the exact wording of that Settings screen.

### 1.3 Verify Activation

After enabling, you should see:
- Cowork's capabilities reachable from any conversation, with no mode to choose (Unified Claude, since September 16, 2026)
- Or the combined Chat and Cowork view (builds from July 2026)
- Or a new "Cowork" option in a separate mode selector, on older builds

---

## Step 2: Create Your Workspace

**Critical**: Never grant Cowork access to Documents, Desktop, or home folder directly.

### 2.1 Create Dedicated Folder

Open Terminal and run:

```bash
mkdir -p ~/Cowork-Workspace/{input,output}
```

This creates:
```
~/Cowork-Workspace/
├── input/    # Files you want processed
└── output/   # Where Cowork puts results
```

### 2.2 Grant Folder Access

1. Start a new conversation and describe a task that needs your files
2. When prompted for folder access, navigate to `~/Cowork-Workspace/`
3. Grant access **only** to this folder

> **Cloud sessions**: on Pro and Max, the task itself runs in the cloud, but the folder stays on your computer. Keep Claude Desktop open so the session can reach it.

### 2.3 Verify Access

Ask Cowork:
```
List the contents of my workspace folder
```

Expected response: Shows `input/` and `output/` directories.

---

## Step 3: Your First Workflow

Let's do a simple but complete workflow to verify everything works.

### 3.1 Prepare Test Files

Create some test files in your input folder:

```bash
cd ~/Cowork-Workspace/input

# Create sample files
echo "Meeting notes from Monday" > meeting-monday.txt
echo "Meeting notes from Wednesday" > meeting-wednesday.txt
echo "Project status update" > project-status.txt
echo "Random thoughts" > misc-notes.txt
```

### 3.2 Run Your First Task

In a new conversation, enter:

```
Organize the files in ~/Cowork-Workspace/input/ into subfolders
by category. Create a summary of what you organized in the output folder.
```

### 3.3 What Should Happen

1. **Plan display**: Cowork shows its intended actions
2. **Your approval**: You review and approve the plan
3. **Execution**: Cowork reorganizes files
4. **Report**: Creates summary in output folder

**Choose an approval mode for this first task.** The three modes (names as of October 11, 2026):

| Mode | What happens | Previous name |
|------|--------------|---------------|
| **Manual** | Claude waits for your Allow or Deny at every request. Best choice for a first task | "Ask before acting" |
| **Auto** | Claude moves on without asking at each step, but every action is checked: a dangerous action is blocked and Claude looks for another way or asks you. Uses more of your usage limit | none |
| **Skip all approvals** | No pause and no automatic checking of actions | "Act without asking" |

On Team and Enterprise, an administrator may restrict these modes. Start with Manual until you trust the results.

### 3.4 Verify Results

Check the result:

```bash
ls -la ~/Cowork-Workspace/input/
ls -la ~/Cowork-Workspace/output/
```

You should see:
- Organized subfolders in `input/`
- A summary file in `output/`

---

## Step 4: Understanding the Workflow

### The Cowork Cycle

Every Cowork task follows this pattern:

```
┌─────────────────────────────────────────────────────┐
│                   YOUR REQUEST                       │
│     "Organize my files by category"                 │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   ANALYSIS                           │
│     Cowork examines your files                      │
│     Identifies patterns and categories              │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   PLAN PROPOSAL                      │
│     "I will create 3 folders and move X files..."   │
│     ⚠️ YOU REVIEW THIS BEFORE EXECUTION              │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│               YOUR APPROVAL                          │
│     "Yes, proceed" or "No, modify the plan"         │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   EXECUTION                          │
│     Cowork performs the approved actions            │
└─────────────────────┬───────────────────────────────┘
                      ↓
┌─────────────────────────────────────────────────────┐
│                   REPORT                             │
│     Summary of what was done                        │
└─────────────────────────────────────────────────────┘
```

### Key Points

1. **Always review the plan** : This is your safety checkpoint
2. **Be specific** : Vague requests lead to unexpected results
3. **Start small** : Test with few files before large batches
4. **Check results** : Verify output before proceeding

---

## Step 5: The CTOC Framework

Power users structure every Cowork prompt with four components:

```
CONTEXT → TASK → OUTPUT → CONSTRAINTS
```

### The Framework

| Component | What it is | Example |
|-----------|------------|---------|
| **C**ontext | Background, files, situation | "I have 50 receipts from a business trip to Paris..." |
| **T**ask | Clear single objective | "Extract all expenses into a spreadsheet" |
| **O**utput | Exact format and location | "Save as ~/Cowork-Workspace/output/paris-expenses.xlsx" |
| **C**onstraints | Rules, limits, preferences | "Use EUR currency, semicolon formulas, categorize by type" |

### CTOC Example

```
CONTEXT: I have meeting notes from the past month in ~/Cowork-Workspace/input/notes/.
They're from different team members with inconsistent formatting.

TASK: Create a consolidated status report from these notes.

OUTPUT: Save as ~/Cowork-Workspace/output/team-status-january.docx
with sections: Executive Summary, Progress by Project, Blockers, Next Steps.

CONSTRAINTS: Keep under 3 pages. Focus on actionable items.
Highlight any risks mentioned.
```

### Quick Patterns

| Pattern | Example |
|---------|---------|
| **Be explicit** | ✅ "files in ~/Cowork-Workspace/input/" not ❌ "my files" |
| **Specify output** | ✅ "save to ~/output/report.docx" not ❌ "create a report" |
| **Describe format** | ✅ "columns: Date, Amount, Category" not ❌ "make a spreadsheet" |
| **Add constraints** | ✅ "use European formula syntax" |

### Break Down Complex Tasks

Instead of:
```
❌ "Process all my receipts, create expense reports, and organize by month"
```

Do this:
```
✅ Step 1: "List all receipt files in ~/Cowork-Workspace/input/"
✅ Step 2: "Extract expense data from these receipts into a single Excel file"
✅ Step 3: "Add monthly summary sheets to the Excel file"
```

This batching approach also optimizes token usage (see [Cheatsheet](../reference/cheatsheet.md) for token budgets).

---

## Step 6: Personalize Your Profile (Optional)

Create a personal profile file so Cowork knows your preferences and communication style.

### 6.1 Create Your Profile File

In your workspace, create `my-profile.md`:

```markdown
# My Communication Profile

## Tone & Style
- Formal (use "vous" with clients) / Casual (use "tu")
- Concise bullet points preferred
- No jargon or anglicisms

## Things I NEVER Do
- Use exclamation marks in emails
- Promise specific deadlines
- Skip the greeting

## Default Signature
Best regards,
[Your Name] - [Company]
```

### 6.2 Use Your Profile

Start each conversation with:
```
Read my-profile.md first. Then [your actual request]
```

**Example**:
```
Read my-profile.md first. Then draft a follow-up email to a client
who hasn't responded to our quote in 2 weeks.
```

### 6.3 Benefits

| Benefit | Why It Matters |
|---------|----------------|
| **Consistent voice** | All outputs match your style |
| **Time savings** | No need to repeat preferences |
| **Team alignment** | Share the file with colleagues |
| **Portable** | Same file works with other AI tools |

> **Tip**: 80% of an effective profile is what you *don't* want. Focus on constraints and anti-patterns.

---

## Step 7: Chrome Integration (Optional)

Cowork has two ways to browse the web, and both stay under your control:

- **The built-in browser in Claude Desktop** (macOS, Windows, Linux beta). It is separate from your personal browser: Claude does not see your saved passwords unless you import them on purpose, and the sign-ins you make there stay available for later Cowork sessions on this computer. Claude Desktop must be open and online, even for a cloud session started from the web or your phone.
- **Claude in Chrome**. Opening its side panel starts a Cowork session (Max and Team; rolling out on Pro; Enterprise if an administrator enabled it).

When a task needs a service, Claude prefers a connector first, then a browser, then screen control.

### Enable Chrome Access

1. When Cowork requests Chrome permission, review carefully
2. Grant only for specific research tasks
3. Revoke after task completion

### Example Web Research Task

```
Research the top 5 project management tools for small teams.
Save your findings to ~/Cowork-Workspace/output/pm-tools-research.md
with a comparison table.
```

### Security Note

- Review each web action Cowork proposes
- Don't let Cowork fill forms or make purchases
- Revoke Chrome access when not needed

---

## Step 8: Install Desktop Commander (Recommended)

Desktop Commander is a free official extension that expands what Cowork can do. Most users benefit from it, especially for recurring work.

### What Desktop Commander Enables

| Capability | Without Desktop Commander | With Desktop Commander |
|-----------|--------------------------|----------------------|
| **File access** | The folders you grant to Cowork | Any folder you authorize through the extension |
| **Memory between sessions** | Claude's built-in memory (Settings > Memory) works in cloud sessions; local Cowork sessions do not use memory | A `memory.md` file that you control, readable in any session |
| **MCP server setup** | Manual, technical | One-click install |

### Installation

1. Open Claude Desktop → **Customize** tab (or Settings → Extensions)
2. Find **Desktop Commander** in the list
3. Click **Install**
4. Restart Claude Desktop when prompted

Takes under 2 minutes. No technical knowledge required.

### Set Up Your Memory File

Once Desktop Commander is installed, create a persistent memory file so Cowork remembers your context between sessions:

1. Create `~/Cowork-Workspace/memory.md`
2. Add your recurring context, here's a starting template:

```markdown
# My Cowork Memory

## Business Context
- Business type: [your type: consulting, retail, trades, etc.]
- Primary file formats: [Word, Excel, PDF, etc.]

## Client Preferences
- Client Dupont: formal tone, PDF invoices preferred
- Client Martin: needs itemized quotes with separate labor/materials

## Things I Never Do
- Use exclamation marks in client emails
- Promise specific delivery dates without checking first

## Recurring Tasks
- Weekly: [what you compile or report each week]
- Monthly: [what you do at month end]
```

3. Start future sessions with: "Read ~/Cowork-Workspace/memory.md first. Then [your actual request]"

### Why This Matters

Without a memory file, you'd repeat preferences and context at the start of every session. With it, Cowork picks up where you left off, knowing your clients, your style, and your recurring work patterns.

> **Note**: Desktop Commander is available via the Customize tab in Claude Desktop. If you don't see it immediately, check Settings → Extensions.

---

## Step 9: Enable Computer Use (Beta)

Computer Use lets Claude control your desktop directly (open apps, click, fill forms and navigate the browser) when it is available for your eligible plan and surface.

> **Note**: Computer Use launched as a research preview on March 23, 2026. Anthropic's help page now presents it as **a beta for Pro and Max plans**, on **macOS 14 or later** and Windows. It is not available on Team, Enterprise or Linux. On macOS, Claude can work in the background from macOS 15, and it no longer edits hidden files in your home folder such as `~/.aws` or `~/.vimrc` (October 6, 2026). Follow Anthropic's current [computer-use guidance](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork) and use it for supervised tasks where you can review each action. The heading of this step keeps its former name so that existing links still work.

### 9.1 Enable in Claude Desktop

1. Open **Claude Desktop**
2. Go to **Settings → Features → Computer Use**
3. Toggle it **on**
4. Confirm the permission dialog

### 9.2 Grant macOS System Permissions

Claude needs two system permissions to control your screen:

**Screen Recording** (required to see your screen):
1. Open **System Settings → Privacy & Security → Screen Recording**
2. Find **Claude Desktop** in the list
3. Toggle it on (if it doesn't appear, click `+` and add it manually)

**Accessibility** (required to click and type):
1. Open **System Settings → Privacy & Security → Accessibility**
2. Find **Claude Desktop** in the list
3. Toggle it on

### 9.3 (Optional) Pair Your Phone with Dispatch

To send tasks to your desktop from your phone while you're away:

1. Open **Claude for iOS or Android**
2. In the Cowork thread, tap **Pair Desktop**
3. Scan the **QR code** shown in your Claude Desktop app
4. Your phone is now connected. Send tasks remotely from anywhere.

> **Requirements**: Mac must stay awake with Claude Desktop open, since Dispatch pairs your phone to that desktop session to run tasks on your computer while you're away. Cowork on web and mobile (beta since July 7, 2026) offers an alternative for tasks that do not need your computer: since October 6, 2026, new Pro and Max tasks run in the cloud by default. A cloud session still needs Claude Desktop open to reach your connected folders and the built-in browser.

### Security Notes for Computer Use

- Claude requests **explicit permission per task** before accessing a new application
- Anthropic recommends **not granting access to sensitive apps** (banking, health, legal)
- Claude is trained to **refuse**: stock trading, saving sensitive credentials, scraping facial images
- **Token cost is higher** than standard Cowork: every action cycle requires a screenshot

---

## Troubleshooting First Run

### "Cannot access folder"

1. Go to System Preferences → Security & Privacy → Files and Folders
2. Find Claude Desktop
3. Ensure your workspace folder is listed and enabled

### "Cowork option not visible"

**Most common cause**: Outdated app version.

1. **Verify your version** : See [Prerequisites](#️-verify-you-have-the-latest-claude-desktop-version) above
2. On builds from July 2026 or later, Chat and Cowork share a single view instead of separate tabs, and with Unified Claude (September 16, 2026) there is no mode to select; on older builds, if you don't see "Chat | Cowork | Code" at the top, update your app
3. Check you are on Pro, Max, Team or Enterprise: the Free plan does not include Cowork
4. After updating, check Settings → Features → ensure Cowork is enabled (if that toggle exists on your build)
5. Restart the app

### "Claude cannot see my folder in a cloud session"

1. Check that **Claude Desktop is open** on the computer that holds the folder
2. Check that the folder is among the folders you connected

### "Plan seems wrong"

1. **Don't approve** the plan
2. Say "Stop. Let me clarify: [your clarification]"
3. Cowork will revise its plan

### "Incomplete results"

1. Check if Cowork showed any errors
2. Try breaking the task into smaller steps
3. Verify folder permissions

---

## Next Steps

You're now ready to:

1. **[Explore Capabilities](02-capabilities.md)** : Learn what Cowork can do
2. **[Review Security](03-security.md)** : Safe usage practices
3. **[Try Workflows](../workflows/)** : Step-by-step tutorials
4. **[Use Ready Prompts](../prompts/)** : Copy-paste templates

---

## Quick Reference Card

| Action | How |
|--------|-----|
| **Start Cowork** | New conversation → describe the task (no mode to select since September 16, 2026) |
| **Choose approvals** | Manual (first tasks), Auto, or Skip all approvals |
| **Grant access** | Browse to ~/Cowork-Workspace/ when prompted |
| **Review plan** | Read each step before saying "proceed" |
| **Stop execution** | Type "Stop" or close the conversation |
| **Check results** | Always verify output folder after tasks |

---

*[← Overview](00-overview.md) | [Cowork Documentation](../README.md) | [Capabilities →](02-capabilities.md)*
