resource "google_compute_router_nat" "nat" {
  name   = var.router_nat_name
  router = google_compute_router.router.name
  region = var.region

  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
  nat_ip_allocate_option             = var.nat_ip_allocate_option

  subnetwork {
    name                    = google_compute_subnetwork.private.id
    source_ip_ranges_to_nat = var.source_ip_ranges_to_nat
  }

  nat_ips = [google_compute_address.nat.self_link]
}

resource "google_compute_address" "nat" {
  name         = var.address_nat_name
  address_type = var.address_type
  network_tier = var.network_tier

  depends_on = [google_project_service.compute]
}