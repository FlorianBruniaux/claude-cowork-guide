# Aide-mémoire Cowork

🌐 **Langues** : [Français](cheatsheet.fr.md) | [English](cheatsheet.md)

> **Référence rapide d'une page** : Format imprimable

**Disponibilité** : plan Claude payant éligible. Claude Desktop prend en charge macOS et Windows, Linux est en bêta ; Cowork web et mobile sont en bêta sur les plans éligibles. Vérifiez la [disponibilité Cowork](https://support.claude.com/en/articles/13345190-get-started-with-cowork) avant de dépendre d'une surface.

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
| Modèle disponible | Adaptation à la tâche | Vérification | Contexte |
|-------------------|---------------------|--------------|---------|
| **Modèle affiché dans Claude** | Adapter à la complexité | Vérifier la surface actuelle | Varie selon le modèle et le plan |

La disponibilité des modèles, le contexte et l'usage sont des paramètres produit, pas des constantes du guide. Utilisez les options affichées dans Claude et testez une petite tâche avant un gros lot.

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
| Lire/écrire des fichiers | Utiliser un shell hôte sans restriction |
| Exécuter du code dans un environnement de tâche isolé | Contourner les permissions, le plan ou la surface |
| Créer des documents Office | Exécuter des scripts hôte sans restriction |
| Extraire des données d'images | Traiter audio/vidéo |
| Organiser des dossiers | Déchiffrer des fichiers |
| Tâches navigateur et connecteurs, lorsqu'elles sont disponibles et autorisées | Considérer un connecteur comme un accès cloud universel |
| Générer des PDF | Supposer une fonction disponible sur toutes les surfaces |
| Compétences et connecteurs configurés | |
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
Besoin d'un shell contrôlé par un développeur ? → Utiliser Claude Code
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

## Contexte et limites de lot

La capacité de contexte et la compaction varient selon le modèle, le plan et la surface. Ne planifiez pas un workflow avec un nombre fixe de tokens ou de documents de ce guide. Commencez par un petit lot, vérifiez la sortie, puis continuez par groupes révisables.

---

## Limites d'usage

Les limites d'usage varient selon le plan, le modèle, la surface et la tâche. Vérifiez les informations actuelles dans Claude avant un gros lot ; n'utilisez pas les prix, horaires de réinitialisation ou ratios historiques de ce guide pour une décision d'achat.

---

## Budget de tokens par tâche

| Type de tâche | Règle de planification |
|-----------|------------------------|
| Inventaire fichiers | Commencer par un dossier représentatif |
| Organisation limitée | Vérifier un échantillon avant de poursuivre |
| Organisation large | Découper en lots révisables |
| Synthèse multi-documents | Conserver les sources et la sortie traçables |
| Lot OCR | Vérifier des exemples source et les totaux |

### Conseils d'optimisation

| Stratégie | Économies |
|----------|---------|
| Lots de 10-20 fichiers par requête | Efficacité optimale |
| Point de contrôle après chaque lot | Permet la récupération |
| Nouvelle tâche lorsque le contexte n'est plus pertinent | Éviter de conserver des instructions sans lien |
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

*Claude Cowork Guide v1.13.0 | La disponibilité varie selon le plan, la surface et la fonction*
