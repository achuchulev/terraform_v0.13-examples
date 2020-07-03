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
