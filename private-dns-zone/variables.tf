variable "pdnszone_location" {
  type    = string
  default = "eastus2"

  validation {
    condition     = contains(["eastus2"], var.pdnszone_location)
    error_message = "The location must be 'eastus2'."
  }
}

variable "env" {
  type    = string
  default = "prod"
}

variable "pdnszone_name" {
  type        = string
  default     = "privatelink.azurecr.io"
  validation {
    condition     = contains(["aks", "sqlmi", "mysqlflexserver", "acr"], var.pdnszone_name)
    error_message = "this variable can take either aks, acr, sqlmi or mysqlflexserver as inputs only'."
  }
}

variable "pdz_vl_name" {
  type = string
}

variable "rg_name" {
  type = string
}

variable "vnet_id" {
  type = string
}

