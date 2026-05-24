# Workflow: Création de Posts Réseaux Sociaux

> **Temps estimé**: 15 minutes
> **Difficulté**: Débutant
> **Catégorie**: 📣 Communication
> **Professions**: Tous

🌐 **Also available in [English](social-media-posts.en.md)**

---

## Cas d'usage

Vous devez maintenir une présence sur les réseaux sociaux (LinkedIn, Facebook, Instagram) mais manquez de temps ou d'inspiration. Ce workflow vous aide à:

- Créer du contenu professionnel rapidement
- Adapter le même message à différents réseaux
- Planifier du contenu à l'avance
- Valoriser vos réalisations

> ⚠️ **Important**: Ce workflow génère les textes. La publication reste manuelle (copier-coller sur chaque plateforme).

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Sujet ou actualité à partager
- [ ] Photos/visuels (optionnel mais recommandé)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Définir votre ligne éditoriale

Première utilisation, définissez votre ton:

```
Mon activité: [artisan plombier / commerce / consultant / etc.]
Mon audience: [clients particuliers / professionnels / mixte]
Ton souhaité: [professionnel, convivial, expert, pédagogique]

Types de contenus que je veux publier:
- Réalisations (avant/après)
- Conseils métier
- Actualités entreprise
- Témoignages clients
- Promotions/offres

Fréquence souhaitée: [X posts par semaine]

Suggère calendrier éditorial type
```

### Étape 2: Créer un post multi-plateformes

```bash
mkdir -p ~/Cowork-Workspace/output/social-media
```

Puis:

```
Crée un post pour annoncer:
[Votre actualité: nouvelle réalisation, nouveau service, conseil, etc.]

Adapte pour 3 plateformes:

LINKEDIN (professionnel):
- Ton expert
- Focus valeur ajoutée client
- Hashtags métier (max 5)
- Longueur: 150-200 mots
- Call-to-action: visite profil/contact

FACEBOOK (local/communautaire):
- Ton convivial
- Focus humain/local
- Émojis modérés
- Longueur: 80-120 mots
- Call-to-action: like/partage

INSTAGRAM (visuel):
- Ton dynamique
- Focus avant/après ou coulisses
- Émojis et line breaks
- Longueur: 50-80 mots + hashtags
- Hashtags: 15-20 (mix populaires + niche)

Sauvegarde: ~/Cowork-Workspace/output/social-media/post-[date]-[sujet].txt
```

### Étape 3: Vérifier et ajuster

Cowork montrera les 3 versions. **Vérifiez**:

- ✓ Ton adapté à chaque plateforme
- ✓ Hashtags pertinents
- ✓ Pas de jargon incompréhensible
- ✓ Call-to-action clair

Si ajustement:

```
Version Instagram:
- Réduis à 60 mots
- Ajoute 5 hashtags locaux (#PlombierLyon #ArtisanRhone...)
- Plus d'émojis
```

### Étape 4: Générer et planifier

```
Procède avec la création des posts
```

Optionnel - planning hebdomadaire:

```
Crée planning social media pour la semaine prochaine:

Lundi: Conseil métier (ex: quand purger radiateurs)
Mercredi: Réalisation récente (avec photo)
Vendredi: Promo ou actualité

Génère 3 posts x 3 plateformes = 9 posts
Format: fichier Excel avec colonnes (Jour, Plateforme, Texte, Hashtags, Photo nécessaire)
Sauvegarde: ~/Cowork-Workspace/output/social-media/planning-semaine-4.xlsx
```

---

## Exemples de prompts

### Post réalisation chantier (artisan)

```
Crée post pour cette réalisation:
- Rénovation salle de bain complète
- Client: particulier à Lyon 6ème
- Durée travaux: 2 semaines
- Points forts: douche italienne, carrelage effet marbre, optimisation petit espace

Adapte pour LinkedIn, Facebook, Instagram

Angle: transformation avant/après + satisfaction client
Hashtags: #RénovationSDB #ArtisanLyon #SalleDeBain #AvantApres

Sauvegarde: ~/Cowork-Workspace/output/social-media/post-sdb-lyon6.txt
```

### Post conseil (tous secteurs)

```
Crée post conseil "5 erreurs à éviter quand [votre domaine]"

Mon domaine: [électricité / commerce / conseil / etc.]
Erreurs fréquentes:
1. [Erreur 1 + pourquoi c'est grave]
2. [Erreur 2]
...

Ton: pédagogique, rassurant
Objectif: montrer expertise + générer contacts

Format: LinkedIn (post long) + Facebook/Instagram (version courte)
```

### Post témoignage client

```
Crée post depuis cet avis Google:

"[Copier-coller avis client 5 étoiles]"

Transforme en post:
- Remerciement client (anonymiser si pas de permission)
- Citation meilleur extrait
- Ce qui fait votre différence
- Invitation autres clients à laisser avis

Versions: LinkedIn + Facebook
```

---

## Troubleshooting

### Posts trop corporate

**Cause**: Ton trop formel
**Solution**: Humaniser:

```
Récris ces posts avec:
- Tutoiement (si ton métier le permet)
- Anecdotes concrètes
- Moins de superlatifs ("meilleur", "exceptionnel")
- Plus de faits et chiffres concrets
```

### Manque d'engagement

**Cause**: Pas de question ou interaction
**Solution**: Ajouter questions:

```
À la fin de chaque post, ajoute question:
LinkedIn: Question pro (ex: "Comment gérez-vous X dans votre activité?")
Facebook: Question conviviale (ex: "Et vous, déjà tenté?")
Instagram: Question simple (ex: "Plutôt version 1 ou 2? 👇")
```

### Hashtags inefficaces

**Cause**: Trop génériques ou trop de volume
**Solution**: Mix stratégique:

```
Pour Instagram, structure hashtags:
- 3-5 gros volume (#plombier 500K posts) → visibilité
- 5-8 volume moyen (#plombierrhone 5K posts) → ciblage
- 5-8 niche (#rénovationsdblyonais 200 posts) → communauté

Éviter: hashtags génériques (#travaux #maison → trop large)
Privilégier: hashtags géolocalisés + métier précis
```

---

## Variations

### Série thématique

```
Crée série "Coulisses du métier" (5 posts):

POST 1: Journée type (planning, déplacements)
POST 2: Outils indispensables (présentation matériel)
POST 3: Avant/après (transformation spectaculaire)
POST 4: Problème résolu (cas complexe, pédagogie)
POST 5: Équipe (présentation collaborateurs/sous-traitants)

1 post par semaine
Format: Instagram stories (format court) + post LinkedIn (format long)
```

### Post événementiel

```
Crée posts pour:
- Salon professionnel [nom] le [date]
- Portes ouvertes atelier [date]
- Nouveau partenariat avec [entreprise]

Avant événement: teasing
Pendant: live/stories
Après: remerciements + photos

3x3 posts (avant/pendant/après pour chaque plateforme)
```

### Recyclage contenu blog

```
J'ai écrit article blog: ~/Cowork-Workspace/input/article-blog.md

Transforme en 5 posts réseaux sociaux:
- Extraire 5 points clés
- Créer 1 post par point
- Chaque post renvoie vers article complet
- Adapter ton pour chaque plateforme

Planning: 1 post tous les 2 jours
```

---

## Bonnes pratiques

1. **Régularité > Quantité** : Mieux 2 posts/semaine réguliers que 10 puis silence
2. **Visuels obligatoires** : Posts avec photo = 10x plus d'engagement
3. **Heures optimales** : LinkedIn 8h-9h et 17h-18h, Facebook 13h-16h, Instagram 11h-13h et 19h-21h
4. **Interaction** : Répondre à TOUS les commentaires (dans les 24h)
5. **Hashtags stratégiques** : Rechercher volume avant d'utiliser
6. **Cohérence** : Garder même ton/style sur durée
7. **Analytics** : Noter quels types de posts marchent le mieux
8. **Authenticité** : Montrer vraies réalisations, pas stock photos

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
