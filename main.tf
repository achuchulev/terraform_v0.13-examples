variable "environment" {
  type = map
  default = {
    "0" = "DEV"
    "1" = "TEST"
    "2" = "QA"
    "3" = "PROD"
  }
}

module "multienv" {
  source = "./modules/null-module"
  count  = length(var.environment)
  env    = lookup(var.environment, count.index)
}
