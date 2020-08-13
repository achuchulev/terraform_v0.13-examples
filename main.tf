terraform {
  required_providers {
    null = {
      source  = "registry.terraform.io/hashicorp/null"
      version = "~> 2.0"
    }
  }
}

module "test" {
  source = "./modules/null-module"
  env    = "test"
}
