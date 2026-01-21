# Prompts de Recherche

🌐 **Langues** : [Français](research.fr.md) | [English](research.md)

> **10+ prompts prêts à l'emploi pour la recherche web et la synthèse d'informations**

---

## Prompts d'Analyse Concurrentielle

### 1. Recherche Concurrentielle de Base

```
Research the top 5 competitors in [industry/market].

For each competitor:
- Company name and website
- Brief description (1-2 sentences)
- Key products/services
- Target market
- Pricing (if public)
- Key differentiators

Create comparison table.
Save to: ~/Cowork-Workspace/output/competitive-analysis.md
```

### 2. Profil Détaillé de Concurrent

```
Create a detailed profile for [Company Name].

Research:
1. Company Overview
   - Founded, headquarters, size
   - Mission/Vision
   - Key leadership

2. Products/Services
   - Main offerings
   - Pricing structure
   - Target customers

3. Market Position
   - Market share (if available)
   - Key partnerships
   - Recent news/announcements

4. Strengths and Weaknesses
   - Based on reviews and public info

5. Competitive Implications
   - How they compare to us
   - Threats and opportunities

Save to: ~/Cowork-Workspace/output/[company]-profile.docx
```

### 3. Recherche de Prix

```
Research pricing for [product/service category].

Compile data on:
- Vendor/Product name
- Pricing tiers
- Features per tier
- Free trial/Freemium options
- Contract requirements
- Notable terms

Create comparison matrix in Excel.
Include pricing trend observations.
Save to: ~/Cowork-Workspace/output/pricing-research.xlsx
```

---

## Prompts de Recherche Thématique

### 4. Recherche Générale sur un Sujet

```
Research [topic] and create a comprehensive overview.

Include:
1. Topic Overview
   - Definition and scope
   - Why it matters

2. Key Concepts
   - Main ideas and terminology
   - How they relate

3. Current State
   - Latest developments
   - Key players/contributors

4. Best Practices
   - Industry standards
   - Common approaches

5. Resources
   - Recommended reading
   - Tools/Platforms
   - Communities

Save to: ~/Cowork-Workspace/output/[topic]-research.md
```

### 5. Évaluation de Technologie/Outil

```
Evaluate [technology/tool type] options for [use case].

Research criteria:
- Core features
- Ease of use
- Integration capabilities
- Pricing
- Community/Support
- Maturity/Stability
- Pros and Cons

Evaluate top 5 options.
Provide recommendation with rationale.
Save to: ~/Cowork-Workspace/output/[technology]-evaluation.md
```

### 6. Analyse de Tendances

```
Research trends in [industry/topic] for [year/period].

Cover:
1. Current Trends
   - What's growing
   - What's declining

2. Driving Forces
   - Technology changes
   - Market shifts
   - Regulatory factors

3. Key Statistics
   - Market size
   - Growth rates
   - Adoption metrics

4. Predictions
   - Expert opinions
   - Market forecasts

5. Implications
   - What this means for [our business/project]

Save to: ~/Cowork-Workspace/output/trend-analysis.md
```

---

## Prompts d'Étude de Marché

### 7. Vue d'Ensemble du Marché

```
Create a market overview for [market/industry].

Research:
1. Market Definition
   - Scope and segments
   - Key products/services

2. Market Size
   - Current value
   - Growth rate
   - Projections

3. Key Players
   - Major companies
   - Market share distribution

4. Customer Segments
   - Who buys
   - What they value

5. Distribution Channels
   - How products reach customers

6. Barriers to Entry
   - What makes this market challenging

Save to: ~/Cowork-Workspace/output/market-overview.docx
```

### 8. Synthèse de Recherche Client

```
Research customer perspectives on [product/service/topic].

Sources to explore:
- Review sites
- Forums and communities
- Social media discussions
- Industry publications

Compile:
1. Common Pain Points
2. Desired Features
3. Satisfaction Drivers
4. Complaints/Frustrations
5. Comparison Factors
6. Decision Criteria

Save to: ~/Cowork-Workspace/output/customer-research.md
```

---

## Prompts de Recherche Professionnelle

### 9. Recherche sur une Personne/Intervenant

```
Research [Person Name] for [meeting/event] preparation.

Find:
- Current role and company
- Professional background
- Recent talks/publications
- Areas of expertise
- Notable quotes/positions
- Social media presence
- Common talking points

Create briefing document.
Save to: ~/Cowork-Workspace/output/[name]-profile.md
```

### 10. Recherche sur un Événement/Conférence

```
Research [Event/Conference Name].

Compile:
- Event dates and location
- Theme/Focus areas
- Key speakers
- Session highlights
- Attendance info
- Past event insights
- Networking opportunities
- Relevant hashtags

Create event brief.
Save to: ~/Cowork-Workspace/output/[event]-research.md
```

---

## Prompts de Synthèse

### 11. Revue de Littérature

```
Create a literature review from documents in ~/Cowork-Workspace/input/papers/
and supplementary web research on [topic].

Structure:
1. Introduction
   - Topic scope
   - Research questions

2. Methodology
   - Sources used
   - Selection criteria

3. Findings by Theme
   - Theme 1: [findings]
   - Theme 2: [findings]
   - Theme 3: [findings]

4. Gaps and Opportunities
   - What's missing
   - Future research areas

5. Conclusions

6. References

Save to: ~/Cowork-Workspace/output/literature-review.docx
```

### 12. Synthèse de Recherche

```
Synthesize research from:
- ~/Cowork-Workspace/input/research-docs/
- Web research on [topic]

Create unified report covering:
1. Key Findings (consolidated)
2. Consensus Points (agreement across sources)
3. Contradictions (disagreements)
4. Evidence Quality (strong vs weak support)
5. Recommendations (based on evidence)
6. Source Assessment (reliability)

Save to: ~/Cowork-Workspace/output/research-synthesis.md
```

---

## Prompts de Recherche Rapide

### 13. Faits Rapides

```
Research quick facts about [company/product/topic].

Provide:
- 10 key facts
- 5 recent news items
- 3 notable statistics
- Key dates/milestones

Format: Bullet points
Save to: ~/Cowork-Workspace/output/quick-facts.md
```

### 14. Recherche FAQ

```
Research common questions about [topic].

Find and answer:
- Top 10 frequently asked questions
- Include brief, accurate answers
- Cite sources where possible

Format as FAQ document.
Save to: ~/Cowork-Workspace/output/faq.md
```

---

## Power User : Workflows d'Analyse de Contenu

Exemples concrets d'utilisateurs professionnels :

### 15. Analyse de Podcast/Interview

D'un workflow de créateur de newsletter analysant des transcriptions de podcasts :

```
CONTEXT: I have podcast transcript(s) in ~/Cowork-Workspace/input/podcasts/
These are long-form interviews with industry experts.

TASK: Create a comprehensive analysis document.

OUTPUT: ~/Cowork-Workspace/output/podcast-analysis.docx

STRUCTURE:
1. Episode Overview
   - Guest, topic, date, duration

2. Key Insights (5-10 bullets)
   - Actionable takeaways
   - Quotable moments

3. Mental Models & Frameworks
   - Any frameworks mentioned
   - Decision-making approaches

4. Practical Tactics
   - Specific how-to advice
   - Tools/resources mentioned

5. Contrarian/Surprising Points
   - What goes against conventional wisdom

6. Questions Raised
   - Follow-up topics to explore

CONSTRAINTS:
- Use direct quotes with timestamps when available
- Flag any claims that need fact-checking
- Note recurring themes across episodes
```

### 16. Synthèse de Recherche Multi-Sources

Pour une analyse complète combinant documents locaux et recherche web :

```
CONTEXT:
- Local documents in ~/Cowork-Workspace/input/research/
- Need supplementary web research on [topic]

TASK: Create a unified research brief combining all sources.

OUTPUT: ~/Cowork-Workspace/output/research-brief.md

STRUCTURE:
1. Research Question
2. Sources Used (local + web)
3. Key Findings (consolidated)
4. Consensus Points (agreement across sources)
5. Contradictions (where sources disagree)
6. Evidence Quality Assessment
7. Gaps (what's missing)
8. Recommendations
9. Full Source List with notes

CONSTRAINTS:
- Clearly attribute each finding to its source
- Rate evidence strength (strong/moderate/weak)
- Distinguish fact from opinion
- Flag outdated information
```

### 17. Étude de Marché vers PRD

Pour les product managers convertissant la recherche en spécifications :

```
CONTEXT: Market research notes in ~/Cowork-Workspace/input/market-research/
Include: competitor analysis, user interviews, industry reports.

TASK: Transform into a Product Requirements Document outline.

OUTPUT: ~/Cowork-Workspace/output/prd-draft.docx

SECTIONS:
1. Market Opportunity Summary
2. Target User Personas (from interview data)
3. Competitive Landscape
4. Feature Requirements (prioritized)
5. Success Metrics
6. Risks and Mitigations
7. Open Questions

CONSTRAINTS:
- Link each requirement to supporting research
- Use MoSCoW prioritization (Must/Should/Could/Won't)
- Include counter-arguments where relevant
- Note confidence level for each insight
```

---

## Notes de Personnalisation

**Profondeur de recherche :**
- "Quick overview (15 minutes research)"
- "Standard depth (30-60 minutes)"
- "Comprehensive (thorough analysis)"

**Préférences de sources :**
- "Focus on official sources"
- "Include industry publications"
- "Prioritize recent sources (last 12 months)"

**Préférences de format :**
- "Executive brief (1 page max)"
- "Detailed report (no length limit)"
- "Comparison matrix format"

**Contrôles qualité :**
- "Include source URLs"
- "Note information date/freshness"
- "Flag uncertain information"

---

*[Retour à l'Index des Prompts](README.md) | [Documentation Cowork](../README.md)*
