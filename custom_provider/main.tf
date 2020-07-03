variable "github_token" {}

terraform {
  required_providers {
    git = {
      source  = "innovationnorway/git"
      version = "0.1.2"
    }
  }
}

resource "null_resource" "main" {
  provisioner "local-exec" {
    command = "echo This is an example of `3rd party provider` usage with TF v0.13!"
  }
}


provider "git" {
  username = "x-access-token"
  password = var.github_token
}

data "git_repository" "example" {
  url = "https://github.com/achuchulev/terraform-aws-ec2.git"
}

output "branch" {
  value = data.git_repository.example.branch
}

output "commit" {
  value = substr(data.git_repository.example.commit_sha, 0, 7)
}

output "tag" {
  value = data.git_repository.example.tag
}
