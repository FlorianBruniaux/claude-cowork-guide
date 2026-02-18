# FAQ Cowork

🌐 **Langues** : [Français](faq.fr.md) | [English](faq.md)

> **20+ questions fréquentes** sur Claude Cowork

---

## Démarrage

### Q: Qu'est-ce que Cowork ?
**R:** Cowork est la fonctionnalité desktop agentique de Claude qui vous permet de manipuler des fichiers locaux, créer des documents et organiser votre espace de travail—sans écrire de code. Elle fonctionne dans l'application Claude Desktop et peut exécuter de manière autonome des opérations multi-étapes sur les fichiers.

### Q: Comment obtenir l'accès à Cowork ?
**R:** Vous avez besoin de :
1. Un abonnement Pro (20$/mois) ou Max (100-200$/mois)
2. macOS ou Windows (Linux non annoncé)
3. L'application Claude Desktop (dernière version)
4. Activer dans Réglages → Fonctionnalités

### Q: Quelles sont les limites d'usage ?
**R:** L'usage se réinitialise toutes les 5 heures, pas quotidiennement/mensuellement. Tier Pro : ~45 messages courts par réinitialisation (~1-1,5 heures d'utilisation intensive). Tier Max : 5x ou 20x la limite Pro. Les tâches d'organisation de fichiers et de traitement de documents consomment rapidement les tokens—planifiez en conséquence.

### Q: Claude Cowork est-il disponible sur Windows ?
**R:** Oui ! Le support Windows a été ajouté le 10 février 2026. Cowork fonctionne maintenant sur macOS et Windows. **Linux** n'a aucune annonce officielle.

**Distinction importante :**
- **Claude Desktop** sur Linux : Des solutions communautaires existent (NixOS Flake est la plus fiable, aussi paquets Debian, AUR)
- **Cowork** sur Linux : AUCUNE solution. Cowork nécessite des API système spécifiques à l'OS pour l'utilisation de l'ordinateur qui n'ont pas d'équivalent Linux

Si vous avez besoin de capacités agentiques sur Linux, utilisez **Claude Code** (support natif) au lieu de Cowork.

### Q: Est-ce que Cowork est la même chose que Claude Code ?
**R:** Ils partagent l'architecture mais diffèrent dans l'interface et les capacités :
- **Claude Code** : Interface terminal, accès shell complet, pour développeurs
- **Cowork** : Application desktop, accès fichiers uniquement, pour travailleurs du savoir

Voir [comparaison complète](comparison.fr.md).

---

## Capacités

### Q: Que peut faire Cowork ?
**R:** Capacités principales :
- Lire et écrire des fichiers locaux
- Créer des documents Word, Excel, PowerPoint, PDF
- Organiser et renommer dossiers/fichiers
- Extraire des données d'images (OCR)
- Traiter des PDF
- Recherche web via Chrome

### Q: Que ne peut pas faire Cowork ?
**R:** Cowork ne peut pas :
- Exécuter du code ou des scripts
- Faire des appels API
- Accéder directement au stockage cloud (Google Drive, Dropbox)
- Traiter de l'audio ou de la vidéo
- Décrypter des fichiers chiffrés
- Accéder aux ressources réseau (sauf via Chrome)

### Q: Est-ce que Cowork peut naviguer sur le web ?
**R:** Oui, via l'intégration Chrome. Vous accordez l'accès Chrome pour des tâches spécifiques, et Cowork peut rechercher, lire des pages et extraire des informations. Le remplissage de formulaires est limité et nécessite une approbation explicite de l'utilisateur pour chaque action. Les achats et connexions sont interdits pour des raisons de sécurité.

### Q: Est-ce que Cowork peut accéder à Google Drive ou Dropbox ?
**R:** Connecteurs expérimentaux disponibles mais non fiables (janvier 2026). Les connecteurs Gmail et Drive existent mais ont une authentification et une complétion de tâches incohérentes. Solution de contournement recommandée : Téléchargez d'abord les fichiers cloud dans votre espace de travail local pour un traitement fiable.

### Q: Est-ce que Cowork peut exécuter des scripts Python ou shell ?
**R:** Non. Cowork manipule uniquement les fichiers—il ne peut pas exécuter de code. Utilisez Claude Code pour l'exécution de code.

### Q: Quels formats de fichiers Cowork peut-il créer ?
**R:**
- Office : .docx, .xlsx, .pptx
- Document : .pdf, .txt, .md
- Données : .csv, .json
- Web : .html

### Q: Est-ce que Cowork peut créer des formules Excel ?
**R:** Oui ! Cowork peut créer des fichiers Excel avec des formules fonctionnelles, plusieurs feuilles et du formatage. Spécifiez votre paramètre régional (syntaxe virgule US vs point-virgule EU) dans votre prompt.

### Q: Est-ce que Claude in Excel est la même chose que Cowork ?
**R:** Non. Ce sont deux produits séparés :

**Claude in Excel** (add-in lancé 24 jan 2026) :
- Add-in Microsoft Excel
- Fonctionne à l'intérieur de l'application Excel
- Aide à écrire des formules, analyser des données dans des feuilles existantes
- Windows + macOS (Excel 2016+)

**Capacités Excel de Cowork** :
- Partie de l'application Claude Desktop (macOS et Windows)
- Crée des fichiers Excel depuis zéro
- Génère des tableurs depuis des données non structurées (reçus, images, texte)

**Règle simple** : Si vous êtes déjà dans Excel et avez besoin d'aide pour les formules → utilisez l'add-in Claude in Excel. Si vous devez générer un nouveau tableur depuis des données brutes → utilisez Cowork.

Voir [comparaison détaillée](comparison.fr.md#confusion-frequente).

### Q: C'est quoi Claude Legal ?
**R:** Claude Legal est la première extension officielle Cowork (annoncée 3 fév 2026) pour la revue automatisée de documents juridiques. Il aide à identifier les termes clés de contrats, détecter les risques de conformité et trier les documents légaux. Utilisez-le pour vérifier des contrats, analyser des NDA et suivre la conformité. **Important** : Claude Legal ne fournit PAS de conseil juridique—toutes les conclusions doivent être revues par un professionnel juridique qualifié. Voir [Capacités : Extensions & Plugins](../guide/02-capabilities.fr.md#extensions--plugins) pour plus de détails.

### Q: Qu'est-ce que les Plugins Cowork ?
**R:** Les Plugins Cowork sont des intégrations tierces officielles annoncées le 30 janvier 2026. Il y a actuellement 11 plugins : Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry et Slack. Ils permettent à Cowork d'interagir directement avec ces services sans automatisation navigateur.

### Q: Quelle est la fenêtre de contexte d'Opus 4.6 ?
**R:** Opus 4.6 (le modèle alimentant Cowork) supporte jusqu'à 1M de tokens en beta, une amélioration majeure par rapport à la limite effective précédente de ~200K. Les tokens de sortie ont aussi augmenté à 128K (contre 64K). Opus 4.6 propose aussi la pensée adaptative avec 4 niveaux d'effort pour une meilleure efficacité.

### Q: Qu'est-ce que les tâches planifiées ?
**R:** Les tâches planifiées vous permettent d'automatiser des opérations Cowork récurrentes. Vous pouvez configurer des tâches qui s'exécutent selon un calendrier (ex : compilation de rapport quotidien, organisation de fichiers hebdomadaire) sans déclenchement manuel à chaque fois. C'est une nouvelle fonctionnalité de la mise à jour de février 2026.

### Q: Qu'est-ce que la compaction de contexte ?
**R:** La compaction de contexte (beta) compresse automatiquement l'historique de conversation pendant les sessions longues. Cela permet des sessions effectives beaucoup plus longues en gardant le contexte pertinent tout en supprimant les informations redondantes. Cela atténue partiellement la limitation précédente d'absence de persistance de session.

### Q: Qu'est-ce que les Équipes d'agents ?
**R:** Les Équipes d'agents (preview recherche) permettent la coordination multi-agents où plusieurs agents Claude travaillent ensemble sur des tâches complexes. Un agent peut orchestrer les autres, chacun gérant une sous-tâche spécialisée. Cela étend l'architecture de sous-agents existante avec une coordination plus sophistiquée.

---

## Sécurité

### Q: Est-ce que Cowork est sécurisé ?
**R:** Il n'y a pas encore de documentation officielle sur la sécurité (preview recherche). Vous devriez :
- Utiliser un dossier d'espace de travail dédié
- Ne jamais accorder l'accès à Documents/Bureau
- Garder les identifiants hors de l'espace de travail
- Réviser chaque plan d'exécution
- Sauvegarder avant les opérations destructives

Voir [Guide de Sécurité](../guide/03-security.fr.md).

### Q: Est-ce que Cowork peut accéder à tous mes fichiers ?
**R:** Uniquement les dossiers auxquels vous accordez explicitement l'accès. Bonne pratique : créez un dossier dédié `~/Cowork-Workspace/` et accordez l'accès uniquement là.

### Q: Qu'est-ce que l'injection de prompt et dois-je m'inquiéter ?
**R:** L'injection de prompt, c'est quand du contenu malveillant dans des fichiers tente de manipuler le comportement de l'IA. Atténuation :
- Traitez uniquement des fichiers de sources fiables
- Évitez les fichiers avec du contenu ressemblant à des instructions
- Révisez le plan de Cowork avant approbation

### Q: Est-ce que mes données sont envoyées aux serveurs d'Anthropic ?
**R:** Le contenu des fichiers est traité par l'API de Claude, similaire à coller du texte dans le chat. Pas encore de politique officielle de rétention de données spécifique à Cowork. Pour les données sensibles, réfléchissez si le traitement IA cloud est approprié.

### Q: Puis-je utiliser Cowork pour des documents business confidentiels ?
**R:** Non recommandé pendant la preview recherche. Attendez :
- La documentation officielle de sécurité
- Les fonctionnalités enterprise (piste d'audit, contrôles d'accès)
- Les certifications de conformité

---

## Dépannage

### Q: Cowork s'est arrêté en milieu de tâche. Que faire ?
**R:**
1. Vérifiez le dossier de sortie pour les résultats partiels
2. Divisez la tâche en morceaux plus petits
3. Reprenez avec un état explicite : "Continuer depuis X, les éléments restants sont Y"

Causes courantes : limite de contexte, timeout, problèmes réseau.

### Q: Puis-je utiliser Cowork avec un VPN ?
**R:** **Non.** Les logiciels VPN créent des conflits de routage avec le réseau VM interne de Cowork. C'est le **problème n°1 signalé** sur r/ClaudeAI.

**Erreur exacte** :
```
Failed to start Claude's workspace — VM connection timeout after 60 seconds
```

**Pourquoi ça arrive** : Cowork s'exécute dans une machine virtuelle sandboxée. Les VPN interceptent et redirigent le trafic réseau au niveau système, cassant le canal de communication hôte↔VM.

**Solutions** :
1. **Déconnectez complètement le VPN** avant d'utiliser Cowork
2. Si VPN requis : Utilisez le split tunneling pour exclure Claude Desktop
3. Environnement corporate : Il peut être nécessaire de regrouper les tâches Cowork quand le VPN est désactivé

Il n'y a pas de contournement qui garde le VPN actif. Voir [Dépannage](../guide/04-troubleshooting.fr.md#problemes-de-connexion-vm) pour les détails.

### Q: Mes formules Excel s'affichent comme du texte ou des erreurs.
**R:** Problème de syntaxe régionale. Spécifiez dans votre prompt :
- US/UK : "Use comma separators in formulas"
- EU : "Use semicolon separators in formulas"

### Q: Cowork ne peut pas accéder à mon dossier.
**R:**
1. Préférences Système → Sécurité et confidentialité → Fichiers et dossiers
2. Trouvez Claude Desktop
3. Activez votre dossier d'espace de travail
4. Redémarrez l'app si nécessaire

### Q: L'intégration Chrome ne fonctionne pas.
**R:** Accordez des permissions supplémentaires :
- Préférences Système → Sécurité et confidentialité → Accessibilité → Ajouter Claude
- Assurez-vous que Chrome est installé (pas Chromium)

### Q: Comment arrêter une tâche en cours ?
**R:** Tapez "Stop" dans le chat ou fermez la fenêtre de conversation.

### Q: Ma tâche a échoué quand mon ordinateur s'est mis en veille.
**R:** Cowork nécessite que l'app desktop reste ouverte et active. Il n'y a :
- Pas de mode hors ligne
- Pas de synchronisation inter-appareils
- Pas de persistance de mémoire entre les sessions

**Prévention** : Désactivez la veille pendant les tâches longues. Pour le travail critique, divisez en lots plus petits avec points de contrôle qui peuvent être repris.

### Q: Que se passe-t-il lors d'une panne Anthropic ?
**R:** Les sessions Cowork peuvent :
- Montrer des taux d'erreur élevés
- Échouer des tâches qui fonctionnaient auparavant
- Devenir non réactives

**Action** : Vérifiez [status.anthropic.com](https://status.anthropic.com), attendez la résolution, ne réessayez pas de manière répétée (gaspille le quota).

---

## Tarification & Accès

### Q: Combien coûte Cowork ?
**R:** Nécessite un abonnement Pro (20$/mois) ou Max (100-200$/mois). Pro est disponible maintenant mais a des limites d'usage plus strictes—recommandé pour usage léger uniquement.

### Q: Pro ou Max—lequel choisir ?
**R:**
- **Pro (20$/mois)** : Usage occasionnel, organisation légère de fichiers, petits lots. Le quota s'épuise en ~1-1,5 heures d'utilisation intensive.
- **Max (100-200$/mois)** : Usage quotidien lourd, traitement de gros lots, workflows intensifs en documents. 5x-20x plus d'usage que Pro.

### Q: Y a-t-il une limite d'usage avec Cowork ?
**R:** Oui. L'usage se réinitialise toutes les 5 heures (pas quotidiennement/mensuellement). La fenêtre de contexte de ~200K tokens est la limite par session. Les tâches lourdes (traitement de fichiers, OCR) consomment les tokens plus rapidement que le chat.

---

## Technique

### Q: Comment Cowork gère-t-il plusieurs fichiers ?
**R:** Cowork peut créer des sous-agents qui travaillent en parallèle. Chaque sous-agent a un contexte frais et travaille sur une partie de la tâche. L'orchestrateur principal assemble les résultats.

### Q: Quelle est la limite de contexte ?
**R:** Avec Opus 4.6, jusqu'à 1M de tokens en beta (précédemment ~200K). Environ :
- 600-2000+ pages de texte
- 200-400+ documents typiques
- 200-400+ images (OCR)

La compaction de contexte (beta) étend encore la durée effective des sessions en compressant l'historique de conversation ancien.

### Q: Est-ce que Cowork se souvient entre les sessions ?
**R:** Pas de mémoire intégrée entre les sessions. Cependant, la compaction de contexte (beta) permet maintenant des sessions beaucoup plus longues en compressant l'historique de conversation. Solution de contournement pour la mémoire inter-sessions : Sauvegardez le contexte dans un fichier et chargez-le à la session suivante.

### Q: Puis-je automatiser Cowork avec des scripts ?
**R:** Pas actuellement. Cowork n'a pas d'API ou d'interface d'automatisation (janvier 2026). Pour l'automatisation, utilisez Claude Code.

---

## Comparaison

### Q: Quand devrais-je utiliser Cowork vs Claude Code ?
**R:**
- **Cowork** : Organisation de fichiers, création de documents, extraction de données—sans codage
- **Claude Code** : Développement logiciel, accès shell, exécution de code

### Q: Quand devrais-je utiliser Cowork vs Projects ?
**R:**
- **Cowork** : Besoin de créer des fichiers, organiser des dossiers, traitement par lots
- **Projects** : Juste discuter de documents, brainstormer, écrire

### Q: Quand devrais-je simplement utiliser Chat au lieu de Cowork ?
**R:** Chat (Projects/web) est meilleur pour :
- **Raisonnement & stratégie** : Dialogue itératif, test d'hypothèses, pensée nuancée
- **Développement de code** : Intégration Claude Code, cycles de test rapides
- **Écriture & brouillons** : Artefacts en direct, itération en ligne
- **Tâches exploratoires** : Quand les exigences ne sont pas encore claires
- **Collaboration** : Liens partageables, visibilité d'équipe
- **Mobile/tout appareil** : Accès sans installation

**Règle générale** : Le défi est-il *intellectuel* (raisonner/écrire/coder) ou *opérationnel* (organiser/automatiser/traiter par lots) ? Chat pour le premier, Cowork pour le second. La plupart des utilisateurs : ~80% Chat, ~20% Cowork.

### Q: Est-ce que les développeurs peuvent bénéficier de Cowork ?
**R:** Oui, pour les tâches non-code :
- Organiser la documentation
- Créer des rapports à partir de logs
- Compilation de recherche
- Gestion de fichiers

---

## Futur

### Q: Est-ce que Cowork est toujours en beta ?
**R:** C'est en statut "preview recherche" en janvier 2026. Attendez-vous à des bugs et des fonctionnalités manquantes. Non recommandé pour usage production.

### Q: Quelles fonctionnalités arrivent ?
**R:** Ajouts récents (février 2026) :
- Support Windows (sorti 10 fév 2026)
- 11 plugins officiels (Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry, Slack)
- Tâches planifiées, Équipes d'agents (preview recherche), compaction de contexte (beta)
- Automatisation navigateur améliorée, intégrations directes Excel et PowerPoint

Toujours non annoncé : support Linux, fonctionnalités enterprise.

### Q: Y aura-t-il une API pour Cowork ?
**R:** Inconnu. Actuellement Cowork est desktop uniquement sans interface d'automatisation.

### Q: Dois-je m'attendre à des changements majeurs ?
**R:** Oui. Les previews recherche d'Anthropic ont des patterns de stabilité faibles :
- Modèles dépréciés ~6-12 mois post-sortie (préavis 60+ jours)
- Les fonctionnalités UI reçoivent des changements backend qui peuvent affecter les workflows
- Le comportement peut changer entre les mises à jour

**Atténuation** : Ne construisez pas de workflows critiques qui dépendent du comportement exact de Cowork. Ayez des plans de secours. Vérifiez r/ClaudeAI et status.anthropic.com pour les annonces de changements.

---

## Vous avez encore des questions ?

- **Support** : support.anthropic.com
- **Communauté** : Reddit r/ClaudeAI
- **Feedback** : Application Claude Desktop → option Feedback

---

*[Retour à la Documentation Cowork](../README.md)*
