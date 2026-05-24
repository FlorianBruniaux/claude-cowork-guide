# Template CLAUDE.md : Consultant / Profession libérale

Copier ce fichier sous `~/Cowork-Workspace/CLAUDE.md` et remplacer les parties entre `[crochets]`.

---

```markdown
# Mon contexte Cowork

## Qui je suis

Je suis consultant [spécialité : RH / marketing / finance / IT / formation / autre] indépendant.
Structure : [micro-entreprise / EIRL / SASU / SARL] depuis [année].
Clients : [type de clients : grands groupes / PME / collectivités / particuliers].
TJM habituel : [montant]€ HT.
Mode de travail : [présentiel / distanciel / mixte].

## Ce que je fais avec Cowork

Usage principal :

- Rédiger des propositions commerciales depuis un brief client
- Préparer mes missions (analyse des documents clients, questions clés)
- Rédiger des comptes-rendus de réunion depuis mes notes brutes
- Faire de la veille sectorielle (synthèse d'articles, tendances)
- Organiser ma knowledge base client
- Gérer ma facturation (factures, relances)

## Mes missions en cours

[Optionnel : liste des missions actives pour que Cowork comprenne le contexte]

- Mission A : [brève description, client, phase en cours]
- Mission B : [brève description, client, phase en cours]

## Ma structure de fichiers

```
~/Cowork-Workspace/
├── input/
│   ├── briefs/             ← documents clients à analyser
│   ├── notes-reunion/      ← notes brutes à structurer
│   └── veille/             ← articles à synthétiser
├── output/
│   ├── propositions/       ← AAAA-MM-JJ_CLIENT_prop.docx
│   ├── missions/
│   │   ├── [CLIENT-A]/     ← tous les livrables de la mission
│   │   └── [CLIENT-B]/
│   ├── factures/           ← AAAA-MM-JJ_CLIENT_FAC-XXX.pdf
│   └── veille/             ← synthèses hebdo
└── templates/
    ├── proposition-commerciale.docx
    ├── cr-reunion.docx
    └── facture.docx
```

## Mes clients principaux

[Utiliser des initiales ou noms de code si confidentialité requise]

- Client A [INITIALES] : [secteur, type de missions habituelles]
- Client B [INITIALES] : [secteur, type de missions habituelles]

## Mes domaines d'expertise

[Liste les domaines où tu as une expertise spécifique, pour que Cowork calibre le niveau des réponses]

- [Domaine 1 : ex. "Développement des compétences et formation professionnelle"]
- [Domaine 2]
- [Domaine 3]

## Mon vocabulaire professionnel

[Termes spécifiques à ton secteur que Cowork doit maîtriser]

- [Terme 1] : [définition dans ton contexte]
- [Terme 2] : [définition]

## Mes conventions de travail

**Nommage des fichiers :**

- Propositions : `AAAA-MM-JJ_CLIENT_prop-[sujet].docx`
- CR réunion : `AAAA-MM-JJ_CLIENT_CR-[sujet].docx`
- Factures : `AAAA-MM-JJ_CLIENT_FAC-[numéro].pdf`

**Format des dates :** JJ/MM/AAAA

**Langue des livrables :** [français / anglais / selon le client]

**Ton des documents :** [formel / professionnel / décontracté selon le client]

## Informations de facturation

- SIRET : [ton numéro SIRET]
- TVA : [assujetti / non assujetti]
- [Si non assujetti] : "TVA non applicable, art. 293 B du CGI"
- Délai de paiement standard : 30 jours
- RIB disponible dans : `~/Cowork-Workspace/templates/RIB.pdf`

## Confidentialité

- Certains clients ont des NDA : toujours vérifier avant de soumettre un document
- Par défaut : anonymiser les noms de clients dans les prompts (utiliser les initiales)
- Pas de données financières détaillées de clients dans les prompts

## Dernière mise à jour

[Date]
```

---

## Comment utiliser ce template

1. Copier le contenu entre les balises de code dans un fichier `CLAUDE.md`
2. Le placer à la racine de `~/Cowork-Workspace/`
3. En début de session complexe, donner le fichier à Cowork avec : "Consulte ~/Cowork-Workspace/CLAUDE.md pour le contexte avant de commencer."
4. Mettre à jour la section "Missions en cours" à chaque nouvelle mission ou clôture
