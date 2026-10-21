output "site_url" {
  value = module.site.site_url
}

output "bucket_name" {
  value = module.site.bucket_name
}

output "distribution_id" {
  value = module.site.distribution_id
}

output "github_role_arn" {
  value = module.github_deploy.role_arn
}

output "region" {
  value = var.region
}