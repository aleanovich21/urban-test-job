# Enable Kubernetes Engine API
# https://console.cloud.google.com/marketplace/product/google/container.googleapis.com?returnUrl=%2Fkubernetes%2Flist%2Foverview%3Freferrer%3Dsearch%26authuser%3D0%26project%3Durban-andreileo&authuser=0&project=urban-andreileo

module "vpc" {
    source = "../../module/project"

    project = var.project
    service = var.service
    timeouts_create = var.timeouts_create
    timeouts_update = var.timeouts_update
    disable_dependent_services = var.disable_dependent_services
}