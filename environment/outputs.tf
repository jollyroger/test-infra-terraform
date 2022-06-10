output "bastion_rsa_key" {
  value = module.lookups.bastion_public_keys["rsa"]
}
