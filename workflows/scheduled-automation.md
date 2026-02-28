# Automatisation par tâches planifiées

🌐 **Langues** : [Français](scheduled-automation.md) | [English](scheduled-automation.en.md)

> **Catégorie** : Organisation | **Difficulté** : Intermédiaire | **Temps de mise en place** : 30 min

---

## Objectif

Automatiser vos tâches récurrentes, rapports, compilations, bilans, pour qu'elles se génèrent sans intervention manuelle. Configurez une fois, récoltez les résultats chaque jour, semaine ou mois.

## Prérequis

- Cowork activé (abonnement Pro ou Max)
- Comprendre le format CTOC ([Démarrage Étape 5](../guide/01-getting-started.fr.md#étape-5--le-framework-ctoc))
- Dossiers organisés : séparer les entrées par fréquence (quotidien/, hebdo/, mensuel/)

## Préparer vos dossiers

Avant de configurer les tâches planifiées, organisez votre workspace :

```bash
mkdir -p ~/Cowork-Workspace/input/{quotidien,hebdo,mensuel}
mkdir -p ~/Cowork-Workspace/output/{bilans,rapports,dashboards}
```

Déposez vos fichiers dans le bon sous-dossier selon leur fréquence de traitement.

---

## Les 4 patterns essentiels

### Pattern 1 : Brief matinal quotidien

**Quand** : Tous les jours à 9h00
**Durée de setup** : 10 minutes
**Résultat** : Un brief d'une page sur ce qui nécessite votre attention aujourd'hui

**Prompt à configurer** :
```
CONTEXTE : Fichiers ajoutés hier dans ~/Cowork-Workspace/input/quotidien/
TÂCHE : Résumer les nouveaux documents et identifier les actions à faire aujourd'hui
OUTPUT : ~/Cowork-Workspace/output/bilans/brief-[date].md
Structure : 3 sections — "Actions urgentes", "À traiter aujourd'hui", "Pour information"
CONTRAINTES : Maximum 1 page. Bullet points uniquement. Signaler tout ce qui est urgent ou en retard.
```

**Cas d'usage TPE/PME** :
- Artisan : briefer sur les nouveaux devis reçus, les rappels clients, les commandes en attente
- Commerce : résumé des ventes de la veille, alertes stock, messages fournisseurs
- Services : nouvelles demandes clients, échéances du jour, rappels facturation

---

### Pattern 2 : Compilation hebdomadaire

**Quand** : Chaque lundi à 8h00
**Durée de setup** : 15 minutes
**Résultat** : Bilan complet de la semaine écoulée

**Prompt à configurer** :
```
CONTEXTE : Tous les fichiers dans ~/Cowork-Workspace/input/hebdo/ des 7 derniers jours
TÂCHE : Compiler le bilan de la semaine — réalisations, chiffres clés, points en attente, relances à faire
OUTPUT : ~/Cowork-Workspace/output/rapports/bilan-semaine-[date].docx
Structure : Résumé exécutif (1 para), Réalisations, Chiffres (si disponibles), En attente, Actions lundi
CONTRAINTES : Format dirigeant, 2 pages max. Mettre en gras les points critiques.
```

**Cas d'usage TPE/PME** :
- BTP : chantiers avancés cette semaine, heures posées, matériaux commandés
- Commerce : CA semaine vs objectif, nouveaux clients, retours produits
- Conseil : heures facturables par client, livrables envoyés, prochaines étapes

---

### Pattern 3 : Récap de fin de semaine

**Quand** : Chaque vendredi à 17h30
**Durée de setup** : 10 minutes
**Résultat** : Document de passation pour le lundi suivant

**Prompt à configurer** :
```
CONTEXTE : Fichiers modifiés ou créés cette semaine dans ~/Cowork-Workspace/
TÂCHE : Créer le récap de fin de semaine — ce qui a été fait, ce qui est en cours, ce qui attend lundi
OUTPUT : ~/Cowork-Workspace/output/bilans/recap-[date].md
Structure : Fait cette semaine, En cours (état), À faire lundi matin (priorisé)
CONTRAINTES : Orienté action. Phrases courtes. Maximum 1 page.
```

---

### Pattern 4 : Dashboard mensuel

**Quand** : Le 1er de chaque mois à 7h00
**Durée de setup** : 20 minutes
**Résultat** : Vue d'ensemble du mois écoulé avec comparaison mois précédent

**Prompt à configurer** :
```
CONTEXTE : Fichiers dans ~/Cowork-Workspace/input/mensuel/ pour le mois écoulé
TÂCHE : Créer le dashboard mensuel — indicateurs clés, tendances, points notables, prévisions
OUTPUT : ~/Cowork-Workspace/output/dashboards/dashboard-[mois-annee].xlsx
Structure : Onglet "Synthèse" (vue dirigeant) + Onglet "Détail" (données brutes)
CONTRAINTES : Syntaxe formules européenne (point-virgule). Comparaison avec le mois précédent si les données sont disponibles. Mettre en rouge ce qui est en dessous des objectifs.
```

---

## Comment configurer une tâche planifiée dans Claude Desktop

### Deux types de tâches disponibles

**Tâches récurrentes** : s'exécutent automatiquement selon un calendrier. Cadences disponibles : horaire, quotidien, hebdomadaire, jours ouvrables uniquement, ou personnalisé. Après la première exécution, Cowork réécrit automatiquement votre prompt pour l'optimiser.

**Tâches à la demande** : s'exécutent une seule fois quand vous cliquez sur "Exécuter maintenant". Utiles pour des opérations ponctuelles sans vouloir créer un calendrier permanent.

### Étapes de configuration

1. Ouvrez **Claude Desktop → barre latérale gauche → section Planifié**
2. Cliquez sur **Nouvelle tâche**
3. Choisissez le type (récurrente ou à la demande)
4. Collez votre prompt
5. Pour une tâche récurrente : définissez la cadence et l'heure
6. Nommez votre tâche (ex : "Brief matinal", "Bilan lundi")
7. Activez

### Gestion depuis le sidebar

La section Planifié dans la barre latérale permet de : voir les prochaines exécutions, consulter l'historique, modifier le prompt ou la cadence, mettre en pause ou reprendre, supprimer, ou déclencher une exécution immédiate ("Run now").

---

## Notes importantes

**Fiabilité** : Les tâches planifiées sont en aperçu recherche. Les premières exécutions peuvent parfois être imparfaites. Vérifiez les premières sorties manuellement avant de vous y fier.

**Application ouverte et appareil allumé** : Cowork nécessite que Claude Desktop soit ouvert ET que l'ordinateur soit allumé (pas en veille) au moment prévu. Si l'appareil est en veille ou l'app fermée, la tâche est **ignorée** puis s'exécute automatiquement au réveil. Planifiez en conséquence pour les tâches matinales (désactivez la veille automatique si nécessaire).

**Optimisation automatique du prompt** : Après la première exécution d'une tâche récurrente, Cowork analyse le résultat et réécrit votre prompt pour l'améliorer. Vérifiez le prompt mis à jour dans le sidebar pour confirmer les modifications.

**Alternative avancée** : Pour des workflows plus sophistiqués avec conditions et branches, **n8n** (open source, gratuit) peut orchestrer des appels à Claude Desktop avec plus de flexibilité.

---

## Astuces d'optimisation

- **Commencez simple** : Un seul pattern pendant 2 semaines avant d'en ajouter d'autres
- **Vérifiez les premières sorties** : Les 3-4 premières exécutions méritent une relecture attentive
- **Adaptez les prompts** : Affinez la formulation selon les résultats obtenus
- **Nommez vos fichiers avec des dates** : Facilite la consultation des archives

---

*[← Workflows](README.md) | [Configurer la mémoire →](memory-setup.md)*
