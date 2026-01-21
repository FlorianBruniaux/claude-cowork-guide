# Workflow: Analyse Concurrentielle Locale

> **Temps estimé**: 30 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 💼 Commercial
> **Professions**: Commerçants, Dirigeants

🌐 **Also available in [English](competitor-analysis.en.md)**

---

## Cas d'usage

Vous devez comprendre votre environnement concurrentiel pour mieux vous positionner. Ce workflow vous aide à:

- Identifier concurrents directs et indirects
- Analyser leurs offres, prix, points forts/faibles
- Repérer opportunités de différenciation
- Ajuster votre stratégie commerciale

> ⚠️ **Stratégie**: Connaître concurrence = identifier niches inexploitées et arguments différenciants.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Votre zone géographique (rayon action)
- [ ] Votre offre actuelle (services/produits)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Cartographier concurrents

```bash
mkdir -p ~/Cowork-Workspace/veille/concurrence
```

Identifier acteurs:

```
Recense concurrents pour: [Votre activité] dans [Zone géographique]

MON ACTIVITÉ:
- Métier: [Ex: Électricien, Commerce fleurs, Consultant RH]
- Zone: [Ex: Lyon et 20km, Région Rhône-Alpes, National]
- Offre: [Services/produits proposés]

SOURCES IDENTIFICATION:

1. GOOGLE MAPS:
Recherche: "[Métier] + [Ville]"
Exemple: "électricien Lyon"

Pour chaque concurrent affiché:
- Nom
- Adresse
- Distance de mon entreprise
- Note Google (/5)
- Nombre d'avis
- Site web (si présent)
- Téléphone

2. PAGES JAUNES / 118000:
Compléter liste (certains absents Google Maps)

3. ANNUAIRES PROFESSIONNELS:
- Chambre des Métiers (artisans)
- Chambre de Commerce (commerçants)
- Annuaires sectoriels (FFB pour BTP, etc.)

4. RÉSEAUX SOCIAUX:
Recherche LinkedIn: "[Métier] + [Ville]"
Recherche Facebook Pages locales

CATÉGORISATION:

CONCURRENTS DIRECTS (même offre, même zone):
- Concurrent A: [Nom] - [Adresse] - [3,8]/5 (45 avis)
- Concurrent B: [Nom] - [Adresse] - [4,2]/5 (120 avis)
- [...]

CONCURRENTS INDIRECTS (offre partielle ou zone adjacente):
- Concurrent X: Spécialisé uniquement [sous-segment]
- Concurrent Y: Zone limitrophe (peut déborder)

TOTAL: [X] concurrents directs | [Y] concurrents indirects

Format: Tableau Excel
Sauvegarde: ~/Cowork-Workspace/veille/concurrence/cartographie-concurrents.xlsx
```

### Étape 2: Analyser présence digitale

Évaluer communication online:

```
Analyse digitale des 5 principaux concurrents:

Pour chaque concurrent:

SITE WEB:
URL: [https://...]
Design: [Moderne/Daté/Absent]
Informations:
- Services détaillés: [Oui/Non]
- Tarifs affichés: [Oui/Non/Devis uniquement]
- Références clients: [Oui/Non]
- Blog/actualités: [Actif/Inactif/Absent]
- Formulaire contact: [Oui/Non]
- Réactivité (test formulaire si éthique): [Réponse <24h?]

RÉFÉRENCEMENT LOCAL:
Google "électricien Lyon":
- Position concurrent A: [Rang X]
- Position concurrent B: [Rang Y]
- Ma position: [Rang Z]

RÉSEAUX SOCIAUX:
LinkedIn:
- Présence: [Oui/Non]
- Abonnés: [Nombre]
- Activité: [Posts/mois]

Facebook:
- Page active: [Oui/Non]
- Abonnés: [Nombre]
- Note: [X]/5

Instagram (si B2C):
- Présence: [Oui/Non]
- Abonnés: [Nombre]
- Engagement: [Likes moyen/post]

AVIS CLIENTS:
Google My Business:
- Concurrent A: 4,2/5 (120 avis)
  Derniers avis: [Résumé 5 derniers]
  Récurrent positif: [Ex: "Rapidité", "Prix"]
  Récurrent négatif: [Ex: "Retards", "SAV"]

Analyse thématique avis:
- Points forts concurrents: [Liste]
- Points faibles concurrents: [Liste]
→ Opportunités pour moi: [Différenciation]

SCORING DIGITAL (/100):
- Site web: [/30]
- SEO local: [/20]
- Réseaux sociaux: [/20]
- Avis clients: [/30]

Format: Grille comparative
Sauvegarde: ~/Cowork-Workspace/veille/concurrence/analyse-digitale.xlsx
```

### Étape 3: Comparaison offres et prix

Analyser positionnement commercial:

```
Comparatif offres pour: [Métier]

MÉTHODE COLLECTE PRIX:

1. CLIENT MYSTÈRE (éthique):
   - Demander devis pour prestation standard
   - Exemple: "Remplacement tableau électrique 2 rangées"
   - Collecter 3-5 devis concurrents

2. TARIFS PUBLICS:
   - Sites web (si affichés)
   - Brochures/catalogues
   - Forfaits affichés

3. SOURCES INDIRECTES:
   - Avis clients mentionnant prix
   - Forums/groupes Facebook locaux

GRILLE COMPARATIVE:

| Prestation | Moi | Concurrent A | Concurrent B | Concurrent C | Moyenne |
|------------|-----|--------------|--------------|--------------|---------|
| Dépannage urgent | 80€ | 95€ | 75€ | 90€ | 85€ |
| Installation prise | 45€ | 50€ | 40€ | 55€ | 48€ |
| Forfait tableau | 1200€ | 1500€ | 1100€ | 1400€ | 1333€ |

ANALYSE POSITIONNEMENT:
- Mon positionnement prix: [Premium / Milieu de gamme / Low-cost]
- Concurrent le moins cher: [Nom] ([-X%] vs moyenne)
- Concurrent le plus cher: [Nom] ([+Y%] vs moyenne)

DIFFÉRENCIATION NON-PRIX:

Concurrent A (plus cher):
- Justification: "Garantie 5 ans" / "Matériel haut de gamme"
- Services inclus: SAV prioritaire, dépannage 24/7

Concurrent B (moins cher):
- Possible qualité moindre?
- Vérifier avis: Satisfait malgré prix bas?

MOI:
- Mes atouts vs concurrence: [Ex: Certif RGE, réactivité, expérience]
- Mes faiblesses: [Ex: Pas de dépannage weekend, zone limitée]

OPPORTUNITÉS DIFFÉRENCIATION:
- Niche inexploitée: [Ex: Spécialisation domotique]
- Service manquant: [Ex: Aucun propose maintenance préventive]
- Positionnement unique: [Ex: "Seul certifié X dans rayon 20km"]

Sauvegarde: ~/Cowork-Workspace/veille/concurrence/comparatif-offres-prix.xlsx
```

### Étape 4: Analyse forces/faiblesses

Matrice SWOT concurrentielle:

```
SWOT comparatif: Moi vs Concurrence

FORCES CONCURRENTS:
Concurrent A:
✓ Ancienneté (30 ans) = réputation
✓ Équipe 8 personnes = capacité volume
✓ Note Google 4,5/5 = satisfaction
✓ Showroom physique = confiance clients

Concurrent B:
✓ Prix -20% vs moyenne = attractif
✓ Réactivité (réponse <2h selon avis)
✓ Présence réseaux sociaux forte

FAIBLESSES CONCURRENTS:
Concurrent A:
✗ Site web obsolète (non-responsive mobile)
✗ Pas de réseaux sociaux (vieillissant)
✗ Avis récents mentionnent "cher"
✗ Délais (surcharge commandes)

Concurrent B:
✗ Qualité variable (avis mitigés)
✗ Pas de certifications (RGE, Qualif)
✗ Zone limitée (ne se déplace pas)

MES FORCES vs CONCURRENCE:
✓ [Ex: Certification RGE (concurrent B n'a pas)]
✓ [Ex: Réactivité 24h (vs 3-5j concurrent A)]
✓ [Ex: Garantie décennale étendue]
✓ [Ex: Outils modernes (thermographie IR)]

MES FAIBLESSES vs CONCURRENCE:
✗ [Ex: Récent (2 ans) vs ancienneté concurrents]
✗ [Ex: Seul (vs équipes concurrents)]
✗ [Ex: Peu d'avis Google (15 vs 120 concurrent A)]
✗ [Ex: Pas de showroom physique]

OPPORTUNITÉS:
- Concurrent A vieillit (clientèle âgée) → Capter jeunes via digital
- Aucun concurrent sur [niche] → Me spécialiser
- Avis négatifs concurrent B sur qualité → Argument "Qualité garantie"

MENACES:
- Arrivée nouveau concurrent low-cost (guerre prix)
- Concurrent A pourrait se moderniser (digital)
- Marché local saturé (7 concurrents)

STRATÉGIE RECOMMANDÉE:
1. Exploiter faiblesse A: [Action]
2. Éviter confrontation B: [Action]
3. Créer niche différenciante: [Action]

Format: Matrice SWOT visuelle
Sauvegarde: ~/Cowork-Workspace/veille/concurrence/swot-comparatif.pdf
```

### Étape 5: Plan d'action différenciation

Définir stratégie:

```
Plan différenciation vs concurrence:

OBJECTIF: Me démarquer sur [Axe principal]

AXE 1: EXPERTISE/SPÉCIALISATION
Action: Me positionner expert [niche]
Exemple: "Spécialiste rénovation énergétique certifié RGE"
vs concurrents généralistes

Mise en œuvre:
- Formation complémentaire si besoin
- Communication ciblée (blog, réseaux)
- Partenariats (architectes, agences immo)

AXE 2: SERVICE CLIENT
Action: Excellence relationnelle
Exemples:
- Réponse devis <24h (vs 3-5j concurrents)
- Suivi post-intervention J+7 (satisfaction)
- Garantie satisfaction "Refait si pas content"

Mise en œuvre:
- Process réactivité (alertes emails)
- CRM suivi clients
- Formation relation client

AXE 3: PRIX/VALEUR
Choix: PAS concurrencer sur prix bas (race to bottom)
Mais: Justifier prix par valeur

Arguments:
- Matériaux qualité supérieure (marques, garanties)
- Certifications (RGE, Qualibat)
- Assurances étendues (décennale renforcée)
→ "Plus cher mais sécurité + durabilité"

AXE 4: INNOVATION
Action: Proposer ce que concurrents n'ont pas
Exemples:
- Devis vidéo (visite virtuelle chantier)
- App suivi travaux temps réel
- Paiement échelonné (financement partenaire)
- Éco-responsabilité (recyclage déchets, bilan carbone)

PLAN 3 MOIS:
Mois 1:
□ Améliorer site web (responsive, témoignages)
□ Lancer campagne avis Google (clients satisfaits)
□ Créer contenu blog (expertise)

Mois 2:
□ Formation spécialisation [niche]
□ Partenariats locaux (prescripteurs)
□ Optimiser SEO local (Google My Business)

Mois 3:
□ Campagne différenciation (flyers, ads Facebook local)
□ Mesurer résultats (nb contacts, conversions)
□ Ajuster stratégie

INDICATEURS SUCCÈS:
- Position Google "électricien Lyon" passe de 8ème à Top 3
- Note Google passe de 4,0 à 4,5
- Nb avis Google passe de 15 à 50
- CA +20% vs même période année N-1

Sauvegarde: ~/Cowork-Workspace/veille/concurrence/plan-differenciation-2026.pdf
```

---

## Exemples de prompts

### Benchmark rapide (nouveauté)

```
Concurrent X vient de lancer [nouveau service]

Analyse rapide:
- Description service: [Quoi]
- Prix: [Combien]
- Communication: [Comment promu - site/réseaux/flyers]
- Réception marché: [Avis clients si disponibles]

QUESTIONS:
- Est-ce une menace pour moi?
- Dois-je proposer équivalent?
- OU opportunité ignorer (niche pas rentable)?

DÉCISION (3 options):
A. Copier rapidement (si succès évident)
B. Adapter/améliorer (proposer mieux)
C. Ignorer (pas mon marché)

Si A ou B: Plan lancement rapide (4 semaines)
Si C: Documenter veille (surveiller évolution)

Sauvegarde: ~/Cowork-Workspace/veille/concurrence/benchmark-[service]-[concurrent].txt
```

### Analyse entrée marché (nouveau concurrent)

```
Nouveau concurrent détecté: [Nom] ouvert depuis [date]

ANALYSE MENACE:

PROFIL:
- Localisation: [Adresse] (distance de moi: [X km])
- Offre: [Services proposés]
- Prix: [Positionnement estimé]
- Équipe: [Taille]
- Moyens: [Locaux, équipements visibles]

COMMUNICATION LANCEMENT:
- Site web: [Qualité]
- Pub locale: [Flyers, radio, Facebook Ads?]
- Promotion lancement: [Offres spéciales]

DIFFÉRENCIATION ANNONCÉE:
- Arguments: [Ex: "Prix imbattables", "Expérience 20 ans"]
- Crédibilité: [Vérifiable?]

IMPACT ESTIMÉ:
- Part marché visée: [X%]
- Clients potentiellement perdus: [Profil]
- Urgence réaction: [Haute/Moyenne/Faible]

CONTRE-MESURES (si menace):
1. Renforcer clients actuels (fidélisation)
2. Accélérer différenciation
3. Surveiller premiers mois (avis, positionnement réel)

Sauvegarde: ~/Cowork-Workspace/veille/concurrence/nouveau-concurrent-[nom].pdf
```

---

## Troubleshooting

### Trop de concurrents

**Cause**: Marché saturé
**Solution**: Focus top concurrents:

```
Zone avec 25+ concurrents → Impossible analyser tous

PRIORISATION (Top 5):
1. Concurrent part de marché estimée la plus haute
2. Concurrent note Google la meilleure
3. Concurrent le plus proche géographiquement
4. Concurrent offre la plus similaire
5. Concurrent communication la plus agressive

Analyser ces 5 en profondeur
Surveiller les 20 autres en veille passive (alertes Google)
```

### Données concurrents inaccessibles

**Cause**: Pas de présence web, opacité
**Solution**: Sources terrain:

```
Concurrent sans site/réseaux:

MÉTHODES ALTERNATIVES:
1. Client mystère téléphonique:
   - Appeler pour devis
   - Noter: Accueil, réactivité, prix, professionnalisme

2. Observation physique:
   - Passer devant local (taille, clientèle, activité)
   - Street View Google (évolution dans temps)

3. Réseau professionnel:
   - Demander confrères (prudemment)
   - Fournisseurs communs (volumes achat)

4. Avis bouche-à-oreille:
   - Forums locaux
   - Groupes Facebook quartier
```

---

## Variations

### Veille automatisée

```
Configurer surveillance automatique concurrents:

OUTILS GRATUITS:
1. Google Alerts:
   - "[Nom concurrent]"
   - "[Nom concurrent] + avis"
   Fréquence: Hebdomadaire

2. Talkwalker Alerts (alternative Google):
   - Mêmes mots-clés
   - Inclut réseaux sociaux

3. Suivi positions SEO:
   - Outil gratuit: SERPWatcher (limité)
   - Tracker mensuel positions Google

ROUTINE MENSUELLE (30 min):
- Consulter alertes compilées
- Vérifier nouveaux avis concurrents (insights)
- Screenshot sites web concurrents (évolutions)
- Mettre à jour fichier veille

Compilation: ~/Cowork-Workspace/veille/concurrence/veille-mensuelle-[mois].pdf
```

### Benchmark sectoriel national

```
Comparer performance vs moyennes nationales:

SOURCES STATS SECTEUR:
- INSEE (données secteur NAF)
- Fédérations professionnelles (FFB, CAPEB, etc.)
- Observatoires métiers
- Xerfi, études marché

INDICATEURS:
- CA moyen par salarié: [X]€
  → Moi: [Y]€ (sup/inf moyenne)

- Marge nette moyenne: [Z]%
  → Moi: [W]% (positionnement)

- Taux croissance secteur: [+X%/an]
  → Moi: [+Y%] (surperformance/sous-performance)

OBJECTIF: Identifier si problème local (concurrence) ou global (compétences, gestion)

Si performance < moyenne nationale malgré peu de concurrence locale
→ Problème interne (prix, qualité, marketing) pas concurrence
```

---

## Bonnes pratiques

1. **Veille continue** — Pas one-shot, surveiller évolutions (trimestriel minimum)
2. **Éthique** — Pas de dénigrement, espionnage illégal, diffamation
3. **Focus différenciation** — Objectif pas copier mais se démarquer
4. **Client au centre** — Analyser concurrence pour mieux servir clients (pas obsession)
5. **Collaboration possible** — Certains concurrents = futurs partenaires (sous-traitance, spécialisations complémentaires)
6. **Benchmark positif** — S'inspirer best practices (pas juste critiquer faiblesses)
7. **Action > Analyse** — Veille utile SI débouche sur actions concrètes
8. **Mesure impact** — Tracker si actions différenciation fonctionnent (KPIs)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
