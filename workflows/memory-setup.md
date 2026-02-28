# Configurer la mémoire persistante

🌐 **Langues** : [Français](memory-setup.md) | [English](memory-setup.en.md)

> **Catégorie** : Organisation | **Difficulté** : Débutant | **Temps** : 15 min

---

## Objectif

Mettre fin à la répétition. Sans configuration, vous réexpliquez vos préférences, vos clients et vos habitudes à chaque session Cowork. Avec un fichier memory.md et Desktop Commander, Cowork se souvient de tout ça automatiquement.

## Prérequis

- Cowork activé (abonnement Pro ou Max)
- Claude Desktop installé et à jour
- 15 minutes pour la configuration initiale

---

## Étapes

### Étape 1 : Installer Desktop Commander

Desktop Commander est l'extension officielle qui active la mémoire persistante.

1. Dans Claude Desktop, ouvrez l'onglet **Personnaliser** (navigation principale)
2. Trouvez **Desktop Commander** dans la liste des extensions
3. Cliquez **Installer**
4. Redémarrez Claude Desktop quand demandé

> Voir [Démarrage Étape 8](../guide/01-getting-started.fr.md#étape-8--installer-desktop-commander-recommandé) pour les détails.

### Étape 2 : Créer le fichier memory.md

1. Dans votre Finder, naviguez vers `~/Cowork-Workspace/`
2. Créez un nouveau fichier texte nommé `memory.md`
3. Ouvrez-le avec TextEdit ou tout éditeur de texte

### Étape 3 : Remplir votre mémoire

Copiez le template de votre métier (voir section suivante) et adaptez-le à votre situation.

Commencez simple, 5-10 lignes suffisent pour démarrer. Vous enrichirez progressivement.

### Étape 4 : Vérifier que ça fonctionne

Ouvrez une nouvelle session Cowork et tapez :

```
Lis ~/Cowork-Workspace/memory.md et résume ce que tu sais de mon activité.
```

Si Cowork décrit correctement votre contexte, la configuration est réussie.

### Étape 5 : Utiliser à chaque session

Désormais, commencez chaque conversation avec :

```
Lis ~/Cowork-Workspace/memory.md d'abord. Puis [votre demande]
```

---

## Templates par métier

### Artisan (plombier, électricien, maçon, menuisier)

```markdown
# Mémoire Cowork — [Prénom Nom], [Métier]

## Mon activité
- Secteur : [votre métier]
- Zone d'intervention : [villes/départements]
- Effectif : [seul / X salariés]

## Clients récurrents
- Famille Dupont ([ville]) : appartement années 70, toujours besoin devis détaillé, paient en 30 jours
- Agence Immobilière Martin : lots de travaux entre locataires, facturer au fin de mois
- M. Bernard : villa résidence principale, très exigeant, confirmer tout par écrit

## Standards devis et factures
- Format devis : main d'œuvre et matériaux séparés, avec TVA apparente
- TVA travaux rénovation : 10% | TVA fournitures neuves : 20%
- Conditions paiement : 30% à la commande, solde à réception
- Délai de validité devis : 3 mois

## Ce que je ne fais jamais
- Promettre une date sans vérifier le planning
- Envoyer une facture sans vérifier les heures avec le carnet de chantier
- Utiliser des anglicismes dans les documents clients

## Fournitures courantes
- Fournisseur principal : [nom, contact]
- Références récurrentes : [matériaux/références fréquents]
```

### Commerce (boutique, épicerie, négoce, librairie)

```markdown
# Mémoire Cowork — [Nom de la boutique]

## Mon activité
- Type de commerce : [description]
- Surface : [m²] | Effectif : [nombre]
- Clientèle principale : [profil]

## Fournisseurs clés
- [Fournisseur A] : délai 3 semaines, minimum commande 500€, contact [nom]
- [Fournisseur B] : livraison sous 48h, pas de minimum

## Produits phares (à toujours avoir en stock)
- [Produit 1] : ref [X], seuil réapprovisionnement [Y]
- [Produit 2] : ref [X], seuil réapprovisionnement [Y]

## Périodes clés
- Haute saison : [mois], anticiper les stocks 6 semaines à l'avance
- Soldes : [dates habituelles], remises max autorisées : [%]
- Fermeture annuelle : [période]

## Formats documents préférés
- Bons de commande : Excel avec calcul automatique TVA
- Courriers fournisseurs : Word, ton professionnel sobre
- Rapports internes : PDF

## Ce que je ne fais jamais
- Commander sans vérifier le stock actuel
- Promettre un produit non confirmé par le fournisseur
```

### Services (consultant, comptable, coach, avocat, agence)

```markdown
# Mémoire Cowork — [Prénom Nom], [Profession]

## Mon activité
- Spécialité : [votre domaine]
- Type de clients : [profil type]
- Tarification : [TJM / abonnement / au projet]

## Clients actifs
- [Client A] : consulting mensuel, livrable chaque fin de mois, rapports formels en Word
- [Client B] : mission de transformation, documents bilingues FR/EN, présentation mensuelle direction
- [Client C] : prestation ponctuelle, factures à l'avancement, client fidèle depuis [an]

## Templates et process
- Proposition commerciale : voir ~/Cowork-Workspace/templates/proposition.docx
- Rapport d'avancement : structure standard = Réalisé / En cours / Prochaines étapes / Points d'attention
- Compte-rendu réunion : 3 sections = Décisions / Actions (qui / quoi / quand) / Informations

## Ton et style
- Clients : vouvoiement systématique, langage accessible (pas de jargon métier)
- Documents internes : tutoiement OK, concis
- Emails : formule d'ouverture toujours, signature complète

## Facturation
- Conditions : 30 jours net à réception de facture
- Rappels automatiques : J+35 (courtois) / J+45 (ferme)
- Devise : EUR, deux décimales
```

---

## Template universel (si vous ne savez pas par où commencer)

```markdown
# Ma mémoire Cowork

## Mon activité
- Secteur : [votre secteur]
- Taille : [seul / PME / équipe de X]

## Contexte récurrent
- [Information 1 que vous répétez souvent]
- [Information 2]
- [Information 3]

## Mes préférences
- Ton : [formel / informel]
- Format favoris : [Word / Excel / PDF]
- Ce que je ne fais jamais : [liste]

## Notes importantes
- [Note 1]
- [Note 2]
```

---

## Conseils d'utilisation

**Commencez avec 5-10 lignes.** Un fichier memory.md trop court est mieux qu'un fichier trop complexe que vous n'enrichissez jamais. Ajoutez des informations au fur et à mesure que vous identifiez ce que vous répétez session après session.

**Mettez à jour régulièrement.** Si un client change de préférence, si vous ajoutez un fournisseur, si vos conditions paiement évoluent, mettez le fichier à jour. Une info obsolète dans memory.md peut créer des erreurs.

**Partagez avec un collaborateur si pertinent.** Si un associé ou un assistant utilise aussi Cowork, un memory.md partagé (même fichier, même workspace) maintient la cohérence des outputs.

**Testez périodiquement.** Une fois par mois, demandez à Cowork de résumer ce qu'il sait de votre activité. Ça confirme que le fichier est bien lu et vous rappelle ce qu'il contient.

---

*[← Workflows](README.md) | [Automatisation planifiée →](scheduled-automation.md)*
