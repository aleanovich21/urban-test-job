resource "google_project_service" "project" {
  project = "urban-andreileo"
  service = "iam.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}