# Avant / Après : Facturation Administrative

**Profil** : Sophie, plombière, 3 salariés, 30 chantiers par mois en moyenne.

---

## La situation AVANT Cowork

Sophie finissait ses chantiers le vendredi et consacrait le samedi matin à sa facturation. En moyenne, 4 à 5 heures par semaine.

**Le workflow manuel :**

1. Retrouver le bon de travaux signé par le client (parfois dans la camionnette, parfois dans la boîte mail, parfois sur le bureau)
2. Ouvrir Word avec le template de facture
3. Saisir manuellement : nom du client, adresse, date, numéro de facture, ligne par ligne les travaux effectués avec les prix
4. Calculer la TVA à la main (ou avec la calculette)
5. Relire pour les fautes
6. Sauvegarder le fichier, nommer le fichier, le retrouver dans les documents
7. Envoyer par email

**Temps par facture :** 35 à 45 minutes pour une facture standard. 1h30 pour une facture complexe (plusieurs lignes de travaux, matériaux détaillés).

**Les problèmes récurrents :**

- Erreurs de calcul (TVA, remises)
- Numéros de facture dupliqués (deux factures avec le même numéro)
- Oubli de mentions obligatoires (attestation décennale, délai de paiement)
- Factures perdues faute de nommage cohérent
- Relances oubliées : des factures impayées depuis 60 jours découvertes par hasard

---

## Le workflow AVEC Cowork

**Setup préalable (fait une seule fois, 30 minutes) :**

- Créer `~/Cowork-Workspace/input/bons-travaux/` pour les bons de travaux scannés ou photographiés
- Créer `~/Cowork-Workspace/output/factures/` pour les factures générées
- Sauvegarder le template de facture dans `~/Cowork-Workspace/templates/facture-sophie.docx`

**Nouveau workflow :**

1. Photo du bon de travaux avec le téléphone (10 secondes)
2. Envoyer la photo dans `input/bons-travaux/`
3. Lancer Cowork avec le prompt ci-dessous
4. Vérifier la facture générée (2 minutes de relecture)
5. Envoyer au client

**Temps par facture :** 8 à 12 minutes.

---

## Le prompt utilisé

```
CONTEXTE : J'ai un bon de travaux scanné dans
~/Cowork-Workspace/input/bons-travaux/[NOM-FICHIER].jpg
Mon template de facture est dans ~/Cowork-Workspace/templates/facture-sophie.docx

TÂCHE : Lire le bon de travaux et générer la facture correspondante
en remplissant le template avec les informations extraites.
Calculer automatiquement les montants HT, TVA à 10% pour les travaux
de rénovation et 20% pour les équipements, et le montant TTC.
Numéro de facture : [AAAA]-[prochain numéro, à compléter manuellement]

SORTIE : Enregistrer la facture dans
~/Cowork-Workspace/output/factures/AAAA-MM-JJ_[NOM-CLIENT]_FAC-[numéro].docx

CONTRAINTES :
- Taux TVA : 10% sur la main d'oeuvre et la pose, 20% sur les équipements
- Mentions obligatoires à vérifier : numéro SIRET (XXXX XXX XXX XXXXX),
  attestation décennale (police XXX), délai de paiement 30 jours
- Si un champ du bon de travaux est illisible, indiquer [À COMPLÉTER] dans la facture
- Date de la facture : date du jour
```

---

## Ce que Sophie vérifie avant d'envoyer

1. Le nom et l'adresse du client sont corrects
2. Le numéro de facture est dans la bonne séquence
3. Les montants correspondent au bon de travaux
4. Les mentions obligatoires sont présentes

Temps de vérification : 2 minutes.

---

## Résultats après 3 mois

| Indicateur | Avant | Après |
|-----------|-------|-------|
| Temps par facture | 40 min | 10 min |
| Factures par samedi matin | 6-8 | 20-25 |
| Erreurs de calcul TVA | 2-3/mois | 0 |
| Factures impayées non détectées | 3-4/trimestre | 0 |
| Samedi libéré | Non | Oui |

**ROI mensuel :** 30 factures × 30 min économisées = 15h/mois. Au taux de 45€/h (coût d'opportunité), ça représente 675€/mois de valeur récupérée pour un coût Cowork de 20€/mois.
