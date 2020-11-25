terraform {
  backend "remote" {
    organization = "terraform-consul-vault"

    workspaces {
      name = "terraform"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
