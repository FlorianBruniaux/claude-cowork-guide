# Prompts de Recherche

🌐 **Langues** : [Français](research.fr.md) | [English](research.md)

> **10+ prompts prêts à l'emploi pour la recherche web et la synthèse d'informations**

---

## Prompts d'Analyse Concurrentielle

### 1. Recherche Concurrentielle de Base

```
Recherche les 5 principaux concurrents dans [secteur/marché].

Pour chaque concurrent :
- Nom de l'entreprise et site web
- Description courte (1 à 2 phrases)
- Produits/services principaux
- Marché cible
- Tarification (si publique)
- Différenciateurs clés

Crée un tableau comparatif.
Enregistrer dans : ~/Cowork-Workspace/output/competitive-analysis.md
```

### 2. Profil Détaillé de Concurrent

```
Crée un profil détaillé pour [Nom de l'entreprise].

Rechercher :
1. Présentation de l'entreprise
   - Date de création, siège, taille
   - Mission/Vision
   - Dirigeants clés

2. Produits/Services
   - Offres principales
   - Structure tarifaire
   - Clients cibles

3. Position sur le marché
   - Part de marché (si disponible)
   - Partenariats clés
   - Actualités/annonces récentes

4. Forces et faiblesses
   - Basées sur les avis et informations publiques

5. Implications concurrentielles
   - Comparaison avec nous
   - Menaces et opportunités

Enregistrer dans : ~/Cowork-Workspace/output/[company]-profile.docx
```

### 3. Recherche de Prix

```
Recherche les tarifs pour [catégorie de produit/service].

Compiler les données sur :
- Nom du fournisseur/produit
- Niveaux de tarification
- Fonctionnalités par niveau
- Essai gratuit/options freemium
- Exigences contractuelles
- Conditions notables

Crée une matrice de comparaison dans Excel.
Inclure les observations sur les tendances de prix.
Enregistrer dans : ~/Cowork-Workspace/output/pricing-research.xlsx
```

---

## Prompts de Recherche Thématique

### 4. Recherche Générale sur un Sujet

```
Recherche [sujet] et crée un aperçu complet.

Inclure :
1. Présentation du sujet
   - Définition et périmètre
   - Pourquoi c'est important

2. Concepts clés
   - Idées et terminologie principales
   - Comment ils sont liés

3. État actuel
   - Derniers développements
   - Acteurs/contributeurs clés

4. Bonnes pratiques
   - Standards du secteur
   - Approches courantes

5. Ressources
   - Lectures recommandées
   - Outils/plateformes
   - Communautés

Enregistrer dans : ~/Cowork-Workspace/output/[topic]-research.md
```

### 5. Évaluation de Technologie/Outil

```
Évalue les options [type de technologie/outil] pour [cas d'usage].

Critères de recherche :
- Fonctionnalités principales
- Facilité d'utilisation
- Capacités d'intégration
- Tarification
- Communauté/Support
- Maturité/Stabilité
- Avantages et inconvénients

Évaluer les 5 meilleures options.
Fournir une recommandation avec justification.
Enregistrer dans : ~/Cowork-Workspace/output/[technology]-evaluation.md
```

### 6. Analyse de Tendances

```
Recherche les tendances dans [secteur/sujet] pour [année/période].

Couvrir :
1. Tendances actuelles
   - Ce qui progresse
   - Ce qui décline

2. Facteurs moteurs
   - Évolutions technologiques
   - Mutations du marché
   - Facteurs réglementaires

3. Statistiques clés
   - Taille du marché
   - Taux de croissance
   - Indicateurs d'adoption

4. Prédictions
   - Avis d'experts
   - Prévisions de marché

5. Implications
   - Ce que cela signifie pour [notre activité/projet]

Enregistrer dans : ~/Cowork-Workspace/output/trend-analysis.md
```

---

## Prompts d'Étude de Marché

### 7. Vue d'Ensemble du Marché

```
Crée une vue d'ensemble du marché pour [marché/secteur].

Rechercher :
1. Définition du marché
   - Périmètre et segments
   - Produits/services principaux

2. Taille du marché
   - Valeur actuelle
   - Taux de croissance
   - Projections

3. Acteurs clés
   - Entreprises majeures
   - Répartition des parts de marché

4. Segments de clientèle
   - Qui achète
   - Ce qu'ils valorisent

5. Canaux de distribution
   - Comment les produits atteignent les clients

6. Barrières à l'entrée
   - Ce qui rend ce marché difficile

Enregistrer dans : ~/Cowork-Workspace/output/market-overview.docx
```

### 8. Synthèse de Recherche Client

```
Recherche les perspectives clients sur [produit/service/sujet].

Sources à explorer :
- Sites d'avis
- Forums et communautés
- Discussions sur les réseaux sociaux
- Publications sectorielles

Compiler :
1. Points de friction courants
2. Fonctionnalités souhaitées
3. Facteurs de satisfaction
4. Plaintes/frustrations
5. Critères de comparaison
6. Critères de décision

Enregistrer dans : ~/Cowork-Workspace/output/customer-research.md
```

---

## Prompts de Recherche Professionnelle

### 9. Recherche sur une Personne/Intervenant

```
Recherche [Nom de la personne] pour la préparation de [réunion/événement].

Trouver :
- Rôle actuel et entreprise
- Parcours professionnel
- Conférences/publications récentes
- Domaines d'expertise
- Citations/positions notables
- Présence sur les réseaux sociaux
- Points de discussion habituels

Crée un document de briefing.
Enregistrer dans : ~/Cowork-Workspace/output/[name]-profile.md
```

### 10. Recherche sur un Événement/Conférence

```
Recherche [Nom de l'événement/conférence].

Compiler :
- Dates et lieu de l'événement
- Thème/axes principaux
- Intervenants clés
- Sessions remarquables
- Informations de participation
- Retours d'expérience des éditions précédentes
- Opportunités de networking
- Hashtags pertinents

Crée un résumé de l'événement.
Enregistrer dans : ~/Cowork-Workspace/output/[event]-research.md
```

---

## Prompts de Synthèse

### 11. Revue de Littérature

```
Crée une revue de littérature à partir des documents dans ~/Cowork-Workspace/input/papers/
et d'une recherche web complémentaire sur [sujet].

Structure :
1. Introduction
   - Périmètre du sujet
   - Questions de recherche

2. Méthodologie
   - Sources utilisées
   - Critères de sélection

3. Résultats par thème
   - Thème 1 : [résultats]
   - Thème 2 : [résultats]
   - Thème 3 : [résultats]

4. Lacunes et opportunités
   - Ce qui manque
   - Axes de recherche futurs

5. Conclusions

6. Références

Enregistrer dans : ~/Cowork-Workspace/output/literature-review.docx
```

### 12. Synthèse de Recherche

```
Synthétise les recherches à partir de :
- ~/Cowork-Workspace/input/research-docs/
- Recherche web sur [sujet]

Crée un rapport unifié couvrant :
1. Résultats clés (consolidés)
2. Points de consensus (accord entre les sources)
3. Contradictions (désaccords)
4. Qualité des preuves (support fort vs faible)
5. Recommandations (basées sur les preuves)
6. Évaluation des sources (fiabilité)

Enregistrer dans : ~/Cowork-Workspace/output/research-synthesis.md
```

---

## Prompts de Recherche Rapide

### 13. Faits Rapides

```
Recherche des faits rapides sur [entreprise/produit/sujet].

Fournir :
- 10 faits clés
- 5 actualités récentes
- 3 statistiques notables
- Dates/jalons importants

Format : listes à puces
Enregistrer dans : ~/Cowork-Workspace/output/quick-facts.md
```

### 14. Recherche FAQ

```
Recherche les questions fréquentes sur [sujet].

Trouver et répondre à :
- Les 10 questions les plus fréquentes
- Inclure des réponses brèves et précises
- Citer les sources quand c'est possible

Formater en document FAQ.
Enregistrer dans : ~/Cowork-Workspace/output/faq.md
```

---

## Utilisation avancée : workflows (enchaînements d'étapes) d'Analyse de Contenu

Exemples concrets d'utilisateurs professionnels :

### 15. Analyse de Podcast/Interview

D'un workflow de créateur de newsletter analysant des transcriptions de podcasts :

```
CONTEXTE : J'ai des transcription(s) de podcast dans ~/Cowork-Workspace/input/podcasts/
Ce sont des interviews longues avec des experts du secteur.

TÂCHE : Crée un document d'analyse complet.

SORTIE : ~/Cowork-Workspace/output/podcast-analysis.docx

STRUCTURE :
1. Vue d'ensemble de l'épisode
   - Invité, sujet, date, durée

2. Insights clés (5 à 10 puces)
   - Points d'action concrets
   - Moments citables

3. Modèles mentaux et cadres de réflexion
   - Cadres mentionnés
   - Approches de prise de décision

4. Tactiques pratiques
   - Conseils concrets (comment faire)
   - Outils/ressources mentionnés

5. Points surprenants/à contre-courant
   - Ce qui va à l'encontre de la sagesse conventionnelle

6. Questions soulevées
   - Sujets de suivi à explorer

CONTRAINTES :
- Utiliser des citations directes avec horodatage quand disponible
- Signaler les affirmations nécessitant une vérification
- Noter les thèmes récurrents entre les épisodes
```

### 16. Synthèse de Recherche Multi-Sources

Pour une analyse complète combinant documents locaux et recherche web :

```
CONTEXTE :
- Documents locaux dans ~/Cowork-Workspace/input/research/
- Besoin de recherche web complémentaire sur [sujet]

TÂCHE : Crée un résumé de recherche unifié combinant toutes les sources.

SORTIE : ~/Cowork-Workspace/output/research-brief.md

STRUCTURE :
1. Question de recherche
2. Sources utilisées (locales + web)
3. Résultats clés (consolidés)
4. Points de consensus (accord entre les sources)
5. Contradictions (désaccords entre les sources)
6. Évaluation de la qualité des preuves
7. Lacunes (ce qui manque)
8. Recommandations
9. Liste complète des sources avec notes

CONTRAINTES :
- Attribuer clairement chaque résultat à sa source
- Évaluer la solidité des preuves (forte/modérée/faible)
- Distinguer les faits des opinions
- Signaler les informations obsolètes
```

### 17. Étude de Marché vers PRD

Pour les product managers convertissant la recherche en spécifications :

```
CONTEXTE : Notes d'étude de marché dans ~/Cowork-Workspace/input/market-research/
Incluent : analyse concurrentielle, entretiens utilisateurs, rapports sectoriels.

TÂCHE : Transformer en ébauche de document d'exigences produit (PRD).

SORTIE : ~/Cowork-Workspace/output/prd-draft.docx

SECTIONS :
1. Résumé de l'opportunité de marché
2. Personas utilisateurs cibles (à partir des données d'entretien)
3. Paysage concurrentiel
4. Exigences fonctionnelles (priorisées)
5. Indicateurs de succès
6. Risques et mesures d'atténuation
7. Questions ouvertes

CONTRAINTES :
- Lier chaque exigence à la recherche qui la soutient
- Utiliser la priorisation MoSCoW (Must/Should/Could/Won't)
- Inclure les contre-arguments quand pertinent
- Indiquer le niveau de confiance pour chaque insight
```

---

## Notes de Personnalisation

**Profondeur de recherche :**
- "Aperçu rapide (15 minutes de recherche)"
- "Profondeur standard (30 à 60 minutes)"
- "Complet (analyse approfondie)"

**Préférences de sources :**
- "Se concentrer sur les sources officielles"
- "Inclure les publications sectorielles"
- "Prioriser les sources récentes (12 derniers mois)"

**Préférences de format :**
- "Résumé exécutif (1 page maximum)"
- "Rapport détaillé (sans limite de longueur)"
- "Format matrice de comparaison"

**Contrôles qualité :**
- "Inclure les URLs des sources"
- "Indiquer la date/fraîcheur de l'information"
- "Signaler les informations incertaines"

---

*[Retour à l'Index des Prompts](README.md) | [Documentation Cowork](../README.md)*
