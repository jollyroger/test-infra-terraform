data "terraform_remote_state" "account" {
  backend = "local"

  config = {
    path = "${path.module}/../account/terraform.tfstate"
  }
}

output "test" {
  value = data.terraform_remote_state.account.outputs.bastion_public_keys[terraform.workspace]
}
