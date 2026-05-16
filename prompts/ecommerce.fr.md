# Prompts E-commerce

Prompts prêts à l'emploi pour e-commerçants indépendants, vendeurs Etsy, Shopify, Amazon Seller.

**Whitepaper associé** : [WP-16 — IA pour E-commerçants et Vendeurs en Ligne](../whitepapers/fr/16-ia-ecommerce-vendeurs-en-ligne.qmd)

---

## 1. Fiche produit SEO

Transforme une description fournisseur brute en fiche produit optimisée pour la conversion et le référencement, avec titre SEO, accroche bénéfice et spécifications.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour mon ton de marque, mes mots-clés cibles et ma marketplace principale.

Description fournisseur / description actuelle :
[Coller le texte brut]

Informations complémentaires :
- Usage principal : [ex. bijou porté au quotidien / outil professionnel / cadeau]
- Public cible : [ex. femmes 25-40 ans / artisans / parents]
- Concurrents directs (noms des boutiques) : [liste]
- Prix de vente : [X]€

TÂCHE : Rédiger une fiche produit en 4 parties :
(1) Titre SEO optimisé (60 caractères max, mot-clé principal en tête)
(2) Accroche bénéfice (2 phrases, pas de caractéristiques techniques)
(3) Description complète (200 à 300 mots, ton de marque, 3 mots-clés secondaires)
(4) Spécifications techniques (tableau : poids, matériaux, dimensions, entretien)

CONTRAINTES :
- Aucune caractéristique sans traduction en bénéfice utilisateur
- Ton conforme à mon CLAUDE.md
- Pas de superlatifs non prouvés ("meilleur", "unique", "exceptionnel")
- Vérifier l'absence de fautes d'orthographe

Sauvegarde :
~/Cowork-Workspace/output/fiches/[reference-produit]-[date].md
```

---

## 2. Batch fiches produits

Traite 10 descriptions fournisseurs en une seule session et génère toutes les fiches dans ton de marque.

```
CONTEXTE : Consulte ~/Cowork-Workspace/CLAUDE.md.
Voici [X] fiches fournisseur à réécrire dans mon ton de marque :

[Fiche 1 — Référence : REF-001] :
[texte brut]

[Fiche 2 — Référence : REF-002] :
[texte brut]

[continuer pour chaque fiche...]

TÂCHE : Pour chaque fiche, générer :
(1) Titre SEO (60 caractères max)
(2) Accroche bénéfice (2 phrases)
(3) Description complète (200 mots, ton de marque)

Format : une fiche par section, séparées par ---

Sauvegarde :
~/Cowork-Workspace/output/fiches/batch-[date].md
```

---

## 3. Réponse SAV client

Rédige une réponse personnalisée à un message client difficile (retard, produit abimé, remboursement) en 150 mots maximum.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour ma politique de retour, mon transporteur habituel et mon ton de communication.

Situation :
- Type : [retard livraison / produit endommagé / demande remboursement / question technique]
- Message du client (texte exact) : [coller le message]
- Numéro de commande : [si mentionné]
- Délai de livraison prévu : [si applicable]
- Etat du dossier de mon côté : [ex. colis parti le X / transporteur contacté le X]

TÂCHE : Réponse au client en 3 parties :
(1) Reconnaissance du problème (sans minimiser, sans s'excuser de façon creuse)
(2) Ce qui va se passer concrètement (action + délai)
(3) Geste commercial si approprié selon ma politique dans CLAUDE.md

CONTRAINTES :
- Réponse en moins de 150 mots
- Ton chaleureux mais factuel
- Ne pas promettre ce qu'on ne peut pas tenir

Sauvegarde :
~/Cowork-Workspace/output/sav/reponse-[numero-commande]-[date].md
```

**Important RGPD** : anonymise les données clients avant de les coller dans Cowork. Remplace nom réel par [Client], email par [email@client.com], adresse par [adresse cliente].

---

## 4. Newsletter mensuelle

Rédige une newsletter de 300 à 400 mots avec objet A/B testable, nouveautés du mois et CTA principal.

```
CONTEXTE : Consulte mon fichier ~/Cowork-Workspace/CLAUDE.md
pour mon ton de marque, ma liste de produits et mon agenda commercial.

Mois : [mois + année]
Nouveautés du mois : [liste des nouveaux produits ou collections]
Best-sellers à mettre en avant : [liste]
Evenement ou promotion en cours : [ex. soldes, code promo, fête des mères]
Angle éditorial (optionnel) : [ex. coulisses de la création / inspiration saison]

TÂCHE : Newsletter de 300 à 400 mots avec :
(1) Objet (3 options, A/B testables)
(2) Intro personnelle courte (2-3 phrases, ton conversationnel)
(3) Mise en avant produit(s) avec bénéfices
(4) CTA principal (bouton/lien)
(5) Section optionnelle storytelling ou "dans les coulisses"

Sauvegarde :
~/Cowork-Workspace/output/marketing/newsletter-[mois]-[annee].md
```

---

## 5. Posts réseaux sociaux (par plateforme)

Génère 3 versions d'un post adapté au format et aux codes de chaque réseau.

```
CONTEXTE : Consulte ~/Cowork-Workspace/CLAUDE.md.
Produit ou angle du post : [description en 1 phrase]
Semaine du : [date]

TÂCHE : 3 versions du post adapté à chaque réseau :
- Instagram : légende 120 à 150 caractères + 5 hashtags ciblés (niche + local + marque)
- Facebook : texte 200 à 300 mots + storytelling + question pour l'engagement
- Pinterest : description SEO 100 mots + mots-clés de recherche Pinterest

Sauvegarde :
~/Cowork-Workspace/output/social/posts-[date].md
```

---

## Conseils d'utilisation

- Remplis ton `CLAUDE.md` avec ton ton de marque (3 adjectifs clés), ta cible et ton calendrier commercial annuel
- Lance le batch fiches produits le lundi matin : 10 fiches en 2h30 au lieu de 2h chacune
- Prépare les 4 posts du mois en une session de 30 min le premier lundi
- Pour le SAV, crée 5 modèles de réponse par situation type et adapte-les au cas par cas

**Template CLAUDE.md e-commerçant** : [`examples/claude-md-templates/ecommercant.md`](../examples/claude-md-templates/ecommercant.md)
