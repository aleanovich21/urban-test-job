resource "google_project_service" "compute" {
  service = var.google_project_service_compute
}

resource "google_project_service" "container" {
  service = var.google_project_service_container
}

resource "google_compute_network" "main" {
  name                            = var.google_compute_network_name
  routing_mode                    = var.routing_mode
  auto_create_subnetworks         = var.auto_create_subnetworks
  mtu                             = var.mtu
  delete_default_routes_on_create = var.delete_default_routes_on_create

  depends_on = [
    google_project_service.compute,
    google_project_service.container
  ]
}