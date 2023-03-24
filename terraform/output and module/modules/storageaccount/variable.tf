variable "storage_account_name" {
  type        = string
  description = "The name of the storage account"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "The location of the resource group"
}

variable "account_tier" {
  type        = string
  description = "The performance tier for the storage account"
}

variable "account_replication_type" {
  type        = string
  description = "The replication type for the storage account"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to the resource"
}
