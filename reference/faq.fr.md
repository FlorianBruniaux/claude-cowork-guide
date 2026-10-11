# FAQ Cowork

🌐 **Langues** : [Français](faq.fr.md) | [English](faq.md)

> **20+ questions fréquentes** sur Claude Cowork

---

## Démarrage

### Q: Qu'est-ce que Cowork ?
**R:** Cowork est la fonctionnalité desktop agentique de Claude qui vous permet de manipuler des fichiers locaux, créer des documents et organiser votre espace de travail, sans écrire de code. Elle fonctionne dans l'application Claude Desktop et peut exécuter de manière autonome des opérations multi-étapes sur les fichiers.

### Q: Comment obtenir l'accès à Cowork ?
**R:** Vous avez besoin de :
1. Un plan Claude payant : Pro, Max, Team ou Enterprise (pas Free, voir [Cowork est-il gratuit ?](#q-cowork-est-il-gratuit-)). L'éligibilité dépend du plan et de la surface.
2. Claude Desktop sur macOS 13 ou plus récent, sur Windows, ou sur Linux (bêta). Le web et le mobile sont en bêta pour les plans éligibles.
3. L'application Claude ou la surface web/mobile actuelle de votre plan.

Depuis le 16 septembre 2026, Anthropic déploie progressivement « Unified Claude » sur les comptes Pro et Max : il n'y a plus de mode Chat ou Cowork à choisir, Claude décide si votre demande appelle une réponse rapide ou une tâche.

Vérifiez le [guide officiel de disponibilité](https://support.claude.com/en/articles/13345190-get-started-with-cowork) et le [guide des surfaces](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile) avant de changer d'abonnement.

### Q: Quelles sont les limites d'usage ?
**R:** Les plans payants ont une limite glissante de 5 h et des limites hebdomadaires. L'usage dépend du plan, de la surface et de la tâche, et Anthropic peut modifier les limites : consultez les informations de plan actuelles dans Claude plutôt qu'un nombre fixe de messages. Le mode d'approbation Auto consomme plus de limite que Manual. Sur Pro et Max, les usage credits permettent de continuer aux tarifs API une fois une limite atteinte. Source : claude.com/pricing, relu le 11 octobre 2026.

### Q: Claude Cowork est-il disponible sur Windows ?
**R:** Oui. Claude Desktop prend en charge macOS (13 Ventura ou plus récent depuis le 8 septembre 2026), Windows, et Linux (bêta : Ubuntu 22.04+ ou Debian 12+, installation par apt, pas de mise à jour automatique, ni computer use ni dictée). Cowork est aussi en bêta sur le web et le mobile pour les plans éligibles. ChromeOS n'est pas pris en charge. Consultez le [guide d'installation desktop](https://support.claude.com/en/articles/10065433-install-claude-desktop) et le [guide de disponibilité des surfaces](https://support.claude.com/en/articles/15520349-use-claude-cowork-on-web-desktop-and-mobile).

### Q: Est-ce que Cowork est la même chose que Claude Code ?
**R:** Ils partagent l'architecture mais diffèrent dans l'interface et les capacités :
- **Claude Code** : Interface terminal, accès shell complet, pour développeurs
- **Cowork** : espace de tâches pour le travail intellectuel, avec fonctions locales, navigateur et connecteurs selon la surface et les permissions

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
- S'accorder un accès shell hôte sans restriction
- Contourner les permissions, l'éligibilité du plan ou la disponibilité d'une fonction
- Considérer un connecteur configuré comme un accès universel à tout service cloud

Cowork peut exécuter du code dans un environnement de tâche isolé. Les fonctions navigateur et connecteurs ne sont disponibles que si la surface et les permissions concernées l'autorisent.

### Q: Est-ce que Cowork peut naviguer sur le web ?
**R:** Oui, de deux façons. Le **navigateur intégré** de Claude Desktop (macOS, Windows, Linux bêta) est séparé de votre navigateur personnel : Claude ne voit pas vos mots de passe enregistrés sauf import volontaire, et Claude Desktop doit être ouvert et en ligne, même pour une session cloud lancée depuis le web ou votre téléphone. **Claude in Chrome** agit dans votre propre Chrome : ouvrir son panneau latéral démarre une session Cowork (Max, Team, Pro en déploiement, Enterprise si un admin l'a activé). Claude privilégie d'abord un connecteur, puis un navigateur (intégré ou Chrome), puis le contrôle de l'écran en dernier recours. Le remplissage de formulaires est limité et nécessite une approbation explicite de l'utilisateur pour chaque action. Les achats et connexions sont interdits pour des raisons de sécurité. Source : support.claude.com/en/articles/16607400, 13345190 et 15520349.

### Q: Est-ce que Cowork peut accéder à Google Drive ou Dropbox ?
**R:** La disponibilité dépend de la surface, du connecteur et des permissions accordées. Vérifiez la connexion dans Claude avant un workflow critique. Télécharger une copie dans un espace de travail local dédié reste une solution de repli utile lorsqu'un connecteur est indisponible.

### Q: Est-ce que Cowork peut exécuter des scripts Python ou shell ?
**R:** Cowork peut exécuter du code dans un environnement de tâche isolé. Ce n'est pas un accès shell arbitraire à votre ordinateur. Utilisez Claude Code si la tâche nécessite un terminal ou un dépôt contrôlé par un développeur.

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
- Partie de l'application Claude Desktop (macOS, Windows et Linux bêta)
- Crée des fichiers Excel depuis zéro
- Génère des tableurs depuis des données non structurées (reçus, images, texte)

**Règle simple** : Si vous êtes déjà dans Excel et avez besoin d'aide pour les formules → utilisez l'add-in Claude in Excel. Si vous devez générer un nouveau tableur depuis des données brutes → utilisez Cowork.

Voir [comparaison détaillée](comparison.fr.md#confusion-courante).

### Q: C'est quoi Claude Legal ?
**R:** Claude Legal est la première extension officielle Cowork (annoncée 3 fév 2026) pour la revue automatisée de documents juridiques. Il aide à identifier les termes clés de contrats, détecter les risques de conformité et trier les documents légaux. Utilisez-le pour vérifier des contrats, analyser des NDA et suivre la conformité. **Important** : Claude Legal ne fournit PAS de conseil juridique. Toutes les conclusions doivent être revues par un professionnel juridique qualifié. Voir [Capacités : Extensions & Plugins](../guide/02-capabilities.fr.md#extensions--plugins) pour plus de détails.

### Q : Qu'est-ce que l'onglet Personnaliser ?
**R :** L'onglet Personnaliser dans Claude Desktop est l'endroit où vous gérez les Compétences, les Connecteurs et les personnalisations. Accédez-y depuis la navigation principale de l'application. Vous pouvez y installer des compétences (comme `/pdf` ou `/xlsx`), configurer des connecteurs d'outils externes avec des permissions par outil, et ajuster les comportements par défaut.

### Q : Qu'est-ce que les Compétences (Skills) ?
**R :** Les Compétences sont des capacités supplémentaires installées via l'onglet Personnaliser. Chaque compétence s'active via une commande / : `/pdf` pour le traitement avancé de PDF, `/xlsx` pour Excel, `/docx` pour Word, `/canvas-design` pour les mises en page visuelles. Les compétences peuvent aussi s'enchaîner, par exemple utilisez `/pdf` pour extraire du contenu, puis `/xlsx` pour l'organiser en tableur. Compétences officielles sur `github.com/anthropics/skills`. Communauté sur `claudemarketplaces.com`, `skills.sh` et `skillhub.club`.

### Q : Qu'est-ce que Desktop Commander ?
**R :** Desktop Commander est une extension officielle de Cowork (installée depuis l'onglet Personnaliser) qui étend l'accès aux fichiers au-delà du dossier workspace, active la mémoire cross-session via un fichier `memory.md`, et permet l'installation de serveurs MCP en un clic. L'installer est l'étape recommandée après la configuration de base. Voir [Démarrage Étape 8](../guide/01-getting-started.fr.md#étape-8--installer-desktop-commander-recommandé).

### Q : Que sont les connecteurs MCP ?
**R :** Les connecteurs MCP (Model Context Protocol) permettent à Cowork d'interagir avec des outils et services externes. Trois types : connecteurs de recherche web, connecteurs desktop/fichiers locaux (via Desktop Commander), et connecteurs JSON personnalisés pour les intégrations avancées. Vous pouvez définir des permissions par outil : Autoriser (automatique), Demander (confirmation à chaque fois), ou Bloquer (jamais). Aucun code requis, quelques clics dans l'onglet Personnaliser suffisent.

### Q : Où trouver des compétences communautaires ?
**R :** Au-delà des compétences officielles Anthropic sur `github.com/anthropics/skills`, des compétences créées par la communauté sont disponibles sur `claudemarketplaces.com`, `skills.sh` et `skillhub.club`. Installez n'importe quelle compétence depuis l'onglet Personnaliser en cherchant par nom ou en collant l'URL.

### Q: Qu'est-ce que les Plugins Cowork ?
**R:** Les Plugins Cowork sont des intégrations tierces officielles annoncées le 30 janvier 2026. Il y a actuellement 11 plugins : Asana, Canva, Cloudflare, Figma, GitHub, Google Drive, Jira, Linear, Notion, Sentry et Slack. Ils permettent à Cowork d'interagir directement avec ces services sans automatisation navigateur.

### Q : Quelle est la différence entre Dispatch et Channels ?

**R :** Ce sont deux fonctionnalités différentes souvent confondues dans la presse tech :

| Fonctionnalité | Produit | Ce qu'elle fait | Canaux |
|---|---|---|---|
| **Dispatch** | Cowork (app bureau) | Envoyer des tâches depuis votre téléphone vers votre session Cowork desktop via QR code | App iOS/Android uniquement |
| **Channels** | Claude Code (CLI) | Connecter une session Claude Code en terminal à Telegram ou Discord | Telegram, Discord |

**Règle pratique** : si vous utilisez Claude Desktop (Cowork), vous utilisez **Dispatch** : couplez votre téléphone via QR code dans les Paramètres, puis envoyez des tâches depuis l'app mobile pendant que votre Mac les exécute. L'intégration Telegram et Discord appartient à **Claude Code Channels**, un outil distinct destiné aux développeurs.

Si vous voyez des articles sur "Claude sur Telegram" ou "Claude sur Discord", c'est Claude Code Channels, pas Cowork.

### Q: Quels modèles Claude Cowork peut-il utiliser ?
**R:** La famille Claude 5.5, sortie à l'automne 2026 :
- **Claude Opus 5.5** (22 septembre 2026) : atteint le niveau de Claude Fable 5.1 sur la plupart des tâches et coûte 40 % de moins à faire tourner qu'Opus 5.
- **Claude Sonnet 5.5** (28 septembre 2026) : plus de 30 % plus rapide que Sonnet 5 et jusqu'à 30 % moins cher sur la plupart des tâches, selon claude.com.
- **Claude Haiku 5.5** (7 octobre 2026) : le plus petit, le moins cher et le plus rapide, conçu pour les tâches à fort volume.

Les modèles précédents restent disponibles : Claude Fable 5.1 et Mythos 5.1 (1er septembre 2026) et Claude Opus 5 (24 juillet 2026). Les niveaux d'effort sont Low, Medium, High, Extra high et Max. Le modèle par défaut de chaque plan n'est pas publié : non vérifié. Source : notes de version support.claude.com + claude.com/docs/cowork/changelog.

### Q: Quelle est la fenêtre de contexte des modèles dans Cowork ?
**R:** `UNKNOWN` comme valeur fixe pour Cowork. La capacité de contexte dépend du modèle, du plan et de la surface disponibles. Vérifiez l'interface Claude ou la documentation Anthropic actuelle avant de planifier une tâche importante.

### Q: Qu'est-ce que les tâches planifiées ?
**R:** Les tâches planifiées automatisent vos opérations Cowork récurrentes. Deux types disponibles : **récurrentes** (s'exécutent automatiquement selon un calendrier) et **à la demande** (déclenchées manuellement, s'exécutent une seule fois).

Configurez-les dans **Claude Desktop → barre latérale gauche → section Planifié → Nouvelle tâche**. Cadences disponibles : horaire, quotidien, hebdomadaire, jours ouvrables uniquement, ou personnalisé. Après la première exécution, Cowork réécrit automatiquement votre prompt pour l'optimiser.

Important : depuis le 6 octobre 2026, les nouvelles tâches planifiées Pro et Max s'exécutent dans le cloud, sans appareil allumé. Les tâches planifiées que Claude crée lui-même utilisent « Automatically approve » par défaut quand votre organisation l'autorise (depuis le 1er octobre 2026) : leurs exécutions utilisent les outils sans demander et ne s'arrêtent que si quelque chose paraît dangereux. Pour une tâche qui tourne encore en local (lancée avant le 6 octobre 2026), Claude Desktop doit être ouvert et l'appareil allumé (pas en veille) au moment prévu ; si l'appareil est en veille, la tâche est ignorée puis s'exécute au réveil. Les tâches planifiées créées avant le 6 octobre sont-elles passées dans le cloud : non vérifié.

Voir le [workflow Automatisation Planifiée](../workflows/scheduled-automation.md) pour les prompts prêts à l'emploi et les patterns de configuration.

### Q : Puis-je créer des plugins personnalisés pour Cowork ?
**R :** Oui, sans aucun code. Ouvrez le panneau Plugins dans Cowork, cliquez sur Créer un plugin, définissez vos compétences (tâches IA réutilisables), assignez des commandes slash (ex. `/facture`, `/relance`) et regroupez avec des connecteurs. Les 11 plugins officiels d'Anthropic sont open-source et servent de templates à adapter. Les plugins personnalisés peuvent être partagés dans toute l'équipe. Les administrateurs peuvent aussi créer des marketplaces privées avec des catalogues propres à l'organisation.

### Q : Quels nouveaux connecteurs ont été ajoutés en février 2026 ?
**R :** Le 24 février 2026, Anthropic a ajouté 12+ nouveaux connecteurs MCP. Les plus utiles pour les TPE/PME : **Google Calendar** (agenda), **Gmail** (emails sans Chrome), **DocuSign** (signature de contrats), **WordPress** (gestion de contenu) et des outils commerciaux (Apollo, Clay, Outreach). Des connecteurs finance (FactSet, MSCI, LSEG) ciblent les workflows institutionnels. Tous les connecteurs se gèrent depuis l'onglet Personnaliser avec des permissions par outil : Autoriser/Demander/Bloquer.

### Q: Qu'est-ce que la compaction de contexte ?
**R:** La compaction de contexte (beta) compresse automatiquement l'historique de conversation pendant les sessions longues. Cela permet des sessions effectives beaucoup plus longues en gardant le contexte pertinent tout en supprimant les informations redondantes. Cela atténue partiellement la limitation précédente d'absence de persistance de session.

### Q: Qu'est-ce que les Équipes d'agents ?
**R:** Les Équipes d'agents (preview recherche) permettent la coordination multi-agents où plusieurs agents Claude travaillent ensemble sur des tâches complexes. Un agent peut orchestrer les autres, chacun gérant une sous-tâche spécialisée. Cela étend l'architecture de sous-agents existante avec une coordination plus sophistiquée.

---

## Sécurité

### Q: Est-ce que Cowork est sécurisé ?
**R:** Les contrôles de sécurité et d'administration dépendent du plan et de la documentation Anthropic actuelle. Ce guide ne considère pas une affirmation GA historique comme preuve qu'un contrôle est disponible. Voir le [Guide de Sécurité](../guide/03-security.fr.md) et vérifier la documentation officielle avant un déploiement réglementé.

### Q: Est-ce que Cowork peut accéder à tous mes fichiers ?
**R:** Uniquement les dossiers auxquels vous accordez explicitement l'accès. Bonne pratique : créez un dossier dédié `~/Cowork-Workspace/` et accordez l'accès uniquement là.

### Q: Qu'est-ce que l'injection de prompt et dois-je m'inquiéter ?
**R:** L'injection de prompt, c'est quand du contenu malveillant dans des fichiers tente de manipuler le comportement de l'IA. Atténuation :
- Traitez uniquement des fichiers de sources fiables
- Évitez les fichiers avec du contenu ressemblant à des instructions
- Révisez le plan de Cowork avant approbation

### Q: Mes fichiers partent-ils dans le cloud ?
**R:** Vos dossiers restent sur votre ordinateur, mais ce que Claude lit est traité sur les serveurs d'Anthropic, comme du texte collé dans un chat. Depuis le 6 octobre 2026, les nouvelles tâches Cowork Pro et Max s'exécutent dans le cloud, dans un environnement isolé temporaire. Une session cloud n'atteint que les dossiers que vous avez connectés, et seulement quand Claude Desktop est ouvert. L'option « Only on your computer » a été supprimée de Settings > General à cette date, sans retour possible. Les tâches lancées sur votre ordinateur avant le 6 octobre restent locales. Aucune politique officielle de rétention de données propre à Cowork n'a été trouvée. Pour les données sensibles, décidez si un traitement cloud est approprié.

### Q: Quels sont les modes d'approbation ?
**R:** Cowork demande votre accord selon l'un de trois modes (renommés en 2026) :
- **Manual** (anciennement « Ask before acting ») : Claude attend Allow ou Deny à chaque demande.
- **Auto** : Claude avance sans demander à chaque étape. Chaque action est filtrée, une action dangereuse est bloquée, et Claude cherche une autre voie ou vous demande. Il revient au mode demande s'il est bloqué à répétition. Il consomme plus de limite d'usage.
- **Skip all approvals** (anciennement « Act without asking ») : aucune pause et aucun filtrage automatique des actions.

Sur Team et Enterprise, un owner peut couper Auto dans Organization settings > Cowork (il est proposé par défaut). « Always allow » pour les outils de connecteurs est désactivé par défaut. Un outil de connecteur réglé « Restrict to Ask » par l'organisation demande l'approbation même en Skip all approvals. Source : support.claude.com/en/articles/13345190 et 13455879.

### Q: Puis-je utiliser Cowork pour des documents business confidentiels ?
**R:** **À utiliser avec prudence pour les données sensibles.** Les contrôles enterprise sont actifs (accès par rôle, limites de dépenses, analytics d'utilisation, OpenTelemetry). Cependant, deux points bloquants subsistent pour les workflows soumis à des exigences de conformité strictes : (1) les Audit Logs ne capturent pas l'activité Cowork (limitation confirmée par Anthropic) ; (2) aucune certification de conformité à ce jour. Pour les secteurs réglementés (finance, santé, juridique, secteur public), consultez la section [Considérations entreprise](../guide/03-security.fr.md#considérations-entreprise) avant d'utiliser Cowork avec des données confidentielles.

---

## Dépannage

### Q: Cowork s'est arrêté en milieu de tâche. Que faire ?
**R:**
1. Vérifiez le dossier de sortie pour les résultats partiels
2. Divisez la tâche en morceaux plus petits
3. Reprenez avec un état explicite : "Continuer depuis X, les éléments restants sont Y"

Causes courantes : limite de contexte, timeout, problèmes réseau.

### Q: Puis-je utiliser Cowork avec un VPN ?
**R:** `UNKNOWN` comme limitation universelle. Une erreur de connexion peut avoir plusieurs causes et ce guide ne conseille pas de désactiver un VPN par défaut. Consultez le guide Anthropic actuel et la politique réseau de votre organisation, puis relevez l'erreur exacte avant de modifier les réglages de connectivité. Voir le [dépannage VM et connexion](../guide/04-troubleshooting.fr.md#problèmes-vm--connexion).

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
**R:** Cela concerne les sessions locales : l'app doit rester ouverte et active, et les sessions locales n'utilisent pas la mémoire. Depuis le 6 octobre 2026, les nouvelles tâches Pro et Max s'exécutent dans le cloud et ne dépendent donc pas de la veille de votre ordinateur (une session cloud n'atteint toutefois vos dossiers connectés que si Claude Desktop est ouvert). Les tâches lancées sur votre ordinateur avant cette date restent locales. Sur Team et Enterprise, Cowork dans le cloud est en bêta.

**Prévention** : Désactivez la veille pendant les tâches longues. Pour le travail critique, divisez en lots plus petits avec points de contrôle qui peuvent être repris.

### Q: Que se passe-t-il lors d'une panne Anthropic ?
**R:** Les sessions Cowork peuvent :
- Montrer des taux d'erreur élevés
- Échouer des tâches qui fonctionnaient auparavant
- Devenir non réactives

**Action** : Vérifiez [status.anthropic.com](https://status.anthropic.com), attendez la résolution, ne réessayez pas de manière répétée (gaspille le quota).

---

## Tarification & Accès

### Q: Cowork est-il gratuit ?
**R:** Non. Cowork est disponible sur Pro, Max, Team et Enterprise, pas sur le plan Free. Anthropic se contredit toutefois : la page d'installation de support.claude.com coche Cowork sous Free, alors que les pages de tarifs et de disponibilité listent des plans payants. Ne comptez pas sur Cowork avec un compte Free. Un compte Free peut en revanche demander Claude Design, Slides et Docs dans n'importe quelle conversation (depuis le 16 septembre 2026).

### Q: Combien coûte Cowork ?
**R:** Tarifs de claude.com/pricing au 11 octobre 2026, en dollars américains, hors taxes. Anthropic ne publie aucun barème en euros : le montant en euros et la TVA dépendent de votre facture.

| Plan | Tarif |
|------|-------|
| Free | 0 $ (pas de Cowork) |
| Pro | 20 $ par mois, ou 200 $ par an (17 $ par mois) |
| Max | à partir de 100 $ par mois (5x ou 20x l'usage Pro) |
| Team Standard | 20 $ par siège et par mois en facturation annuelle, ou 25 $ en mensuel (2 à 150 personnes) |
| Team Premium | 100 $ par siège et par mois en facturation annuelle, ou 125 $ en mensuel (2 à 150 personnes) |
| Enterprise | 20 $ par siège et par mois en facturation annuelle, plus l'usage aux tarifs API |

Les tarifs évoluent : vérifiez claude.com/pricing avant de vous abonner.

### Q: Les plans payants incluent-ils des crédits API ?
**R:** Depuis le 7 octobre 2026, les abonnés Max et Team reçoivent des crédits API mensuels pour faire tourner leurs propres apps et agents. On les réclame en liant une organisation Claude Console dans les paramètres de facturation. Montants affichés sur claude.com/pricing au 11 octobre 2026 : 100 $ par mois pour Max 5x, 200 $ pour Max 20x, jusqu'à 500 $ par mois mutualisés pour une organisation Team. Aucun crédit sur Free, Pro ni Enterprise. Le déploiement prend quelques jours. Source : notes de version support.claude.com + claude.com/pricing.

### Q: Pro ou Max : lequel choisir ?
**R:** Pro convient à un usage occasionnel. Max donne 5x ou 20x l'usage de Pro et inclut des crédits API mensuels. Les deux ont une limite glissante de 5 h et des limites hebdomadaires, et les usage credits permettent de continuer aux tarifs API. Choisissez d'après les tarifs ci-dessus et votre usage réel : ce guide ne publie aucun ratio de quota mesuré.

### Q: Y a-t-il une limite d'usage avec Cowork ?
**R:** Oui, mais la limite dépend du plan et de la tâche. Confirmez-la dans Claude ou dans la documentation du plan avant un gros lot.

---

## Technique

### Q: Comment Cowork gère-t-il plusieurs fichiers ?
**R:** Cowork peut créer des sous-agents qui travaillent en parallèle. Chaque sous-agent a un contexte frais et travaille sur une partie de la tâche. L'orchestrateur principal assemble les résultats.

### Q: Quelle est la limite de contexte ?
**R:** Elle varie selon le modèle, le plan et la surface. Commencez avec un lot représentatif, vérifiez la sortie, puis découpez la suite en groupes révisables au lieu de vous appuyer sur un nombre fixe de documents ou de tokens.

### Q: Est-ce que Cowork se souvient entre les sessions ?
**R:** Pas par défaut, chaque session démarre à zéro. Depuis le 25 août 2026, la mémoire fonctionne entre le chat et Cowork dans le cloud (Settings > Memory > Topics, modifiable et supprimable élément par élément). Les sessions Cowork locales n'utilisent pas la mémoire. Avec **Desktop Commander** installé, vous pouvez créer un fichier `memory.md` qui conserve le contexte entre les sessions. Commencez chaque session avec "Lis ~/Cowork-Workspace/memory.md d'abord." Sans Desktop Commander, la solution de contournement reste de sauvegarder le contexte dans un fichier et de le charger à la session suivante. Voir le [workflow Mise en place Mémoire](../workflows/memory-setup.md) pour les détails.

### Q: Puis-je automatiser Cowork avec des scripts ?
**R:** Pas actuellement. Cowork n'a pas d'API ou d'interface d'automatisation (janvier 2026). Pour l'automatisation, utilisez Claude Code.

---

## Comparaison

### Q: Quand devrais-je utiliser Cowork vs Claude Code ?
**R:**
- **Cowork** : Organisation de fichiers, création de documents, extraction de données, sans codage
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

**À savoir** : sur les comptes qui ont déjà « Unified Claude » (déploiement progressif sur Pro et Max depuis le 16 septembre 2026), il n'y a plus de mode à choisir : Claude décide si une demande appelle une réponse rapide ou une tâche.

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
**R:** N'appliquez pas une étiquette bêta ou GA globale à toutes les fonctions Cowork. La disponibilité dépend de la surface et du plan ; computer use est une bêta pour Pro et Max (macOS et Windows, pas Team, Enterprise ni Linux), et Cowork dans le cloud est en bêta sur Team et Enterprise. Consultez les guides actuels de [disponibilité Cowork](https://support.claude.com/en/articles/13345190-get-started-with-cowork) et d'[utilisation de l'ordinateur](https://support.claude.com/en/articles/14128542-let-claude-use-your-computer-in-cowork).

### Q: Quelles fonctionnalités arrivent ?
**R:** La disponibilité produit évolue. Linux est actuellement en bêta pour Claude Desktop. Utilisez les notes de version et la documentation Anthropic plutôt que cette FAQ pour les annonces futures.

### Q: Y aura-t-il une API pour Cowork ?
**R:** UNKNOWN. Ce guide ne formule aucun engagement de feuille de route pour une API Cowork. Cowork n'est pas uniquement desktop : le web et le mobile sont en bêta sur les plans éligibles.

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
