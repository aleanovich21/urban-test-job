resource "google_compute_firewall" "allow-ssh" {
  name    = var.firewall_name
  network = google_compute_network.main.name

  allow {
    protocol = var.protocol
    ports    = var.allow_ports
  }

  source_ranges = ["0.0.0.0/0"]
}