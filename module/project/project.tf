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

resource "google_project_service" "compute" {
  project = var.project
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

resource "google_project_service" "container" {
  project = var.project
  service = "container.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}