variable "location" {
  type        = string
  default     = "eastus"
  description = "location to create resource"
}

variable "subnet_names" {
  type    = list(string)
  default = ["web", "app", "db"]
}

variable "vnet_range" {
  type        = list(string)
  default     = ["192.168.0.0/16"]
  description = "cidr range of vnet"
}

variable "names" {
  type = object({
    resource_group = string
    vnet           = string
  })
  default = {
    resource_group = "ntier-rg"
    vnet           = "ntier-vnet"
  }
}