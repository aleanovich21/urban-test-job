#Provider 
variable "project" {
    description = "Project name"
    type = string
    default = ""
}

variable "region" {
    description = "Specify project region"
    type = string
    default     = ""
}

variable "env" {
    description = "Environment name"
    type = string
    default = ""
}

#Subnet
variable "private_subnet" {
    description = "Private subnet name"
    type = string
    default = ""
}

variable "private_cidr_range" {
    description = "Private IP cidr range"
    type = string
    default = ""
}

variable "private_ip_google_access" {
    description = "Private IP google access"
    type = bool
    default = true
}

variable "range_name_pod" {
    description = "Pod IP cidr range name"
    type = string
    default = ""
}

variable "range_name_service" {
    description = "Service IP cidr range name"
    type = string
    default = ""
}

variable "ip_cidr_range_pod" {
    description = "Pod IP cidr range"
    type = string
    default = ""
}

variable "ip_cidr_range_service" {
    description = "Service IP cidr range"
    type = string
    default = ""
}

#VPC
variable "google_project_service_compute" {
    description = "Google project service compute"
    type = string
    default = ""
}

variable "google_project_service_container" {
    description = "Google project service container"
    type = string
    default = ""
}

variable "google_compute_network_name" {
    description = "Google compute network name"
    type = string
    default = ""
}

variable "routing_mode" {
    description = "Routing mode"
    type = string
    default = ""
}

variable "auto_create_subnetworks" {
    description = "Auto create subnetworks"
    type = bool
    default = false
}

variable "mtu" {
    description = "mtu"
    type = number
    default = 1460
}

variable "delete_default_routes_on_create" {
    description = "delete default routes on create"
    type = bool
    default = false
}

#Router
variable "router_name" {
    description = "Router name"
    type = string
    default = ""
}

#NAT
variable "router_nat_name" {
    description = "router NAT name"
    type = string
    default = ""
}

variable "source_subnetwork_ip_ranges_to_nat" {
    description = "Source subnetwork ip ranges to NAT"
    type = string
    default = ""
}

variable "nat_ip_allocate_option" {
    description = "NAT ip allocate option"
    type = string
    default = ""
}

variable "source_ip_ranges_to_nat" {
    description = "Source IP ranges to NAT"
    type = list(string)
    default = []
}

variable "address_nat_name" {
    description = "Address NAT name"
    type = string
    default = ""
}

variable "address_type" {
    description = "Address type"
    type = string
    default = ""
}

variable "network_tier" {
    description = "Network tier"
    type = string
    default = ""
}

#Firewall
variable "firewall_name" {
    description = "Firewall name"
    type = string
    default = ""
}

variable "protocol" {
    description = "Protocol TCP or UDP"
    type = string
    default = ""
}

variable "allow_ports" {
    description = "Allow ports"
    type = list(string)
    default = []
}

#Kubernetes
variable "cluster_name" {
    description = "Kubernetes cluster name"
    type = string
    default = ""
}

variable "cluster_location" {
    description = "Kubernetes available zone"
    type = string
    default = ""
}

variable "remove_default_node_pool" {
    description = "Remove default node pool"
    type = bool
    default = true
}

variable "initial_node_count" {
    description = "Node count"
    type = number
    default = 1
}

variable "logging_service" {
    description = "Logging service"
    type = string
    default = ""
}

variable "monitoring_service" {
    description = "Monitoring service"
    type = string
    default = ""
}

variable "networking_mode" {
    description = "Networking mode"
    type = string
    default = ""
}

variable "node_locations" {
    description = "Node locations"
    type = list(string)
    default = []
}

variable "http_load_balancing" {
    description = "Load Balancing"
    type = bool
    default = true
}

variable "horizontal_pod_autoscaling" {
    description = "Horizontal Pod Autoscaling"
    type = bool
    default = false
}

variable "release_channel" {
    description = "Release channel"
    type = string
    default = ""
}

variable "cluster_secondary_range_name" {
    description = "Cluster secondary range name"
    type = string
    default = ""
}

variable "services_secondary_range_name" {
    description = "Service secondary range name"
    type = string
    default = ""
}

variable "enable_private_nodes" {
    description = "Enable private nodes"
    type = bool
    default = true
}

variable "enable_private_endpoint" {
    description = "Enable private endpoint"
    type = bool
    default = false
}

variable "master_ipv4_cidr_block" {
    description = "Master cidr block"
    type = string
    default = ""
}

#Node_pools
variable "google_service_account_id_kubernetes" {
    description = "Kubernetes google service account id "
    type = string
    default = ""
}
#general
variable "google_container_node_pool_general_name" {
    description = "Name of container node pool"
    type = string
    default = ""
}

variable "node_count" {
    description = "Nodes count"
    type = number
    default = 1
}

variable "auto_repair_general" {
    description = "Auto repair in general"
    type = bool
    default = true
}

variable "auto_upgrade_general" {
    description = "Auto upgrade in general"
    type = bool
    default = true
}

variable "preemptible_general" {
    description = "Preemtible"
    type = bool
    default = false
}

variable "machine_type_general" {
    description = "Machine type for general"
    type = string
    default = ""
}

variable "lable_general" {
    description = "Lable for general"
    type = string
    default = ""
}
#spot
variable "google_container_node_pool_spot_name" {
    description = "Name of container node pool"
    type = string
    default = ""
}

variable "auto_repair_spot" {
    description = "Auto repair in spot"
    type = bool
    default = true
}

variable "auto_upgrade_spot" {
    description = "Auto upgrade in spot"
    type = bool
    default = true
}

variable "min_node_count" {
    description = "Minimum count of nodes"
    type = number
    default = 0
}

variable "max_node_count" {
    description = "Maximum count of nodes"
    type = number
    default = 5
}

variable "preemptible_spot" {
    description = "Preemtible"
    type = bool
    default = true
}

variable "machine_type_spot" {
    description = "Machine type for spot"
    type = string
    default = ""
}

variable "lable_spot" {
    description = "Lable for spot"
    type = string
    default = ""
}

variable "taint" {
    description = "Taint"
    type = list(object(
        {
            key = string
            value = string
            effect = string
        }
    ))
    default = [ {
      effect = "NO SCHEDULE"
      key = "spot"
      value = "instance type"
    } ]
}