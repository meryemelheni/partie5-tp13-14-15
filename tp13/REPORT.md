# Rapport TP13 : Cloud AWS local avec Floci et Terraform

## 1. Introduction
Ce TP avait pour objectif d'utiliser les outils AWS (CLI, SDK, Terraform) contre un émulateur local (Floci), puis de mettre en place des pratiques d'équipe (modules, state distant, scan IaC, OpenTofu).

## 2. Comparaison Floci / LocalStack / AWS réel

| Critère | Floci | LocalStack Community | AWS réel |
| :--- | :--- | :--- | :--- |
| **Licence** | MIT (libre) | Apache 2.0 (mais jeton requis depuis mars 2026) | Propriétaire (payant à l'usage) |
| **Services couverts** | S3, SQS, DynamoDB, Lambda, Secrets Manager | Large gamme (S3, SQS, DynamoDB, Lambda, IAM, etc.) | Tous les services AWS |
| **Fidélité** | Bonne pour les tests de base | Très bonne, proche d'AWS | Référence |
| **Coût** | Gratuit | Gratuit avec jeton, payant pour les versions pro | Payant (facturation à l'usage) |
| **Usage en CI** | Idéal (léger, rapide) | Possible mais plus lourd | Déconseillé (coût, lenteur) |

## 3. Difficultés rencontrées
- Problème d'espace disque sur la VM (erreur `no space left on device`), résolu par un `docker system prune`.
- Floci ne gère pas le verrouillage natif du state S3 (`use_lockfile`), ce qui a empêché de tester le state lock correctement.
- OpenTofu a dû être réinitialisé avec `-reconfigure` car la configuration du backend avait changé entre Terraform et OpenTofu.

## 4. Conclusion
Floci est une excellente alternative gratuite à LocalStack pour apprendre AWS sans carte bancaire. Terraform et OpenTofu sont compatibles et permettent de gérer l'infrastructure as code de manière professionnelle.
