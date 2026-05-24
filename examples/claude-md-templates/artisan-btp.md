# Template CLAUDE.md : Artisan BTP

Copier ce fichier sous `~/Cowork-Workspace/CLAUDE.md` et remplacer les parties entre `[crochets]`.

---

```markdown
# Mon contexte Cowork

## Qui je suis

Je suis [plombier / électricien / maçon / peintre / menuisier / autre] à [ville].
Structure : [auto-entrepreneur / EIRL / SARL] depuis [année].
[Nombre] compagnons, [nombre] chantiers actifs en moyenne.
Zone d'intervention : [rayon en km] autour de [ville].

## Ce que je fais avec Cowork

Usage principal :

- Générer des devis depuis mes notes ou photos de chantier
- Transformer mes bons de travaux en factures PDF
- Rédiger les relances pour les factures impayées
- Répondre aux avis Google de façon professionnelle
- Rédiger les courriers fournisseurs (réclamations, commandes)

## Ma structure de fichiers

```
~/Cowork-Workspace/
├── input/
│   ├── chantiers/          ← photos et notes par chantier
│   ├── factures-fournisseurs/ ← PDF à traiter
│   └── avis-clients/       ← avis à traiter
├── output/
│   ├── devis/              ← AAAA-MM-JJ_CLIENT_devis.pdf
│   ├── factures/           ← AAAA-MM-JJ_CLIENT_FAC-XXX.pdf
│   └── courriers/          ← courriers divers
└── templates/
    ├── devis-standard.docx
    └── facture-standard.docx
```

## Mes clients types

- [Type de client 1 : particuliers / artisans / PME / syndic / commune]
- [Type de client 2]

Clients réguliers :

- [Nom ou initiales] : [type de travaux, fréquence]
- [Nom ou initiales] : [type de travaux, fréquence]

## Mes fournisseurs habituels

- [Fournisseur 1] : [ce qu'il fournit]
- [Fournisseur 2] : [ce qu'il fournit]

## Mes conventions de travail

**Nommage des fichiers :**

- Devis : `AAAA-MM-JJ_NOM-CLIENT_devis.pdf`
- Factures : `AAAA-MM-JJ_NOM-CLIENT_FAC-[numéro].pdf`
- Bon de travaux : `AAAA-MM-JJ_NOM-CLIENT_BT.pdf`

**Format des dates :** JJ/MM/AAAA

**Monnaie :** EUR, TTC sauf mention contraire

**Numérotation des factures :** [année]-[numéro séquentiel], ex : 2026-001

## Mon vocabulaire métier

- "Bon de travaux" (BT) : document signé par le client à la fin de la prestation, confirme les travaux réalisés
- "Attachement" : relevé de travaux pour un chantier en cours (facturation intermédiaire)
- "Levée de réserves" : intervention post-livraison pour corriger les points notés lors de la réception
- [Ajouter tes termes spécifiques]

## Mentions légales à inclure sur mes documents

- SIRET : [ton numéro SIRET]
- [Si RGE] : Qualification RGE n°[numéro]
- [Si décennale] : Assurance décennale [nom assureur], police n°[numéro]
- TVA : [assujetti à la TVA / non assujetti (auto-entrepreneur)]
- [Si auto-entrepreneur] : "TVA non applicable, art. 293 B du CGI"

## Ce que je ne veux pas dans Cowork

- Pas de données bancaires (IBAN, coordonnées bancaires) dans les prompts
- Pas de mots de passe ou identifiants
- Pas de contrats sous NDA strict

## Dernière mise à jour

[Date]
```

---

## Comment utiliser ce template

1. Copier le contenu entre les balises de code dans un fichier `CLAUDE.md`
2. Le placer à la racine de `~/Cowork-Workspace/`
3. Dans tes prompts complexes, ajouter en début : "Consulte ~/Cowork-Workspace/CLAUDE.md pour le contexte."
4. Mettre à jour la date "Dernière mise à jour" chaque semaine

Ce fichier n'est jamais envoyé automatiquement. Tu le soumets explicitement quand tu veux que Cowork l'utilise.
