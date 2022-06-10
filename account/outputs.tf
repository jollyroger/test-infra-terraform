output "config" {
  description = "Per-platform settings"
  value       = local.config
  sensitive   = false
}

output "bastion_public_keys" {
  description = "Bastion public keys for each environment"
  value       = local.bastion_public_keys
  sensitive   = false
}

output "bastion_private_keys" {
  description = "Bastion private keys for each environment"
  value       = local.bastion_private_keys
  sensitive   = true
}
