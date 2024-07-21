output "primary_password" {
  value = random_password.primary.result
}

output "backup_password" {
  value = random_password.backup.result
}

output "active_password" {
  value = var.primary ? random_password.primary.result : random_password.backup.result
}