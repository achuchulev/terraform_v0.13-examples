terraform {
  required_providers {
    git = {
      source = "innovationnorway/git"
      version = "0.1.2"
    }
  }
}

provider "git" {}

data "git_repository" "example" {
  path = path.root
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
