# Workflow: Listes de Contrôle Qualité

> **Temps estimé**: 15 minutes
> **Difficulté**: Débutant
> **Catégorie**: 🔧 Production
> **Professions**: Artisans/BTP, Commerçants

🌐 **Also available in [English](quality-checklist.en.md)**

---

## Cas d'usage

Vous devez vérifier systématiquement la qualité avant livraison, réception chantier ou mise en rayon. Ce workflow vous aide à:

- Créer checklists métier personnalisées
- Ne rien oublier lors contrôles
- Documenter conformité
- Prouver respect normes et standards

> ⚠️ **Sécurité**: Une checklist bien suivie réduit erreurs, litiges et retours clients.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] Normes applicables à votre métier (DTU, NF, etc.)
- [ ] Retours d'expérience (erreurs passées à éviter)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Identifier vos besoins

Listez vos contrôles récurrents:

```
Mon métier: [électricien / plombier / menuisier / commerçant / etc.]

Moments où je dois contrôler qualité:
- Avant livraison client
- Réception chantier
- Fin d'intervention
- Mise en rayon produits
- [autres...]

Normes applicables:
- [DTU X, NF Y, etc.]

Erreurs fréquentes passées:
- [Liste 3-5 erreurs déjà commises]

Suggère checklists utiles pour mon activité
```

### Étape 2: Créer checklist métier

```bash
mkdir -p ~/Cowork-Workspace/output/checklists
```

Exemple pour électricien:

```
Crée checklist "Contrôle installation électrique conforme NF C 15-100"

Sections:

1. TABLEAU ÉLECTRIQUE
□ Disjoncteur général adapté puissance
□ Disjoncteur différentiel 30mA présent
□ Protection chaque circuit (disjoncteurs modulaires)
□ Étiquetage circuits clair
□ Espace suffisant autour tableau (accès)
□ Obturateurs emplacements libres

2. CIRCUITS
□ Section câbles conforme (2,5mm² prises, 1,5mm² éclairage)
□ Couleurs normalisées (bleu=neutre, vert-jaune=terre, autres=phase)
□ Boîtes dérivation accessibles
□ Pas de fils dénudés visibles
□ Presse-étoupes serrés

3. PRISES ET INTERRUPTEURS
□ Hauteur réglementaire (12cm sol pour prises)
□ Fixation solide
□ Terre connectée
□ Nombre prises conforme par pièce (cuisine min 6, etc.)

4. ÉCLAIRAGE
□ Points lumineux fonctionnels
□ Interrupteurs bien placés
□ Va-et-vient si couloir

5. MISE À LA TERRE
□ Piquet terre enfoncé
□ Barrette mesure accessible
□ Résistance <100 Ohms (mesure)

6. SÉCURITÉ SALLE D'EAU
□ Volume sécurité respecté (60cm autour baignoire)
□ Classe protection IP adaptée (IP65 si volume 1)
□ Pas de prises dans volumes 0-1

7. TESTS FONCTIONNELS
□ Tous circuits testés charge
□ Différentiel déclenche (test bouton)
□ Pas de disjonction intempestive
□ Mesure tension phase-neutre (230V ±10%)

8. DOCUMENTATION
□ Schéma unifilaire fourni
□ Photos tableau
□ Attestation conformité Consuel

Format: PDF checklist imprimable avec cases à cocher
Sauvegarde: ~/Cowork-Workspace/output/checklists/electricite-NFC15100.pdf
```

### Étape 3: Personnaliser

Adapter à votre activité:

```
Modifie checklist "electricite-NFC15100.pdf":

Ajoute section spécifique mes chantiers:
- Vérification parafoudre (si région orageuse)
- Contrôle domotique connectée (si installée)

Retire section:
- [Éléments non applicables]

Ajoute colonne "Photos":
- Case à cocher si photo prise pour preuve

Ajoute pied de page:
Nom entreprise, Date contrôle, Signature technicien
```

### Étape 4: Utiliser sur chantier

Imprimer ou utiliser sur tablette:

```bash
# Imprimer
open ~/Cowork-Workspace/output/checklists/electricite-NFC15100.pdf

# OU utiliser version remplissable
# Remplir checklist pour chantier [nom]:

Chantier: [Nom client]
Adresse: [Adresse]
Date contrôle: [Date]
Contrôleur: [Votre nom]

[Cocher chaque point au fur et à mesure]

Points non-conformes identifiés:
- [Point X]: [Description problème] → Action: [Correction à faire]

Sauvegarde contrôle rempli:
~/Cowork-Workspace/chantiers/[nom-chantier]/controle-qualite-[date].pdf
```

### Étape 5: Rapport non-conformités

Si problèmes détectés:

```
Depuis checklist remplie ~/Cowork-Workspace/chantiers/[nom]/controle-qualite-[date].pdf

Génère rapport non-conformités:

CHANTIER: [Nom]
DATE CONTRÔLE: [Date]

NON-CONFORMITÉS DÉTECTÉES:

1. [Point checklist] - GRAVITÉ: Critique/Majeure/Mineure
   Description: [Détail problème]
   Risque: [Sécurité / Qualité / Réglementaire]
   Action corrective: [Ce qui doit être fait]
   Responsable: [Qui corrige]
   Délai: [Quand]

2. [Autre point...]

VALIDATION:
□ Corrections effectuées le [date]
□ Re-contrôle OK le [date]
□ Client informé: Oui/Non

Signature technicien:
Signature client (si applicable):

Sauvegarde: ~/Cowork-Workspace/chantiers/[nom]/rapport-non-conformites.pdf
```

---

## Exemples de prompts

### Checklist plomberie

```
Crée checklist contrôle installation plomberie:

Sections:
1. ALIMENTATION EAU
   - Pression réseau conforme (2-4 bars)
   - Compteur accessible
   - Vanne arrêt général OK
   - Réducteur pression si >5 bars

2. ÉVACUATIONS
   - Pentes respectées (1-3 cm/m)
   - Siphons tous équipements
   - Ventilation chutes
   - Étanchéité raccords (test pression)

3. ÉQUIPEMENTS SANITAIRES
   - Fixations solides
   - Pas de fuites visibles
   - Températures ECS conformes (55-60°C)
   - Robinets fonctionnels

4. CHAUFFAGE (si applicable)
   - Purgeurs radiateurs
   - Vase expansion OK
   - Pression circuit (1-1,5 bars froid)
   - Pas de fuites

5. SÉCURITÉ
   - Groupe sécurité ballon
   - Mitigeur thermostatique douche
   - Anti-retour si réseau

Format: PDF imprimable
Sauvegarde: ~/Cowork-Workspace/output/checklists/plomberie-installation.pdf
```

### Checklist commerce (réception marchandise)

```
Crée checklist réception livraison fournisseur:

AVANT DÉCHARGEMENT:
□ Vérifier bon livraison correspond commande
□ Compter nombre colis
□ Vérifier état extérieur (pas de chocs)
□ Prendre photos camion + colis si dommages

DÉCHARGEMENT:
□ Déballage en présence livreur
□ Vérifier conformité produits (références)
□ Compter quantités article par article
□ Vérifier dates péremption (si alimentaire)
□ Contrôle qualité échantillon (aspect, fonctionnement)

ANOMALIES:
□ Produits manquants: [Liste]
□ Produits non-conformes: [Liste]
□ Produits endommagés: [Liste]
□ Photos prises: Oui/Non

SIGNATURE BON LIVRAISON:
□ Signer "sous réserves" si anomalie
□ Noter réserves précises sur bon
□ Conserver copie
□ Envoyer mail fournisseur dans 48h si problème

Format: PDF checklist + Excel suivi anomalies
Sauvegarde: ~/Cowork-Workspace/output/checklists/reception-marchandise.pdf
```

---

## Troubleshooting

### Checklist trop longue

**Cause**: Trop de détails
**Solution**: Créer 2 versions:

```
Version RAPIDE (quotidien):
- 10-15 points essentiels
- 5 min de contrôle

Version COMPLÈTE (fin chantier):
- Tous points normatifs
- 20-30 min de contrôle
```

### Points ambigus

**Cause**: Formulation vague
**Solution**: Critères mesurables:

```
❌ "Vérifier qualité finitions"
✅ "Joints silicone lisses sans bulles, angles à 90°±2°"

❌ "Contrôler solidité"
✅ "Fixation supporte poids 10kg sans mouvement"
```

### Oublis fréquents

**Cause**: Checklist pas sous les yeux
**Solution**: Format pratique terrain:

```
Crée version checklist:
- Format A4 plastifiée (résiste chantier)
- Police 14pt minimum (lisible sans lunettes)
- Cases larges (cocher au crayon chantier)
- QR code vers version PDF complète
```

---

## Variations

### Checklist photos obligatoires

```
Ajoute à chaque checklist:

PHOTOS OBLIGATOIRES:
□ Vue ensemble [zone]
□ Point technique [X] (gros plan)
□ Plaque/étiquette référence matériel
□ Mesure appareil (niveau, multimètre, etc.)

Organiser photos:
- Renommer: [date]-[chantier]-[point-checklist].jpg
- Archiver avec checklist remplie
```

### Checklist maintenance périodique

```
Crée checklist maintenance annuelle:

ÉQUIPEMENT: [Chaudière / Climatisation / etc.]
CLIENT: [Nom]
DERNIÈRE INTERVENTION: [Date]

CONTRÔLES:
□ [Point 1]
□ [Point 2]
...

CONSOMMABLES REMPLACÉS:
□ [Filtre / Joint / etc.] - Réf: [X]

PROCHAINE MAINTENANCE: [Date + 1 an]
RECOMMANDATIONS CLIENT:
- [Conseils utilisation]

Enregistrer intervention + planifier rappel automatique dans 11 mois
```

### Multi-intervenants

```
Checklist chantier équipe:

Sections assignées:
- Électricien: Points 1-3
- Plombier: Points 4-6
- Peintre: Points 7-9

Chaque intervenant:
- Coche ses points
- Signe sa section
- Date intervention

Chef chantier:
- Valide ensemble
- Synthèse globale
```

---

## Bonnes pratiques

1. **Exhaustif mais concis** — Tous points critiques, rien de superflu
2. **Mise à jour régulière** — Réviser checklist si erreur trouvée
3. **Retour d'expérience** — Ajouter point si incident récurrent
4. **Format terrain** — Papier plastifié ou tablette tactile
5. **Traçabilité** — Conserver checklists remplies (preuve contrôle)
6. **Formation équipe** — Tous utilisent même checklist (cohérence)
7. **Validation externe** — Faire valider checklist par organisme certification si applicable
8. **Amélioration continue** — Si 1 point jamais coché, inutile → retirer

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
