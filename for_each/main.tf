variable "environment" {
  type = set(string)
  default = ["DEV","TEST","QA","PROD"]
}

module "multienv" {
  source   = "../modules/null-module"
  for_each = var.environment
  env      = each.value
}
