// Global
variable "region" {
    description = "Deployment Region"
    default = ""
}

variable "environment" {
    description = "Deployment environment"
}

variable "tags" {
  default     = {}
  description = "Please supply the Environment key at least. Name will be supplied here."
  type        = map
}

// VPC Variables
variable "vpc_name" {
  description = "Default VPC stage name"
}

variable "cidr" {
  description = "cidr"
  default     = []
}

variable "azs" {
  type    = list
  default = []
}

variable "public_subnets" {
  type    = list
  default = []
}

variable "private_subnets" {
  type    = list
  default = []
}

variable "enable_nat_gateway" {
  default     = null
}

variable "single_nat_gateway" {
  default     = null
}

variable "one_nat_gateway_per_az" {
  default     = null
}

variable "enable_dns_hostnames" {
  default     = null
}

variable "enable_dns_support" {
  default     = null
}

variable "enable_vpn_gateway" {
  default     = null
}

variable "enable_dhcp_options" {
  default     = null
}