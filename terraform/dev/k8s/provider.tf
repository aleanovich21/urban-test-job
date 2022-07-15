provider "google" {
  project = "urban-andreileo"
  region  = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "urban-test-tfstate"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
}
