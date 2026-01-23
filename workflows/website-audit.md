# Workflow: Audit Site Vitrine

> **Temps estimé**: 20 minutes
> **Difficulté**: Débutant
> **Catégorie**: 📣 Communication
> **Professions**: Tous (artisans, commerçants, indépendants)

🌐 **Also available in [English](website-audit.en.md)**

---

## Cas d'usage

Votre site web est souvent le premier contact avec un prospect. Ce workflow vous aide à:

- Identifier les problèmes critiques de votre site vitrine
- Vérifier que les informations essentielles sont visibles
- Améliorer la conversion (visiteur → contact)
- Comparer avec la concurrence locale

> ⚠️ **Limitation Cowork**: Cowork peut naviguer sur votre site via le navigateur intégré, mais ne peut pas tester le site sur mobile réellement. L'audit mobile est basé sur l'analyse visuelle.

---

## Prérequis

- [ ] Cowork activé dans Claude Desktop
- [ ] URL de votre site web
- [ ] 2-3 URLs de concurrents locaux (optionnel)
- [ ] Workspace folder créé

---

## Instructions étape par étape

### Étape 1: Préparer l'audit

```bash
mkdir -p ~/Cowork-Workspace/output/audit-site
```

### Étape 2: Audit complet du site

```
Ouvre mon site web: [URL de votre site]

Fais un audit complet basé sur ces critères:

══════════════════════════════════════
1. INFORMATIONS DE CONTACT (Critique)
══════════════════════════════════════
□ Téléphone visible en 1 clic (header ou fixe)
□ Adresse physique (si applicable)
□ Email de contact
□ Formulaire de contact fonctionnel
□ Horaires d'ouverture

Score: /5

══════════════════════════════════════
2. CLARTÉ DU MESSAGE (Critique)
══════════════════════════════════════
□ En 5 secondes, je comprends ce que vous faites
□ Titre principal clair (pas de jargon)
□ Zone de service mentionnée (ville, département)
□ Services principaux listés
□ Promesse client visible

Score: /5

══════════════════════════════════════
3. PREUVES DE CONFIANCE
══════════════════════════════════════
□ Avis clients visibles (Google, témoignages)
□ Photos de réalisations réelles
□ Mentions légales complètes
□ Certifications/qualifications affichées
□ Années d'expérience mentionnées

Score: /5

══════════════════════════════════════
4. APPELS À L'ACTION (CTA)
══════════════════════════════════════
□ Bouton "Demander un devis" visible
□ CTA au-dessus de la ligne de flottaison
□ CTA répété en bas de page
□ Numéro de téléphone cliquable (click-to-call)
□ Pas plus de 2 actions principales

Score: /5

══════════════════════════════════════
5. ASPECTS TECHNIQUES
══════════════════════════════════════
□ Site sécurisé (HTTPS)
□ Chargement rapide (<3 secondes)
□ Pas de liens cassés
□ Texte lisible (contraste, taille)
□ Navigation simple (max 5 items menu)

Score: /5

══════════════════════════════════════
RÉSUMÉ
══════════════════════════════════════

Score total: /25

TOP 3 PROBLÈMES URGENTS:
1. [Problème critique #1]
2. [Problème critique #2]
3. [Problème critique #3]

POINTS FORTS:
- [Ce qui fonctionne bien]

Sauvegarde: ~/Cowork-Workspace/output/audit-site/audit-[date].txt
```

### Étape 3: Générer les recommandations

```
Basé sur l'audit précédent, génère un plan d'action priorisé:

FORMAT:

══════════════════════════════════════
CORRECTIONS URGENTES (cette semaine)
══════════════════════════════════════

Action 1: [Titre]
- Problème: [Description]
- Solution: [Instructions précises]
- Impact: [Pourquoi c'est important]
- Difficulté: Facile / Moyen / Nécessite webmaster

Action 2: ...

══════════════════════════════════════
AMÉLIORATIONS IMPORTANTES (ce mois)
══════════════════════════════════════

[Actions moyennes priorité]

══════════════════════════════════════
OPTIMISATIONS FUTURES (à planifier)
══════════════════════════════════════

[Actions non urgentes mais utiles]

Sauvegarde: ~/Cowork-Workspace/output/audit-site/plan-action-[date].txt
```

### Étape 4: Comparer avec la concurrence (optionnel)

```
Compare mon site [votre URL] avec ces concurrents locaux:
- [URL concurrent 1]
- [URL concurrent 2]
- [URL concurrent 3]

Critères de comparaison:

| Critère | Mon site | Concurrent 1 | Concurrent 2 | Concurrent 3 |
|---------|----------|--------------|--------------|--------------|
| Clarté message | | | | |
| Contact visible | | | | |
| Avis clients | | | | |
| Photos réelles | | | | |
| CTA efficace | | | | |
| Vitesse | | | | |

ANALYSE:
- Ce que les concurrents font mieux: [...]
- Ce que je fais mieux: [...]
- Opportunités de différenciation: [...]

Sauvegarde: ~/Cowork-Workspace/output/audit-site/benchmark-concurrence-[date].txt
```

---

## Exemples de prompts

### Audit express (5 minutes)

```
Ouvre [URL] et réponds en 30 secondes:

1. Le téléphone est-il visible sans scroller? OUI/NON
2. Je comprends l'activité en 5 secondes? OUI/NON
3. Il y a un bouton "Devis" visible? OUI/NON
4. Il y a des avis clients? OUI/NON
5. Le site est sécurisé (HTTPS)? OUI/NON

Score rapide: /5
Verdict: ✅ OK | ⚠️ À améliorer | 🚨 Urgent
```

### Audit page d'accueil

```
Ouvre [URL] et analyse uniquement la page d'accueil:

ABOVE THE FOLD (ce qu'on voit sans scroller):
- Titre principal: [transcrire le texte]
- Sous-titre: [transcrire]
- CTA principal: [texte du bouton]
- Téléphone visible: OUI/NON
- Photo: [description]

CRITIQUE:
- Le titre est-il clair? [analyse]
- Le CTA est-il convaincant? [analyse]
- Que manque-t-il? [suggestions]

RÉÉCRITURE SUGGÉRÉE:
- Nouveau titre: [proposition]
- Nouveau sous-titre: [proposition]
- Nouveau CTA: [proposition]
```

### Audit SEO local basique

```
Ouvre [URL] et vérifie le SEO local:

DANS LE CODE (si accessible):
- Title: [transcrire la balise title]
- Meta description: [transcrire]
- Ville/région mentionnée: OUI/NON

SUR LA PAGE:
- Adresse physique complète: OUI/NON
- Carte Google Maps intégrée: OUI/NON
- Mentions des villes/zones desservies: OUI/NON
- Lien vers fiche Google My Business: OUI/NON

VERDICT SEO LOCAL:
- Score: /10
- Action prioritaire: [...]
```

---

## Troubleshooting

### Cowork ne peut pas accéder au site

**Cause**: Site bloqué, problème SSL, ou site hors ligne
**Solution**: Vérifier que le site est accessible dans un navigateur normal:

```
Le site [URL] semble inaccessible.

Vérifie:
1. L'URL est-elle correcte? (pas d'espace, https://)
2. Le site répond-il? (tester dans navigateur)
3. Y a-t-il une redirection? (www vs non-www)

Si le site fonctionne dans ton navigateur mais pas dans Cowork,
c'est probablement un blocage temporaire. Réessayer dans quelques minutes.
```

### Audit trop superficiel

**Cause**: Prompt trop vague
**Solution**: Demander des points spécifiques:

```
Analyse plus en détail la section "Contact" de [URL]:

- Le formulaire est-il fonctionnel? (champs, bouton envoi)
- Les champs obligatoires sont-ils clairs?
- Y a-t-il un message de confirmation après envoi?
- Le délai de réponse est-il mentionné?
- Le numéro de téléphone est-il au format cliquable (tel:)?
```

### Comment comparer avec les concurrents sans connaître leurs URLs

```
Trouve mes 3 principaux concurrents locaux:

Mon activité: [votre métier]
Ma ville: [ville]

Recherche Google: "[métier] [ville]"

Liste les 3 premiers résultats (hors annonces):
1. [Nom] - [URL]
2. [Nom] - [URL]
3. [Nom] - [URL]

Puis lance le benchmark comparatif.
```

---

## Variations

### Audit e-reputation complet

```
Audit réputation en ligne pour [Nom entreprise]:

RECHERCHES À FAIRE:
1. "[Nom entreprise]" sur Google (premiers résultats)
2. "[Nom entreprise] avis" sur Google
3. Fiche Google My Business (si existante)
4. Page Facebook (si existante)
5. Mentions sur annuaires (Pages Jaunes, etc.)

POUR CHAQUE SOURCE:
- Note moyenne: /5
- Nombre d'avis: X
- Dernier avis: [date]
- Avis négatifs non répondus: OUI/NON
- Informations à jour: OUI/NON

SYNTHÈSE:
- Score global e-reputation: /10
- Actions urgentes: [...]
- Opportunités: [...]

Sauvegarde: ~/Cowork-Workspace/output/audit-site/e-reputation-[date].txt
```

### Audit avant refonte

```
Avant de refaire mon site, audite l'existant [URL]:

CE QUI FONCTIONNE (à garder):
- [éléments positifs]

CE QUI NE FONCTIONNE PAS (à changer):
- [problèmes identifiés]

CONTENU À RÉCUPÉRER:
- Textes: [liste des pages avec bon contenu]
- Photos: [photos à réutiliser]
- Témoignages: [citations clients]

CAHIER DES CHARGES SUGGÉRÉ:
- Pages essentielles: [liste]
- Fonctionnalités requises: [liste]
- Éléments à ajouter: [liste]

Sauvegarde: ~/Cowork-Workspace/output/audit-site/cahier-charges-refonte.txt
```

### Audit multi-sites (franchise, réseau)

```
Audite la cohérence de [X] sites du réseau:

URLs:
- [URL site 1]
- [URL site 2]
- [URL site 3]

CRITÈRES DE COHÉRENCE:
□ Logo identique
□ Charte graphique respectée
□ Messages clés alignés
□ Informations légales complètes
□ Contact local visible

TABLEAU COMPARATIF:
[Générer tableau avec scores par site]

ANOMALIES DÉTECTÉES:
- [Site X]: [problème]

Sauvegarde: ~/Cowork-Workspace/output/audit-site/audit-reseau-[date].xlsx
```

---

## Bonnes pratiques

1. **Faites l'audit régulièrement** — 1 fois par trimestre minimum
2. **Testez sur mobile** — 60%+ des visites sont mobiles (demandez à un proche de tester)
3. **Vérifiez vos infos** — Téléphone, horaires, adresse doivent être à jour
4. **Répondez aux avis** — Google favorise les entreprises qui répondent
5. **Comparez-vous** — Vos concurrents s'améliorent, vous devez aussi
6. **Priorisez** — Corrigez d'abord ce qui empêche le contact (téléphone, formulaire)
7. **Mesurez** — Avant/après chaque amélioration, notez les résultats
8. **Demandez des retours** — Vos clients sont les meilleurs testeurs

---

## Limites à connaître

| Ce que Cowork peut faire | Ce que Cowork ne peut pas faire |
|--------------------------|--------------------------------|
| Naviguer sur le site | Tester réellement sur mobile |
| Lire le contenu visible | Accéder au code source complet |
| Analyser la structure | Mesurer les vraies performances (temps de chargement exact) |
| Comparer visuellement | Tester les formulaires (envoi réel) |
| Identifier problèmes évidents | Audit SEO technique approfondi |

**Pour un audit technique complet**, utilisez des outils spécialisés:
- PageSpeed Insights (Google) — performance
- GTmetrix — vitesse
- Google Search Console — SEO
- Mobile-Friendly Test (Google) — compatibilité mobile

---

*[Retour aux Workflows](README.md) | [Documentation Cowork](../README.md)*
