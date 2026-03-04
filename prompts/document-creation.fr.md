# Prompts de Création de Documents

🌐 **Langues** : [Français](document-creation.fr.md) | [English](document-creation.md)

> **15+ prompts prêts à l'emploi pour rapports, synthèses et présentations**

---

## Prompts pour Rapports

### 1. Rapport de Statut de Projet

```
Crée un rapport de statut de projet à partir des notes dans ~/Cowork-Workspace/input/notes/

Structure :
1. Résumé exécutif (1 paragraphe)
2. Progrès de la période
   - Éléments terminés
   - Éléments en cours
3. Indicateurs clés (si données disponibles)
4. Risques et problèmes
5. Plans pour la période suivante
6. Actions à mener avec responsables et échéances

Format : document Word
Enregistrer dans : ~/Cowork-Workspace/output/status-report.docx
Inclure : date et nom du projet dans l'en-tête
```

### 2. Rapport de Synthèse de Réunion

```
Crée un résumé de réunion à partir de ~/Cowork-Workspace/input/meeting-notes.txt

Structure :
- Détails de la réunion (date, participants, durée)
- Points de discussion clés (liste à puces)
- Décisions prises
- Actions à mener (tableau avec : Action, Responsable, Échéance, Statut)
- Prochaine réunion : date et sujets

Format : document Word
Ton : professionnel, concis
Enregistrer dans : ~/Cowork-Workspace/output/meeting-summary.docx
```

### 3. Rapport Hebdomadaire

```
Compile un résumé hebdomadaire à partir de tous les documents dans ~/Cowork-Workspace/input/week-[date]/

Inclure :
- Vue d'ensemble de la semaine
- Réalisations principales
- Difficultés rencontrées
- Indicateurs/chiffres (si disponibles)
- Priorités de la semaine prochaine

Format : document Word, 2 pages maximum
Enregistrer dans : ~/Cowork-Workspace/output/weekly-summary-[date].docx
```

### 4. Revue Trimestrielle d'Activité

```
Crée un document de revue trimestrielle à partir des matériaux dans ~/Cowork-Workspace/input/q[X]-materials/

Structure :
1. Faits marquants du trimestre
2. Objectifs vs. résultats (format tableau)
3. Succès principaux
4. Difficultés et enseignements
5. Objectifs du trimestre suivant
6. Besoins en ressources

Format : document Word avec mise en page professionnelle
Inclure graphiques/tableaux quand les données le justifient
Enregistrer dans : ~/Cowork-Workspace/output/q[X]-review.docx
```

---

## Prompts pour Synthèses

### 5. Synthèse de Document

```
Crée un résumé du document dans ~/Cowork-Workspace/input/[document.pdf]

Inclure :
- Aperçu en un paragraphe
- Points clés (5 à 7 puces)
- Données/chiffres importants
- Conclusions ou recommandations
- Questions soulevées

Format : Markdown (format de texte simplifié)
Longueur : 1 page maximum
Enregistrer dans : ~/Cowork-Workspace/output/[document]-summary.md
```

### 6. Synthèse Multi-Documents

```
Synthétise les documents suivants dans ~/Cowork-Workspace/input/research/ :
[Lister les fichiers spécifiques ou "tous les documents"]

Crée un résumé unifié couvrant :
- Thèmes communs
- Points de vue divergents
- Faits et chiffres clés
- Lacunes dans l'information
- Conclusions de la synthèse

Format : document Word
Enregistrer dans : ~/Cowork-Workspace/output/synthesis-report.docx
```

### 7. Synthèse Exécutive

```
Crée un résumé exécutif à partir de ~/Cowork-Workspace/input/detailed-report.pdf

Exigences :
- Une page maximum
- Se concentrer sur : Quoi, Et alors, Et maintenant
- Inclure uniquement les chiffres clés
- Privilégier les listes à puces
- Recommandations claires

Format : document Word
Enregistrer dans : ~/Cowork-Workspace/output/executive-brief.docx
```

---

## Prompts pour Présentations

### 8. Slides depuis un Rapport

```
Crée une présentation PowerPoint à partir de ~/Cowork-Workspace/input/report.docx

Structure :
- Slide de titre
- Sommaire/Vue d'ensemble
- 5 à 7 slides de contenu (points clés du rapport)
- Résumé/Conclusions
- Prochaines étapes
- Slide Questions/Réponses

Design : épuré, professionnel, texte minimal par slide
Enregistrer dans : ~/Cowork-Workspace/output/presentation.pptx
```

### 9. Présentation de Lancement de Projet

```
Crée une présentation de lancement de projet.

Source de contenu : ~/Cowork-Workspace/input/project-charter/

Inclure des slides pour :
1. Vue d'ensemble du projet
2. Objectifs
3. Périmètre (inclus/exclus)
4. Calendrier et jalons
5. Équipe et rôles
6. Risques et mesures d'atténuation
7. Critères de succès
8. Prochaines étapes

Format : PowerPoint
Enregistrer dans : ~/Cowork-Workspace/output/kickoff-deck.pptx
```

### 10. Matériel de Formation

```
Crée des slides de formation à partir de ~/Cowork-Workspace/input/process-documentation/

Structure :
- Introduction/Objectifs
- Concepts clés (un par slide)
- Procédures pas à pas
- Emplacements réservés pour exemples et captures d'écran
- Exercices pratiques
- Résumé et ressources

Inclure des notes de présentation pour chaque slide
Format : PowerPoint
Enregistrer dans : ~/Cowork-Workspace/output/training-deck.pptx
```

---

## Prompts pour Documents Professionnels

### 11. Document de Proposition

```
Crée un document de proposition à partir des notes dans ~/Cowork-Workspace/input/proposal-notes/

Structure :
1. Résumé exécutif
2. Compréhension des besoins
3. Solution proposée
4. Approche et méthodologie
5. Calendrier
6. Équipe/Ressources
7. Tarification (si données disponibles)
8. Pourquoi nous choisir
9. Prochaines étapes

Format : document Word, mise en page professionnelle
Inclure une table des matières
Enregistrer dans : ~/Cowork-Workspace/output/proposal.docx
```

### 12. Procédure Opérationnelle Standard (SOP)

```
Crée un document SOP à partir des notes de processus dans ~/Cowork-Workspace/input/process-notes.txt

Structure :
1. Objectif
2. Périmètre
3. Responsabilités
4. Prérequis
5. Procédure (étapes numérotées)
6. Contrôles qualité
7. Dépannage
8. Documents associés
9. Historique des révisions

Format : document Word
Inclure : numéro de version, date, champs auteur
Enregistrer dans : ~/Cowork-Workspace/output/sop-[process-name].docx
```

### 13. Document de Briefing Client

```
Crée un document de briefing client à partir des matériaux dans ~/Cowork-Workspace/input/client-[name]/

Inclure :
1. Présentation de l'entreprise
   - À propos, taille, secteur
   - Produits/services principaux
2. Contacts clés
   - Noms, titres, LinkedIn (si disponible)
3. Actualités récentes
   - 3 à 6 derniers mois
4. Historique de la relation (si données disponibles)
5. Points de discussion
6. Questions à poser
7. Opportunités potentielles

Format : document Word
Enregistrer dans : ~/Cowork-Workspace/output/[client]-briefing.docx
```

---

## Prompts pour Sorties Formatées

### 14. Document avec Tableau Formaté

```
Crée un document avec tableau formaté à partir des données dans ~/Cowork-Workspace/input/raw-data.csv

Exigences du tableau :
- En-têtes clairs
- Couleurs de lignes alternées
- Colonnes triables
- Ligne de synthèse en bas

Ajouter :
- Titre et date
- Attribution de la source des données
- Section notes pour signaler tout problème de qualité des données

Format : document Word
Enregistrer dans : ~/Cowork-Workspace/output/formatted-table.docx
```

### 15. Newsletter/Document d'Actualités

```
Crée une newsletter à partir du contenu dans ~/Cowork-Workspace/input/newsletter-content/

Structure :
- En-tête avec titre et date
- Article principal (élément mis en avant)
- Brèves (3 à 5 articles courts)
- Événements/dates à venir
- Liens rapides/ressources
- Coordonnées

Format : document Word avec mise en page deux colonnes
Enregistrer dans : ~/Cowork-Workspace/output/newsletter-[date].docx
```

### 16. Document de Comparaison

```
Crée un document de comparaison à partir des matériaux dans ~/Cowork-Workspace/input/comparison/

Structure :
- Vue d'ensemble des éléments comparés
- Matrice de comparaison (tableau)
- Analyse détaillée de chaque option
- Avantages et inconvénients pour chacune
- Recommandation avec justification

Format : document Word
Inclure un tableau de comparaison extractible
Enregistrer dans : ~/Cowork-Workspace/output/comparison-analysis.docx
```

---

## Notes de Personnalisation

**Options de ton :**
- "Professionnel et formel"
- "Conversationnel mais professionnel"
- "Technique et détaillé"
- "Exécutif/synthétique"

**Contrôles de longueur :**
- "Maximum X pages"
- "Environ X mots"
- "Bref : moins de 500 mots"

**Préférences de formatage :**
- "Utiliser beaucoup les listes à puces"
- "Inclure des tableaux quand c'est possible"
- "Minimiser le jargon"
- "Inclure les citations des sources"

---

*[← Retour à l'Index des Prompts](README.fr.md) | [Documentation Cowork](../README.md)*
