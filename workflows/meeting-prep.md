# Workflow: Préparation de Réunion

> **Temps estimé**: 20 minutes
> **Difficulté**: Intermédiaire
> **Catégorie**: 🗂️ Organisation
> **Professions**: Dirigeants, Indépendants

🌐 **Also available in [English](meeting-prep.en.md)**

---

## Cas d'usage

Vous avez une réunion à venir et vous devez:

- Rechercher l'entreprise et les personnes que vous allez rencontrer
- Rassembler les documents de contexte utiles
- Créer un document de synthèse (briefing)
- Préparer des points de discussion et des questions

---

## Prérequis

- [ ] Cowork activé avec accès à Chrome (pour la recherche web)
- [ ] Tout document existant sur la réunion ou l'entreprise
- [ ] Une compréhension claire de l'objectif de la réunion

---

## Instructions étape par étape

### Étape 1: Préparer le Workspace

```bash
# Créer le workspace pour la préparation de réunion
mkdir -p ~/Cowork-Workspace/input/meeting-[name]
mkdir -p ~/Cowork-Workspace/output

# Copier les documents existants
cp ~/Documents/relevant-files/* ~/Cowork-Workspace/input/meeting-[name]/
```

### Étape 2: Définir le contexte de la réunion

Présentez la réunion à Cowork:

```
J'ai une réunion avec [Entreprise/Personne] le [Date] à [Heure].

Objet de la réunion: [décrire]
Mon rôle: [votre poste/entreprise]
Leur rôle: [qui vous rencontrez]
Ce que je veux obtenir: [vos objectifs]

Ce contexte servira au document de briefing que tu vas créer.
```

### Étape 3: Phase de recherche

**Recherche sur l'entreprise:**
```
Recherche [Nom de l'entreprise] et crée une fiche entreprise.

Inclus:
1. Présentation de l'entreprise
   - Ce qu'elle fait
   - Taille (effectifs, chiffre d'affaires si cotée)
   - Année de création, siège
   - Principaux produits/services

2. Actualités récentes
   - Les 3 à 6 derniers mois
   - Annonces pertinentes
   - Mentions dans la presse

3. Direction
   - PDG et principaux dirigeants
   - Membres du conseil d'administration (si pertinent)

4. Position sur le marché
   - Principaux concurrents
   - Place sur le marché
   - Changements récents

Sauvegarde dans: ~/Cowork-Workspace/output/company-research.md
```

**Recherche sur une personne:**
```
Recherche [Nom de la personne] chez [Entreprise].

Trouve:
- Poste actuel et responsabilités
- Parcours professionnel
- Formation (si disponible)
- Interventions publiques/publications
- Points clés du profil LinkedIn
- Sujets abordés habituellement
- Relations ou centres d'intérêt en commun

Sauvegarde dans: ~/Cowork-Workspace/output/person-profile.md
```

### Étape 4: Créer le document de briefing

```
Crée un document de briefing de réunion à partir de:
- La recherche que tu viens de compiler
- Les documents dans ~/Cowork-Workspace/input/meeting-[name]/

Structure:
1. Vue d'ensemble de la réunion
   - Date, heure, lieu/plateforme
   - Participants
   - Objet

2. Contexte de l'entreprise
   - Faits clés (issus de la recherche)
   - Évolutions récentes pertinentes

3. Profils des personnes
   - Courte présentation de chaque personne rencontrée

4. Notre historique (si des documents sont fournis)
   - Échanges précédents
   - Discussions passées

5. Points de discussion
   - 5 à 7 sujets à aborder
   - Messages clés à faire passer

6. Questions à poser
   - 5 à 7 questions stratégiques
   - Questions de découverte
   - Questions de clarification

7. Objections possibles
   - Préoccupations probables de leur part
   - Réponses suggérées

8. Objectifs de la réunion
   - À quoi ressemble la réussite
   - Résultats minimums acceptables

Format: document Word
Sauvegarde dans: ~/Cowork-Workspace/output/meeting-brief.docx
```

### Étape 5: Créer une fiche de référence rapide

```
À partir du document de briefing, crée une fiche de référence rapide d'une page.

Inclus uniquement:
- Faits clés sur l'entreprise/la personne
- Principaux points de discussion (puces)
- Questions essentielles
- Noms à retenir

Format: imprimable pour l'emporter en réunion
Sauvegarde dans: ~/Cowork-Workspace/output/quick-reference.docx
```

---

## Variantes selon le type de réunion

### Réunion commerciale / client
```
Crée un briefing de réunion client pour [Entreprise].

Concentre-toi sur:
1. Leur activité
   - Secteur, difficultés, objectifs
   - Processus de décision
   - Cycle budgétaire/calendrier

2. Notre adéquation
   - Comment notre solution les aide
   - Études de cas pertinentes
   - Positionnement face à la concurrence

3. Stratégie commerciale
   - Points d'entrée
   - Propositions de valeur
   - Réponses aux objections

4. Prochaines étapes
   - Issue idéale de la réunion
   - Actions de suivi

Sauvegarde dans: ~/Cowork-Workspace/output/client-brief.docx
```

### Entretien d'embauche
```
Crée un document de préparation d'entretien pour [Entreprise] [Poste].

Inclus:
1. Recherche sur l'entreprise
   - Culture et valeurs
   - Actualités récentes
   - Organisation de l'équipe (si connue)

2. Analyse du poste
   - Responsabilités principales
   - Compétences requises
   - Indicateurs de réussite (probables)

3. Mon adéquation
   - Points d'expérience pertinents
   - Histoires à raconter (format STAR)
   - Compétences à mettre en avant

4. Questions à poser
   - Sur le poste
   - Sur l'équipe
   - Sur l'évolution

5. Logistique
   - Format de l'entretien
   - Parcours des interlocuteurs

Sauvegarde dans: ~/Cowork-Workspace/output/interview-prep.docx
```

### Réunion partenaire / fournisseur
```
Crée un briefing d'évaluation fournisseur pour la réunion avec [Entreprise].

Inclus:
1. Présentation du fournisseur
   - Historique de l'entreprise
   - Produits/services pertinents
   - Réputation sur le marché

2. Critères d'évaluation
   - Exigences indispensables
   - Fonctionnalités souhaitables
   - Motifs de rejet

3. Matrice de questions
   - Questions techniques
   - Questions sur les prix
   - Questions sur le support
   - Questions sur le contrat

4. Notes de comparaison
   - Comparaison avec les alternatives
   - Principaux éléments de différenciation

Sauvegarde dans: ~/Cowork-Workspace/output/vendor-brief.docx
```

### Réunion de conseil d'administration / direction
```
Crée un briefing pour la réunion de direction [nom de la réunion].

Inclus:
1. Contexte de la réunion
   - Points à l'ordre du jour
   - Décisions clés à prendre
   - Participants et leurs intérêts

2. Synthèse des documents de référence
   - Points clés des documents associés

3. Recommandations
   - Ce que je propose
   - Justification
   - Questions attendues

4. Cartographie des parties prenantes
   - Qui soutient quoi
   - Réserves possibles par personne
   - Rapports d'influence

5. Notes de présentation
   - Messages clés
   - Chiffres à citer
   - Diapositives complémentaires nécessaires

Sauvegarde dans: ~/Cowork-Workspace/output/executive-brief.docx
```

---

## Troubleshooting

### Peu d'informations sur l'entreprise

```
Les informations disponibles sur [Entreprise] sont limitées.

Pour les petites entreprises ou les entreprises privées, concentre-toi sur:
- Ce que dit leur site web
- La page entreprise LinkedIn
- Toute mention dans l'actualité
- Le contexte du secteur

Signale les lacunes dans le briefing pour que je sache quoi chercher pendant la réunion.
```

### Recherche qui semble dépassée

```
Vérifie que ces informations sont à jour (au [date du jour]).

Pour tout élément de plus de 6 mois:
- Indique la date de l'information
- Signale si elle a pu changer
- Suggère des questions de vérification
```

### Personne avec un nom courant

```
Recherche [Nom] spécifiquement chez [Entreprise] à [Ville/Poste].

Distingue cette personne des homonymes.
Utilise le profil LinkedIn: [URL si connue]
```

---

## Modèles pour gagner du temps

### Préparation express de 15 minutes
```
J'ai 15 minutes pour préparer une réunion avec [Entreprise/Personne].

Crée un briefing rapide avec:
- 5 faits clés les concernant
- 3 points de discussion
- 3 questions à poser
- 1 paragraphe de présentation de l'entreprise

Sauvegarde dans: ~/Cowork-Workspace/output/quick-brief.md
```

### Mise à jour pour une réunion récurrente
```
Mets à jour le briefing de réunion dans ~/Cowork-Workspace/input/previous-brief.docx

Recherche les nouveautés depuis [date de la dernière réunion].
Ajoute au document existant:
- Une nouvelle section d'actualités
- Des points de discussion mis à jour
- De nouvelles questions fondées sur ces évolutions

Sauvegarde dans: ~/Cowork-Workspace/output/updated-brief.docx
```

---

## Bonnes pratiques

1. **Commencer tôt la recherche** : La recherche web prend du temps
2. **Rester pertinent** : Tout ce qui concerne une entreprise n'est pas utile
3. **Préparer des questions** : Cela montre votre engagement et fait avancer la conversation
4. **Connaître vos objectifs** : Des objectifs clairs guident le briefing
5. **Mettre à jour et réutiliser** : Les briefings de réunions récurrentes peuvent être actualisés

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
