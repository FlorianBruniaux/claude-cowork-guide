---
title: "Développer ses compétences en prompting : du copier-coller à l'écriture autonome"
description: "Guide de progression du prompting : de l'utilisation des prompts prêts à l'emploi à l'écriture de prompts CTOC complets, avec exercices pratiques et modèle de bibliothèque"
tags: [apprentissage, prompting, ctoc, compétences, bibliothèque]
---

# Développer ses compétences en prompting : du copier-coller à l'écriture autonome

La plupart des gens commencent par copier des prompts. C'est exactement ce qu'il faut faire. Mais copier indéfiniment crée une dépendance permanente à la bibliothèque de quelqu'un d'autre, à sa structure, à son contexte. L'objectif est d'atteindre un niveau où on peut écrire un prompt pour n'importe quelle tâche, pas seulement celles qui sont déjà couvertes.

Ce guide cartographie la progression : trois niveaux, des exercices concrets, et une structure de bibliothèque utilisable dès aujourd'hui.

---

## Trois niveaux de compétence

| Niveau | Ce qu'on fait | Durée approximative | Signe de progression |
|--------|--------------|---------------------|----------------------|
| **Débutant** | Copie les prompts de la bibliothèque, remplit les variables, envoie | 0 à 3 semaines | Le prompt fonctionne du premier coup, le résultat est utilisable sans correction majeure |
| **Intermédiaire** | Prend un prompt existant, le modifie pour un contexte différent ou ajoute des contraintes | 3 semaines à 2 mois | Capable d'adapter n'importe quel prompt en moins de 5 minutes avec une qualité de résultat maintenue |
| **Avancé** | Écrit un prompt CTOC complet de zéro pour n'importe quelle tâche | 2 mois+ de pratique régulière | Les nouveaux prompts fonctionnent au premier ou deuxième essai sans consulter des exemples |

Les sauts entre les niveaux ne sont pas une question d'intelligence. Ils résultent de la répétition et de la pratique délibérée. On note les prompts qui fonctionnent. On observe pourquoi ils fonctionnent. On applique ce schéma à de nouvelles situations.

---

## Niveau 1 : Copier avec intention

Copier des prompts n'est pas passif. Bien fait, c'est la manière de construire une reconnaissance des patterns avant même de savoir consciemment qu'on cherche des patterns.

### Comment utiliser correctement les prompts du guide

Chaque prompt de ce guide suit la structure CTOC :

- **C : Contexte** : qui vous êtes, ce que fait votre entreprise, dans quelle situation vous êtes
- **T : Tâche** : l'action précise que Cowork doit accomplir
- **O : Output** : le format exact, la longueur, le ton et la structure attendus
- **C : Contraintes** : ce qu'il faut éviter, les limites de périmètre, tout ce qui rendrait le résultat inutilisable

Quand on copie un prompt, on ne colle pas et on n'envoie pas directement. On prend 90 secondes pour faire ceci :

1. **Lire la section Contexte**. Est-ce qu'elle correspond à votre situation réelle ? Changer le type d'entreprise, le rôle, les détails spécifiques.
2. **Lire la section Tâche**. Est-ce que l'action correspond exactement à ce que vous voulez ? Si le prompt dit "écrire un email de relance" mais que vous avez besoin d'un email d'introduction, c'est une tâche différente.
3. **Lire la section Output**. Le format est-il correct ? Si le prompt produit une liste à puces mais que vous avez besoin d'un paragraphe à copier dans un formulaire, changez-le.
4. **Lire la section Contraintes**. Ajoutez toutes les contraintes spécifiques à votre situation : légales, de ton, de longueur, de contenu à éviter.

Cette relecture de 90 secondes fait la différence entre un prompt qui fonctionne du premier coup et un qui gaspille trois itérations.

### Identifier les variables à changer

Les variables d'un prompt sont des emplacements qui n'ont aucun sens sans vos informations spécifiques. Cherchez :

- Les noms et types d'entreprise ("une entreprise de plomberie" vs le nom réel de votre entreprise)
- Les chiffres ("3 salariés" vs votre effectif réel)
- Les références temporelles ("le trimestre dernier" vs le trimestre concerné)
- Les termes métier (si le prompt dit "client" mais que dans votre secteur on dit "patient" ou "compte", changez-le)
- Les références géographiques (le contexte légal français diffère du contexte belge ou suisse)

Repérez-les dans votre copie avant de les remplir. Un prompt avec des emplacements génériques envoie un contexte générique, et un contexte générique produit des résultats génériques.

### Comprendre la structure CTOC

Pourquoi CTOC fonctionne-t-il ? Parce que Cowork produit de meilleurs résultats quand il sait :

- **Qui demande** (Contexte), pour calibrer le niveau d'expertise et le vocabulaire
- **Exactement quoi faire** (Tâche), pour ne pas interpréter ni deviner l'intention
- **À quoi doit ressembler le résultat** (Output), pour ne pas choisir son propre format
- **Ce qu'il faut éviter** (Contraintes), pour ne pas inclure des éléments qu'il faudra ensuite supprimer manuellement

Un prompt où l'une de ces quatre parties manque force Cowork à combler le vide avec des suppositions. Parfois ces suppositions sont correctes. Souvent non.

### Signe que vous êtes prêt pour le niveau 2

Vous êtes prêt à passer au niveau 2 quand les prompts de la bibliothèque fonctionnent du premier coup au moins 70% du temps, et quand vous pouvez expliquer à un collègue pourquoi une partie précise d'un prompt produit le résultat qu'elle produit.

---

## Niveau 2 : L'adaptation

L'adaptation est la compétence centrale. La plupart des situations réelles sont des variations de situations qui existent déjà dans une bibliothèque de prompts. Pas besoin d'écrire de zéro : il faut reconnaître le prompt existant le plus proche et le modifier.

### Comment adapter un prompt à un nouveau contexte

Le processus :

1. Trouver le prompt le plus proche dans la bibliothèque (par type de tâche, pas par situation exacte)
2. Identifier ce qui est différent dans votre situation
3. Changer exactement ces éléments, rien d'autre
4. Ajouter les nouvelles contraintes que votre situation introduit
5. Tester, noter le résultat, mettre à jour votre version locale

### Ajouter des contraintes

Les contraintes sont la partie la plus sous-utilisée de CTOC. Elles vous protègent des résultats techniquement corrects mais pratiquement inutilisables.

Contraintes courantes à ajouter lors d'une adaptation :

- **Contraintes de ton** : "Ne pas utiliser de points d'exclamation", "Vouvoiement obligatoire", "Éviter le jargon technique"
- **Contraintes de longueur** : "Maximum 200 mots", "Pas plus de 5 points", "Un seul paragraphe"
- **Contraintes de contenu** : "Ne pas mentionner nos tarifs", "Ne pas citer de noms de concurrents", "Ne faire aucune affirmation qu'on ne peut pas vérifier"
- **Contraintes de format** : "Texte brut, pas de markdown", "Utiliser exactement ces en-têtes de colonnes : Date, Client, Montant, Statut"

Chaque contrainte ajoutée est un problème déjà rencontré et résolu. Construire cette liste au fil du temps.

### Changer le format d'output

La section Output est là où la plupart des adaptations se font. La même tâche peut produire des formats très différents selon l'endroit où le résultat sera utilisé.

| Même tâche | Format d'output différent | Cas d'usage |
|------------|--------------------------|-------------|
| Résumer un contrat | 5 points clés | Briefing oral à un collègue |
| Résumer un contrat | Paragraphe complet | Intégration dans un rapport |
| Résumer un contrat | Tableau : Clause, Obligation, Échéance | Suivi dans un tableur juridique |
| Résumer un contrat | 3 questions à poser avant de signer | Préparation à une réunion |

Aucun de ces formats n'est faux. Ce sont la même tâche avec des sections Output différentes.

### Avant et après : exemple d'adaptation

**Prompt original (issu de la bibliothèque) :**

```
Contexte : Je dirige un petit cabinet comptable avec 2 collaborateurs. Nous gérons la clôture annuelle de TPE.
Tâche : Écrire un email de relance à un client dont les documents sont en retard de 2 semaines.
Output : Email professionnel, 3 courts paragraphes, objet inclus. Maximum 150 mots.
Contraintes : Poli mais ferme. Ne pas s'excuser de relancer. Vouvoiement obligatoire.
```

**Prompt adapté (pour un entrepreneur en rénovation) :**

```
Contexte : Je dirige une entreprise de rénovation à deux personnes. Nous réalisons des travaux de salle de bain et de cuisine pour des particuliers.
Tâche : Écrire un email de relance à un client dont la validation signée pour des travaux supplémentaires est en retard de 5 jours, ce qui bloque notre planning.
Output : Email professionnel, 2 courts paragraphes, objet inclus. Maximum 120 mots.
Contraintes : Poli mais clair sur l'impact sur le planning. Ne pas s'excuser de relancer. Vouvoiement obligatoire. Ne pas mentionner de pénalités dans cette première relance.
```

Ce qui a changé : le type d'entreprise, le secteur, le type de document concerné, la durée du retard, la conséquence du retard, et la contrainte sur les pénalités. La structure est identique. Le résultat est entièrement adapté à une situation différente.

---

## Niveau 3 : Écrire de zéro

Une fois qu'on adapte couramment, écrire de zéro est l'étape naturelle suivante. On fait déjà la plupart du travail : on supprime simplement le scaffold d'un prompt existant.

### Comment écrire un prompt CTOC complet

Partir de quatre questions, une par section :

**Pour le Contexte** : Qui suis-je, et qu'est-ce que Cowork doit savoir de ma situation pour me donner une réponse utile ? Inclure le rôle, le type d'entreprise, toute contrainte pertinente sur la situation (secteur, taille, contexte légal), et la situation précise qui motive cette demande.

**Pour la Tâche** : Quelle action précise je veux que Cowork accomplisse ? Utiliser un verbe. "Rédiger", "extraire", "organiser", "résumer", "comparer", "créer", "traduire". Être précis sur le périmètre : "les 12 factures du mois" pas "les factures", "les emails clients de cette semaine" pas "des emails".

**Pour l'Output** : À quoi ressemble le résultat quand il est correct ? Décrire le format, la longueur, la structure, le registre de langue. Si possible, donner un exemple de structure : "Tableau avec les colonnes : Date, Nom du client, Montant (euros), Statut (payé / impayé)."

**Pour les Contraintes** : Qu'est-ce qui rendrait le résultat inutilisable ? Tout lister. L'absence de contraintes est la cause la plus fréquente de mauvais résultats à ce niveau.

### Exercice pratique de 15 minutes

Choisir une tâche réelle accomplie manuellement au moins trois fois le mois dernier. Quelque chose que vous connaissez bien.

Écrire un prompt CTOC pour cette tâche en utilisant les quatre questions ci-dessus. Ne pas consulter d'exemples. 15 minutes maximum.

Envoyer. Observer le résultat. Noter ce qui a fonctionné et ce qu'on changerait.

C'est tout. Un prompt par semaine sur une tâche réelle qu'on maîtrise déjà. Au bout de 8 semaines, on a 8 templates qu'on utilise vraiment, et le réflexe pour en écrire de nouveaux plus vite.

### Checklist avant d'envoyer un nouveau prompt

Avant d'envoyer un prompt écrit de zéro, vérifier ces cinq points :

- [ ] **Le Contexte inclut un rôle et un type d'entreprise** : pas juste "je" mais "je dirige une entreprise de plomberie à 4 personnes"
- [ ] **La Tâche a un verbe précis et un périmètre clair** : "rédiger une séquence de 3 emails" pas "aide-moi avec les emails"
- [ ] **L'Output décrit le format exact** : format, longueur, langue, structure
- [ ] **Les Contraintes listent au moins 2 choses précises à éviter** : pas "rends ça bien" mais des exclusions spécifiques
- [ ] **L'ensemble du prompt peut être lu par quelqu'un qui ne connaît pas votre situation, et cette personne comprend exactement ce que vous voulez**

Si le dernier point échoue, ajouter du contexte. Il n'est jamais trop précis.

---

## Construire une bibliothèque de prompts

Une bibliothèque de prompts est une collection de prompts qui ont fonctionné, organisée pour les retrouver et les réutiliser sans reconstruire de zéro à chaque fois.

### Structure recommandée pour la bibliothèque d'équipe

```
~/Cowork-Workspace/
├── bibliotheque/
│   ├── admin/
│   │   ├── facturation.md
│   │   ├── relances.md
│   │   └── contrats.md
│   ├── commercial/
│   │   ├── prospection.md
│   │   ├── devis.md
│   │   └── suivi.md
│   ├── communication/
│   │   ├── reseaux-sociaux.md
│   │   ├── emails-clients.md
│   │   └── newsletters.md
│   └── interne/
│       ├── comptes-rendus.md
│       ├── rapports.md
│       └── onboarding.md
```

Organiser par catégorie de tâche, pas par auteur. La bibliothèque est un outil partagé, pas une archive personnelle.

### Modèle de fiche prompt

Utiliser cette structure pour chaque prompt ajouté à la bibliothèque :

```markdown
## [Titre court et descriptif]

**Utiliser quand** : [1 à 2 phrases décrivant la situation exacte où ce prompt s'applique]

**Dernier test** : [Date]
**Testé par** : [Nom ou initiales]
**Qualité de l'output** : [Bon / À revoir / Obsolète]

### Prompt

[Prompt CTOC complet ici]

### Output attendu

[Description de ce à quoi ressemble un bon résultat : format, longueur typique, ce qu'il faut vérifier]

### Personnalisation nécessaire

- [Variable 1] : [Par quoi la remplacer et pourquoi]
- [Variable 2] : [Par quoi la remplacer et pourquoi]

### Notes

[Situations spécifiques où ce prompt ne fonctionne pas bien, cas limites, problèmes connus]
```

Remplir chaque champ. "Dernier test" et "Qualité de l'output" sont les deux champs les plus importants pour une bibliothèque d'équipe : ils indiquent si le prompt fonctionne encore ou a besoin d'une mise à jour.

### Maintenir la bibliothèque vivante

Une bibliothèque de prompts se dégrade avec le temps. Cowork est mis à jour. Le contexte de l'entreprise évolue. Des prompts qui fonctionnaient il y a 6 mois peuvent produire de moins bons résultats aujourd'hui.

Mettre en place une session mensuelle de 30 minutes pour :

1. Revoir les prompts marqués "À revoir"
2. Tester 3 prompts aléatoires dans les catégories les plus utilisées
3. Archiver les prompts non utilisés depuis 3 mois (ne pas supprimer, archiver)
4. Ajouter les nouveaux prompts créés dans le mois

La bibliothèque n'est pas un monument. C'est un outil vivant.

---

## Erreurs fréquentes par niveau

| Niveau | Erreur fréquente | Ce que ça donne | Correction |
|--------|-----------------|-----------------|------------|
| Débutant | Envoyer le prompt sans changer le contexte | Le résultat mentionne "un cabinet d'avocats" mais on est plombier | Toujours lire et mettre à jour la section Contexte avant d'envoyer |
| Débutant | Accepter le premier résultat sans vérifier | Le total de la facture est faux mais on le colle dans l'email | Appliquer UVAL : vérifier 3 éléments manuellement avant d'utiliser n'importe quel output |
| Débutant | Ne pas noter les prompts qui ont fonctionné | Reconstruire de zéro à chaque fois pour la même tâche | Noter chaque prompt qui produit un résultat utilisable, le jour même |
| Intermédiaire | Sur-adapter (changer des choses qui n'ont pas besoin de changer) | Réécrire tout le prompt alors que seul le nom du client devait changer | Identifier ce qui est différent, changer uniquement ces éléments |
| Intermédiaire | Oublier de mettre à jour les contraintes | Prompt adapté pour un nouveau secteur, contraintes de l'ancien secteur conservées | Relire les quatre sections lors de l'adaptation, pas seulement la Tâche |
| Intermédiaire | La bibliothèque existe mais n'est pas utilisée | Recréer des prompts de mémoire plutôt que chercher dans la bibliothèque | Intégrer la bibliothèque dans le workflow : d'abord la bibliothèque, puis adapter |
| Avancé | Prompts trop complexes | Prompt de 400 mots pour une tâche qui en nécessite 80 | Si la tâche est simple, le prompt doit être simple |
| Avancé | Sauter la checklist "parce qu'on sait ce qu'on fait" | Les résultats du premier essai baissent en qualité, plus d'itérations nécessaires | La checklist existe parce qu'on rate tous des choses sous la pression du temps |
| Avancé | Ne pas mettre à jour la bibliothèque quand une meilleure version existe | L'ancien prompt reste dans la bibliothèque, la meilleure version ne vit que dans les notes | Mettre à jour immédiatement, incrémenter la version, noter ce qui a changé |

---

## La suite

Une fois qu'on écrit des prompts de façon fiable et qu'on maintient une bibliothèque, l'étape suivante est d'enseigner à quelqu'un d'autre dans l'équipe. Enseigner, c'est la façon de découvrir ce qu'on comprend vraiment par opposition à ce qu'on suppose comprendre.

Choisir un collègue qui est au niveau 1. Lui faire adapter un prompt pour sa tâche spécifique. Observer où il bloque. Ce sont les lacunes dans la documentation de la bibliothèque, pas des lacunes dans son intelligence.

L'objectif : une équipe où tout le monde est au niveau 2 ou au-dessus, la bibliothèque est activement maintenue, et aucune tâche ne dépend de la collection personnelle de prompts d'une seule personne.
