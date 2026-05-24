# Workflow: Tableau de Suivi Relances Clients

> **Temps estimé**: 15 minutes
> **Difficulté**: Débutant
> **Catégorie**: 💼 Commercial
> **Professions**: Tous

🌐 **Also available in [English](client-followup-tracker.en.md)**

---

## Cas d'usage

Vous gérez plusieurs prospects/clients et devez suivre vos relances commerciales pour ne rien oublier. Ce workflow vous aide à:

- Créer tableau de suivi centralisé
- Planifier relances au bon moment
- Mesurer taux de conversion
- Identifier prospects chauds/froids

> ⚠️ **Performance**: Relancer au bon moment augmente taux de conversion de 20-50% vs relances aléatoires.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Liste prospects/clients actuels
- [ ] Historique interactions (si existant)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Créer le tableau de suivi

```bash
mkdir -p ~/Cowork-Workspace/output/suivi-commercial
```

Générer structure:

```
Crée tableau suivi relances commerciales:

COLONNES:
A. ID (numéro unique)
B. Nom Client/Prospect
C. Contact (email + tel)
D. Statut (Prospect / Devis envoyé / Négociation / Gagné / Perdu)
E. Source (Comment contact obtenu: site web, recommandation, salon...)
F. Projet (Description courte)
G. Montant estimé (€)
H. Probabilité (% chances conclure: 10/30/50/70/90)
I. Première interaction (date)
J. Dernier contact (date)
K. Prochaine relance (date planifiée)
L. Action prévue (Email / Tel / RDV / Devis)
M. Historique interactions (résumé)
N. Notes

FORMULES AUTOMATIQUES:
- Délai depuis dernier contact: =AUJOURDHUI()-J
- Alerte si >14 jours sans contact: Formule conditionnelle rouge
- CA potentiel: =SOMME(G × H)

FILTRES:
- Par statut
- Par probabilité
- Par date relance

TRI PAR DÉFAUT: Prochaine relance (ascendant)

Format: Excel avec mise en forme conditionnelle
Sauvegarde: ~/Cowork-Workspace/output/suivi-commercial/relances-clients-2026.xlsx
```

### Étape 2: Importer prospects existants

Si vous avez déjà des contacts:

```
J'ai ces prospects en cours:

1. Martin Menuiserie
   - Contact: m.martin@email.fr / 06 12 34 56 78
   - Projet: Rénovation atelier 15 fenêtres
   - Devis envoyé le: 10/01/2026
   - Montant: 8500€
   - Pas de réponse depuis envoi

2. Société Dupont SAS
   - Contact: a.dupont@societe.fr / 06 98 76 54 32
   - Projet: Installation électrique local commercial
   - Montant estimé: 15000€
   - Dernier contact: Appel 15/01, intéressé mais pas pressé
   - Relance prévue: Fin janvier

3. [Autre prospect...]

Remplis le tableau avec ces données:
- Calculer probabilités selon interactions
- Suggérer prochaines dates relance
- Identifier actions recommandées

Ajouter lignes pré-remplies dans ~/Cowork-Workspace/output/suivi-commercial/relances-clients-2026.xlsx
```

### Étape 3: Définir règles de relance

Établir cadence:

```
Crée règles de relance selon statut:

PROSPECT INITIAL (premier contact):
- J+2: Email merci + récap besoins
- J+7: Tel si pas de réponse email
- J+14: Email relance avec valeur ajoutée (conseil, article)
- J+30: Tel final ou abandonner

DEVIS ENVOYÉ:
- J+3: Email "Avez-vous eu le temps de consulter?"
- J+7: Tel si pas de réponse
- J+14: Email avec ajustement si besoin
- J+21: Proposition alternative ou clôture

NÉGOCIATION EN COURS:
- Selon derniers échanges (ne pas harceler)
- Relance si >7 jours sans nouvelle
- Proposer RDV si blocage

PERDU (classé non-gagné):
- J+90: Relance "nouvelle offre" (réactivation)
- J+180: Relance saisonnière

Ajouter onglet "Règles" dans fichier Excel avec ce calendrier type
```

### Étape 4: Routine hebdomadaire

Chaque lundi matin:

```
Routine suivi commercial (15 min/semaine):

1. Ouvrir ~/Cowork-Workspace/output/suivi-commercial/relances-clients-2026.xlsx

2. Filtrer "Prochaine relance" <= AUJOURD'HUI + 7 jours

3. Pour chaque ligne:
   - Préparer action (email, script appel)
   - Programmer dans agenda semaine
   - Mettre à jour colonne "Action prévue"

4. Identifier prospects "chauds" (probabilité >70%):
   - Prioriser ces relances en début de semaine

5. Identifier prospects "dormants" (>30 jours sans contact):
   - Décision: Relance ou abandonner

6. Mettre à jour statistiques:
   - Nombre prospects actifs
   - CA potentiel total
   - Taux conversion (gagnés / total)

Temps estimé: 15 min si tableau à jour
```

### Étape 5: Après chaque interaction

Mise à jour immédiate:

```
Après appel/email avec prospect Martin Menuiserie:

Mettre à jour ligne Martin:
- Dernier contact: 27/01/2026
- Historique: "Tel 27/01 - Client veut comparer 2 autres devis, décision fin février"
- Probabilité: 50% → 40% (comparaison concurrence)
- Prochaine relance: 20/02/2026
- Action prévue: Email avec arguments différenciation

Couleur ligne: Orange (attention concurrence)

Temps mise à jour: 2 min
```

---

## Exemples de prompts

### Analyse performance commerciale

```
Depuis fichier ~/Cowork-Workspace/output/suivi-commercial/relances-clients-2026.xlsx:

Analyse mes performances:

TAUX CONVERSION:
- Prospects total: [nombre]
- Devis envoyés: [nombre]
- Affaires gagnées: [nombre]
- Taux conversion: X%
- Benchmark secteur: 15-25% (artisan BTP)

CA GÉNÉRÉ:
- CA réalisé 2026: [total affaires gagnées]
- CA potentiel pipeline: [total probabilité pondérée]
- CA moyen par affaire: [moyenne]

DÉLAIS:
- Délai moyen première relance → décision: X jours
- Délai optimal secteur: 14-30 jours

SOURCES PROSPECTS:
- Site web: X prospects (taux conversion Y%)
- Recommandations: X prospects (taux conversion Y%)
- Salon pro: X prospects (taux conversion Y%)
→ Identifier source la plus rentable

RECOMMANDATIONS:
- Si taux conversion <15%: Améliorer qualification initiale
- Si délais >45 jours: Relancer plus tôt
- Si source X meilleur ROI: Investir davantage

Format: Dashboard PDF
Sauvegarde: ~/Cowork-Workspace/output/suivi-commercial/analyse-performance-janvier-2026.pdf
```

### Email relance automatique depuis tableau

```
Génère emails relance pour tous prospects "Prochaine relance" = cette semaine:

Pour chaque ligne concernée:
1. Lire: Nom, Projet, Dernier contact, Statut
2. Générer email personnalisé adapté:

Exemple prospect "Martin Menuiserie" (devis envoyé J+10 sans réponse):

Objet: Devis fenêtres atelier - Des questions?

Bonjour Monsieur Martin,

Je reviens vers vous concernant le devis pour la rénovation de vos 15 fenêtres
d'atelier que je vous ai transmis le 10 janvier.

Avez-vous eu l'occasion de le consulter? Si vous avez des questions ou
souhaitez ajuster certains points, je reste à votre disposition.

Je peux également vous proposer un rendez-vous sur site si cela facilite
votre décision.

Dans l'attente de votre retour,
Cordialement,

[Signature]

Sauvegarder emails: ~/Cowork-Workspace/output/suivi-commercial/emails-semaine-4/
Créer 1 fichier par prospect
```

---

## Troubleshooting

### Tableau trop complexe

**Cause**: Trop de colonnes
**Solution**: Version simplifiée:

```
Version LIGHT (débutant):

COLONNES ESSENTIELLES SEULEMENT:
1. Nom
2. Contact (email ou tel)
3. Statut (Prospect / Devis / Gagné / Perdu)
4. Montant estimé
5. Dernier contact
6. Prochaine relance
7. Notes

Supprimer: Probabilité, Source, ID, etc. (ajouter si besoin plus tard)

Format: Google Sheets (accessible mobile)
```

### Oubli mise à jour

**Cause**: Pas de routine
**Solution**: Système rappel:

```
Bloquer agenda:
- Lundi 9h-9h15: Mise à jour tableau
- Vendredi 17h-17h30: Revue semaine

Après CHAQUE interaction client:
- Régler minuteur 5 min
- Mettre à jour ligne avant de passer à autre chose

Si oubli récurrent:
- Utiliser carnet papier temporaire (noter pendant appel)
- Reporter dans Excel en fin journée
```

### Prospects "zombies"

**Cause**: Ni gagné ni perdu, dormant
**Solution**: Décision franche:

```
Identifier prospects dormants (>60 jours sans contact + probabilité <30%):

Décision binaire:
A. Relance réactivation (1 dernière fois):
   - Email valeur ajoutée (pas juste "des nouvelles?")
   - Nouvelle offre ou réduction limitée
   - Si pas de réponse: Classer "Perdu"

B. Classer "Perdu" immédiatement:
   - Libérer espace mental
   - Garder contact pour newsletter (marketing long terme)
   - Possible réactivation dans 6-12 mois

Règle: Si >90 jours + aucune interaction = Perdu automatique
```

---

## Variations

### Intégration CRM

```
Export tableau vers CRM (HubSpot, Pipedrive, etc.):

Format CSV compatible:
- Mapper colonnes Excel → champs CRM
- Importer prospects
- Synchroniser bidirectionnel (si API disponible)

Avantage CRM:
- Automatisation emails relance
- Historique complet interactions
- Reporting avancé

Conserver Excel si:
- Début activité (<50 prospects)
- Budget limité
- Simplicité préférée
```

### Suivi multi-commercial

```
Entreprise avec 3 commerciaux:

Tableau partagé:
- Colonne "Responsable" (qui gère prospect)
- Filtre par responsable
- Vue consolidée direction

Dashboard manager:
- CA par commercial
- Taux conversion par commercial
- Nombre relances effectuées
- Performance comparative

Réunion hebdo:
- Revue prospects >10K€
- Déblocage affaires bloquées
- Partage best practices relances
```

### Checklist accueil nouveau client

Lorsqu'un prospect devient client (affaire signée), processus d'intégration standardisé:

```
Génère checklist onboarding pour nouveau client [Nom]:

INFORMATIONS CLIENT (À COLLECTER)
□ Coordonnées complètes
  - Adresse facturation
  - Adresse chantier/livraison (si différente)
  - SIRET (si professionnel)
  - Email + Téléphone principal + Secondaire
□ Contact décisionnaire (nom, rôle, disponibilités)
□ Références bancaires (si paiements récurrents)
□ Assurances (RC, décennale si sous-traitance)

DOCUMENTS ADMINISTRATIFS (À OBTENIR)
□ Bon de commande signé OU Devis accepté daté et signé
□ Conditions générales de vente signées
□ Autorisation travaux (si copropriété/monument historique)
□ Plans/diagnostics existants (amiante, plomb, électrique...)
□ Cahier des charges détaillé (si projet complexe)

COMMUNICATION DÉMARRAGE (J+1 signature)
□ Email confirmation commande avec:
  - Récapitulatif projet
  - Planning prévisionnel
  - Interlocuteur dédié (vous ou équipe)
  - Processus communication (rapports, validations)
□ Ajout client dans tableau suivi (statut "En cours")
□ Création dossier client: ~/Cowork-Workspace/clients/[nom]/
  - Sous-dossiers: contrat, plans, factures, correspondance, photos

ORGANISATION CHANTIER/PRESTATION (J+2 à J+7)
□ Visite préparatoire site (si applicable)
□ Commande matériaux/fournitures
□ Planification équipe (qui, quand, combien de temps)
□ Prévenir voisinage (si travaux bruyants)
□ Parking/accès chantier organisés
□ Point démarrage avec client:
  - Présenter équipe
  - Expliquer déroulement
  - Répondre dernières questions
  - Remettre coordonnées urgence

SUIVI QUALITÉ (Durant prestation)
□ Points validation étapes clés (selon planning)
□ Photos avant/pendant/après (systématique)
□ Journal chantier tenu quotidiennement
□ Rapport hebdo/mensuel (si chantier long)
□ Gestion incidents/modifications immédiate

CLÔTURE PROJET (Fin prestation)
□ Visite réception avec client
□ Levée réserves éventuelles
□ Remise documents finaux:
  - Facture finale
  - Garanties
  - Notices entretien
  - Certifications (si applicable)
□ PV de réception signé
□ Demande avis Google/recommandation (si satisfaction)
□ Classement dossier archives (garder 10 ans)

RELATION CLIENT LONG TERME
□ Ajout newsletter (avec accord)
□ Relance satisfaction J+15 et J+90
□ Relance commerciale annuelle (nouvelle offre)
□ Traitement SAV réactif (si besoin)

Format: PDF checklist imprimable avec cases à cocher
Sauvegarde: ~/Cowork-Workspace/templates/checklist-onboarding-client.pdf
```

**Utilisation pratique**:

```
Chaque nouveau client:
1. Copier checklist template
2. Renommer: checklist-onboarding-[nom-client].pdf
3. Cocher cases au fur et à mesure
4. Joindre au dossier client

Bénéfices:
- Aucun oubli (procédure standard)
- Client rassuré (professionnalisme)
- Début relation sur bases saines
- Moins d'improvisation = moins d'erreurs
- Reproductibilité (même qualité pour tous)
```

**Adaptation selon métier**:

```
BTP/Artisans: Accent sur autorisations, sécurité chantier, voisinage
Commerce: Accent sur livraison, garanties, SAV
Services: Accent sur confidentialité, calendrier interventions, reporting
```

**Personnalisation welcome pack**:

```
Pour clients importants (>10K€), créer pack accueil:

CONTENU PACK:
1. Dossier cartonné avec logo entreprise
2. Lettre bienvenue signée
3. Checklist projet avec jalons
4. Coordonnées équipe + urgence
5. Guide "Pendant les travaux" (conseils pratiques)
6. Petit cadeau symbolique (calendrier, stylo, etc.)

Remise: RDV démarrage chantier

Impact: Client se sent privilégié, relation renforcée dès J1
```

---

## Bonnes pratiques

1. **Mise à jour immédiate** : Après CHAQUE interaction (évite oubli)
2. **Routine hebdo fixe** : Même jour, même heure (ex: Lundi 9h)
3. **Simplicité** : Mieux tableau simple à jour qu'Excel complexe abandonné
4. **Qualification initiale** : Bien remplir dès premier contact
5. **Décisions franches** : Classer Perdu si dormant (libère énergie)
6. **Backup régulier** : Sauvegarder fichier (cloud + local)
7. **Revue mensuelle** : Analyser tendances et ajuster stratégie
8. **Persévérance mesurée** : 3-4 relances max puis arrêter (pas harceler)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
