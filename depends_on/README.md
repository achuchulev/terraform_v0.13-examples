# Terraform v0.13: Module with count

## Requirements:
- terraform v0.13
- git

### Terraform v0.13 introduces a `depends_on` capability for entire modules, allowing an explicit dependency of a single module to other resources:

#### In this example `multienv` module will depend to the `null_resource` named `main`:

```
variable "environment" {
  type    = string
  default = "lab"
}

resource "null_resource" "main" {
  provisioner "local-exec" {
    command = "echo This is an example of `depends_on` usage with modules!"
  }
}

module "multienv" {
  source     = "./modules/null-module"
  depends_on = [null_resource.main]
  env        = var.environment
}
```

#### Usage

- $ git clone https://github.com/achuchulev/terraform_v0.13-examples.git
- $ cd depends_on
- $ terraform init
- $ terraform plan/apply
