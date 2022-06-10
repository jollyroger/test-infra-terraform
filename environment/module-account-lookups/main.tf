data "terraform_remote_state" "account" {
  backend = "local"

  config = {
    path = "${path.root}/../account/terraform.tfstate"
  }
}


