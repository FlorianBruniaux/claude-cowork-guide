# Set Up Persistent Memory

🌐 **Languages**: [English](memory-setup.en.md) | [Français](memory-setup.md)

> **Category**: Organization | **Difficulty**: Beginner | **Setup Time**: 15 min

---

## Goal

Stop repeating yourself. Without configuration, you re-explain your preferences, clients, and work habits at the start of every Cowork session. With a memory.md file and Desktop Commander, Cowork knows all of this automatically.

## Prerequisites

- Cowork active (Pro or Max subscription)
- Claude Desktop installed and up to date
- 15 minutes for initial setup

---

## Steps

### Step 1: Install Desktop Commander

Desktop Commander is the official extension that enables persistent memory.

1. In Claude Desktop, open the **Customize** tab (main navigation)
2. Find **Desktop Commander** in the extensions list
3. Click **Install**
4. Restart Claude Desktop when prompted

> See [Getting Started Step 8](../guide/01-getting-started.md#step-8-install-desktop-commander-recommended) for details.

### Step 2: Create memory.md

1. In Finder, navigate to `~/Cowork-Workspace/`
2. Create a new text file named `memory.md`
3. Open it with TextEdit or any text editor

### Step 3: Fill In Your Memory

Copy the template for your business type (see next section) and adapt it to your situation.

Start simple, 5-10 lines is enough to begin. You'll enrich it over time.

### Step 4: Test That It Works

Open a new Cowork session and type:

```
Read ~/Cowork-Workspace/memory.md and summarize what you know about my business.
```

If Cowork accurately describes your context, the setup worked.

### Step 5: Use It Every Session

From now on, start each conversation with:

```
Read ~/Cowork-Workspace/memory.md first. Then [your actual request]
```

---

## Templates by Business Type

### Tradesperson (plumber, electrician, builder, carpenter)

```markdown
# Cowork Memory — [First Last], [Trade]

## My Business
- Trade: [your trade]
- Service area: [cities/regions]
- Team: [solo / X employees]

## Regular Clients
- Dupont family ([city]): 1970s apartment, always needs itemized quotes, pays in 30 days
- Martin Real Estate Agency: turnover work between tenants, invoice end of month
- Mr. Bernard: main residence, very demanding, confirm everything in writing

## Quote & Invoice Standards
- Quote format: labor and materials listed separately, VAT shown clearly
- Payment terms: 30% upfront, balance on completion
- Quote validity: 3 months

## Things I Never Do
- Promise a date without checking the schedule first
- Send an invoice without cross-checking the site log
- Use technical jargon in client documents

## Recurring Supplies
- Primary supplier: [name, contact]
- Common materials/references: [list]
```

### Retail (shop, grocery, wholesale, bookstore)

```markdown
# Cowork Memory — [Shop Name]

## My Business
- Type: [description]
- Floor area: [sqm] | Staff: [number]
- Primary customers: [profile]

## Key Suppliers
- [Supplier A]: 3-week lead time, €500 minimum order, contact [name]
- [Supplier B]: 48h delivery, no minimum

## Top Products (always keep in stock)
- [Product 1]: ref [X], reorder threshold [Y]
- [Product 2]: ref [X], reorder threshold [Y]

## Key Periods
- Peak season: [months], order inventory 6 weeks in advance
- Sales: [usual dates], max discount authorized: [%]
- Annual closure: [period]

## Preferred Document Formats
- Purchase orders: Excel with automatic VAT calculation
- Supplier letters: Word, plain professional tone
- Internal reports: PDF

## Things I Never Do
- Order without checking current stock first
- Promise a product not confirmed by the supplier
```

### Professional Services (consultant, accountant, coach, lawyer, agency)

```markdown
# Cowork Memory — [First Last], [Profession]

## My Business
- Specialty: [your field]
- Client type: [typical profile]
- Pricing: [day rate / retainer / project-based]

## Active Clients
- [Client A]: monthly consulting, deliverable end of each month, formal Word reports
- [Client B]: transformation project, bilingual FR/EN documents, monthly board presentation
- [Client C]: ad hoc work, invoice at milestones, long-standing client since [year]

## Templates & Processes
- Proposal: see ~/Cowork-Workspace/templates/proposal.docx
- Progress report structure: Done / In Progress / Next Steps / Attention Points
- Meeting notes: 3 sections = Decisions / Actions (who/what/when) / Information

## Tone & Style
- Clients: formal register, accessible language (avoid jargon)
- Internal: casual tone OK, concise
- Emails: always open with a greeting, sign with full signature

## Invoicing
- Terms: 30 days net from invoice date
- Payment reminders: Day +35 (polite) / Day +45 (firm)
- Currency: USD/EUR, two decimal places
```

---

## Universal Template (if you don't know where to start)

```markdown
# My Cowork Memory

## My Business
- Sector: [your sector]
- Size: [solo / SMB / team of X]

## Recurring Context
- [Information 1 you often repeat]
- [Information 2]
- [Information 3]

## My Preferences
- Tone: [formal / casual]
- Favorite formats: [Word / Excel / PDF]
- Things I never do: [list]

## Important Notes
- [Note 1]
- [Note 2]
```

---

## Usage Tips

**Start with 5-10 lines.** A short memory.md is better than a complex one you never keep up to date. Add information as you notice what you keep repeating session after session.

**Update regularly.** If a client preference changes, a supplier shifts, or your payment terms evolve, update the file. Outdated information in memory.md can cause errors.

**Share with a colleague if relevant.** If a partner or assistant also uses Cowork, a shared memory.md (same file, same workspace) keeps output consistent across sessions.

**Test monthly.** Once a month, ask Cowork to summarize what it knows about your business. This confirms the file is being read and reminds you what it contains.

---

*[← Workflows](README.md) | [Set Up Memory →](scheduled-automation.en.md)*
