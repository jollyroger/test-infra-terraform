resource "tls_private_key" "bastion_ecdsa_key" {
  for_each    = toset(var.environments)
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}

resource "tls_private_key" "bastion_rsa_key" {
  for_each  = toset(var.environments)
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "tls_private_key" "bastion_ed25519_key" {
  for_each  = toset(var.environments)
  algorithm = "ED25519"
}
