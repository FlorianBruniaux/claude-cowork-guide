# Workflow: Journal de Chantier / Activité

> **Temps estimé**: 10 minutes
> **Difficulté**: Débutant
> **Catégorie**: 🔧 Production
> **Professions**: Artisans/BTP

🌐 **Also available in [English](work-log.en.md)**

---

## Cas d'usage

Vous devez tenir un journal de chantier pour tracer les interventions, constater l'avancement, ou justifier d'éventuels retards. Ce workflow vous aide à:

- Consigner quotidiennement l'avancement
- Noter incidents et solutions
- Documenter présences et absences
- Créer rapport final de chantier

> ⚠️ **Valeur légale**: Un journal de chantier bien tenu peut servir de preuve en cas de litige. Soyez factuel et précis.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Informations chantier (adresse, client, date début)
- [ ] Photos chantier (optionnel mais recommandé)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Initialiser le journal

```bash
mkdir -p ~/Cowork-Workspace/chantiers/[nom-chantier]/
```

Créer le journal:

```
Crée journal de chantier pour:

INFORMATIONS CHANTIER:
- Nom projet: [ex: Rénovation appartement Dubois]
- Adresse: [adresse complète]
- Client: [Nom du client]
- Date début: [date]
- Date fin prévue: [date]
- Entreprise: [votre entreprise]
- Chef de chantier: [nom]

Structure du journal:
1. Page de garde (infos ci-dessus)
2. Planning prévisionnel
3. Journal quotidien (à remplir chaque jour)
4. Incidents / Réserves
5. Photos horodatées
6. Validation client (signatures étapes clés)

Format: Document Word ou PDF modifiable
Sauvegarde: ~/Cowork-Workspace/chantiers/[nom-chantier]/journal-chantier.docx
```

### Étape 2: Entrée quotidienne

Chaque jour de travail:

```
Ajoute entrée journal pour aujourd'hui ([date]):

MÉTÉO: [Ensoleillé / Pluie / Neige / etc.]
TEMPÉRATURE: [°C]

ÉQUIPE PRÉSENTE:
- [Nom] (chef de chantier) 8h-17h
- [Nom] (ouvrier 1) 8h-17h
- [Nom] (ouvrier 2) 8h-12h

TRAVAUX RÉALISÉS:
- [Tâche 1]: [description précise et avancement %]
- [Tâche 2]: [description]
- [Tâche 3]: [description]

MATÉRIAUX UTILISÉS:
- [Matériau 1]: [quantité]
- [Matériau 2]: [quantité]

LIVRAISONS REÇUES:
- [Fournisseur]: [matériel livré] à [heure]

INCIDENTS / OBSERVATIONS:
- [Si applicable: problème rencontré, solution appliquée]
- [Retard, modification demandée par client, etc.]

VISITE CLIENT/MAÎTRE D'ŒUVRE:
- [Si visite: qui, quand, observations, décisions]

AVANCEMENT GLOBAL: [X%]

PRÉVISIONS LENDEMAIN:
- [Tâches planifiées]

Horodatage: [date] [heure]
Rempli par: [votre nom]

Sauvegarde dans ~/Cowork-Workspace/chantiers/[nom-chantier]/journal-chantier.docx
```

### Étape 3: Documenter incidents

Si problème important:

```
Ajoute entrée incident au journal:

DATE INCIDENT: [date]
NATURE: [Ex: Fuite découverte, retard livraison, non-conformité]
DESCRIPTION DÉTAILLÉE:
[Circonstances, cause identifiée, impact sur planning]

PERSONNES PRÉSENTES:
- [Témoins]

PHOTOS: [Référence photos prises]

ACTIONS CORRECTIVES:
- [Ce qui a été fait immédiatement]
- [Mesures pour éviter récurrence]

IMPACT PLANNING: [+X jours de retard OU aucun impact]
IMPACT BUDGET: [+X€ OU aucun impact]

CLIENT INFORMÉ: [Oui le [date] par [moyen] / Non]

STATUT: [Résolu / En cours / À traiter]

Sauvegarde dans ~/Cowork-Workspace/chantiers/[nom-chantier]/journal-chantier.docx
```

### Étape 4: Photos horodatées

Organiser les photos:

```
Liste toutes les photos dans ~/Cowork-Workspace/chantiers/[nom-chantier]/photos/

Pour chaque photo:
- Extraire date EXIF
- Créer nom descriptif: [YYYY-MM-DD]-[zone]-[type].jpg
  Exemples:
  * 2026-01-20-cuisine-avant.jpg
  * 2026-01-22-cuisine-plomberie.jpg
  * 2026-01-25-cuisine-carrelage.jpg
  * 2026-01-27-cuisine-apres.jpg

Créer index photos dans journal:
[Date] | [Zone] | [Description] | [Fichier]

Renommer fichiers et mettre à jour journal
```

### Étape 5: Rapport final

En fin de chantier:

```
Génère rapport final de chantier depuis le journal:

SYNTHÈSE CHANTIER:
- Date début: [date]
- Date fin: [date]
- Durée totale: [X jours] (prévu: [Y jours])
- Équipe: [nombre total personnes x jours]

TRAVAUX RÉALISÉS:
[Liste complète avec références journal quotidien]

INCIDENTS/MODIFICATIONS:
[Résumé incidents avec résolutions]

MATÉRIAUX CONSOMMÉS:
[Récapitulatif total]

PHOTOS AVANT/APRÈS:
[Sélection meilleures photos]

VALIDATION CLIENT:
[Récapitulatif validations étapes]

RÉSERVES ÉVENTUELLES:
[Liste réserves non levées]

Format: PDF
Sauvegarde: ~/Cowork-Workspace/chantiers/[nom-chantier]/rapport-final.pdf
```

---

## Exemples de prompts

### Journal chantier rénovation

```
Entrée journal chantier "Rénovation SDB Martin" - 22 janvier 2026

Météo: Pluie intermittente, 8°C
Équipe: Moi (chef) + Lucas (apprenti) 8h-17h

Travaux:
- Dépose ancien carrelage mural: 100% terminé (12m²)
- Dépose baignoire: 100% terminé
- Évacuation gravats: 100% (3 bennes)
- Reprise plomberie evacuation: 80% (reste raccord douche)
- Début pose receveur douche italienne: 40% (mise à niveau)

Matériaux:
- Sacs mortier: 6
- Tuyau PVC Ø100: 3m

Livraison: Faïence commandée, arrivée prévue demain 14h (fournisseur Leroy Merlin)

Observation: Découvert ancienne fuite derrière baignoire → dalle fragilisée.
Action: Renforcement dalle prévu demain matin (+2h travail, +80€ matériaux).
Client informé par SMS 15h, accord reçu 15h30.

Avancement global: 35%
Demain: Finir receveur + début étanchéité si faïence livrée

Journal mis à jour par: Jean Dupont, 22/01/2026 17h45
```

### Incident chantier

```
INCIDENT - Chantier "Extension maison Bertrand"

Date: 18 janvier 2026, 10h30
Nature: Retard livraison matériaux critiques

Description:
Livraison poutres IPN prévue 8h non effectuée.
Fournisseur: Acier Plus
Commande: BC-2026-0042
Contact fournisseur 9h: chauffeur en panne A7, arrivée repoussée 15h.

Impact:
- Planning: +0.5 jour (équipe réaffectée autres tâches)
- Budget: aucun
- Qualité: aucun impact

Mesures prises:
- Équipe réaffectée sur préparation maçonnerie
- Client informé par tel 10h45
- Fournisseur: demande geste commercial (obtenu: -5% facture)

Statut: Résolu (livraison effectuée 14h45, travaux repris 15h)

Leçon: Commander matériaux critiques avec 48h marge sécurité
```

---

## Troubleshooting

### Oubli entrée quotidienne

**Cause**: Pas de routine
**Solution**: Remplir le soir même en 5 min:

```
Entrée rapide pour hier (21/01):
Équipe: [qui]
Fait: [3 principales tâches]
Problèmes: [si aucun, indiquer "RAS"]

Développer davantage uniquement si incident
```

### Journal trop détaillé

**Cause**: Sur-documentation
**Solution**: Adapter au risque:

```
Petit chantier (< 5 jours):
- Entrée quotidienne simplifiée (5 lignes)
- Photos début/fin suffisent

Gros chantier ou client difficile:
- Entrée détaillée obligatoire
- Photos toutes étapes
- Validation client formelle chaque phase
```

### Erreurs dans journal

**Cause**: Correction après coup
**Solution**: Ne jamais effacer, ajouter correction:

```
[Entrée originale inchangée]

CORRECTION [date]:
L'information ci-dessus concernant [élément] est inexacte.
Correction: [information correcte]
Raison erreur: [explication]
Corrigé par: [nom]
```

---

## Variations

### Journal multi-chantiers

```
Gère planning multi-chantiers:

Chantier A (Lyon 6): Lun-Mar-Mer
Chantier B (Villeurbanne): Jeu-Ven

Pour chaque journée:
- Identifier quel chantier
- Entrée dans journal correspondant
- Vue consolidée hebdomadaire tous chantiers

Format: Excel avec onglet par chantier + onglet récap
```

### Journal + suivi budget

```
Ajoute tracking budget au journal quotidien:

Chaque entrée inclut:
CONSOMMÉ AUJOURD'HUI:
- Main d'œuvre: [heures] x [taux] = [€]
- Matériaux: [total €]
- Sous-traitance: [€]
Total jour: [€]

CUMUL DEPUIS DÉBUT:
Dépensé: [€] / Budget: [€] ([X%])
Alerte si >80% budget atteint
```

### Export client

```
Depuis journal complet, génère version client:

Conserve:
- Dates et avancements
- Photos avant/pendant/après
- Validations étapes

Retire:
- Détails techniques internes
- Coûts matériaux
- Incidents mineurs résolus

Ton: Professionnel et rassurant
Format: PDF présentation (pas brut de chantier)
```

### Reporting hebdomadaire/mensuel

Pour chantiers longs (>2 semaines), créer rapport périodique:

```
Génère rapport avancement hebdomadaire depuis journal chantier [nom]:

PÉRIODE: Semaine du [date début] au [date fin]

TRAVAUX SEMAINE:
- [Résumé tâches accomplies avec %]
- [Jalons atteints]

ÉQUIPE:
- Nombre total jours/homme: [X]
- Moyenne équipe: [X personnes]

MATÉRIAUX CONSOMMÉS:
- [Principaux matériaux avec quantités]
- [Coût approx si nécessaire]

AVANCEMENT GLOBAL:
- Début semaine: [X%]
- Fin semaine: [Y%]
- Progression: [+Z%]

RESPECT PLANNING:
- Planning initial: [date fin prévue]
- Prévision actuelle: [date fin estimée]
- Écart: [± X jours] → Raison: [explication courte]

INCIDENTS/ALERTES:
- [Si problèmes impactant planning/budget]
- [Actions correctives en cours]

PRÉVISIONS SEMAINE SUIVANTE:
- [Travaux planifiés]
- [Livraisons attendues]
- [Jalons à valider]

BESOINS CLIENT:
- [Décisions requises]
- [Validations attendues]
- [RDV à planifier]

Format: PDF 2 pages max
Ton: Factuel, rassurant, transparent
Destinataire: Client / Maître d'œuvre
Sauvegarde: ~/Cowork-Workspace/chantiers/[nom]/rapports/rapport-semaine-[numéro].pdf
```

**Fréquence recommandée**:
- Chantiers 2-4 semaines: Rapport hebdomadaire
- Chantiers >1 mois: Rapport hebdo + synthèse mensuelle
- Chantiers <2 semaines: Rapport final uniquement

**Envoi automatique**:

```
Prépare email envoi rapport hebdo:

Objet: Chantier [Nom] - Rapport semaine [numéro]

Bonjour [Client],

Veuillez trouver ci-joint le rapport d'avancement de votre chantier
pour la semaine écoulée.

Points clés:
- Avancement: [X%] (+[Y]% cette semaine)
- Planning: [Conforme OU Retard de X jours suite à [raison]]
- Prochaines étapes: [Résumé 2-3 tâches]

Je reste à votre disposition pour tout complément d'information.

Cordialement,
[Signature]

PJ: rapport-semaine-[numéro].pdf
```

**Avantages reporting récurrent**:
- Client rassuré (visibilité continue)
- Évite mauvaises surprises (alertes précoces)
- Justification retards avant qu'ils deviennent problèmes
- Valorisation travail accompli (client voit progression)
- Traçabilité pour vous (preuve suivi rigoureux)

---

## Bonnes pratiques

1. **Quotidien impératif** : Remplir chaque soir, même si "RAS"
2. **Factuel uniquement** : Décrire faits, pas interprétations
3. **Horodatage** : Toujours dater et signer entrées
4. **Photos systématiques** : Avant/après + étapes sensibles
5. **Conservation longue** : Garder 10 ans (responsabilité décennale)
6. **Backup** : Copier journal sur cloud/disque externe hebdomadairement
7. **Validation client** : Faire signer étapes importantes
8. **Incidents détaillés** : Plus de détails vaut mieux que pas assez

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
