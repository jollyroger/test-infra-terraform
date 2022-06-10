output "bastion_public_keys" {
  value = data.terraform_remote_state.account.outputs.bastion_public_keys[var.environment]
}
