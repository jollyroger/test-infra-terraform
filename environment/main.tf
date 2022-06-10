module "lookups" {
  source = "./module-account-lookups"
  environment = terraform.workspace
}
