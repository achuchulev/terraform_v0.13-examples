variable "env" {}

resource "null_resource" "multi_env" {
    provisioner "local-exec" {
    command = "echo This is ${var.env} environment!"
  }
}
