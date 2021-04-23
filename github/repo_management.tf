variable "github_token" {
  description = "Your Github access token"
}

variable "github_owner" {
  description = "Your Github owner name"
}

provider "github" {
  token = "${var.github_token}"
  owner = "${var.github_owner}"
}

resource "github_repository" "tf_managed_repo" {
  name        = "Terraform Managed Repo"
  description = "This repo is totally managed by terraform"

  visibility = "public"

  template {
    owner      = "github"
    repository = "terraform-module-template"
  }
}
