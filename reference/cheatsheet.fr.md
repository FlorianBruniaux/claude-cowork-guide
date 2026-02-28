# Aide-mémoire Cowork

🌐 **Langues** : [Français](cheatsheet.fr.md) | [English](cheatsheet.md)

> **Référence rapide d'une page** — Format imprimable

**Prérequis** : Abonnement Pro (20$/mois) ou Max (100-200$/mois), macOS ou Windows

---

## Démarrage rapide

```bash
# 1. Créer l'espace de travail
mkdir -p ~/Cowork-Workspace/{input,output}

# 2. Activer Cowork dans Claude Desktop → Réglages → Fonctionnalités

# 3. Accorder l'accès aux dossiers lorsque demandé
```

---

## Schéma de prompt essentiel

```
Tâche : [objectif unique et clair]
Entrée : ~/Cowork-Workspace/input/
Sortie : ~/Cowork-Workspace/output/[nomfichier.ext]
Format : [exigences de format spécifiques]
```

---

## Sélection du modèle

| Modèle | Utiliser pour | Vitesse | Contexte |
|--------|---------------|---------|----------|
| **Haiku** | Tâches très simples, requêtes rapides | Très rapide | Standard |
| **Sonnet 4.6** ⭐ | Tous les workflows Cowork, tâches agentiques | Rapide | 1M tokens (beta) |
| **Opus 4.6** | Raisonnement approfondi, analyses juridiques/scientifiques | Plus lent | 1M tokens (beta) |

**Par défaut** : Sonnet 4.6 pour tout. Sonnet 4.6 = n°1 pour les tâches agentiques/computer use à un coût 5x inférieur à Opus.
**Passer à Opus** uniquement pour : raisonnement juridique expert, analyses scientifiques, coordination multi-agents complexe.
**Les deux modèles** : fenêtre de contexte 1M tokens (beta), 128K tokens en sortie, pensée adaptative.

---

## Personnaliser votre profil

Créez `mon-profil.md` dans votre workspace :

```markdown
## Ton et style
- Formel / Casual
- Points concis

## Ce que je ne fais JAMAIS
- Points d'exclamation
- Promettre des délais précis
```

**Usage** : "Lis mon-profil.md d'abord. Puis [votre demande]"

---

## Peut faire / Ne peut pas faire

| ✅ PEUT FAIRE | ❌ NE PEUT PAS FAIRE |
|-----------|--------------|
| Lire/écrire des fichiers | Exécuter du code |
| Créer des documents Office | Exécuter des scripts |
| Extraire des données d'images | Traiter audio/vidéo |
| Organiser des dossiers | Déchiffrer des fichiers |
| Recherche web (Chrome) | Accéder réseau (sauf Chrome) |
| Générer des PDF | Tourner sur Linux |
| 11 plugins (Asana, GitHub, Notion, Slack...) | |
| Tâches planifiées | |
| Intégrations directes Excel/PowerPoint | |

---

## Onglet Personnaliser & Compétences

| Fonctionnalité | Accès | Exemple d'utilisation |
|---------------|-------|----------------------|
| **Compétences** | Onglet Personnaliser → Compétences | `/pdf`, `/docx`, `/xlsx` |
| **Enchaînement** | Combiner deux compétences | `/pdf` puis `/xlsx` en séquence |
| **Connecteurs** | Onglet Personnaliser → Connecteurs | Recherche web, fichiers locaux, JSON |
| **Permissions** | Par outil : Autoriser / Demander / Bloquer | Recherche web sur "Demander" |
| **Mémoire** | Desktop Commander + memory.md | "Lis memory.md d'abord, puis..." |
| **Tâches planifiées** | Paramètres → Tâches planifiées | Brief quotidien, rapport hebdo |

### Écosystème des compétences
- Officielles Anthropic : `github.com/anthropics/skills`
- Communauté : `claudemarketplaces.com` | `skills.sh` | `skillhub.club`
- Installation : onglet Personnaliser → chercher par nom ou coller l'URL

---

## Formats de sortie

| Format | Extension | Notes |
|--------|-----------|-------|
| Word | .docx | En-têtes, tableaux, formatage |
| Excel | .xlsx | Formules, feuilles multiples |
| PowerPoint | .pptx | Diapositives, formatage basique |
| PDF | .pdf | Généré à partir du contenu |
| Texte | .txt, .md | N'importe quel format texte |
| Données | .csv, .json | Données structurées |

---

## Exemples de prompts

### Organisation de fichiers
```
Organise les fichiers dans ~/Cowork-Workspace/input/ par type.
Crée des dossiers : Documents, Images, Tableurs, Autres.
Enregistre un résumé dans ~/Cowork-Workspace/output/rapport-organisation.txt
```

### Extraction de données
```
Extrais les dépenses des images de reçus dans ~/Cowork-Workspace/input/receipts/
Crée un fichier Excel avec : Date, Fournisseur, Montant, Catégorie
Ajoute une ligne de totaux. Enregistre dans ~/Cowork-Workspace/output/depenses.xlsx
```
> ⚠️ OCR : 97% de précision sur les champs, 63% sur les lignes. Toujours vérifier les totaux.

### Synthèse de documents
```
Combine les notes dans ~/Cowork-Workspace/input/notes/ en un rapport de statut.
Structure : Résumé exécutif, Progrès, Risques, Prochaines étapes.
Enregistre comme ~/Cowork-Workspace/output/rapport-statut.docx
```

### Recherche web
```
Recherche les 5 meilleurs outils de gestion de projet.
Crée un tableau comparatif avec : Nom, Prix, Fonctionnalités clés, Avantages, Inconvénients.
Enregistre dans ~/Cowork-Workspace/output/outils-gp.md
```

---

## Règles de sécurité rapides

| 🔴 CRITIQUE | 🟠 ÉLEVÉ |
|-------------|---------|
| Espace de travail dédié uniquement | Réviser chaque plan |
| Pas d'identifiants dans l'espace de travail | Sauvegarder avant opérations destructives |
| Vérifier les sources des fichiers | Gérer les permissions Chrome |

---

## Problèmes courants → Solutions rapides

| Problème | Solution |
|-------|-----|
| Cowork invisible | Mettre à jour l'app + redémarrer |
| Permission refusée | Préférences Système → Confidentialité → réaccorder |
| Tâche s'arrête | Diviser en lots plus petits |
| Formules Excel cassées | Spécifier syntaxe régionale |
| Chrome ne fonctionne pas | Accorder permission Accessibilité |

---

## Schémas dangereux à éviter

```
❌ "Traite tous les fichiers dans ~/"
❌ "Tu as accès à Documents"
❌ "Voici mon fichier de mots de passe"
❌ "Supprime tous les doublons" (sans sauvegarde)
❌ Sauter la révision du plan
```

---

## Arbre de décision

```
Besoin d'exécution de code ? → Utiliser Claude Code
Besoin de manipulation de fichiers ? → Utiliser Cowork
Juste une conversation ? → Utiliser Projets
```

---

## Paramètres Excel régionaux

| Région | Syntaxe de formule |
|--------|---------------|
| US/UK | `=SUM(A1,A2)` (virgule) |
| EU | `=SUM(A1;A2)` (point-virgule) |

Spécifier dans le prompt : "Utiliser la syntaxe européenne/US"

---

## Cycle de workflow

```
Requête → Analyse → Plan → ⚠️ Révision → Approbation → Exécution → Vérification
                            ↑
                     LIRE ATTENTIVEMENT
```

---

## Limites de contexte

| Contenu | Capacité approximative (Opus 4.6, 1M beta) |
|---------|---------------------|
| Pages de texte | 600-2000+ pages |
| Documents | 200-400+ docs |
| Images (OCR) | 200-400+ images |

La compaction de contexte (beta) étend la durée effective des sessions. Limite atteinte ? → Diviser en lots plus petits

---

## Limites d'usage

| Niveau | Usage intensif | Réinitialisation |
|------|---------------|-------|
| Pro | ~1-1,5 heure | Toutes les 5 heures |
| Max | 5x-20x Pro | Toutes les 5 heures |

⚠️ Les tâches fichiers/documents consomment rapidement le quota. Planifier les gros lots en conséquence.

---

## Budget de tokens par tâche

| Type de tâche | Tokens typiques | Sessions Pro |
|-----------|----------------|--------------|
| Q&R simple | 5K-10K | Nombreuses |
| Inventaire fichiers | 20K-30K | 6-8 |
| Org. petits fichiers (10-20 fichiers) | 30K-50K | 3-5 |
| Org. gros fichiers (50+ fichiers) | 80K-150K | 1-2 |
| Synthèse multi-docs | 50K-100K | 2-3 |
| Lot OCR (10+ reçus) | 60K-100K | 2-3 |

**Surcharge agentique** : Les cycles Plan→Exécution→Vérification ajoutent 15-30% de tokens.

### Conseils d'optimisation

| Stratégie | Économies |
|----------|---------|
| Lots de 10-20 fichiers par requête | Efficacité optimale |
| Point de contrôle après chaque lot | Permet la récupération |
| Contexte clair pour nouvelles tâches | Fenêtre de 200K fraîche |
| Réutiliser les sorties précédentes | Évite le retraitement |

---

## Raccourcis clavier

| Action | Méthode |
|--------|--------|
| Arrêter l'exécution | Taper "Stop" |
| Nouvelle conversation | Cmd+N |
| Effacer le contexte | Démarrer nouvelle conversation |

---

## Liens

| Ressource | URL |
|----------|-----|
| Documentation complète | [README.md](../README.fr.md) |
| Guide sécurité | [guide/03-security.fr.md](../guide/03-security.fr.md) |
| Bibliothèque de prompts | [prompts/](../prompts/) |
| Dépannage | [guide/04-troubleshooting.fr.md](../guide/04-troubleshooting.fr.md) |

---

*Cowork v1.5.0 (Research Preview) | Partie de Claude Cowork Guide*
