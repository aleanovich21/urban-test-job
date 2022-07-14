#Enable kubernetes API
resource "google_project_service" "project" {
  project = var.project
  service = var.service

  timeouts {
    create = var.timeouts_create
    update = var.timeouts_update
  }

  disable_dependent_services = var.disable_dependent_services
}

#Create storage for kubernetes tfstate
