# TP13 partie 4 : module réutilisable "bucket sécurisé".
# TODO : déplacer ici le bucket, son versioning, son blocage d'accès public et son chiffrement,
#        en utilisant var.name et var.tags. Puis l'appeler depuis la racine :
#
#   module "uploads" {
#     source = "./modules/secure-bucket"
#     name   = "tp13-uploads-${var.environment}"
#   }
