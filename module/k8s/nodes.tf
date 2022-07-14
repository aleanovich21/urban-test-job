resource "google_service_account" "kubernetes" {
  account_id = var.google_service_account_id_kubernetes
}

resource "google_container_node_pool" "general" {
  name       = var.google_container_node_pool_general_name
  cluster    = google_container_cluster.primary.id
  node_count = var.node_count

  management {
    auto_repair  = var.auto_repair_general
    auto_upgrade = var.auto_upgrade_general
  }

  node_config {
    preemptible  = var.preemptible_general
    machine_type = var.machine_type_general

    labels = {
      role = var.lable_general
    }

    service_account = google_service_account.kubernetes.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

resource "google_container_node_pool" "spot" {
  name    = var.google_container_node_pool_spot_name
  cluster = google_container_cluster.primary.id

  management {
    auto_repair  = var.auto_repair_spot
    auto_upgrade = var.auto_upgrade_spot
  }

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  node_config {
    preemptible  = var.preemptible_spot
    machine_type = var.machine_type_spot

    labels = {
      team = var.lable_spot
    }

    taint {
      key    = "instance_type"
      value  = "spot"
      effect = "NO_SCHEDULE"
    }

    service_account = google_service_account.kubernetes.email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}