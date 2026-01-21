# Workflow: Création de Newsletter

> **Temps estimé**: 25 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 📣 Communication
> **Professions**: Commerçants, Dirigeants

🌐 **Also available in [English](newsletter-creation.en.md)**

---

## Cas d'usage

Vous devez créer une newsletter régulière pour maintenir contact avec clients/prospects. Ce workflow vous aide à:

- Structurer contenu newsletter efficace
- Générer textes adaptés à votre audience
- Planifier calendrier éditorial
- Mesurer engagement

> ⚠️ **Performance**: Newsletters régulières (1x/mois minimum) maintiennent taux réachat +25% vs aucune communication.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Liste diffusion emails (clients/prospects)
- [ ] Actualités/sujets à partager
- [ ] Outil envoi (Mailchimp, Sendinblue, Brevo, etc.)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Définir ligne éditoriale

```bash
mkdir -p ~/Cowork-Workspace/newsletters
```

Établir cadre:

```
Définis ligne éditoriale newsletter pour: [Nom entreprise]

MON ACTIVITÉ: [Ex: Électricien, Commerce mode, Consultant]
MON AUDIENCE: [Clients B2B / Particuliers / Mixte]
OBJECTIF NEWSLETTER: [Fidélisation / Ventes / Expertise / Mixte]

FRÉQUENCE:
- Mensuelle (recommandé minimum)
- Bimensuelle (si beaucoup contenu)
- Trimestrielle (si peu actualités)

STRUCTURE TYPE (Règle des tiers):

1/3 CONTENU ÉDUCATIF (Valeur ajoutée):
- Conseils métier
- Guides pratiques
- Tendances secteur
- FAQ clients

Exemples électricien:
- "5 signes que votre installation électrique est dangereuse"
- "Comment réduire votre facture électrique de 20%"
- "Nouvelles normes RE2020: Ce qui change pour vous"

2/3 ACTUALITÉS ENTREPRISE (Engagement):
- Nouvelles réalisations (avant/après)
- Nouveaux services
- Équipe (recrutements, anniversaires)
- Événements (salons, portes ouvertes)

Exemples:
- "Nous avons rénové l'installation électrique de [client] (photos)"
- "Nouveau service: Audit énergétique gratuit jusqu'au 31 mars"
- "Notre équipe s'agrandit: Bienvenue à Lucas, apprenti électricien"

3/3 PROMOTIONS/CTA (Conversion):
- Offres limitées dans le temps
- Code promo exclusif newsletter
- Invitation événement
- Demande avis/témoignage

Exemples:
- "Offre spéciale abonnés: -10% sur dépannage ce mois-ci (code: NEWS10)"
- "Parrainez un ami, recevez 50€ de réduction"

TON:
- Professionnel mais accessible
- Tutoiement ou vouvoiement selon audience
- Humain (éviter jargon technique excessif)

NOM NEWSLETTER:
[Créer nom accrocheur]
Exemples:
- "L'Éclairage" (électricien)
- "La Lettre Mode" (commerce vêtements)
- "RH Pratique" (consultant RH)

Sauvegarde: ~/Cowork-Workspace/newsletters/ligne-editoriale.txt
```

### Étape 2: Planifier contenus (calendrier éditorial)

```
Crée calendrier éditorial newsletters 2026:

JANVIER:
Thème: Bonnes résolutions / Nouveautés année
Contenu éducatif: "Checklist sécurité électrique nouvelle année"
Actualité: "Nos vœux + Bilan 2025"
Promotion: "Audit gratuit janvier"

FÉVRIER:
Thème: Préparation printemps
Contenu: "Préparer jardin électrifié (éclairage, prises extérieures)"
Actualité: "Nouveau partenariat avec [marque]"
Promotion: "Devis gratuit aménagements extérieurs"

MARS:
Thème: Rénovation / Changement heure
Contenu: "Profiter changement heure pour vérifier installations"
Actualité: "Réalisation du mois: [projet]"
Promotion: "Offre printemps: Détecteurs fumée -20%"

[...Continuer pour 12 mois]

ÉVÉNEMENTS À INTÉGRER:
- Saisonnalité métier (ex: chauffage hiver, clim été)
- Fêtes (Noël, fête des mères si B2C)
- Salons professionnels
- Anniversaire entreprise
- Périodes creuses (stimuler activité)

Format: Tableau Excel
Colonnes: Mois | Thème | Contenu éducatif | Actualité | Promotion | Date envoi | Statut
Sauvegarde: ~/Cowork-Workspace/newsletters/calendrier-editorial-2026.xlsx
```

### Étape 3: Rédiger newsletter

```
Génère newsletter [Mois] pour: [Nom entreprise]

EN-TÊTE:
NOM: [Nom newsletter]
NUMÉRO: #[X]
DATE: [Mois Année]

PRÉ-HEADER (texte aperçu email):
"[Accroche 50 caractères résumant contenu principal]"
Exemple: "5 conseils sécurité + Offre spéciale dépannage ce mois"

OBJET EMAIL (crucial taux ouverture):
Formules efficaces:
- "[Prénom], vos 5 conseils électricité du mois"
- "Votre guide [sujet] + -10% ce mois"
- "Nouveau: [service] disponible dès maintenant"

Éviter:
- ❌ "Newsletter janvier 2026" (ennuyeux)
- ❌ TOUT EN MAJUSCULES (spam)
- ❌ Trop de symboles (🔥💰🎁🎁🎁)

CORPS NEWSLETTER:

┌─────────────────────────────────────────┐
│ [LOGO]            L'ÉCLAIRAGE #12       │
│                   Janvier 2026          │
└─────────────────────────────────────────┘

Bonjour [Prénom],

[Édito 2-3 phrases: Intro chaleureuse + annonce contenu]

Exemple:
"Bonne année 2026! Pour démarrer l'année du bon pied, nous avons
préparé un guide pratique sur la sécurité électrique. Découvrez aussi
notre nouvelle offre audit gratuit valable tout le mois."

───────────────────────────────────────────

📚 CONSEIL DU MOIS
Titre: 5 signes que votre installation électrique est dangereuse

1. Disjonctions fréquentes
   → Cause: Surcharge ou court-circuit
   → Action: Faire vérifier par professionnel

2. Prises chaudes ou qui font du bruit
   → Danger: Risque incendie
   → Action: Arrêter utilisation + contrôle urgent

3. Odeur de brûlé près du tableau
   → Cause: Connexion défectueuse
   → Action: Couper l'électricité + appel électricien

4. Installation >25 ans sans révision
   → Risque: Non-conformité normes actuelles
   → Action: Audit sécurité recommandé

5. Absence disjoncteur différentiel
   → Danger: Pas de protection contre électrocution
   → Action: Mise aux normes obligatoire

[Bouton CTA: "Audit gratuit →"]

───────────────────────────────────────────

🏗️ NOS RÉALISATIONS
Projet du mois: Rénovation électrique complète Mme Dubois (Lyon 6)

Avant: Installation vétuste (40 ans), tableau dangereux
Après: Mise aux normes complète, domotique, économies -25% facture

📸 [Photos avant/après]
💬 Avis client: "Travail impeccable, équipe professionnelle..."

[Lien: "Voir toutes nos réalisations →"]

───────────────────────────────────────────

🎉 OFFRE SPÉCIALE ABONNÉS
Janvier uniquement: Audit électrique GRATUIT (valeur 150€)

Faites vérifier votre installation par notre expert:
✓ Contrôle conformité NF C 15-100
✓ Détection anomalies
✓ Devis détaillé si travaux nécessaires
✓ Conseils économies énergie

[Bouton CTA: "Réserver mon audit gratuit →"]
Code à mentionner: NEWS-JAN26

───────────────────────────────────────────

🔔 BRÈVES
• Notre équipe s'agrandit: Bienvenue Lucas, apprenti électricien
• Nouveau partenariat Legrand pour matériel premium
• Prochain salon: [Nom] les 15-17 mars (venez nous voir stand B12)

───────────────────────────────────────────

📞 BESOIN D'UN DÉPANNAGE?
Joignables 7j/7: 06 12 34 56 78
Email: contact@entreprise.fr

Suivez-nous:
[Facebook] [LinkedIn] [Instagram]

---

Vous recevez cet email car vous êtes client ou avez demandé à recevoir nos actualités.
[Se désabonner] | [Mettre à jour mes préférences]

[Nom Entreprise] - [Adresse] - SIRET [xxx]

Format: HTML responsive (mobile-friendly)
Longueur: 400-600 mots max (lisible en 2-3 min)
Sauvegarde: ~/Cowork-Workspace/newsletters/newsletter-janvier-2026.html
```

### Étape 4: Envoi et suivi

```
Envoi newsletter via [Mailchimp/Sendinblue/Brevo]:

PRÉ-ENVOI (checklist):
□ Tester envoi sur votre email (vérifier rendu)
□ Vérifier liens (tous cliquables)
□ Tester version mobile (70% ouvertures sur mobile)
□ Relire (fautes = perte crédibilité)
□ Segmenter si besoin (B2B vs B2C, zones géographiques)

ENVOI:
Meilleur moment (taux ouverture optimisé):
- Jour: Mardi-Jeudi (éviter lundi/vendredi)
- Heure: 10h-11h OU 14h-15h
- Éviter: Weekends, jours fériés, vacances scolaires

SUIVI INDICATEURS (48h après envoi):

TAUX OUVERTURE:
Formule: (Emails ouverts / Emails délivrés) × 100
Objectif: >20% (B2B) / >15% (B2C)
Si <10%: Revoir objet email (pas assez accrocheur)

TAUX CLIC (CTR):
Formule: (Clics / Emails ouverts) × 100
Objectif: >3%
Si <2%: Contenu pas assez engageant ou CTA faible

TAUX DÉSABONNEMENT:
Formule: (Désabos / Emails envoyés) × 100
Acceptable: <0,5%
Si >2%: Fréquence trop élevée OU contenu non pertinent

CONVERSIONS:
Actions réalisées: Audits réservés, devis demandés, achats
ROI: Revenus générés / Coût newsletter

Tableau suivi:
| Newsletter | Date | Envoyés | Ouverts | Taux | Clics | CTR | Désabos | Conversions | CA |
|------------|------|---------|---------|------|-------|-----|---------|-------------|-----|
| #12 Jan | 15/01 | 450 | 108 | 24% | 12 | 11% | 2 | 3 audits | 1800€ |

Sauvegarde: ~/Cowork-Workspace/newsletters/stats-newsletters-2026.xlsx
```

### Étape 5: Optimisation continue

```
Amélioration basée sur données:

ANALYSE MENSUELLE:

TESTS A/B (sur partie liste):
Test objet email:
- Version A: "5 conseils sécurité électrique"
- Version B: "[Prénom], votre checklist sécurité du mois"
→ Garder version meilleur taux ouverture

Test CTA:
- Version A: "En savoir plus"
- Version B: "Réserver mon audit gratuit"
→ Garder version plus de clics

Test longueur:
- Version A: Newsletter courte (300 mots)
- Version B: Newsletter longue (600 mots)
→ Analyser engagement

ÉVOLUTIONS:
- Si taux ouverture ↘: Varier objets, horaires envoi
- Si CTR ↘: Améliorer CTA, images plus engageantes
- Si désabos ↑: Réduire fréquence ou revoir pertinence contenu

COLLECTE FEEDBACK:
Ajouter mini-sondage newsletter (1 clic):
"Cette newsletter vous a été utile?"
[😊 Oui] [😐 Moyen] [😞 Non]

Analyser sujets qui marchent le mieux (plus de clics):
→ Créer plus de contenu similaire

Sauvegarde insights: ~/Cowork-Workspace/newsletters/optimisations-2026.txt
```

---

## Exemples de prompts

### Newsletter événement spécial

```
Newsletter exceptionnelle: Portes ouvertes

URGENCE: Envoi dans 7 jours

Objet: "[Prénom], venez nous rencontrer samedi 25 janvier!"

Contenu:
- Invitation portes ouvertes (date, heure, adresse)
- Programme: Démos, conseils gratuits, tombola
- Offre exclusive jour J: -20% sur devis signés
- Bouton RSVP (compter participants)
- Plan accès + parking

Envoi: J-7 + Rappel J-1

Sauvegarde: ~/Cowork-Workspace/newsletters/newsletter-portes-ouvertes-2026.html
```

### Newsletter réactivation (clients inactifs)

```
Campagne réactivation clients >1 an sans achat:

Segment: Clients dernière commande 2024

Objet: "On ne vous a pas vu depuis longtemps, [Prénom]..."

Ton: Chaleureux, pas insistant

Contenu:
- "Vous nous manquez!" (authentique)
- "Voici nos nouveautés depuis votre dernière visite"
- Offre spéciale retour: -15% code RETOUR15
- "Des questions? Répondez à cet email"

Éviter:
- Culpabilisation ("Pourquoi ne commandez-vous plus?")
- Pression excessive

Objectif: Réengagement +sentiment positif

Sauvegarde: ~/Cowork-Workspace/newsletters/reactivation-clients-inactifs.html
```

---

## Troubleshooting

### Faible taux ouverture

**Cause**: Objet email non attractif
**Solution**: Formules éprouvées:

```
OBJETS À FORT TAUX OUVERTURE:

✓ Personnalisation: "[Prénom], votre [bénéfice]"
✓ Curiosité: "La tendance que tout le monde ignore"
✓ Urgence (authentique): "Derniers jours pour [offre]"
✓ Question: "Saviez-vous que [fait surprenant]?"
✓ Bénéfice direct: "Économisez 200€ avec cette astuce"

✗ Éviter:
- Spam words: "Gratuit!!!", "URGENT", "Argent facile"
- Trop long (>50 caractères)
- Générique: "Newsletter janvier"
- Tout en majuscules

Test: Envoyer 10% liste avec objet A, 10% avec objet B
Mesurer taux ouverture après 6h
Envoyer reste liste avec meilleur objet
```

### Signalement spam

**Cause**: Mauvaises pratiques envoi
**Solution**: Conformité stricte:

```
RÈGLES ANTI-SPAM:

LÉGALES (RGPD):
✓ Consentement opt-in (case cochée volontairement)
✓ Lien désabonnement visible (footer)
✓ Identité expéditeur claire (pas de no-reply)
✓ Adresse postale entreprise dans footer

TECHNIQUES:
✓ Authentification SPF/DKIM/DMARC (DNS)
✓ Ratio texte/images équilibré (pas que des images)
✓ Éviter trop de liens (max 3-5)
✓ Pas de pièces jointes (lien vers téléchargement)
✓ Tester avec Mail-Tester.com (score >8/10)

HYGIÈNE LISTE:
✓ Nettoyer emails bounces (rebonds)
✓ Retirer inactifs >2 ans
✓ Double opt-in (confirmation email)
```

---

## Variations

### Newsletter automatisée (drip campaign)

```
Séquence automatique nouveaux abonnés:

EMAIL 1 (Immédiat): Bienvenue
- Merci inscription
- Présentation entreprise
- Code promo bienvenue -10%

EMAIL 2 (J+3): Éducation
- Guide débutant [votre domaine]
- Ressources gratuites

EMAIL 3 (J+7): Témoignages
- Avis clients
- Études de cas
- Preuve sociale

EMAIL 4 (J+14): Offre
- Promotion limitée
- Incitation première commande

Configuration: Outil email automation (Mailchimp Automation, Brevo Workflows)
Sauvegarde workflow: ~/Cowork-Workspace/newsletters/drip-campaign-bienvenue.txt
```

### Newsletter multilingue

```
Clientèle internationale:

LANGUES: Français (principal) + Anglais

STRATÉGIE:
1. Version française complète
2. Version anglaise traduite (adapter culturellement)
3. Segmenter liste par langue préférée
4. Envoi séparé même contenu, langues différentes

Outils traduction:
- DeepL (qualité supérieure)
- Google Translate (basique)
- Traducteur professionnel (contenu marketing critique)

Sauvegarde: ~/Cowork-Workspace/newsletters/[mois]-FR.html + [mois]-EN.html
```

---

## Bonnes pratiques

1. **Régularité** — Même fréquence chaque mois (prévisibilité)
2. **Valeur d'abord** — 70% valeur ajoutée / 30% promotion
3. **Mobile-first** — Tester rendu mobile (70% lectures)
4. **Désabonnement facile** — Lien visible (RGPD + image positive)
5. **Personnalisation** — Utiliser prénom, segmenter si possible
6. **CTA clair** — 1 objectif principal par newsletter
7. **Nettoyer liste** — Retirer bounces et inactifs (améliore délivrabilité)
8. **Mesurer ROI** — Tracker conversions (pas que vanity metrics)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
