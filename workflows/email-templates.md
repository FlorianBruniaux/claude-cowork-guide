# Workflow: Templates d'Emails Clients

> **Temps estimé**: 10 minutes
> **Difficulté**: Débutant
> **Catégorie**: 📣 Communication
> **Professions**: Tous

🌐 **Also available in [English](email-templates.en.md)**

---

## Cas d'usage

Vous envoyez régulièrement les mêmes types d'emails (relances, confirmations, remerciements). Ce workflow vous aide à:

- Créer des templates réutilisables
- Personnaliser rapidement chaque envoi
- Maintenir un ton professionnel cohérent
- Gagner du temps sur emails récurrents

> ⚠️ **Note**: Ce workflow crée les textes d'emails. L'envoi reste manuel (copier-coller dans votre client email).

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Liste des types d'emails fréquents
- [ ] Ton souhaité (formel, cordial, etc.)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Identifier vos besoins

Listez vos emails les plus fréquents:

```
Liste les types d'emails que j'envoie souvent en tant que [votre métier]:
- Confirmation de rendez-vous
- Envoi de devis
- Relance devis sans réponse
- Confirmation commande
- Accusé réception paiement
- Remerciement client
- [autres...]

Pour chaque type, suggère structure optimale
```

### Étape 2: Créer les templates

```bash
mkdir -p ~/Cowork-Workspace/output/email-templates
```

Puis demandez:

```
Crée des templates d'emails pour:

1. CONFIRMATION RENDEZ-VOUS
Objectif: Confirmer date/heure intervention
Ton: Cordial et professionnel
Variables: [nom], [date], [heure], [adresse]

2. ENVOI DEVIS
Objectif: Accompagner envoi devis
Ton: Professionnel et commercial
Variables: [nom], [numéro devis], [montant], [validité]

3. RELANCE DEVIS
Objectif: Relancer après 1 semaine sans réponse
Ton: Cordial sans insister
Variables: [nom], [numéro devis], [date envoi initial]

4. REMERCIEMENT POST-CHANTIER
Objectif: Remercier et demander avis
Ton: Chaleureux
Variables: [nom], [nature travaux]

Pour chaque template:
- Objet email clair
- Corps structuré (intro, corps, conclusion, signature)
- Variables entre [crochets]
- Longueur: 100-150 mots max

Format: fichiers texte séparés
Dossier: ~/Cowork-Workspace/output/email-templates/
```

### Étape 3: Vérifier les templates

Cowork montrera les templates créés. **Vérifiez**:

- ✓ Ton adapté à votre activité
- ✓ Variables bien identifiées
- ✓ Pas de fautes
- ✓ Call-to-action clair

### Étape 4: Sauvegarder

```
Procède avec la création des templates
```

### Étape 5: Utiliser un template

Quand vous avez besoin d'envoyer un email:

```
Utilise le template "confirmation-rendez-vous"

Remplis avec:
- [nom]: Monsieur Durand
- [date]: mardi 25 janvier
- [heure]: 14h30
- [adresse]: 12 rue Victor Hugo, Lyon

Génère l'email final prêt à copier
```

---

## Exemples de prompts

### Template relance impayé

```
Crée template email relance facture impayée:

Ton: Ferme mais courtois
Contexte: 1ère relance (échéance dépassée 15 jours)

Variables:
- [nom client]
- [numéro facture]
- [montant]
- [date échéance]

Structure:
- Rappel facture et échéance
- Demande régularisation sous 8 jours
- Mention conséquences (pénalités, suspension)
- Contact pour difficultés paiement

Sauvegarde: ~/Cowork-Workspace/output/email-templates/relance-impaye-1.txt
```

### Template série (nouveau client)

```
Crée série de 4 emails onboarding nouveau client:

EMAIL 1 (J+0): Bienvenue
- Remerciement confiance
- Présentation processus
- Prochaines étapes

EMAIL 2 (J+7): Premier point
- Avancement projet
- Questions éventuelles
- Documents nécessaires

EMAIL 3 (J+14): Mi-parcours
- Bilan intermédiaire
- Ajustements si besoin
- Planification suite

EMAIL 4 (J+30): Finalisation
- Livraison/clôture
- Demande satisfaction
- Invitation recommandation

Ton: Professionnel et rassurant
Sauvegarde série: ~/Cowork-Workspace/output/email-templates/onboarding/
```

---

## Séquences Automatisées

### Séquence Relance Devis (4 emails)

La séquence la plus rentable pour TPE: relancer systématiquement les devis non répondus.

**Statistique**: Un devis non relancé = 60-80% de chance perdue. Une relance structurée récupère 20-30% des devis "perdus".

```
Crée séquence complète de relance devis:

CONTEXTE: Artisan/TPE qui envoie des devis et veut maximiser le taux de conversion

SÉQUENCE 4 EMAILS:

EMAIL 1 - J+0 (Envoi initial)
Objectif: Accompagner le devis, créer urgence douce
Ton: Professionnel, enthousiaste
Structure:
- Remerciement demande
- Devis en PJ (résumé: [montant], [validité])
- Disponibilité pour questions
- CTA: "Répondez à cet email pour valider"

EMAIL 2 - J+3 (Relance soft)
Objectif: Vérifier réception, répondre aux objections
Ton: Serviable, pas vendeur
Structure:
- "Avez-vous bien reçu mon devis?"
- Proposition éclaircir un point
- CTA: "Une question? Je vous rappelle"

EMAIL 3 - J+7 (Relance avec deadline)
Objectif: Créer urgence, proposer alternative
Ton: Direct mais cordial
Structure:
- Rappel validité devis (expire [date])
- Calendrier chargé ("créneaux limités ce mois")
- Option B si budget serré
- CTA: "Confirmez avant [date] pour garantir le planning"

EMAIL 4 - J+14 (Dernière relance)
Objectif: Clôturer proprement, garder la porte ouverte
Ton: Professionnel, sans rancune
Structure:
- "Je ferme ce dossier sauf retour de votre part"
- Pas de reproche
- Invitation à revenir plus tard
- CTA: "N'hésitez pas à me recontacter"

Variables pour tous:
- [nom_client]
- [nature_travaux]
- [montant_devis]
- [numero_devis]
- [date_validite]
- [votre_prenom]

Format: 4 fichiers séparés
Sauvegarde: ~/Cowork-Workspace/output/email-templates/sequence-relance-devis/
```

### Utiliser la séquence

**Option 1: Manuel (rappel calendrier)**

```
J'ai envoyé un devis à [nom client] le [date].

Programme-moi des rappels:
- J+3: Relance soft
- J+7: Relance deadline
- J+14: Clôture

Pour chaque rappel, prépare l'email personnalisé prêt à copier
basé sur mes templates dans ~/Cowork-Workspace/output/email-templates/sequence-relance-devis/
```

**Option 2: Tableau de suivi**

```
Crée tableau Excel suivi relances devis:

Colonnes:
- Numéro devis
- Client
- Montant
- Date envoi
- Statut (En attente / Relancé J+3 / Relancé J+7 / Clôturé / Accepté / Refusé)
- Prochaine action
- Date prochaine action
- Notes

Formules:
- Mise en forme conditionnelle rouge si date dépassée
- Calcul taux conversion

Sauvegarde: ~/Cowork-Workspace/output/suivi-relances-devis.xlsx
```

### Séquence Réactivation Clients Dormants

Pour clients sans commande depuis 6+ mois:

```
Crée séquence réactivation client dormant (3 emails):

EMAIL 1 - "Prise de nouvelles"
Objectif: Renouer contact sans vendre
Ton: Personnel, sincère
- "Cela fait un moment..."
- Question sur leur activité/projet
- Pas de CTA commercial

EMAIL 2 (J+7) - "Nouveauté/offre"
Objectif: Donner raison de revenir
Ton: Informatif
- Nouvelle offre/service/équipement
- Promotion "client fidèle" si applicable
- CTA: "Intéressé? Répondez à cet email"

EMAIL 3 (J+14) - "Dernière chance"
Objectif: Offre limitée + clôture
Ton: Direct
- Récapitulatif offre
- Validité limitée
- "Sans réponse, je considère que le timing n'est pas bon"

Variables:
- [prenom_client]
- [derniere_prestation] (nature + date)
- [offre_speciale]
- [date_limite]

Sauvegarde: ~/Cowork-Workspace/output/email-templates/sequence-reactivation/
```

---

## Troubleshooting

### Ton trop formel ou trop familier

**Cause**: Pas d'exemple de référence
**Solution**: Fournir un email existant comme modèle:

```
Voici un email que j'ai envoyé récemment (j'aime ce ton):
[coller votre email]

Crée les templates avec ce même ton
```

### Variables manquantes

**Cause**: Cas d'usage pas assez détaillé
**Solution**: Lister tous les cas de figure:

```
Template "confirmation rendez-vous" doit gérer:
- Rendez-vous à domicile client → variable [adresse]
- Rendez-vous à l'atelier → variable [adresse atelier]
- Rendez-vous visio → variable [lien visio]

Crée 3 variantes OU template unique avec sections conditionnelles
```

### Email trop long

**Cause**: Trop d'informations
**Solution**: Clarifier objectif unique:

```
Simplifie template "envoi devis":
- Objectif unique: que le client ouvre la pièce jointe
- Max 50 mots
- 1 phrase intro + 1 phrase CTA + signature
```

---

## Variations

### Templates multilingues

```
Crée template "confirmation commande" en 3 langues:
- Français (version de base)
- Anglais (clients internationaux)
- Espagnol (si applicable)

Même structure, adaptation culturelle du ton
Dossier: ~/Cowork-Workspace/output/email-templates/multilingue/
```

### Templates saisonniers

```
Crée templates vœux:
- Vœux fin d'année (décembre)
- Vœux nouvelle année (janvier)
- Fermeture estivale (juillet/août)

Avec:
- Remerciement année écoulée
- Dates fermeture
- Contact urgence si applicable
- Reprise activité
```

### Intégration signatures

```
Pour chaque template, ajoute 3 variantes signature:

SIGNATURE COMPLÈTE:
- Nom Prénom
- Fonction
- Entreprise
- Tel, email, site web
- Réseaux sociaux

SIGNATURE COURTE:
- Nom Prénom
- Tel

SIGNATURE AUTO (mail interne):
- Prénom seulement
```

---

## Bonnes pratiques

1. **Objets clairs** : Indiquez l'action attendue (ex: "Devis D2026-042 à valider")
2. **Court = mieux** : 100 mots max pour emails pro
3. **1 email = 1 objectif** : Pas de multiples sujets dans un email
4. **Call-to-action** : Toujours terminer par action attendue
5. **Relecture** : Vérifier variables remplies avant envoi
6. **Archivage** : Garder templates à jour (révision annuelle)
7. **Test A/B** : Tester 2 versions pour emails importants (cold email, relances)
8. **RGPD** : Ne pas stocker données clients dans templates (juste variables)

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
