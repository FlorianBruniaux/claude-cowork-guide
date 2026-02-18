# Guide de dépannage Cowork

🌐 **Langues** : [Français](04-troubleshooting.fr.md) | [English](04-troubleshooting.md)

> **Temps de lecture** : ~8 minutes
>
> **Objectif** : Diagnostiquer et résoudre les problèmes courants de Cowork

---

## Arbre de décision diagnostique

Utilisez cet organigramme pour identifier votre problème :

```
Que se passe-t-il ?
│
├─ Cowork ne démarre pas ou n'est pas visible
│   └─ Aller à : § PROBLÈMES D'INSTALLATION
│
├─ "VM connection timeout" ou "workspace failed"
│   └─ Aller à : § PROBLÈMES VM & CONNEXION (VPN cause probable)
│
├─ Cowork ne peut pas accéder à mes fichiers
│   └─ Aller à : § PROBLÈMES DE PERMISSIONS
│
├─ La tâche s'arrête en cours d'exécution ou "context limit"
│   └─ Aller à : § PROBLÈMES D'EXÉCUTION
│
├─ Le résultat est incorrect ou inattendu
│   └─ Aller à : § PROBLÈMES DE SORTIE
│
├─ Problèmes d'intégration navigateur/Chrome
│   └─ Aller à : § PROBLÈMES NAVIGATEUR
│
├─ Problèmes spécifiques à Windows
│   └─ Aller à : § PROBLÈMES SPÉCIFIQUES À WINDOWS
│
└─ Autre chose
    └─ Aller à : § DÉPANNAGE GÉNÉRAL
```

---

## Messages d'erreur connus (référence rapide)

| Message d'erreur | Cause probable | Solution rapide |
|-----------------|----------------|-----------------|
| `Failed to start Claude's workspace — VM connection timeout after 60 seconds` | VPN actif | Déconnecter le VPN → réessayer |
| `Chrome native messaging host not found` | Incompatibilité extension | Installation manuelle de l'hôte (voir ci-dessous) |
| `Context limit reached` (vers ~165K, pas 200K) | Surcharge système | Diviser la tâche en lots plus petits |
| `Access denied — path outside allowed directories` | Dossier non autorisé | Accorder à nouveau l'accès au dossier |
| `Session terminated unexpectedly` | Veille/arrière-plan | Garder l'app au premier plan, désactiver la veille |
| `Cannot connect to Chrome` | Permissions manquantes | Accorder la permission Accessibilité |

---

## Problèmes d'installation

### Option Cowork non visible

**Symptômes** :
- Pas de mode Cowork dans le sélecteur de conversation
- Bascule de fonctionnalité manquante dans les paramètres

**Solutions** :

| Étape | Action |
|-------|--------|
| 1 | **Vérifier l'abonnement** : Doit être tier Pro ou Max |
| 2 | **Mettre à jour l'app** : Claude Desktop → Vérifier les mises à jour |
| 3 | **Redémarrer l'app** : Quitter complètement (Cmd+Q), relancer |
| 4 | **Vérifier la région** : Certaines fonctionnalités peuvent avoir un déploiement régional |
| 5 | **Vider le cache** : Supprimer `~/Library/Application Support/Claude/` et redémarrer |

### "Cowork is not available"

**Symptômes** :
- Message d'erreur lors de la tentative d'activation
- Fonctionnalité grisée

**Solutions** :
- Vérifier que l'abonnement Pro ou Max est actif (claude.ai → Paramètres)
- Attendre 24h après la mise à niveau de l'abonnement
- Contacter le support si le problème persiste après 48h

### L'app crash au lancement de Cowork

**Symptômes** :
- L'app se ferme de manière inattendue
- Roue qui tourne indéfiniment

**Solutions** :

```bash
# Vérifier les logs de crash
open ~/Library/Logs/DiagnosticReports/

# Réinitialiser les préférences de l'app (attention : perd les paramètres)
rm -rf ~/Library/Preferences/com.anthropic.claude.plist

# Réinstaller l'app
# Télécharger la dernière version depuis claude.ai
```

---

## Problèmes VM & connexion

### "VM Connection Timeout" (problème VPN)

**Erreur exacte** :
```
Failed to start Claude's workspace — VM connection timeout after 60 seconds
```

**Cause racine** : Les logiciels VPN créent des conflits de routage avec le réseau VM interne de Cowork. C'est le **problème n°1 signalé** sur r/ClaudeAI.

**Solutions** :

| Priorité | Action |
|----------|--------|
| 1 | **Déconnecter complètement le VPN** avant de démarrer Cowork |
| 2 | Si le VPN est requis : Utiliser le split tunneling pour exclure Claude |
| 3 | Essayer le partage de connexion mobile comme contournement |

**Pourquoi ça arrive** :
Cowork s'exécute dans une machine virtuelle sandbox. Les VPN interceptent et redirigent le trafic réseau au niveau système, cassant le canal de communication hôte↔VM. Il n'y a pas de solution qui permette de garder le VPN actif.

**Contournement pour les environnements nécessitant un VPN** :
1. Déconnecter le VPN
2. Terminer les tâches Cowork
3. Reconnecter le VPN
4. Note : Certains environnements d'entreprise peuvent bloquer ce workflow

### "Workspace Failed to Initialize"

**Symptômes** :
- Le mode Cowork est disponible mais échoue à la première tâche
- Tourne indéfiniment puis erreur

**Solutions** :
1. Redémarrer complètement Claude Desktop (Cmd+Q, relancer)
2. Vérifier les mises à jour de l'OS (macOS ou Windows — la VM nécessite des API spécifiques)
3. S'assurer d'avoir 4 Go+ de RAM libre
4. Essayer en mode sans échec : Maintenir Shift au démarrage de macOS

---

## Problèmes de permissions

### "Cannot access folder"

**Symptômes** :
- Cowork dit qu'il ne peut pas lire votre workspace
- Erreurs "Permission denied"

**Solutions** :

**Étape 1 : Vérifier les permissions système**
1. Ouvrir **Réglages Système** → **Confidentialité et sécurité** (macOS 13+)
   *Note : Sur macOS 12 et antérieur, utiliser Préférences Système → Sécurité et confidentialité*
2. Aller à **Confidentialité** → **Fichiers et dossiers**
3. Trouver **Claude** ou **Claude Desktop**
4. S'assurer que votre dossier workspace est listé et coché

**Étape 2 : Accorder à nouveau l'accès**
1. Dans Cowork, démarrer une nouvelle tâche qui nécessite l'accès au dossier
2. Quand demandé, cliquer sur "Accorder l'accès"
3. Naviguer vers votre dossier workspace
4. Le sélectionner explicitement

**Étape 3 : Accès disque complet (dernier recours)**
1. Réglages Système → Sécurité et confidentialité → Confidentialité
2. Accès disque complet → Ajouter Claude Desktop
3. Redémarrer l'app

### Le workspace s'affiche vide

**Symptômes** :
- Cowork dit que le dossier est vide
- Les fichiers existent mais ne sont pas listés

**Solutions** :
- Vérifier que les fichiers sont dans le dossier exact autorisé (pas un sous-dossier)
- Vérifier les permissions des fichiers : `ls -la ~/Cowork-Workspace/`
- Essayer d'accorder à nouveau l'accès pour rafraîchir

### "Access denied" pour des fichiers spécifiques

**Symptômes** :
- Certains fichiers accessibles, d'autres non
- Types de fichiers spécifiques échouent

**Solutions** :
- Vérifier la propriété du fichier : `ls -la filename`
- Corriger la propriété : `sudo chown $(whoami) filename`
- Vérifier si le fichier est verrouillé (Obtenir des informations → case Verrouillé)

---

## Problèmes d'exécution

### La tâche s'arrête en cours d'exécution

**Symptômes** :
- Cowork arrête de répondre
- Résultats partiels uniquement
- Message "Task interrupted"

**Causes possibles et solutions** :

| Cause | Solution |
|-------|----------|
| **Limite de contexte** | Diviser la tâche en lots plus petits (voir note ci-dessous) |
| **Timeout** | Garder l'app active, réduire la portée de la tâche |
| **App en arrière-plan** | Garder Claude Desktop au premier plan |
| **Problèmes réseau** | Vérifier la connexion internet |
| **Fichiers verrouillés** | Fermer les autres apps utilisant les fichiers |

### Limite de contexte atteinte prématurément (bug connu)

**Symptômes** :
- "Context limit reached" apparaît vers ~165-175K tokens
- Devrait être 200K mais atteint la limite plus tôt
- Plus fréquent avec les tâches lourdes en fichiers

**Pourquoi ça arrive** :
La surcharge système (définitions d'outils, instructions de sécurité, logs d'exécution) consomme ~25-35K tokens avant même que votre tâche ne commence. Le contexte utilisable effectif est plus proche de 165K, pas 200K.

**Contournements** :

| Stratégie | Implémentation |
|-----------|----------------|
| **Traitement par lots** | Traiter 10-20 fichiers par session, pas 50+ |
| **Session fraîche** | Démarrer une nouvelle conversation pour réinitialiser le contexte |
| **Sortie progressive** | Sauvegarder les résultats intermédiaires dans des fichiers |
| **Prompts checkpoint** | "Sauvegarder la progression dans checkpoint.txt, continuer dans une nouvelle session" |

**Référence budget tokens** :

| Type de tâche | Tokens estimés | Sessions (tier Pro) |
|---------------|----------------|---------------------|
| Q&R simple | 5K-10K | Nombreuses |
| Inventaire fichiers (20 fichiers) | 20K-30K | 6-8 |
| Organisation petits fichiers (10-20 fichiers) | 30K-50K | 3-5 |
| Organisation gros fichiers (50+ fichiers) | 80K-150K | 1-2 |
| Synthèse multi-documents | 50K-100K | 2-3 |
| Lot OCR (10+ images) | 60K-100K | 2-3 |

**Récupération** :
```
1. Vérifier ~/Cowork-Workspace/output/ pour les résultats partiels
2. Examiner ce qui a été complété vs planifié
3. Redémarrer avec l'étape suivante explicite :
   "Continuer là où tu t'es arrêté. Les fichiers suivants
   ont déjà été traités : [liste]. Ensuite, traiter : [restants]"
```

### La tâche tourne indéfiniment

**Symptômes** :
- Indicateur de progression qui tourne indéfiniment
- Aucune sortie générée

**Solutions** :
1. Attendre jusqu'à 5 minutes pour les tâches complexes
2. Taper "Status ?" pour vérifier la progression
3. Si pas de réponse, démarrer une nouvelle conversation
4. Diviser la tâche en morceaux plus petits

### Prompts "Téléchargement Node.js"

**Symptômes** :
- Dialogue de téléchargement inattendu apparaît
- Demande d'installer Node.js

**Solutions** :
- C'est un bug connu de la research preview
- Annuler le dialogue
- La tâche devrait continuer sans ça
- Signaler à Anthropic si ça bloque l'exécution

### La session se termine de manière inattendue

**Symptômes** :
- La tâche était en cours, maintenant Cowork ne répond plus
- Progression perdue en cours d'opération
- Message "Session ended" ou similaire

**Causes courantes** :

| Cause | Prévention |
|-------|------------|
| **Mise en veille ordinateur** | Désactiver la veille pendant les tâches longues, ou cocher "Empêcher la veille quand l'app est active" |
| **App fermée** | Garder Claude Desktop visible, pas minimisé |
| **Interruption réseau** | Assurer une connexion stable pour les opérations longues |
| **Quota d'usage épuisé** | Surveiller le quota, grouper les grosses tâches de manière appropriée |

**Important** : Les sessions Cowork nécessitent que l'app desktop reste ouverte. Il n'y a pas de :
- Synchronisation inter-appareils
- Mode hors ligne
- Persistance de la mémoire entre sessions

**Récupération** :
1. Redémarrer Claude Desktop
2. Vérifier le dossier output pour les résultats partiels
3. Reprendre manuellement avec un prompt de continuation explicite
4. Pour les tâches critiques, diviser en lots plus petits avec checkpoints

### Problèmes de fiabilité des connecteurs

**Symptômes** (si utilisation de connecteurs Gmail, Drive, ou autres) :
- Le connecteur échoue à s'authentifier
- Les tâches échouent avec des erreurs vagues
- Résultats incohérents entre les exécutions

**Statut actuel** (janvier 2026) :
- La fiabilité des connecteurs est incohérente
- Certaines tâches réussissent, d'autres échouent sans motif clair
- Pas de dépannage officiel pour les connecteurs encore

**Contournements** :
- Exporter d'abord les données localement, puis traiter avec Cowork
- Utiliser la recherche web Chrome comme solution de repli pour le contenu cloud
- Réessayer les tâches connecteur échouées (fonctionne parfois à la deuxième tentative)
- Signaler les échecs persistants à Anthropic

### Erreurs liées aux pannes

**Symptômes** :
- Taux d'erreur élevé
- Les tâches échouent alors qu'elles fonctionnaient auparavant
- Plusieurs utilisateurs signalent des problèmes similaires

**Vérifier le statut** :
- Visiter [status.anthropic.com](https://status.anthropic.com)
- Vérifier Reddit r/ClaudeAI pour les signalements de la communauté

**Pendant les pannes** :
- Attendre la résolution avant de réessayer
- Ne pas réessayer à répétition (gaspille le quota)
- Sauvegarder votre travail localement

---

## Problèmes de sortie

### Les formules Excel ne fonctionnent pas

**Symptômes** :
- Les formules s'affichent comme du texte
- Erreurs `#NAME?`
- Calculs incorrects

**Solutions** :

| Problème | Solution |
|----------|----------|
| **Syntaxe régionale** | Spécifier dans le prompt : "Utiliser des points-virgules comme séparateurs de formule" (EU) ou "Utiliser des virgules comme séparateurs de formule" (US) |
| **Formule comme texte** | La cellule peut être formatée comme texte ; changer en format Nombre |
| **Référence feuille manquante** | S'assurer que les références inter-feuilles incluent le nom de la feuille |

**Exemple de prompt correctif** :
```
Les formules Excel ne fonctionnent pas. Merci de régénérer le fichier
en utilisant les paramètres régionaux européens (séparateurs point-virgule dans les formules).
```

### Mauvais format de fichier

**Symptômes** :
- Demandé .docx, obtenu .txt
- Le fichier ne s'ouvre pas dans l'application attendue

**Solutions** :
- Être explicite : "Sauvegarder au format Microsoft Word .docx"
- Vérifier que le fichier a bien l'extension correcte
- Essayer d'ouvrir avec "Ouvrir avec" pour vérifier le format

### Contenu manquant dans la sortie

**Symptômes** :
- Certains fichiers d'entrée non inclus
- Extraction de données partielle

**Solutions** :
- Vérifier si la limite de contexte a été atteinte (demander à Cowork)
- Traiter en lots plus petits
- Vérifier que tous les fichiers d'entrée sont lisibles

### Erreurs OCR/Extraction

**Symptômes** :
- Le texte extrait est brouillé
- Mauvaises données dans les champs
- Informations manquantes

**Solutions** :
- Utiliser des images de meilleure qualité
- S'assurer d'un bon éclairage/contraste dans les photos
- Spécifier le format attendu dans le prompt
- Réviser et corriger manuellement

---

## Problèmes navigateur

### L'intégration Chrome ne fonctionne pas

**Symptômes** :
- Erreur "Cannot access Chrome"
- La recherche web échoue
- Le navigateur ne s'ouvre pas

**Solutions** :

**Étape 1 : Vérifier l'installation de Chrome**
- S'assurer que Chrome est installé (pas seulement Chromium)
- Mettre à jour vers la dernière version de Chrome

**Étape 2 : Accorder les permissions Chrome**
1. Réglages Système → Sécurité et confidentialité → Confidentialité
2. Accessibilité → Ajouter Claude Desktop
3. Enregistrement d'écran → Ajouter Claude Desktop (si nécessaire)

**Étape 3 : Tester l'accès au navigateur**
```
Dans Cowork : "Ouvrir Chrome et rechercher 'test'"
```

### "Chrome Native Messaging Host Not Found"

**Erreur exacte** :
```
Chrome native messaging host not found
```
ou échec silencieux sans interaction Chrome.

**Cause racine** : L'hôte de messagerie native permet à Claude Desktop de communiquer avec Chrome. Il peut ne pas s'installer correctement lors de la configuration.

**Correction manuelle** :

```bash
# 1. Trouver le manifeste de messagerie native de Claude
ls ~/Library/Application\ Support/Google/Chrome/NativeMessagingHosts/

# 2. Si vide ou "com.anthropic.claude.json" manquant, le créer :
mkdir -p ~/Library/Application\ Support/Google/Chrome/NativeMessagingHosts

# 3. Créer le manifeste (ajuster le chemin si Claude est installé ailleurs)
cat > ~/Library/Application\ Support/Google/Chrome/NativeMessagingHosts/com.anthropic.claude.json << 'EOF'
{
  "name": "com.anthropic.claude",
  "description": "Claude Desktop Native Messaging Host",
  "path": "/Applications/Claude.app/Contents/Resources/native-messaging-host",
  "type": "stdio",
  "allowed_origins": [
    "chrome-extension://YOUR_EXTENSION_ID/"
  ]
}
EOF

# 4. Redémarrer Chrome et Claude Desktop
```

**Note** : L'ID d'extension varie. Vérifier les extensions Chrome (chrome://extensions) pour trouver l'ID de l'extension Claude si installée.

**Si ça échoue toujours** :
1. Désinstaller complètement Claude Desktop
2. Supprimer `~/Library/Application Support/Claude/`
3. Réinstaller depuis claude.ai
4. Accorder à nouveau toutes les permissions

### Les actions navigateur échouent

**Symptômes** :
- Les clics ne s'enregistrent pas
- Les pages ne se chargent pas
- Les formulaires ne se remplissent pas

**Solutions** :
- S'assurer que Chrome est au premier plan
- Fermer les autres extensions Chrome qui pourraient interférer
- Essayer en mode navigation privée Chrome
- Accorder des permissions d'accessibilité supplémentaires

### La recherche web retourne de mauvais résultats

**Symptômes** :
- Résultats de recherche non pertinents
- Informations attendues manquantes
- Messages "Could not find"

**Solutions** :
- Être plus spécifique dans les demandes de recherche
- Fournir des URLs d'exemple si vous connaissez de bonnes sources
- Essayer de diviser la recherche en plusieurs requêtes spécifiques

---

## Problemes specifiques a Windows

> **Note** : Le support Windows a ete ajoute le 10 fevrier 2026. Certains problemes sont specifiques a cette plateforme.

### Installation sur Windows

**Symptomes** :
- L'installateur ne se lance pas
- Erreur de compatibilite Windows

**Solutions** :

| Etape | Action |
|-------|--------|
| 1 | **Verifier la version Windows** : Windows 10 (version 1903+) ou Windows 11 requis |
| 2 | **Executer en administrateur** : Clic droit sur l'installateur → Executer en tant qu'administrateur |
| 3 | **Verifier l'antivirus** : Certains antivirus bloquent l'installation — ajouter une exception pour Claude Desktop |
| 4 | **Telecharger a nouveau** : Recuperer la derniere version depuis [claude.ai/download](https://claude.ai/download) |

### Problemes de permissions Windows

**Symptomes** :
- "Acces refuse" lors de l'acces aux fichiers
- Cowork ne peut pas ecrire dans le dossier workspace

**Solutions** :
1. Verifier que le dossier workspace n'est pas dans un emplacement protege (ex: `C:\Program Files\`)
2. Utiliser un dossier dans `C:\Users\VotreNom\Cowork-Workspace\`
3. Verifier les permissions du dossier : clic droit → Proprietes → Securite
4. S'assurer que votre utilisateur a les droits en lecture et ecriture

### Problemes PATH et variables d'environnement

**Symptomes** :
- Claude Desktop installe mais ne se lance pas depuis le menu Demarrer
- Erreurs liees aux chemins de fichiers

**Solutions** :
1. Verifier l'emplacement d'installation : par defaut `C:\Users\VotreNom\AppData\Local\Programs\Claude\`
2. Redemarrer l'ordinateur apres l'installation
3. Si le probleme persiste, reinstaller en utilisant le chemin d'installation par defaut

### Integration Chrome sur Windows

**Symptomes** :
- L'integration Chrome ne fonctionne pas sous Windows
- Erreur "Native messaging host not found" sur Windows

**Solutions** :
1. Verifier que Chrome est installe depuis le site officiel (pas Chromium)
2. Le manifeste de messagerie native se trouve dans :
   `%LOCALAPPDATA%\Google\Chrome\User Data\NativeMessagingHosts\`
3. Redemarrer Chrome et Claude Desktop apres l'installation
4. Si le probleme persiste, desinstaller et reinstaller Claude Desktop

### Notes VPN sur Windows

Les memes conflits VPN que sur macOS s'appliquent sur Windows. Solutions supplementaires :
- Verifier le split tunneling dans les parametres de votre VPN Windows
- Certains VPN d'entreprise (Cisco AnyConnect, GlobalProtect) necessitent une configuration specifique
- Contacter votre administrateur reseau si le VPN est obligatoire

---

## Depannage general

### Cowork ne comprend pas la requête

**Symptômes** :
- Mauvaise interprétation de la tâche
- Plan proposé inattendu
- Pose des questions de clarification qui semblent à côté

**Solutions** :
- Être plus explicite dans votre requête
- Utiliser les modèles de prompt de [Démarrage](01-getting-started.fr.md)
- Diviser les tâches complexes en étapes
- Fournir des exemples de sortie attendue

**Meilleur modèle de prompt** :
```
Tâche : [objectif unique clair]
Entrée : [dossier/fichiers exacts]
Sortie : [format et emplacement exacts]
Contraintes : [limitations éventuelles]
Exemple : [à quoi ressemble le succès]
```

### Fichiers dans un état inattendu

**Symptômes** :
- Fichiers déplacés au mauvais endroit
- Renommage inattendu
- Fichiers manquants

**Récupération** :
```
1. NE PAS laisser Cowork "corriger" sans comprendre
2. Examiner manuellement ce qui a changé
3. Restaurer depuis la sauvegarde si nécessaire
4. Redémarrer avec des instructions plus claires
```

**Prévention** :
- Toujours sauvegarder avant les opérations destructrices
- Examiner attentivement les plans avant approbation
- Commencer avec de petits lots de test

### Confusion de contexte entre tâches

**Symptômes** :
- Cowork fait référence à une tâche précédente
- Gestion de fichiers mélangée
- Comportement inattendu

**Solutions** :
- Démarrer une nouvelle conversation pour les tâches non liées
- Nettoyer le workspace entre différents projets
- Être explicite sur le contexte actuel

---

## Signaler des problèmes

### Quand signaler

Signaler à Anthropic quand :
- Les bugs sont reproductibles
- Le comportement semble clairement erroné
- Une perte de données se produit
- Des préoccupations de sécurité surviennent

### Comment signaler

1. **Support général** : support.anthropic.com
2. **Demandes de fonctionnalités** : App Claude Desktop → Feedback
3. **Communauté** : Reddit r/ClaudeAI

### Quoi inclure

```
- Version macOS ou Windows
- Version Claude Desktop
- Tier d'abonnement
- Étapes pour reproduire
- Comportement attendu vs réel
- Captures d'écran si applicable
- Messages d'erreur pertinents
```

---

## Résumé des solutions rapides

| Problème | Solution rapide |
|----------|-----------------|
| Ne voit pas Cowork | Mettre à jour l'app + redémarrer |
| Permission refusée | Accorder à nouveau l'accès au dossier dans Réglages Système |
| La tâche s'arrête | Diviser en lots plus petits |
| Formules Excel cassées | Spécifier la syntaxe régionale dans le prompt |
| Chrome ne fonctionne pas | Accorder la permission Accessibilité |
| Mauvaise sortie | Être plus explicite dans le prompt |
| Fichiers manquants | Vérifier la sauvegarde, examiner ce que Cowork a fait |

---

## Checklist de prévention

Avant de démarrer toute tâche :

- [ ] Une sauvegarde récente existe
- [ ] Le dossier workspace est propre
- [ ] Les fichiers proviennent de sources de confiance
- [ ] La requête est spécifique et délimitée
- [ ] La sortie attendue est claire

---

*[← Sécurité](03-security.fr.md) | [Documentation Cowork](../README.md)*
