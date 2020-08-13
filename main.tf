module "test" {
  source = "./modules/null-module"
  env    = "test"
}

resource "null_resource" "multi_env" {
    provisioner "local-exec" {
    command = "echo This is a test!"
  }
}
