# Template CLAUDE.md : Commerçant

Copier ce fichier sous `~/Cowork-Workspace/CLAUDE.md` et remplacer les parties entre `[crochets]`.

---

```markdown
# Mon contexte Cowork

## Qui je suis

Je gère [nom de la boutique], un commerce de [type : vêtements / maison / sport / alimentation / autre] à [ville].
Structure : [auto-entrepreneur / SARL / SAS] depuis [année].
[Nombre] employés, [présence physique / e-commerce / les deux].
Clientèle principale : [particuliers / professionnels / les deux, tranche d'âge approximative].

## Ce que je fais avec Cowork

Usage principal :

- Répondre aux avis Google (positifs et négatifs)
- Créer et planifier les posts réseaux sociaux (Instagram, Facebook)
- Rédiger les descriptions de produits pour le site ou les étiquettes
- Comparer les tarifs fournisseurs et générer les bons de commande
- Analyser l'inventaire depuis les photos de rayons
- Rédiger les newsletters clients

## Ma présence en ligne

- Google My Business : [url ou "à créer"]
- Instagram : [@compte]
- Facebook : [@page]
- Site e-commerce : [url ou "pas de site"]
- Newsletter : [outil utilisé : Mailchimp / Brevo / autre]

## Ma structure de fichiers

```
~/Cowork-Workspace/
├── input/
│   ├── avis-clients/       ← avis Google à traiter
│   ├── photos-produits/    ← photos pour fiches produit
│   ├── photos-rayons/      ← photos pour inventaire
│   └── tarifs-fournisseurs/ ← PDF/Excel à comparer
├── output/
│   ├── posts-reseaux/      ← posts planifiés par semaine
│   ├── fiches-produit/     ← descriptions produits
│   ├── commandes/          ← bons de commande fournisseurs
│   ├── newsletters/        ← emailings préparés
│   └── inventaire/         ← fichiers de stock
└── templates/
    ├── fiche-produit.docx
    └── newsletter.docx
```

## Mes fournisseurs principaux

- [Fournisseur 1] : [gamme de produits, délai de livraison habituel]
- [Fournisseur 2] : [gamme de produits, délai de livraison habituel]

## Mon calendrier commercial

Périodes clés de l'année :

- [Mois] : [événement commercial, ex: "Janvier : soldes d'hiver"]
- [Mois] : [événement commercial]
- [Mois] : [pic d'activité saisonnier]

## Mon ton de communication

Style pour les réseaux sociaux : [professionnel / décontracté / expert / chaleureux]
Tutoyement ou vouvoiement : [tutoyer / vouvoyer]
Mots à éviter : [liste de termes qui ne correspondent pas à l'image de la boutique]

## Mes conventions de travail

**Nommage des posts :**

- `AAAA-MM-JJ_plateforme_sujet.txt`
- Exemple : `2026-04-15_instagram_arrivage-printemps.txt`

**Format des prix :** toujours TTC, avec symbole €

**Nommage des fiches produit :**

- `REF-PRODUIT_description-courte.docx`

## Ce que je ne veux pas dans Cowork

- Pas de données personnelles clients (emails, noms) sans anonymisation
- Pas de mots de passe ou accès boutique en ligne
- Pas de données bancaires

## Dernière mise à jour

[Date]
```

---

## Comment utiliser ce template

1. Copier le contenu entre les balises de code dans un fichier `CLAUDE.md`
2. Le placer à la racine de `~/Cowork-Workspace/`
3. Dans tes prompts complexes, ajouter en début : "Consulte ~/Cowork-Workspace/CLAUDE.md pour le contexte."
4. Mettre à jour après chaque changement majeur (nouveau fournisseur, nouveau canal, etc.)
