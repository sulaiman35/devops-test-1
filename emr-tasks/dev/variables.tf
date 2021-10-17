// Global VPC Variables

variable "region" {
    description = "Deployment Region"
    type    = string
    default = "us-east-1"
}

variable "tags" {
  default     = {}
  description = "Please supply the Environment key at least. Name will be supplied here."
  type        = map
}

// VPC Variables
variable "vpc_name" {
  description = "Default VPC stage name"
  default = "DevOps-vpc"
  type    = string
}

variable "cidr" {
  description = "cidr"
  default = "10.27.0.0/16"
  type    = string
}

variable "azs" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
  type    = list(string)
}

variable "public_subnets" {
  type    = list(string)
  default = [
    "10.27.4.0/24",
    "10.27.5.0/24",
    "10.27.6.0/24",
  ]
}

variable "private_subnets" {
  default = [
    "10.27.1.0/24",
    "10.27.2.0/24",
    "10.27.3.0/24",
  ]
  type = list(string)
}

variable "enable_nat_gateway" {
  default     = false
  type        = bool
}

variable "single_nat_gateway" {
  default     = false
  type        = bool
}

variable "one_nat_gateway_per_az" {
  default     = false
  type        = bool
}

variable "enable_dns_hostnames" {
  default     = true
  type        = bool
}

variable "enable_dns_support" {
  default     = true
  type        = bool
}

variable "enable_vpn_gateway" {
  default     = true
  type        = bool
}

variable "enable_dhcp_options" {
  default     = true
  type        = bool
}




// EMR_Variables
variable "namespace" {
    description = "Name Space is a type of environemt"
    default = "dev"
    type    = string
}

variable "environment" {
    description = "Deployment environment"
    type    = string
    default = "Development"
}

variable "stage" {
  type    = string
  default = "Development"
}

variable "name" {
  type    = string
  default = "EMR-Dev"
}

variable "ebs_root_volume_size" {
  type    = number
  default = 30
}

variable "visible_to_all_users" {
  type    = bool
  default = false
}

variable "release_label" {
  type    = string
  default = "emr-5.25.0"
}

variable "applications" {
  type    = list
  default = ["Hive", "Spark"]
}

variable "configurations_json" {
  type    = string
  default     = ""
}

variable "core_instance_group_instance_type" {
  type    = string
  default     = "m5.xlarge"
}

variable "core_instance_group_instance_count" {
  type    = number
  default     = 1
}

variable "core_instance_group_ebs_size" {
  type    = number
  default     = 30
}

variable "core_instance_group_ebs_type" {
  type    = string
  default     = "gp2"
}

variable "core_instance_group_ebs_volumes_per_instance" {
  type    = number
  default     = 1
}

variable "master_instance_group_instance_type" {
  type    = string
  default     = "m5.xlarge"
}
variable "master_instance_group_instance_count" {
  type    = number
  default     = 1
}

variable "master_instance_group_ebs_size" {
  type    = number
  default     = 30
}

variable "master_instance_group_ebs_type" {
  type    = string
  default     = "gp2"
}

variable "master_instance_group_ebs_volumes_per_instance" {
  type    = number
  default     = 1
}

variable "create_task_instance_group" {
  type    = bool
  default     = true
}

variable "key_name" {
  type    = string
  default     = "first-key"
}

variable "task_instance_group_instance_type" {
  type =  string
  default = "m5.xlarge"
}

