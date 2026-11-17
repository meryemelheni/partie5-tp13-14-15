output "bucket_name" {
  description = "Nom du bucket S3 créé"
  value       = aws_s3_bucket.uploads.bucket
}

# TODO : exposer l'URL de la file SQS et le nom de la table DynamoDB
