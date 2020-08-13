terraform {
  required_providers {
    null = {
      # The "hashicorp" namespace is the new home for the HashiCorp-maintained
      # provider plugins.
      #
      # source is not required for the hashicorp/* namespace as a measure of
      # backward compatibility for commonly-used providers, but recommended for
      # explicitness.
      source  = "hashicorp/null"
      version = "~> 2.0"
    }
}

module "test" {
  source = "./modules/null-module"
  env    = "test"
}
