resource "google_container_cluster" "primary" {
  name                     = var.cluster_name
  location                 = var.cluster_location
  remove_default_node_pool = var.remove_default_node_pool
  initial_node_count       = var.initial_node_count
  network                  = google_compute_network.main.self_link
  subnetwork               = google_compute_subnetwork.private.self_link
  logging_service          = var.logging_service
  monitoring_service       = var.monitoring_service
  networking_mode          = var.networking_mode

  node_locations = var.node_locations

  addons_config {
    http_load_balancing {
      disabled = var.http_load_balancing
    }
    horizontal_pod_autoscaling {
      disabled = var.horizontal_pod_autoscaling
    }
  }

  release_channel {
    channel = var.release_channel
  }

  workload_identity_config {
    workload_pool = "${lower(var.project)}.svc.id.goog"
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = var.cluster_secondary_range_name
    services_secondary_range_name = var.services_secondary_range_name
  }

  private_cluster_config {
    enable_private_nodes    = var.enable_private_nodes
    enable_private_endpoint = var.enable_private_endpoint
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  }
}