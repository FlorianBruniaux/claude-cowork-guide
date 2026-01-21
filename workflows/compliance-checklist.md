# Workflow: Vérification Documents Obligatoires

> **Temps estimé**: 20 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 📋 Administratif
> **Professions**: Artisans/BTP, Commerçants

🌐 **Also available in [English](compliance-checklist.en.md)**

---

## Cas d'usage

Vous devez vous assurer d'être en conformité réglementaire pour éviter amendes et problèmes légaux. Ce workflow vous aide à:

- Vérifier documents obligatoires à jour
- Identifier documents manquants ou périmés
- Planifier renouvellements
- Préparer contrôles administratifs

> ⚠️ **Juridique**: Le défaut de documents obligatoires peut entraîner amendes (135€ à 3000€) et interdiction d'exercer.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Votre activité (code NAF/APE)
- [ ] Statut juridique (auto-entrepreneur, SARL, etc.)
- [ ] Documents actuels (scans si possible)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Identifier documents obligatoires selon activité

```bash
mkdir -p ~/Cowork-Workspace/{input,output/conformite}
```

Établir la liste:

```
Mon activité: [Électricien / Plombier / Maçon / Commerce / etc.]
Statut: [Auto-entrepreneur / SARL / EI / etc.]
Département: [Code postal]

Liste TOUS les documents obligatoires pour mon activité:

1. DOCUMENTS ENTREPRISE (tous)
2. ASSURANCES
3. QUALIFICATIONS MÉTIER
4. AFFICHAGES OBLIGATOIRES
5. REGISTRES ET DÉCLARATIONS
6. DOCUMENTS SPÉCIFIQUES ACTIVITÉ

Pour chaque document:
- Nom exact
- Organisme émetteur
- Durée validité
- Sanctions si défaut
- Renouvellement (délai avant expiration)

Format: Checklist Excel
Sauvegarde: ~/Cowork-Workspace/output/conformite/documents-obligatoires-[activité].xlsx
```

### Étape 2: Checklist artisan BTP (exemple)

```
Crée checklist conformité pour: Artisan électricien auto-entrepreneur

DOCUMENTS ENTREPRISE:
□ Extrait K-bis OU Extrait D1 (auto-entrepreneur)
  - Obtention: Chambre des Métiers
  - Validité: Moins de 3 mois pour démarches administratives
  - Renouvellement: Obtenir nouveau extrait si demandé

□ Attestation INSEE (SIRET/SIREN)
  - Obtention: Automatique création entreprise
  - Validité: Permanente (sauf modification activité)

□ Carte professionnelle artisan (Chambre des Métiers)
  - Obligatoire si: >3 salariés OU chantiers publics
  - Validité: 5 ans
  - Renouvellement: 3 mois avant expiration

ASSURANCES OBLIGATOIRES:
□ Assurance Responsabilité Civile Professionnelle (RC Pro)
  - Obligatoire: OUI (artisan BTP)
  - Validité: 1 an
  - Renouvellement: 1 mois avant expiration
  - Sanction défaut: 45 000€ + 6 mois prison (art. L243-3)

□ Assurance Décennale
  - Obligatoire: OUI (travaux structure, clos/couvert, équipements)
  - Validité: 1 an
  - Fournir au client: Avant signature devis
  - Sanction défaut: 75 000€ + 6 mois prison

□ Garantie Financière (si acompte >30%)
  - Obligatoire si: Demande acompte >30% TTC
  - Montant: Selon CA
  - Validité: 1 an

QUALIFICATIONS:
□ Qualification RGE (Reconnu Garant Environnement)
  - Obligatoire si: Travaux rénovation énergétique
  - Validité: 4 ans
  - Renouvellement: 6 mois avant expiration
  - Organisme: Qualibat, Qualifelec, etc.

□ Habilitation électrique (si applicable)
  - Niveaux: B1, B2, BR selon travaux
  - Validité: 3 ans
  - Renouvellement: Formation recyclage

AFFICHAGES CHANTIER OBLIGATOIRES:
□ Panneau chantier (si >20 jours OU permis construire)
  - Contenu: Maître d'ouvrage, architecte, entreprise, dates
  - Dimensions: Minimum 80x120cm
  - Sanction défaut: 1200€

DOCUMENTS CLIENTS:
□ Devis conforme
  - Mentions obligatoires: (25 mentions légales)
  - Validité: 3 mois minimum
  - Sanction défaut: 1500€

□ Facture conforme
  - Mentions obligatoires: (21 mentions légales)
  - Conservation: 10 ans
  - Sanction défaut: 75 000€

□ Attestation assurance décennale (jointe devis)
  - Obligatoire: Avant signature
  - Sanction défaut: Nullité contrat

REGISTRES:
□ Registre unique du personnel (si salariés)
  - Conservation: 5 ans après départ salarié
  - Sanction défaut: 750€

□ Document Unique Évaluation Risques (DUER)
  - Obligatoire: Dès 1 salarié
  - Mise à jour: Annuelle minimum
  - Sanction défaut: 1500€

SPÉCIFIQUE ÉLECTRICITÉ:
□ Attestation Consuel (si installation neuve/rénovation totale)
  - Obligatoire: Avant mise sous tension
  - Coût: ~150€
  - Délai obtention: 2-3 semaines

□ Schéma unifilaire et plan implantation
  - Fournir au client: Fin travaux
  - Conservation: Annexe facture

Format: PDF checklist imprimable + Excel suivi
Sauvegarde: ~/Cowork-Workspace/output/conformite/checklist-electricien-2026.pdf
```

### Étape 3: Audit actuel

Vérifier votre conformité:

```
Audit conformité au [date]:

Pour chaque document de la checklist:
1. Je possède le document: OUI / NON / OBSOLÈTE
2. Si OUI: Date obtention + Date expiration
3. Si NON ou OBSOLÈTE: Actions à faire

Exemple audit:
□ RC Pro: ✓ OUI - Expire le 31/03/2026 → Renouveler avant 28/02
□ Décennale: ✓ OUI - Expire le 15/04/2026 → OK
□ RGE: ✗ NON - Jamais obtenu → S'inscrire formation Qualif

Élec (si électricien)
□ Habilitation B2: ✓ OUI - Expire 10/08/2026 → Planifier recyclage juin

Génère rapport audit:
- Documents OK (verts)
- Documents à renouveler <3 mois (orange)
- Documents manquants (rouge)
- Plan d'action avec priorités et échéances

Sauvegarde: ~/Cowork-Workspace/output/conformite/audit-conformite-[date].pdf
```

### Étape 4: Plan de mise en conformité

Si documents manquants:

```
Depuis rapport audit, crée plan action:

PRIORITÉ CRITIQUE (blocage activité):
1. Assurance Décennale manquante
   - Action: Demander 3 devis assureurs
   - Contact: [Liste courtiers spécialisés BTP]
   - Délai: Obtenir avant tout nouveau chantier
   - Coût estimé: 1500-3000€/an selon CA

PRIORITÉ HAUTE (risque amende):
2. Attestation Consuel manquante dernier chantier
   - Action: Déposer dossier Consuel
   - Docs nécessaires: Photos tableau, schéma unifilaire, attestation conformité
   - Délai: Sous 2 semaines
   - Coût: 150€

PRIORITÉ MOYENNE (amélioration):
3. RGE à obtenir (ouvre marché rénovation énergétique)
   - Action: S'inscrire formation Qualifelec
   - Délai: 3-6 mois
   - Coût: 1200€ formation + 400€/an certification

Format: Gantt ou tableau avec colonnes (Action | Responsable | Échéance | Coût | Statut)
Sauvegarde: ~/Cowork-Workspace/output/conformite/plan-action-conformite.xlsx
```

### Étape 5: Calendrier renouvellements

Anticiper expirations:

```
Crée calendrier renouvellements 2026:

Janvier:
- Vérifier validité assurances (expiration mars/avril?)

Mars:
- Renouveler RC Pro (expire 31/03)
- Commander extrait D1 à jour (démarches)

Avril:
- Renouveler Décennale (expire 15/04)

Juin:
- Planifier recyclage habilitation électrique (expire août)

Septembre:
- Mise à jour DUER annuelle
- Vérification qualifications RGE

Décembre:
- Audit conformité annuel complet
- Préparer budget assurances année suivante

Intégrer ce calendrier dans outil gestion (Google Calendar, Outlook, etc.)
avec alertes -30 jours avant chaque échéance

Sauvegarde: ~/Cowork-Workspace/output/conformite/calendrier-renouvellements-2026.ics
```

---

## Exemples de prompts

### Checklist commerce alimentaire

```
Crée checklist conformité pour: Boulangerie-pâtisserie

HYGIÈNE ET SÉCURITÉ ALIMENTAIRE:
□ Agrément sanitaire (si >30 repas/jour)
□ Plan de Maîtrise Sanitaire (PMS)
□ Formation hygiène alimentaire (HACCP)
□ Registre températures chambres froides
□ Contrôles vétérinaires à jour

AFFICHAGES OBLIGATOIRES:
□ Prix au kilo (produits au poids)
□ Origine viandes
□ Allergènes (14 allergènes majeurs)
□ Interdiction fumer
□ Horaires ouverture

DOCUMENTS:
□ Licences (si vente alcool)
□ Permis exploitation (si >1 an)
□ Assurance RC Pro
□ Contrat collecte déchets

Sauvegarde: ~/Cowork-Workspace/output/conformite/checklist-boulangerie.pdf
```

### Préparation contrôle inspection travail

```
Inspection du travail prévue le [date]

Prépare dossier avec TOUS documents obligatoires:

1. AFFICHAGES (vérifier présence):
   - Convention collective applicable
   - Horaires travail
   - Coordonnées inspection travail
   - Médecine du travail
   - Règlement intérieur (si >50 salariés)
   - Consignes sécurité incendie

2. REGISTRES (accessibles immédiatement):
   - Registre unique personnel à jour
   - Document Unique (DUER) <1 an
   - Registre des accidents du travail

3. CONTRATS ET BULLETINS:
   - Contrats de travail tous salariés
   - Bulletins paie 12 derniers mois
   - Attestations formations sécurité

4. MÉDECINE DU TRAVAIL:
   - Attestations visites médicales à jour
   - Fiches aptitude

Créer check-list pré-inspection + dossier PDF complet
Sauvegarde: ~/Cowork-Workspace/output/conformite/dossier-inspection-travail-[date].pdf
```

---

## Troubleshooting

### Assurance expirée par erreur

**Cause**: Oubli renouvellement
**Solution**: Action urgente:

```
Assurance Décennale expirée depuis 5 jours

ACTIONS IMMÉDIATES:
1. STOP tout nouveau chantier (ne pas signer devis)
2. Contacter assureur en urgence (renouvellement rétroactif parfois possible)
3. Si impossible: Souscrire nouvelle assurance (délai carence 10 jours)
4. Informer clients chantiers en cours (obligation transparence)
5. Vérifier si couverture rétroactive possible

CONSÉQUENCES:
- Travaux pendant période non-couverte: Risque personnel en cas sinistre
- Client peut annuler contrat sans pénalité
- Amende pénale si contrôle

PRÉVENTION:
- Mettre alerte calendrier -60 jours avant expiration
- Renouvellement automatique si possible
```

### Document demandé inconnu

**Cause**: Réglementation récente ou spécifique
**Solution**: Recherche méthodique:

```
Client demande "Certificat Qualibat RGE mention X"

Méthode recherche:
1. Site organisme (www.qualibat.com)
2. Chambre des Métiers (conseiller)
3. Syndicat professionnel (FFB, CAPEB)
4. Forums métier
5. Appel organisme certificateur

Vérifier:
- Document vraiment obligatoire OU juste "souhaitable"?
- Pour quels types de travaux?
- Coût et délai obtention
- Prérequis (formations, CA minimum)

Informer client si:
- Document non applicable à votre activité
- Délai obtention incompatible planning
```

---

## Variations

### Checklist multi-activités

```
Entreprise multi-services (plomberie + électricité + chauffage)

Créer checklist segmentée:

COMMUN (tous métiers):
- RC Pro multi-activités
- Décennale multi-lots
- Documents entreprise

SPÉCIFIQUE PLOMBERIE:
- Attestation capacité professionnelle
- [Documents spécifiques]

SPÉCIFIQUE ÉLECTRICITÉ:
- Habilitations électriques
- Consuel

SPÉCIFIQUE CHAUFFAGE:
- Attestation capacité manipuler fluides frigorigènes
- RGE Qualipac (pompes à chaleur)

Total documents: Audit complet trimestriel
```

### Export numérique sécurisé

```
Tous documents scannés en haute qualité:

Organisation cloud sécurisé:
~/Conformite/
├── Entreprise/
│   ├── K-bis.pdf
│   ├── Statuts.pdf
│   └── Assurance-RC-2026.pdf
├── Assurances/
│   ├── Decennale-2026.pdf
│   └── Historique/
├── Qualifications/
│   ├── RGE-Qualifelec-2024-2028.pdf
│   └── Habilitation-B2-expire-2026.pdf
└── Audit/
    └── Audit-conformite-janvier-2026.pdf

Backup:
- Cloud chiffré (Dropbox, Google Drive Pro)
- Disque dur externe (mise à jour mensuelle)
- Copie physique chez expert-comptable

Accès mobile: App scan (pour montrer docs chantier si contrôle)
```

---

## Bonnes pratiques

1. **Audit annuel complet** — Vérifier l'ensemble 1 fois/an minimum
2. **Anticipation renouvellements** — Alertes -60 jours avant expiration
3. **Centralisation documents** — 1 dossier unique (physique + numérique)
4. **Veille réglementaire** — S'abonner newsletter Chambre des Métiers/Commerce
5. **Conseil expert** — Faire valider checklist par comptable ou avocat
6. **Formation continue** — Obligation certaines professions, bon pour tous
7. **Budget conformité** — Provisionner coûts assurances/certifications
8. **Traçabilité** — Conserver historique (prouver bonne foi si contrôle)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
