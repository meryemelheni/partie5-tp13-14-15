# Rapport TP14 : Kubernetes avec K3s

## 1. Introduction
Ce TP a permis de déployer un cluster K3s (Plan B : installation directe sur la VM de lab) et de manipuler les objets Kubernetes de base : Pods, Deployments, Services, ConfigMaps, Secrets, PVC et HPA.

## 2. Ce qui a été fait
- Installation de K3s et kubectl.
- Création d'un Namespace `tp14`.
- Déploiement d'une application `whoami` (Deployment + Service).
- Test de recréation automatique des pods (grâce au ReplicaSet).
- Injection de ConfigMap et Secret dans le Deployment.
- Rolling update et rollback.
- Test de persistance avec un PVC (Nginx).
- Création d'un HPA.

## 3. Difficultés rencontrées
- Problème de permissions sur le volume pour PostgreSQL (résolu en utilisant Nginx à la place).
- Port par défaut de `traefik/whoami` (8080 et non 80).
- Manque d'espace disque, résolu par un grand nettoyage de la VM.

## 4. Conclusion
K3s est une excellente distribution Kubernetes pour un lab, légère et facile à installer. Les objets de base (Deployment, Service, PVC) fonctionnent parfaitement et permettent de comprendre l'orchestration de conteneurs.
