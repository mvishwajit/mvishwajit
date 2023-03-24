variable "subscription_id" {
    type= string
}
variable "client_id" {
    description = "The client ID to be used to connect to Azure"
    type = string
}
variable "client_secret" {
    description = "The client secret to be used to connect to Azure"
    type = string
}
variable "tenant_id" {
    description = "The tenant ID to be used to connect to Azure"
    type = string
}
variable "rgname" {
type = string
validation {
    condition     = length(regexall("^[a-zA-Z0-9]{5}$", var.rgname)) == 1
    error_message = "The resource group name must be exactly 5 alphanumeric characters long."
  }
}
variable "storage_account_tiers" {
  type = list(string)
  default = ["Standard", "Premium"]
}