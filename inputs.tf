variable "location" {
  type        = string
  default     = "eastus"
  description = "location to create resource"
}

variable "vnet-range" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "cidr range of vnet"
}