locals {
  config = {
    for env in var.environments: 
      env => yamldecode(data.local_file.config[env].content)
  }

  bastion_public_keys = {
    for env in var.environments:
    env => {
      "ecdsa"   = tls_private_key.bastion_ecdsa_key[env].public_key_openssh
      "ed25519" = tls_private_key.bastion_ed25519_key[env].public_key_openssh
      "rsa"     = tls_private_key.bastion_rsa_key[env].public_key_openssh
    }
  }

  bastion_private_keys = {
    for env in var.environments:
    env => {
      "ecdsa"   = tls_private_key.bastion_ecdsa_key[env].private_key_openssh
      "ed25519" = tls_private_key.bastion_ed25519_key[env].private_key_openssh
      "rsa"     = tls_private_key.bastion_rsa_key[env].private_key_openssh
    }
  }
}
