# Terraform v0.13: Module with for_each

## Requirements:
- terraform v0.13
- git

### Terraform v0.13 introduces a `for_each` capability for entire modules, allowing a single module block to produce multiple module instances systematically:

#### In this example `multienv` module will produce three module instances for __DEV__, __TEST__, __QA__ and __PROD__

```
variable "environment" {
  type    = set(string)
  default = ["DEV","TEST","QA","PROD"]
}

module "multienv" {
  source   = "./modules/null-module"
  for_each = var.environment
  env      = each.value
}
```

#### Usage

- $ git clone https://github.com/achuchulev/terraform_v0.13-examples.git
- $ cd for_each
- $ terraform init
- $ terraform plan/apply
