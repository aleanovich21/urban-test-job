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
  }
}

