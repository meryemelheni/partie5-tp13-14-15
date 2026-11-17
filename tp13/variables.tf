variable "region" {
  description = "Région AWS simulée"
  type        = string
  default     = "us-east-1"
}

variable "floci_endpoint" {
  description = "URL du endpoint Floci"
  type        = string
  default     = "http://localhost:4566"
}

variable "environment" {
  description = "Nom de l'environnement (dev, staging, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "L'environnement doit être dev, staging ou prod."
  }
}

variable "api_key" {
  description = "Clé API pour Secrets Manager"
  type        = string
  sensitive   = true
}
