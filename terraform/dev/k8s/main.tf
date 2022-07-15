# Enable Kubernetes Engine API
# https://console.cloud.google.com/marketplace/product/google/container.googleapis.com?returnUrl=%2Fkubernetes%2Flist%2Foverview%3Freferrer%3Dsearch%26authuser%3D0%26project%3Durban-andreileo&authuser=0&project=urban-andreileo

module "k8s" {
    source = "../../module/k8s"

    region = var.region
    project = var.project
    env = var.env

    private_subnet = var.private_subnet
    private_cidr_range = var.private_cidr_range
    private_ip_google_access = var.private_ip_google_access

    range_name_pod = var.range_name_pod
    range_name_service = var.range_name_service
    ip_cidr_range_pod = var.ip_cidr_range_pod
    ip_cidr_range_service = var.ip_cidr_range_service

    google_project_service_compute = var.google_project_service_compute
    google_project_service_container = var.google_project_service_container

    google_compute_network_name = var.google_compute_network_name
    routing_mode = var.routing_mode
    mtu = var.mtu
    delete_default_routes_on_create = var.delete_default_routes_on_create

    router_name = var.router_name

    router_nat_name = var.router_nat_name
    source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
    nat_ip_allocate_option = var.nat_ip_allocate_option
    source_ip_ranges_to_nat = var.source_ip_ranges_to_nat
    address_nat_name = var.address_nat_name
    address_type = var.address_type
    network_tier = var.network_tier

    firewall_name = var.firewall_name
    protocol = var.protocol
    allow_ports = var.allow_ports
    
    cluster_name = var.cluster_name
    cluster_location = var.cluster_location
    remove_default_node_pool = var.remove_default_node_pool
    initial_node_count = var.initial_node_count
    logging_service = var.logging_service
    monitoring_service = var.monitoring_service
    networking_mode = var.networking_mode
    node_locations = var.node_locations
    http_load_balancing = var.http_load_balancing
    horizontal_pod_autoscaling = var.horizontal_pod_autoscaling
    release_channel = var.release_channel
    cluster_secondary_range_name = var.cluster_secondary_range_name
    services_secondary_range_name = var.services_secondary_range_name
    enable_private_nodes = var.enable_private_nodes
    enable_private_endpoint = var.enable_private_endpoint
    master_ipv4_cidr_block = var.master_ipv4_cidr_block

    google_service_account_id_kubernetes = var.google_service_account_id_kubernetes
    google_container_node_pool_general_name = var.google_container_node_pool_general_name
    node_count = var.node_count
    auto_repair_general = var.auto_repair_general
    auto_upgrade_general = var.auto_upgrade_general
    preemptible_general = var.preemptible_general
    machine_type_general = var.machine_type_general
    lable_general = var.lable_general
    google_container_node_pool_spot_name = var.google_container_node_pool_general_name
    auto_repair_spot = var.auto_repair_spot
    auto_upgrade_spot = var.auto_upgrade_spot
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
    preemptible_spot = var.preemptible_spot
    machine_type_spot = var.machine_type_spot
    lable_spot = var.lable_spot
    # taint = var.taint
    
}