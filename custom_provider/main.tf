variable "repo_url" {
  type        = string
  description = "The repository URL. Example: git@github.com:octocat/Hello-World.git"
}

variable "private_key" {
  type        = string
  description = "A PEM-encoded private key."
}

provider "git" {
  private_key = var.private_key
}

data "git_repository" "example" {
  url = var.repo_url
}

output "repository" {
  value = data.git_repository.example
}
