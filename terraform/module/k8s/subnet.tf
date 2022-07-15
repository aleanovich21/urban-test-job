resource "google_compute_subnetwork" "private" {
  name                     = var.private_subnet
  ip_cidr_range            = var.private_cidr_range
  region                   = var.region
  network                  = google_compute_network.main.id
  private_ip_google_access = var.private_ip_google_access

  secondary_ip_range {
    range_name    = var.range_name_pod
    ip_cidr_range = var.ip_cidr_range_pod
  }
  secondary_ip_range {
    range_name    = var.range_name_service
    ip_cidr_range = var.ip_cidr_range_service
  }
}