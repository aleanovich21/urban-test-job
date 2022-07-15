variable "project" {
    description = "Project name"
    type = string
    default = ""
}

variable "service" {
    description = "Service name"
    type = string
    default = ""
}

variable "timeouts_create" {
    description = "Timeout create"
    type = string
    default = ""
}

variable "timeouts_update" {
    description = "Timeout update"
    type = string
    default = ""
}

variable "disable_dependent_services" {
    description = "Disable dependent services"
    type = bool
    default = true
}