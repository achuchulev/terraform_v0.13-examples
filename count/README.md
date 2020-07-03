# Terraform v0.13: Module with count

## Requirements:
- terraform v0.13
- git

### Terraform v0.13 introduces a `count` capability for entire modules, allowing a single module block to produce multiple module instances systematically:

#### In this example `multienv` module will produce three module instances for __DEV__, __TEST__, __QA__ and __PROD__

```
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
```

#### Usage

- $ git clone https://github.com/achuchulev/terraform_v0.13-examples.git
- $ cd count
- $ terraform init
- $ terraform plan/apply
