# Prompts d'Extraction de Données

🌐 **Langues** : [Français](data-extraction.fr.md) | [English](data-extraction.md)

> **15+ prompts prêts à l'emploi pour extraire des données structurées depuis des images, PDFs et documents**

---

## Prompts Reçus & Factures

### 1. Extraction Basique de Reçus

```
Extract expense data from receipt images in ~/Cowork-Workspace/input/receipts/

Create an Excel file with columns:
- Date
- Vendor/Store
- Amount
- Currency
- Category (auto-detect: Food, Transport, Office, etc.)
- Payment Method (if visible)
- Notes

Add a totals row at the bottom.
Save to: ~/Cowork-Workspace/output/expenses.xlsx
```

### 2. Traitement Détaillé de Reçus

```
Process receipts in ~/Cowork-Workspace/input/receipts/ with detailed extraction.

Excel structure:
Sheet 1 - Line Items:
- Receipt ID
- Date
- Vendor
- Item Description
- Quantity
- Unit Price
- Total Price
- Category

Sheet 2 - Summary:
- Total by Category
- Total by Vendor
- Total by Month
- Grand Total

Sheet 3 - Receipt Index:
- Receipt ID
- Filename
- Date
- Vendor
- Total
- Status (complete/partial extraction)

Use [European/US] formula syntax.
Save to: ~/Cowork-Workspace/output/detailed-expenses.xlsx
```

### 3. Extraction de Données de Factures

```
Extract data from invoices in ~/Cowork-Workspace/input/invoices/

Create Excel with:
- Invoice Number
- Invoice Date
- Due Date
- Vendor Name
- Vendor Address
- Subtotal
- Tax Amount
- Total Amount
- Payment Status (if detectable)
- Line Items (separate sheet)

Flag any invoices that couldn't be fully parsed.
Save to: ~/Cowork-Workspace/output/invoice-tracker.xlsx
```

---

## Prompts d'Extraction PDF

### 4. Extraction de Tableaux PDF

```
Extract tables from PDF documents in ~/Cowork-Workspace/input/pdfs/

For each PDF:
- Identify all tables
- Extract to separate Excel sheets
- Preserve table structure and headers
- Note source PDF and page number

Output: One Excel file per PDF
Save to: ~/Cowork-Workspace/output/extracted-tables/
Create index file: ~/Cowork-Workspace/output/table-index.txt
```

### 5. Extraction de Données de Formulaires PDF

```
Extract filled form data from PDFs in ~/Cowork-Workspace/input/forms/

Create a structured output:
- One row per form
- Columns for each form field
- Include filename for reference

Handle variations in form completion (empty fields = blank cell).
Save to: ~/Cowork-Workspace/output/form-data.xlsx
```

### 6. Termes Clés de Contrats PDF

```
Extract key terms from contracts in ~/Cowork-Workspace/input/contracts/

For each contract, identify:
- Parties involved
- Effective date
- Term/Duration
- Renewal terms
- Termination clause summary
- Key obligations
- Payment terms
- Important dates

Create Excel with one row per contract.
Save to: ~/Cowork-Workspace/output/contract-summary.xlsx
```

> 💡 **Note Claude Legal** : Si vous avez accès à Claude Legal (extension Cowork), cette extraction de termes contractuels peut être automatisée avec détection de risques et clauses problématiques supplémentaire. Voir [Extensions & Plugins](../guide/02-capabilities.fr.md#extensions--plugins).

---

## Prompts de Données Image

### 7. Extraction de Cartes de Visite

```
Extract contact information from business card images in ~/Cowork-Workspace/input/cards/

Create Excel with columns:
- Name
- Title
- Company
- Email
- Phone
- Mobile
- Address
- Website
- LinkedIn (if present)
- Source Filename

Save to: ~/Cowork-Workspace/output/contacts.xlsx

Also create a VCF file for import: ~/Cowork-Workspace/output/contacts.vcf
```

### 8. Extraction de Données de Captures d'Écran

```
Extract data from screenshots in ~/Cowork-Workspace/input/screenshots/

Screenshots contain: [describe what - e.g., "software settings", "web forms", "charts"]

Create structured output with:
- Screenshot filename
- Type of content
- Extracted text/data
- Key values identified

Save to: ~/Cowork-Workspace/output/screenshot-data.xlsx
```

### 9. Extraction de Notes Manuscrites

```
Extract text from handwritten note images in ~/Cowork-Workspace/input/notes/

Create a document with:
- Source image filename
- Extracted text (best interpretation)
- Confidence notes (unclear sections marked)
- Date if visible

Format: Word document
Save to: ~/Cowork-Workspace/output/transcribed-notes.docx
```

---

## Prompts de Données Structurées

### 10. Nettoyage et Standardisation CSV

```
Clean and standardize CSV files in ~/Cowork-Workspace/input/csv-files/

Operations:
- Standardize date formats to YYYY-MM-DD
- Trim whitespace from all cells
- Standardize phone number format
- Normalize country names
- Remove duplicate rows
- Flag data quality issues

Output cleaned files to: ~/Cowork-Workspace/output/cleaned/
Create data quality report: ~/Cowork-Workspace/output/data-quality-report.md
```

### 11. Consolidation de Données Multi-Sources

```
Consolidate data from multiple files in ~/Cowork-Workspace/input/data-sources/

Files may include: [CSV, Excel, text files]
Common field: [specify key field, e.g., "email address"]

Create a master Excel file with:
- All unique records
- Combined data from all sources
- Source tracking (which file each data point came from)
- Duplicate flagging

Save to: ~/Cowork-Workspace/output/consolidated-data.xlsx
```

### 12. JSON/XML vers Excel

```
Convert JSON/XML files in ~/Cowork-Workspace/input/data/ to Excel format.

For each file:
- Flatten nested structures appropriately
- Create clear column headers
- Handle arrays as multiple rows
- Preserve data types where possible

Save converted files to: ~/Cowork-Workspace/output/converted/
Use original filename with .xlsx extension.
```

---

## Prompts d'Extraction Spécialisée

### 13. Extraction de Détails de Réunions/Événements

```
Extract event details from documents in ~/Cowork-Workspace/input/events/

For each event, capture:
- Event name
- Date
- Time
- Location/Venue
- Organizer
- Attendees (if listed)
- Agenda items
- Special notes

Create Excel with one row per event.
Create ICS calendar file for import.
Save to: ~/Cowork-Workspace/output/events.xlsx
Save to: ~/Cowork-Workspace/output/events.ics
```

### 14. Données Produits/Inventaire

```
Extract product information from documents/images in ~/Cowork-Workspace/input/products/

Capture:
- Product name
- SKU/ID (if visible)
- Description
- Price
- Category
- Specifications
- Source document

Create Excel product catalog.
Save to: ~/Cowork-Workspace/output/product-catalog.xlsx
```

### 15. Données d'Articles de Recherche

```
Extract structured data from research papers in ~/Cowork-Workspace/input/papers/

For each paper:
- Title
- Authors
- Publication date
- Journal/Conference
- Abstract (first 200 words)
- Keywords
- Methodology (brief)
- Key findings (3-5 points)
- Cited count (if available)

Create Excel bibliography.
Save to: ~/Cowork-Workspace/output/research-catalog.xlsx
```

### 16. Comparaison de Devis/Estimations

```
Extract and compare quotes from ~/Cowork-Workspace/input/quotes/

For each quote:
- Vendor name
- Quote date
- Valid until
- Line items with prices
- Subtotal
- Tax
- Total
- Terms

Create comparison matrix in Excel.
Highlight: lowest price, best terms, recommended option.
Save to: ~/Cowork-Workspace/output/quote-comparison.xlsx
```

---

## Prompts de Contrôle Qualité

### 17. Rapport de Validation de Données

```
Validate data extracted to ~/Cowork-Workspace/output/[previous-output].xlsx

Check for:
- Missing required fields
- Invalid date formats
- Numeric fields with text
- Duplicate entries
- Outlier values
- Inconsistent formatting

Create validation report with:
- Issue type
- Row/Cell reference
- Current value
- Suggested correction

Save to: ~/Cowork-Workspace/output/validation-report.xlsx
```

---

## Notes de Personnalisation

**Pour la précision OCR :**
- "Images are [high/medium/low] quality"
- "Text is [printed/handwritten]"
- "Language is [English/French/etc.]"

**Pour les paramètres régionaux :**
- "Use [European/US] date format"
- "Currency is [USD/EUR/etc.]"
- "Use [comma/period] as decimal separator"

**Pour la gestion des erreurs :**
- "Mark uncertain extractions with [?]"
- "Skip files that can't be processed"
- "Create error log for failed extractions"

---

*[Retour à l'Index des Prompts](README.fr.md) | [Documentation Cowork](../README.md)*
