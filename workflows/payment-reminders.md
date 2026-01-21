# Workflow: Génération de Relances Impayés

> **Temps estimé**: 15 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 📋 Administratif
> **Professions**: Tous

🌐 **Also available in [English](payment-reminders.en.md)**

---

## Cas d'usage

Vous avez des factures impayées et devez relancer vos clients de manière professionnelle et escalader si nécessaire. Ce workflow vous aide à:

- Créer relances échelonnées (courtoise → ferme → mise en demeure)
- Calculer pénalités légales
- Documenter toutes démarches (preuve pour contentieux)
- Maintenir relation client malgré impayé

> ⚠️ **Juridique**: Les pénalités de retard sont un droit légal. Leur non-application peut affaiblir position en cas de litige.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Liste factures impayées avec dates échéance
- [ ] Coordonnées clients (email, adresse postale)
- [ ] Conditions paiement initiales (factures)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Identifier les impayés

```bash
mkdir -p ~/Cowork-Workspace/{input,output/relances}

# Si vous avez fichier facturation
cp ~/Documents/factures-en-cours.xlsx ~/Cowork-Workspace/input/
```

Analyser situation:

```
Analyse fichier ~/Cowork-Workspace/input/factures-en-cours.xlsx

Identifie factures impayées où:
- Date échéance dépassée
- Statut paiement ≠ "Payé"

Pour chaque impayé, calcule:
- Jours de retard
- Taux pénalité légal (Taux BCE au [date] + 10 points = X%)
- Montant pénalité = Facture TTC × Taux × (Jours/365)
- Indemnité forfaitaire = 40€

Classe par niveau relance:
- NIVEAU 1: 1-15 jours retard (relance courtoise)
- NIVEAU 2: 16-30 jours retard (relance ferme)
- NIVEAU 3: 31-45 jours retard (mise en demeure)
- NIVEAU 4: >45 jours (contentieux avocat/huissier)

Génère tableau: ~/Cowork-Workspace/output/relances/etat-impayes-[date].xlsx
```

### Étape 2: Relance Niveau 1 (Courtoise)

Pour impayés récents (1-15 jours):

```
Génère email relance courtoise pour:
- Client: [Nom]
- Facture: F2026-042
- Montant TTC: 1200€
- Échéance: 19/01/2026
- Retard: 8 jours

TON: Courtois, possibilité erreur/oubli

STRUCTURE EMAIL:
Objet: Facture F2026-042 - Rappel aimable

Bonjour [Nom],

Nous avons émis la facture F2026-042 d'un montant de 1200€ TTC le [date émission],
avec échéance au 19 janvier 2026.

À ce jour, nous n'avons pas constaté le règlement de cette facture.

Il est possible que:
- Le paiement soit en cours et nos services se soient croisés
- Un oubli se soit glissé dans votre organisation
- Une difficulté soit apparue (dans ce cas, contactez-nous)

Si le règlement n'a pas encore été effectué, nous vous remercions de bien
vouloir procéder dans les meilleurs délais.

Pour tout renseignement, nous restons à votre disposition.

Cordialement,
[Signature]

Pièce jointe: Copie facture F2026-042

Format: Fichier texte email
Sauvegarde: ~/Cowork-Workspace/output/relances/R1-F2026-042-[date].txt
```

### Étape 3: Relance Niveau 2 (Ferme)

Pour impayés 16-30 jours:

```
Génère lettre recommandée relance ferme pour:
- Client: [Nom]
- Facture: F2026-038
- Montant TTC: 2500€
- Échéance: 05/01/2026
- Retard: 22 jours
- Pénalités calculées: [montant]€

TON: Professionnel et ferme, mention conséquences

STRUCTURE LETTRE:
[Vos coordonnées]                              [Date]

[Coordonnées client]

Objet: Relance pour facture impayée F2026-038
       Lettre recommandée avec AR

Madame, Monsieur,

Par la présente, nous vous rappelons que la facture F2026-038 d'un montant
de 2500€ TTC, échue le 5 janvier 2026, demeure impayée à ce jour.

Malgré notre relance du [date relance 1], nous n'avons reçu aucun règlement
ni retour de votre part.

Conformément à l'article L441-6 du Code de commerce et aux conditions
générales de vente figurant sur notre facture, les pénalités de retard sont
exigibles:
- Taux: [Taux BCE + 10 points]% par an
- Pénalités au [date]: [montant]€
- Indemnité forfaitaire de recouvrement: 40€

TOTAL DÛ: [2500 + pénalités + 40]€

Nous vous demandons de procéder au règlement intégral sous 8 jours à compter
de la réception de ce courrier.

Passé ce délai, et en l'absence de règlement ou de proposition de plan
de paiement accepté par nos services, nous nous verrons contraints d'engager
une procédure de recouvrement judiciaire, sans autre notification.

En cas de difficulté, nous vous invitons à nous contacter au [tel] afin
d'envisager une solution amiable.

Nous vous prions d'agréer, Madame, Monsieur, nos salutations distinguées.

[Signature]

Pièces jointes:
- Facture F2026-038
- Conditions générales de vente
- Décompte pénalités

Format: PDF (courrier officiel)
Sauvegarde: ~/Cowork-Workspace/output/relances/R2-F2026-038-LRAR-[date].pdf
```

### Étape 4: Mise en demeure (Niveau 3)

Pour impayés >30 jours:

```
Génère mise en demeure formelle pour:
- Client: [Nom]
- Facture: F2026-025
- Montant TTC: 5000€
- Échéance: 10/12/2025
- Retard: 41 jours
- Pénalités: [montant]€

TON: Formel et juridique, préalable procédure

STRUCTURE MISE EN DEMEURE:
[Vos coordonnées]                              [Date]
[Coordonnées client]

Objet: MISE EN DEMEURE DE PAYER
       Facture F2026-025 - Montant 5000€ TTC
       Lettre recommandée avec AR

Madame, Monsieur,

MISE EN DEMEURE

Nous faisons suite à nos courriers des [dates relances précédentes] restés
sans effet.

La facture F2026-025, émise le [date] pour un montant de 5000€ TTC, avec
échéance au 10 décembre 2025, demeure impayée à ce jour soit 41 jours de retard.

Par la présente, nous vous mettons formellement en demeure de procéder au
règlement de:
- Montant facture TTC: 5000,00€
- Pénalités de retard (art. L441-6 C.com): [montant]€
- Indemnité forfaitaire recouvrement: 40,00€
- Frais de recouvrement déjà engagés: [si applicable]€
TOTAL: [montant total]€

sous un délai maximum de 8 JOURS OUVRÉS à compter de la réception de la
présente, faute de quoi nous engagerons SANS AUTRE AVIS:

1. Procédure d'injonction de payer devant le Tribunal compétent
2. Inscription au fichier des incidents de paiement (FNCI)
3. Recouvrement par voie d'huissier (frais à votre charge)

Le refus de paiement constitue un délit d'abus de confiance au sens de
l'article 314-1 du Code pénal.

Cette mise en demeure vaut dernier avertissement avant action judiciaire.

Nous restons néanmoins ouverts à un plan de paiement échelonné SI proposition
formelle reçue avant le [date limite].

Fait à [Ville], le [Date]
[Signature + cachet entreprise]

Pièces jointes:
- Facture F2026-025
- Copie relances précédentes
- Décompte actualisé des pénalités
- Accusés réception courriers antérieurs

Format: PDF (document juridique)
Sauvegarde: ~/Cowork-Workspace/output/relances/MISE-EN-DEMEURE-F2026-025-[date].pdf

IMPORTANT: Conserver preuve envoi (AR) et copie complète dossier
```

### Étape 5: Suivi et archivage

Documenter toutes actions:

```
Crée registre relances dans ~/Cowork-Workspace/output/relances/registre-relances-2026.xlsx

Colonnes:
- Facture
- Client
- Montant
- Échéance
- Retard (jours)
- Relance 1 (date + moyen)
- Relance 2 (date + moyen)
- Mise en demeure (date + AR reçu)
- Statut (en cours / payé / contentieux)
- Paiement reçu le (si applicable)
- Notes

Pour chaque relance:
- Archiver email/courrier envoyé
- Archiver AR si courrier recommandé
- Noter toute réponse client (promesse, contestation, accord plan)
```

---

## Exemples de prompts

### Batch relances mensuelles

```
Génère relances pour tous impayés du mois:

Fichier source: ~/Cowork-Workspace/input/facturation-janvier-2026.xlsx

Pour chaque facture échue non payée:
- Identifier niveau relance selon jours retard
- Générer email/courrier adapté
- Calculer pénalités
- Sauvegarder dans dossier client

Organisation:
~/Cowork-Workspace/output/relances/
├── clients/
│   ├── ClientA/
│   │   ├── R1-F2026-042.txt
│   │   └── R2-F2026-042-LRAR.pdf
│   └── ClientB/
│       └── R1-F2026-055.txt
└── registre-relances-janvier-2026.xlsx
```

### Proposition plan paiement

```
Le client Martin a répondu à la mise en demeure:
"Je rencontre des difficultés mais veux payer. Puis-je échelonner?"

Génère proposition plan paiement:

FACTURE: F2026-038 - 2500€ + 47€ pénalités + 40€ indemnité = 2587€

PROPOSITION PLAN ÉCHELONNÉ (3 mois):
- Acompte immédiat: 900€ (bon foi)
- Mensualité 1 (fin février): 850€
- Mensualité 2 (fin mars): 850€
- Solde (fin avril): 87€ (dernières pénalités)

CONDITIONS:
- Aucun retard sur échéancier (sinon exigibilité immédiate solde)
- Abandon poursuites SI respect intégral plan
- Si défaut paiement: reprise procédure + nouveaux frais

Format: Courrier accord amiable à signer par les 2 parties
Sauvegarde: ~/Cowork-Workspace/output/relances/PLAN-PAIEMENT-Martin-F2026-038.pdf
```

---

## Troubleshooting

### Client conteste facture

**Cause**: Désaccord sur prestation/montant
**Solution**: Suspendre relance, traiter litige:

```
Accusé réception contestation client Martin:
"Je ne dois que 1500€ pas 2500€, prestation incomplète"

ACTIONS:
1. Suspendre relances pénalités
2. Examiner bien-fondé contestation
3. Si contestation infondée: répondre avec preuves (BL signé, email accord)
4. Si contestation fondée: émettre avoir + nouvelle facture
5. Relancer uniquement montant non contesté

Ne JAMAIS poursuivre facture légitimement contestée
(risque de préjudice moral + mauvaise foi)

Documenter tous échanges
```

### Erreur calcul pénalités

**Cause**: Mauvais taux ou formule
**Solution**: Utiliser calcul légal:

```
Calcule pénalités pour facture F2026-042:
- Montant TTC: 1200€
- Échéance: 15/01/2026
- Date calcul: 27/01/2026
- Jours retard: 12

Taux pénalité (au 27/01/2026):
- Taux BCE (dernier publié): 4,25%
- Majoration légale: +10 points
- Taux applicable: 14,25%

Formule:
Pénalités = 1200 × 0,1425 × (12/365) = 5,62€

Indemnité forfaitaire: 40,00€

TOTAL PÉNALITÉS: 45,62€

Montant à réclamer: 1200 + 45,62 = 1245,62€
```

### Client introuvable

**Cause**: Déménagement, faillite
**Solution**: Recherches puis décision:

```
Client Dupont injoignable (email bounce, courrier retour)

DÉMARCHES:
1. Recherche Infogreffe (entreprise radiée?)
2. Appel tel client (si autre numéro connu)
3. Recherche réseaux sociaux/LinkedIn
4. Courrier ancienne adresse avec "Faire suivre SVP"

Si toujours introuvable:
- Consulter huissier (peut faire recherches)
- Évaluer coût recouvrement vs montant dû
- Si <500€ + client disparu: peut être perte sèche
- Passer en créance irrécouvrable (déclaration compta/fiscale)
```

---

## Variations

### Relance préventive (avant échéance)

```
Stratégie rappel courtois AVANT échéance:

Pour gros montants (>5000€) ou clients historiquement retardataires:

Email J-3 avant échéance:
"Nous vous rappelons que la facture F2026-089 de 8000€ arrive à échéance
le 20/02. Pour éviter tout désagrément (pénalités automatiques), merci de
vérifier que le règlement est bien programmé. Contact si question."

Effet: Réduction taux impayés de 40-60% (études secteur)
Ton: Amical service client, pas répressif
```

### Relance automatisée

```
Système relance semi-automatique:

Chaque lundi matin:
1. Scanner ~/Cowork-Workspace/factures/
2. Identifier échéances dépassées
3. Vérifier registre paiements
4. Générer emails relance N1 automatiques
5. M'envoyer liste pour validation avant envoi

Pour relances N2/N3:
- Alerte uniquement
- Validation manuelle obligatoire avant envoi

(Nécessite script automatisation)
```

---

## Bonnes pratiques

1. **Escalade progressive** — Toujours courtoisie avant fermeté
2. **Documentation exhaustive** — Tout écrit, daté, archivé (preuve tribunaux)
3. **AR systématique** — Relances fermes en recommandé AR obligatoire
4. **Calcul pénalités exact** — Erreur = contestation client
5. **Délais raisonnables** — Laisser 8-10 jours entre relances
6. **Rester professionnel** — Jamais agressif même si frustration
7. **Ouverture dialogue** — Toujours proposer plan si difficultés avérées
8. **Seuil contentieux** — Évaluer coût avocat/huissier vs montant récupérable

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
