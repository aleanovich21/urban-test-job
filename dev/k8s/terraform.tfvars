#Global parametrs
project = ""
region = "us-central1"
env = "dev"

#Private subnet
private_subnet = "private"
private_cidr_range = "10.0.0.0/18"
private_ip_google_access = true

range_name_pod = "k8s-pod-range"
range_name_service = "k8s-service-range"
ip_cidr_range_pod = "10.48.0.0/14"
ip_cidr_range_service = "10.52.0.0/20"

#VPC
google_project_service_compute = "compute.googleapis.com"
google_project_service_container = "container.googleapis.com"

google_compute_network_name = "main"
routing_mode = "REGIONAL"
auto_create_subnetworks = false
mtu = "1460"
delete_default_routes_on_create = false

#Router
router_name = "router"

#NAT
router_nat_name = "nat"
source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
nat_ip_allocate_option = "MANUAL_ONLY"
source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
address_nat_name = "nat"
address_type = "EXTERNAL"
network_tier = "PREMIUM"

#Firewall
firewall_name = "allow-ssh"
protocol = "tcp"
allow_ports = ["22"]

#Kubernetes
cluster_name = "primary"
cluster_location = "us-central1-a"
remove_default_node_pool = true
initial_node_count = 1
logging_service = "logging.googleapis.com/kubernetes"
monitoring_service = "monitoring.googleapis.com/kubernetes"
networking_mode = "VPC_NATIVE"
node_locations = ["us-central1-b"]
http_load_balancing = true
horizontal_pod_autoscaling = false
release_channel = "REGULAR"
cluster_secondary_range_name = "k8s-pod-range"
services_secondary_range_name = "k8s-service-range"
enable_private_nodes = true
enable_private_endpoint = false
master_ipv4_cidr_block = "172.16.0.0/28"

#Node-pools
#Google service account ID
google_service_account_id_kubernetes = "kubernetes"
#general node config
google_container_node_pool_general_name = "general"
node_count = 1
auto_repair_general = true
auto_upgrade_general = true
preemptible_general = false
machine_type_general = "e2-small"
lable_general = "general"
#spot nodes config
google_container_node_pool_spot_name = "spot"
auto_repair_spot = true
auto_upgrade_spot = true
min_node_count = 0
max_node_count = 5
preemptible_spot = true
machine_type_spot = "e2-small"
lable_spot = "devops"
taint = [ {
  effect = "NO SCHEDULE"
  key = "spot"
  value = "instance type"
} ]
