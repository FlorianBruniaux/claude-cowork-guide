# Template CLAUDE.md : Dirigeant TPE

Copier ce fichier sous `~/Cowork-Workspace/CLAUDE.md` et remplacer les parties entre `[crochets]`.

---

```markdown
# Mon contexte Cowork

## Qui je suis

Je dirige [nom de l'entreprise], une [type d'activité] de [nombre] personnes.
Secteur : [secteur d'activité précis].
Structure juridique : [SARL / SAS / EURL / autre] depuis [année].
CA annuel approximatif : [tranche : <100K / 100-500K / 500K-1M / >1M]€.
Clients : [B2B / B2C / les deux].

## Ce que je fais avec Cowork

Je délègue à Cowork les tâches administratives et de communication pour me concentrer sur [ton cœur de métier / le développement commercial / le management].

Usages principaux :

- Administration : facturation, relances, extraction de données, préparation comptable
- Commercial : propositions, relances prospects, analyse concurrentielle
- Communication : posts réseaux, réponses avis, newsletter
- Organisation : rapports d'activité, comptes-rendus, suivi de projets

## Mon équipe

[Optionnel : liste les membres de l'équipe qui utilisent aussi Cowork]

- [Prénom] : [rôle, tâches Cowork déléguées]
- [Prénom] : [rôle, tâches Cowork déléguées]

## Ma structure de fichiers

```
~/Cowork-Workspace/
├── input/
│   ├── inbox/              ← tout ce qui entre (à traiter)
│   ├── factures-achats/    ← factures fournisseurs
│   └── documents-divers/   ← documents à traiter
├── output/
│   ├── 2026/
│   │   ├── clients/        ← par client
│   │   ├── fournisseurs/   ← par fournisseur
│   │   ├── admin/          ← comptabilité, RH, juridique
│   │   └── commu/          ← communication externe
│   └── templates/          ← modèles réutilisables
├── prompts/
│   └── bibliotheque.md     ← prompts validés de l'équipe
└── CONTEXT.md              ← ce fichier
```

## Mes clients principaux

[Optionnel : pour que Cowork personnalise les communications]

- [Client A] : [secteur, volume d'affaires approximatif, interlocuteur habituel]
- [Client B] : [secteur, volume d'affaires approximatif]

## Mes fournisseurs et partenaires clés

- [Fournisseur 1] : [ce qu'il fournit]
- [Expert-comptable / cabinet comptable] : [nom, fréquence de contact]
- [Banque] : [nom, interlocuteur si connu]

## Mes priorités actuelles

[Mettre à jour chaque mois]

1. [Priorité 1 du trimestre : ex. "Développer le canal B2B"]
2. [Priorité 2]
3. [Priorité 3]

## Mon style de communication

Ton externe (clients, prospects) : [professionnel / chaleureux / expert / direct]
Ton interne (équipe) : [managérial / collaboratif / informel]
Vouvoiement ou tutoiement avec les clients : [vouvoyer / tutoyer / selon le client]

## Mes conventions de travail

**Nommage des fichiers :**

- `AAAA-MM-JJ_[CLIENT ou FOURNISSEUR]_[type]-[détail].extension`
- Exemples : `2026-04-09_ClientA_facture-001.pdf`, `2026-04-09_FournB_bon-commande.pdf`

**Format des dates :** JJ/MM/AAAA

**Monnaie :** EUR

**Numérotation des factures :** [AAAA-numéro séquentiel], ex : 2026-001

## Informations administratives

- SIRET : [ton numéro SIRET]
- SIREN : [les 9 premiers chiffres du SIRET]
- TVA intracommunautaire : FR[clé][SIREN] (si applicable)
- Code APE/NAF : [code]
- Assurance RC Pro : [nom assureur, numéro police]

## Données sensibles (ne pas soumettre à Cowork)

- Mots de passe et accès (banque, logiciels, etc.)
- Données personnelles employés non anonymisées
- Contrats sous NDA strict mentionnant explicitement les IA
- Coordonnées bancaires (IBAN)

## Dernière mise à jour

[Date]
```

---

## Comment utiliser ce template

1. Copier le contenu entre les balises de code dans `CLAUDE.md`
2. Le placer à la racine de `~/Cowork-Workspace/`
3. Pour les tâches complexes ou de contexte, commencer le prompt par : "Consulte ~/Cowork-Workspace/CONTEXT.md avant de commencer."
4. Partager ce fichier avec les membres de l'équipe qui utilisent aussi Cowork
5. Mettre à jour la section "Priorités actuelles" chaque mois et la date en bas
