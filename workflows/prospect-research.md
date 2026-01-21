# Workflow: Recherche Informations Entreprise/Client

> **Temps estimé**: 20 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 💼 Commercial
> **Professions**: Commerçants, Dirigeants

🌐 **Also available in [English](prospect-research.en.md)**

---

## Cas d'usage

Vous avez un prospect et devez collecter informations avant rendez-vous commercial ou proposition. Ce workflow vous aide à:

- Rassembler données entreprise (activité, taille, santé financière)
- Identifier décideurs et contacts clés
- Comprendre besoins potentiels
- Préparer approche personnalisée

> ⚠️ **Performance**: Prospects bien qualifiés = taux conversion +40% vs démarchage à froid.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Nom entreprise ou SIREN/SIRET
- [ ] Secteur d'activité (si connu)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Informations légales entreprise

```bash
mkdir -p ~/Cowork-Workspace/prospects/[nom-entreprise]
```

Recherche officielle:

```
Recherche informations légales pour: [Nom entreprise]

SOURCES PUBLIQUES:
1. Infogreffe (extrait K-bis gratuit):
   - Raison sociale exacte
   - Forme juridique (SARL, SAS, SA, etc.)
   - Numéro SIREN/SIRET
   - Adresse siège social
   - Date création
   - Capital social
   - Dirigeants (nom, fonction)
   - Code NAF/APE (activité)

2. Societe.com (informations financières):
   - Chiffre d'affaires (dernier bilan)
   - Effectif salarié
   - Résultat net
   - Évolution CA sur 3 ans (croissance/déclin)

3. Pappers.fr (synthèse gratuite):
   - Score santé entreprise (/100)
   - Historique (modifications statuts, déménagements)
   - Entreprises liées (filiales, maison-mère)

DONNÉES À COLLECTER:
- Raison sociale: [Nom complet officiel]
- SIREN: [9 chiffres]
- Forme juridique: [Type]
- Dirigeant: [Nom] ([Fonction])
- Activité: [Description NAF]
- CA 2023: [Montant]€
- Effectif: [Nombre] salariés
- Santé: [Score/100 ou Bon/Moyen/Fragile]
- Date création: [Date]
- Adresse: [Adresse complète]

Format: Fiche prospect
Sauvegarde: ~/Cowork-Workspace/prospects/[nom]/infos-legales.txt
```

### Étape 2: Présence digitale

Analyser communication online:

```
Recherche présence web pour: [Nom entreprise]

SITE WEB:
URL: [https://...]
Analyse:
- Design moderne ou obsolète?
- Informations contact visibles?
- Services/produits clairs?
- Blog/actualités actif? (dernière date)
- Formulaire contact/devis?
- Mentions clients/références?

Points d'intérêt commercial:
- Pages "Recrutement" (croissance?)
- Actualités récentes (nouveau service, expansion?)
- Projets en cours (opportunités)

RÉSEAUX SOCIAUX:
LinkedIn entreprise:
- Nombre abonnés: [X]
- Fréquence posts: [Actif/Inactif]
- Type contenu: [Recrutement/Comm produits/Expertise]
- Dernière actualité: [Date + sujet]

Facebook (si B2C):
- Avis clients: [X] avis ([Note]/5)
- Engagement: [Fort/Faible]

Google My Business:
- Note: [X]/5 ([Y] avis)
- Avis récents: [Positifs/Négatifs]
- Photos locaux (qualité, modernité)

POINTS D'ATTENTION:
- Avis négatifs récurrents (problèmes qualité/SAV?)
- Expansion récente (besoins équipements?)
- Recrutements (croissance = budget disponible?)

Sauvegarde: ~/Cowork-Workspace/prospects/[nom]/presence-digitale.txt
```

### Étape 3: Contacts et décideurs

Identifier interlocuteurs:

```
Identifie décideurs chez: [Nom entreprise]

DIRIGEANTS (K-bis):
- Président/Gérant: [Nom]
- Directeur Général: [Nom si différent]

DÉCIDEURS OPÉRATIONNELS (LinkedIn):
Recherche LinkedIn "[Nom entreprise]":
- Directeur technique/production
- Responsable achats
- Responsable travaux/maintenance
- Chef de projet

Pour chaque contact clé:
NOM: [Prénom Nom]
FONCTION: [Poste]
ANCIENNETÉ: [X ans dans entreprise]
PARCOURS: [Formation, expérience]
CENTRES D'INTÉRÊT: [Si visible profil LinkedIn]

HIÉRARCHIE DÉCISION (pour vente B2B):
- Utilisateur: [Qui utilise produit/service]
- Prescripteur: [Qui recommande]
- Décideur: [Qui signe bon de commande]
- Acheteur: [Qui négocie conditions]

Peut être même personne (TPE) ou 4 personnes différentes (grande entreprise)

APPROCHE RECOMMANDÉE:
Si TPE (<10 sal): Contacter dirigeant direct
Si PME (10-250 sal): Identifier responsable service concerné
Si Grand groupe: Process achat formalisé (appel d'offres probable)

Sauvegarde: ~/Cowork-Workspace/prospects/[nom]/contacts-deciseurs.txt
```

### Étape 4: Besoins potentiels

Qualifier opportunités:

```
Analyse besoins potentiels pour: [Nom entreprise]

MON OFFRE:
[Décrire vos services/produits]

SIGNAUX D'ACHAT DÉTECTÉS:

1. SIGNAUX CROISSANCE:
   - CA +15% dernier exercice → Budget disponible
   - Recrutement 5 personnes (LinkedIn) → Expansion
   - Nouveau local (Google Maps Street View) → Équipements neufs?

2. SIGNAUX PROJET:
   - Actualité site web: "Nouvelle succursale à Lille" → Besoins aménagement
   - Post LinkedIn: "Recherchons prestataire X" → Opportunité directe
   - Permis construire déposé (mairie) → Travaux prévus

3. SIGNAUX INSATISFACTION:
   - Avis clients négatifs récurrents sur thème X → Amélioration nécessaire
   - Changement fournisseur récent (LinkedIn ex-employé) → Ouverture concurrence

QUALIFICATION OPPORTUNITÉ:

BESOINS PROBABLES:
- Besoin 1: [Description]
  Justification: [Pourquoi]
  Montant estimé: [Budget probable]€
  Timing: [Quand]
  Probabilité: [Forte/Moyenne/Faible]

- Besoin 2: [...]

BUDGET ESTIMÉ GLOBAL: [X-Y]€
URGENCE: [Immédiate / 3-6 mois / >6 mois]
CONCURRENCE: [Qui d'autre prospectent-ils?]

SCORE QUALIFICATION (/100):
- Taille entreprise adaptée: [/20]
- Budget disponible: [/20]
- Besoin identifié: [/25]
- Timing favorable: [/15]
- Contact décideur possible: [/20]

TOTAL: [X]/100
> 70: Prospect chaud (contacter rapidement)
50-70: Prospect tiède (nurturing)
< 50: Prospect froid (newsletter long terme)

Sauvegarde: ~/Cowork-Workspace/prospects/[nom]/qualification-besoins.txt
```

### Étape 5: Dossier prospect synthèse

Consolider informations:

```
Génère dossier prospect complet pour: [Nom entreprise]

FICHE PROSPECT (1 page A4):

┌─────────────────────────────────────────┐
│ FICHE PROSPECT: [Nom Entreprise]        │
│ Date recherche: [Date]                  │
└─────────────────────────────────────────┘

📊 DONNÉES ENTREPRISE
• Activité: [Secteur]
• CA: [X]M€ | Effectif: [Y] personnes
• Santé: [Score] | Tendance: [↗ Croissance / → Stable / ↘ Déclin]
• Création: [Année]

👤 DÉCIDEUR IDENTIFIÉ
• Nom: [Prénom Nom]
• Fonction: [Poste]
• Contact: [Email / Tel si obtenu]
• LinkedIn: [URL profil]

🎯 BESOINS DÉTECTÉS
• Besoin principal: [Description]
• Budget estimé: [X-Y]€
• Timing: [Quand]
• Signaux achat: [Croissance/Projet/Insatisfaction]

💡 APPROCHE RECOMMANDÉE
• Accroche: [Angle d'attaque personnalisé]
• Références à citer: [Clients similaires]
• Objections probables: [Anticiper]

📈 QUALIFICATION
Score: [X]/100 - Priorité: [Haute/Moyenne/Basse]

PROCHAINES ACTIONS:
□ Email introduction personnalisé
□ Appel téléphonique
□ Connexion LinkedIn
□ Envoi documentation ciblée

Format: PDF 1 page imprimable
Sauvegarde: ~/Cowork-Workspace/prospects/[nom]/FICHE-PROSPECT-[nom].pdf
```

---

## Exemples de prompts

### Recherche rapide TPE

```
Recherche express pour: Boulangerie Martin (Lyon 6ème)

SOURCES RAPIDES:
1. Google Maps: "Boulangerie Martin Lyon 6"
   - Adresse exacte, tel, horaires
   - Photos (devanture, intérieur)
   - Avis: [X]/5 ([Y] avis) - Lire 5 derniers

2. Google "Boulangerie Martin Lyon SIRET"
   - Trouver SIRET
   - Pappers.fr: Infos rapides (CA, effectif)

3. Facebook/Instagram:
   - Présence? Actif?
   - Type clientèle (photos)

OBJECTIF: Vendre four professionnel

QUALIFICATION (5 min):
- Taille: [X] employés → Four adapté taille Y
- Ancienneté: [X ans] → Renouvellement équipement probable?
- Avis clients: [Positifs] → Business sain = solvable

Décision: Prospect à contacter OUI/NON
Si OUI: Préparer email avec photo four + tarif adapté taille

Sauvegarde rapide: ~/Cowork-Workspace/prospects/boulangerie-martin/recherche-express.txt
```

### Investigation approfondie (gros compte)

```
Dossier complet pour: [Entreprise 500 personnes, CA 50M€]

PHASE 1: Légal et financier (30 min)
- Infogreffe: K-bis complet
- Societe.com: Bilans 5 dernières années
- Analyse évolution CA, rentabilité, dettes
- Vérification incidents paiement (Banque de France si accès)

PHASE 2: Organisation (30 min)
- Organigramme (LinkedIn + site web)
- Identifier TOUS décideurs chaîne achat
- Historique dirigeants (changements récents?)
- Filiales/établissements secondaires

PHASE 3: Stratégie entreprise (30 min)
- Lire communiqués presse (site + Google actualités)
- Analyser rapports annuels si publiés
- Identifier projets stratégiques (expansion, innovation)
- Repérer appels d'offres publics (BOAMP si secteur public)

PHASE 4: Réseau et réputation (30 min)
- Qui sont leurs clients? (références site web)
- Qui sont leurs fournisseurs actuels? (factures publiques si secteur public)
- Presse spécialisée: Articles sur l'entreprise
- Forums professionnels: Réputation dans le secteur

PHASE 5: Approche commerciale (30 min)
- Synthèse opportunités (budget 50-500K€ probable)
- Stratégie entrée (partenaire? prescripteur? appel d'offres?)
- Préparer dossier commercial sur-mesure
- Anticiper 3 niveaux décision (utilisateur, acheteur, financier)

Dossier complet (20-30 pages):
~/Cowork-Workspace/prospects/[nom]/DOSSIER-COMPLET-[nom].pdf

Investissement: 2h30 recherche
ROI: Si contrat 100K€ → Rentabilité évidente
```

---

## Troubleshooting

### Informations contradictoires

**Cause**: Sources multiples, données obsolètes
**Solution**: Hiérarchie sources:

```
HIÉRARCHIE FIABILITÉ (du plus au moins fiable):

1. OFFICIEL LÉGAL (100% fiable):
   - Infogreffe K-bis (données INSEE)
   - BODACC (annonces légales)
   → Source de vérité pour: SIREN, adresse officielle, dirigeants

2. SEMI-OFFICIEL (95% fiable):
   - Societe.com, Pappers (agrègent sources officielles)
   - LinkedIn entreprise vérifié
   → Fiable pour: CA, effectif, contacts

3. DÉCLARATIF (70% fiable):
   - Site web entreprise (auto-déclaré)
   - Profils LinkedIn individuels
   → Peut être obsolète ou enjolivé

4. EXTERNE (50% fiable):
   - Avis clients (subjectif)
   - Articles presse (parfois sponsorisés)
   → Utile pour tendances, pas données factuelles

EXEMPLE CONFLIT:
- K-bis: Effectif 25 personnes
- LinkedIn: "50-100 employés"
- Site web: "Plus de 100 collaborateurs"

→ Retenir K-bis (25) car officiel
→ Marketing peut exagérer (site web)
```

### Prospect introuvable

**Cause**: Petite structure, pas de web
**Solution**: Sources alternatives:

```
Prospect "Martin Plomberie" → Aucun site web, pas LinkedIn

SOURCES ALTERNATIVES:

1. Annuaires professionnels:
   - Pages Jaunes
   - Chambre des Métiers (annuaire artisans)
   - Annuaire FFB/CAPEB (si BTP)

2. Réseaux sociaux locaux:
   - Groupes Facebook locaux
   - Nextdoor (voisinage)

3. Terrain:
   - Google Street View (voir devanture, taille local)
   - Passer devant (discret)

4. Réseau:
   - Demander confrères connaissant
   - Clients communs potentiels

5. Contact direct:
   - Appel téléphonique (PagesJaunes)
   - Qualification directe au téléphone:
     "Bonjour, je cherche à savoir si vous avez projet X
      pour vous proposer solution Y. Combien de salariés?
      Quel budget envisagé?"

Pour TPE sans web: Contact direct souvent plus efficace que recherche
```

---

## Variations

### Veille concurrentielle automatisée

```
Configurer alertes Google pour prospects cibles:

ALERTE 1: "[Nom entreprise]"
Fréquence: Hebdomadaire
→ Détecte: Articles presse, communiqués, actualités

ALERTE 2: "[Nom entreprise] + recrutement"
→ Détecte: Offres emploi = signal croissance

ALERTE 3: "[Nom entreprise] + appel d'offres"
→ Détecte: Marchés publics, opportunités

Compilation alertes:
Chaque lundi, vérifier emails alertes Google
Si info intéressante: Mise à jour fiche prospect + relance commerciale
```

### CRM intégration

```
Structure données prospect pour import CRM:

Format CSV compatible:
| Entreprise | SIREN | Contact | Email | Tel | CA | Effectif | Score | Statut | Notes |
|------------|-------|---------|-------|-----|----|---------| ------|--------|-------|

Import dans:
- HubSpot (gratuit jusqu'à 1000 contacts)
- Pipedrive
- Zoho CRM

Avantages vs Excel:
- Automatisation relances
- Historique interactions
- Reporting statistiques
```

---

## Bonnes pratiques

1. **Qualification AVANT contact** — 15 min recherche économise 2h démarchage inutile
2. **Sources officielles priorité** — K-bis/BODACC pour données légales
3. **Mise à jour régulière** — Requalifier prospects tous les 6 mois
4. **RGPD compliance** — Ne stocker que données professionnelles publiques
5. **Personnalisation systématique** — Utiliser infos recherchées dans approche commerciale
6. **Score objectif** — Grille notation évite biais émotionnels
7. **Documentation traçable** — Archiver sources et dates recherche
8. **ROI temps** — Approfondir proportionnellement au montant deal potentiel

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
