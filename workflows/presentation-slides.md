# Workflow: Création Présentation Client

> **Temps estimé**: 30 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 📣 Communication
> **Professions**: Dirigeants, Indépendants

🌐 **Also available in [English](presentation-slides.en.md)**

---

## Cas d'usage

Vous devez présenter votre offre à un client ou lors d'un rendez-vous commercial. Ce workflow vous aide à:

- Structurer présentation percutante
- Créer slides visuels professionnels
- Adapter pitch au contexte client
- Préparer argumentaire et réponses objections

> ⚠️ **Impact**: Présentation bien structurée augmente taux conversion de 30-50% vs pitch improvisé.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Informations client/prospect
- [ ] Votre offre commerciale
- [ ] Références/témoignages clients
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Analyser contexte

```bash
mkdir -p ~/Cowork-Workspace/presentations/[nom-client]
```

Préparer brief:

```
Contexte présentation pour: [Nom client]

OBJECTIF RENDEZ-VOUS:
- Présenter notre offre [service/produit]
- Convaincre de [objectif: signature, accord principe, RDV suivant]

AUDIENCE:
- Qui: [Fonction décideurs présents]
- Nombre: [X personnes]
- Niveau expertise: [Expert/Intermédiaire/Débutant dans le domaine]
- Objections probables: [Liste anticiper]

CONTRAINTES:
- Durée présentation: [15/30/45 min]
- Format: [Présentiel/Visio/Hybride]
- Support: [PowerPoint/PDF/Web]

CONNAISSANCES CLIENT:
- Besoins identifiés: [Liste]
- Budget estimé: [Fourchette]
- Concurrence: [Qui d'autre ils consultent]
- Délai décision: [Quand]

ANGLE D'ATTAQUE:
Quel message principal doit retenir le client?
Exemple: "Nous sommes le seul prestataire certifié X dans la région ET moins cher de 15%"

Sauvegarde: ~/Cowork-Workspace/presentations/[nom-client]/brief.txt
```

### Étape 2: Structurer présentation (slides)

```
Crée structure présentation PowerPoint:

RÈGLE D'OR: 1 slide = 1 idée = 1 minute de parole

STRUCTURE RECOMMANDÉE (20 slides pour 20 min):

═══════════════════════════════════════════
INTRO (3 slides - 3 min)
═══════════════════════════════════════════

SLIDE 1: PAGE TITRE
- Logo votre entreprise
- Titre: "Présentation [Votre service] pour [Client]"
- Votre nom + fonction
- Date
- [Image de fond professionnelle]

SLIDE 2: AGENDA
"Au programme aujourd'hui:"
1. Votre situation et besoins (2 min)
2. Notre solution (10 min)
3. Nos références (3 min)
4. Tarifs et prochaines étapes (5 min)

SLIDE 3: QUI SOMMES-NOUS
- Nom entreprise
- Activité en 1 phrase
- Chiffres clés: [X] ans expérience, [Y] clients, [Z] projets
- Valeurs/différenciation: [1-2 points forts uniques]

═══════════════════════════════════════════
PROBLÉMATIQUE CLIENT (2 slides - 2 min)
═══════════════════════════════════════════

SLIDE 4: VOS ENJEUX (reformuler besoins client)
Titre: "Vos défis actuels"
- Défi 1: [Ex: "Réduire facture énergétique"]
- Défi 2: [Ex: "Mise aux normes obligatoire"]
- Défi 3: [Ex: "Délai court 2 mois"]

SLIDE 5: CONSÉQUENCES INACTION
"Si rien n'est fait:"
- Risque 1: [Ex: "Amende X€ pour non-conformité"]
- Risque 2: [Ex: "Surcoût énergétique Y€/an"]
→ Créer urgence (sans dramatiser excessivement)

═══════════════════════════════════════════
SOLUTION (8 slides - 10 min)
═══════════════════════════════════════════

SLIDE 6: NOTRE SOLUTION (vue d'ensemble)
Titre: "Notre approche en 3 étapes"
1. [Étape 1]: Audit gratuit
2. [Étape 2]: Travaux planifiés
3. [Étape 3]: Suivi performance

SLIDES 7-9: DÉTAIL CHAQUE ÉTAPE
Une slide par étape:
- Description
- Durée
- Livrables
- Valeur ajoutée

SLIDE 10: BÉNÉFICES CLIENT
"Ce que vous gagnez:"
✓ Économies: [Montant]€/an
✓ Conformité: Normes respectées
✓ Sérénité: Garantie 10 ans
✓ Rapidité: Projet bouclé en [X] semaines

SLIDE 11: DIFFÉRENCIATION
"Pourquoi nous choisir?"
| Critère | Concurrent classique | NOUS |
|---------|---------------------|------|
| Certifications | Basique | RGE + Qualibat |
| Délai | 3 mois | 6 semaines |
| Garantie | 2 ans | 10 ans |
| Suivi | Non | Oui (annuel) |

SLIDE 12: PROCESS & PLANNING
Frise temporelle (Gantt simplifié):
Semaine 1-2: Audit
Semaine 3: Devis validé
Semaine 4-8: Travaux
Semaine 9: Réception

SLIDE 13: ÉQUIPE
Photos + noms intervenants clés:
- Chef de projet: [Nom]
- Technicien principal: [Nom]
- SAV: [Contact]

═══════════════════════════════════════════
PREUVES (3 slides - 3 min)
═══════════════════════════════════════════

SLIDE 14: RÉFÉRENCES CLIENTS
"Ils nous ont fait confiance:"
- Logo clients (si B2B)
- Secteurs: Industrie, Tertiaire, etc.

SLIDE 15: TÉMOIGNAGE CLIENT
Citation client satisfait (avec photo si possible):
"[Citation impactante]"
- [Nom], [Fonction], [Entreprise]

SLIDE 16: CHIFFRES RÉSULTATS
Étude de cas similaire:
Projet: [Nom]
Résultats:
- Économies: [X]%
- Délai: [Y] semaines (vs [Z] prévu)
- Satisfaction: [Note]/5

═══════════════════════════════════════════
COMMERCIAL (4 slides - 5 min)
═══════════════════════════════════════════

SLIDE 17: TARIFS
3 formules (Bon/Mieux/Meilleur):

FORMULE ÉCO: [Prix]€
- Prestation de base
- Garantie standard

FORMULE CONFORT: [Prix]€ ⭐ RECOMMANDÉE
- Prestation complète
- Garantie étendue
- Suivi annuel

FORMULE PREMIUM: [Prix]€
- Tout inclus
- Matériaux haut de gamme
- Service prioritaire

SLIDE 18: FINANCEMENT/PAIEMENT
"Facilités de paiement:"
- 30% acompte
- Solde en 3 échéances sans frais
- Partenaire financement possible
- Aides disponibles: [Si applicable - CEE, etc.]

SLIDE 19: GARANTIES
"Nos engagements:"
✓ Devis respecté (pas de surcoût)
✓ Délais tenus ou pénalités
✓ Garantie satisfaction (ou refait)
✓ Assurance décennale

SLIDE 20: PROCHAINES ÉTAPES
"Pour avancer ensemble:"
1. Questions/réponses (aujourd'hui)
2. Envoi devis détaillé (48h)
3. Visite technique (J+7)
4. Signature (J+14)
5. Démarrage travaux (J+21)

═══════════════════════════════════════════
CONCLUSION
═══════════════════════════════════════════

SLIDE 21: MERCI / QUESTIONS
"Merci de votre attention!"

Vos questions?

[Vos coordonnées]
Email: [xxx]
Tel: [xxx]
Site: [xxx]

Format: PowerPoint (.pptx) OU Google Slides
Design: Template professionnel (éviter cliparts, Comic Sans)
Sauvegarde: ~/Cowork-Workspace/presentations/[nom-client]/presentation-[nom].pptx
```

### Étape 3: Design slides (visuels)

```
Consignes design pour présentation:

CHARTE GRAPHIQUE:
Couleurs: [Vos couleurs entreprise - max 3]
Police titre: [Ex: Arial Black, Montserrat Bold]
Police texte: [Ex: Arial, Open Sans]
Logo: Position fixe (coin supérieur droit)

RÈGLES OR DESIGN:

1. CONTRASTE TEXTE/FOND
✓ Texte foncé sur fond clair OU texte clair sur fond foncé
✗ Gris sur gris (illisible)

2. TAILLE POLICE
Titre: 32-44pt
Texte: 18-24pt
(Lisible du fond de la salle)

3. LIMITE TEXTE PAR SLIDE
Max 6 lignes
Max 6 mots par ligne
Règle "6x6"

4. IMAGES QUALITÉ
- Haute résolution (pas pixelisé)
- Pertinentes (pas décoratives gratuites)
- Photos réelles projets (vs stock photos génériques)

5. ESPACES BLANCS
Ne pas surcharger slides
Laisser "respirer" le contenu

6. COHÉRENCE
Même structure chaque slide:
- Titre toujours même position
- Contenu aligné
- Transitions sobres (pas d'effets flashy)

OUTILS:
- PowerPoint (Microsoft)
- Google Slides (gratuit, collaboratif)
- Canva (templates pré-conçus)
- Keynote (Apple)

Template recommandé: ~/Cowork-Workspace/presentations/TEMPLATE-ENTREPRISE.pptx
```

### Étape 4: Préparer argumentaire oral

```
Script présentation (notes orateur):

POUR CHAQUE SLIDE, préparer:

SLIDE 1 (PAGE TITRE):
"Bonjour à tous, merci de me recevoir. Je suis [Nom], [Fonction]
chez [Entreprise]. Aujourd'hui, je vais vous présenter comment
nous pouvons répondre à vos besoins en [domaine]."
[Durée: 30 sec]

SLIDE 4 (ENJEUX CLIENT):
"Lors de notre échange initial, vous m'avez fait part de 3 défis
principaux: [Reformuler avec leurs mots]. C'est bien ça?"
→ [PAUSE - Attendre validation]
"Parfait. Voyons comment nous adressons chacun."
[Durée: 1 min]

[...Pour chaque slide]

SLIDE 17 (TARIFS):
"Parlons maintenant investissement. Nous proposons 3 formules
adaptées à différents budgets. La formule Confort, à [X]€, est
celle que nous recommandons car elle offre le meilleur rapport
qualité-prix et inclut [bénéfice clé]."
[Durée: 2 min]

GESTION OBJECTIONS:

OBJECTION 1: "C'est trop cher"
Réponse: "Je comprends. Comparons avec le coût de l'inaction:
[chiffrer risques]. Sur 5 ans, notre solution génère [économies].
L'investissement se rentabilise en [X] mois."

OBJECTION 2: "On doit comparer plusieurs devis"
Réponse: "C'est normal et prudent. Ce qui nous différencie: [2-3 points
uniques]. Qu'est-ce qui comptera le plus dans votre choix: prix, délai,
ou garantie qualité?"

OBJECTION 3: "Il faut que je réfléchisse"
Réponse: "Bien sûr. Quels points souhaitez-vous approfondir? Y a-t-il
des freins spécifiques que je peux lever dès maintenant?"

CLÔTURE:
"Pour résumer: Nous vous proposons [solution] qui règle [besoins]
en [délai] pour [budget]. Êtes-vous prêts à passer à l'étape suivante?"
→ [SILENCE - Attendre réponse]

Format: Document Word (notes orateur)
Sauvegarde: ~/Cowork-Workspace/presentations/[nom-client]/script-oral.docx
```

### Étape 5: Répétition et préparation matérielle

```
Checklist 24h avant présentation:

□ RÉPÉTITION:
  - Chronométrer présentation (respecter timing)
  - Enregistrer avec webcam (analyser posture, tics)
  - Répéter 3x minimum (fluidité)

□ MATÉRIEL:
  - Laptop chargé (+ chargeur)
  - Clé USB backup présentation
  - Adaptateur HDMI/VGA (selon salle)
  - Télécommande présentation (si dispo)
  - Copies papier présentation (1 par participant)
  - Cartes visite (x10)
  - Devis imprimés (si signature possible)

□ LOGISTIQUE:
  - Vérifier adresse RDV
  - Calculer trajet (arriver 10 min avant)
  - Tenue professionnelle

□ DOCUMENTS SUPPORTS:
  - Dossier technique complémentaire
  - Références clients (liste complète)
  - Certificats/qualifications

□ PLAN B:
  - Version PDF présentation (si PowerPoint plante)
  - Pitch elevator 2 min (si impossibilité projeter)
  - Questions préparées si présentation écourtée

Répétition finale: Présenter à collègue/ami pour feedback

Sauvegarde checklist: ~/Cowork-Workspace/presentations/[nom-client]/checklist-jour-J.txt
```

---

## Exemples de prompts

### Pitch court (5 min)

```
Présentation express 5 slides (elevator pitch):

SLIDE 1: Problème client
SLIDE 2: Notre solution (1 phrase)
SLIDE 3: Bénéfice principal (chiffré)
SLIDE 4: Preuve (1 témoignage)
SLIDE 5: Prochaine étape (CTA)

Durée: 1 min par slide
Objectif: Décrocher RDV approfondi

Sauvegarde: ~/Cowork-Workspace/presentations/pitch-5min.pptx
```

### Présentation technique (experts)

```
Audience: Ingénieurs, experts techniques

ADAPTER:
- Plus de détails techniques (schémas, specs)
- Jargon métier acceptable
- Focus performance, normes, compliance
- Moins d'images "marketing"
- Plus de données chiffrées

STRUCTURE:
- Problématique technique
- Analyse approfondie
- Solution technique détaillée
- Metrics/KPIs
- Roadmap implémentation

Format: 40 slides pour 1h (plus dense)

Sauvegarde: ~/Cowork-Workspace/presentations/presentation-technique-[client].pptx
```

---

## Troubleshooting

### Audience décroche (signes)

**Signes**: Regards téléphones, bâillements, conversations parallèles
**Solution**: Reprendre attention:

```
TECHNIQUES RÉENGAGEMENT:

1. Poser question:
"Avant de continuer, est-ce que cela correspond à vos attentes?"

2. Interaction:
"Qui parmi vous a déjà rencontré ce problème?" (lever main)

3. Pause:
"Je propose 2 min de pause, des questions avant de continuer?"

4. Anecdote:
Raconter cas client concret (storytelling)

5. Réduire contenu:
"Je vois qu'on manque de temps, je vais accélérer sur [partie]
et approfondir [partie importante pour eux]"
```

### Questions déstabilisantes

**Cause**: Objection ou incompréhension
**Solution**: Technique ABCD:

```
A - ACCUSER RÉCEPTION:
"Excellente question, merci de la poser."

B - CLARIFIER:
"Si je comprends bien, vous vous demandez [reformuler]?"

C - RÉPONDRE (ou Différer):
Soit: Réponse immédiate si connue
Soit: "Je vais vérifier et reviens vers vous dans l'heure"

D - VALIDER:
"Est-ce que cela répond à votre question?"

JAMAIS:
❌ "Je ne sais pas" (dire plutôt "Je vérifie")
❌ "C'était dans la slide 3" (condescendant)
❌ Inventer réponse (perte crédibilité)
```

---

## Variations

### Présentation vidéo (asynchrone)

```
Enregistrement présentation pour envoi email:

OUTILS:
- Loom (gratuit, simple)
- PowerPoint (fonction enregistrement)
- Zoom (s'enregistrer)

STRUCTURE:
- Plus courte (max 10 min)
- Chapitres (permettre navigation)
- CTA clair fin vidéo

AVANTAGES:
- Client regarde quand il veut
- Réécoute possible
- Partage facilité équipe

Sauvegarde: ~/Cowork-Workspace/presentations/video-[client].mp4
```

### Présentation collaborative (workshop)

```
Format interactif (vs monologue):

ACTIVITÉS:
- Brainstorming besoins (post-its)
- Démonstration produit (hands-on)
- Exercice simulation ROI (calculette)
- Questions-réponses tout du long

TIMING:
- 30% présentation
- 40% ateliers
- 30% discussion

Engagement accru mais préparation ++

Sauvegarde: ~/Cowork-Workspace/presentations/workshop-[client].pptx
```

### Template réutilisable depuis fichier existant

```
Vous avez une présentation aux couleurs de votre boîte et voulez
l'utiliser comme base pour toutes vos futures présentations.
```

**Étape 1 : Préparer le répertoire de travail**

Créez un dossier dédié et déposez-y votre présentation de référence :

```bash
mkdir -p ~/Cowork-Workspace/presentations/wrk
cp ~/Documents/ma-presentation-entreprise.pptx ~/Cowork-Workspace/presentations/wrk/
```

**Étape 2 : Générer le template via Cowork**

Dans Cowork, avec le dossier `wrk/` accessible :

```
/pptx Analyse la présentation dans ~/Cowork-Workspace/presentations/wrk/
Génère un template PPTX réutilisable.

Ce que j'attends :
- Conserver la charte graphique (couleurs, polices, position logo)
- Créer des slides vides avec zones de contenu pré-structurées
- Inclure : slide titre, slide agenda, slide contenu standard, slide conclusion
- Sauvegarder dans ~/Cowork-Workspace/presentations/wrk/template-entreprise.pptx
```

Cowork va poser des questions pour affiner (sections métier, nombre de slides types, style de mise en page). Répondez-y : c'est ce qui produit un template adapté plutôt qu'un template générique.

**Étape 3 : Produire la présentation finale**

Une fois le template créé, il sert pour toutes vos présentations suivantes. Déposez vos notes dans le même dossier :

```bash
cp ~/Desktop/mes-notes-client.txt ~/Cowork-Workspace/presentations/wrk/
```

Puis dans Cowork :

```
/pptx Utilise le template ~/Cowork-Workspace/presentations/wrk/template-entreprise.pptx
et les notes dans ~/Cowork-Workspace/presentations/wrk/mes-notes-client.txt

Génère une présentation complète pour [Nom client / sujet].
Durée cible : [20/30] minutes.
Sauvegarder dans ~/Cowork-Workspace/presentations/[nom-client]-[date].pptx
```

**Ce que ça produit** : une présentation aux couleurs de votre boîte, avec le contenu de vos notes, sans retravailler la charte à chaque fois.

**Points clés :**
- Le fichier `template-entreprise.pptx` est votre actif durable : créé une fois, utilisé pour toutes les présentations suivantes
- Variantes possibles selon vos besoins : `template-technique.pptx`, `template-formation.pptx`
- Même logique applicable aux DOCX pour vos rapports et comptes-rendus

> **Aller plus loin** : Créez une compétence Cowork (`/skill-creator`) qui encode ce workflow une fois pour toutes. Voir [Compétences & Personnalisation](../guide/02-capabilities.fr.md#compétences-skills--capacités-supplémentaires).

Sauvegarde template : `~/Cowork-Workspace/presentations/wrk/template-entreprise.pptx`

---

## Bonnes pratiques

1. **Adapter audience** : Technique vs business selon interlocuteurs
2. **Storytelling** : Cas clients concrets > features abstraites
3. **Règle 10/20/30** : 10 slides, 20 min, police 30pt minimum
4. **Répétition** : 3x minimum (fluidité + timing)
5. **Interaction** : Poser questions (éviter monologue)
6. **Backup** : Plan B si tech plante (PDF, clé USB, pitch oral)
7. **Suivi post-présentation** : Email récap + devis dans 24-48h
8. **Écoute** : Adapter en temps réel selon réactions

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
