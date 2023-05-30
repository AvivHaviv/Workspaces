//user list
variable "users_id" {
  description = "The list of the user which the module will create workspaces with."
  type = list(string)
}

//vpc
variable "vpc_id" {
  description = "id of the vpc"
  type        = string
  default = "main_vpc"
}

variable "vpc_cidr_block" {
  description = "cidr_block for the vpc"
  type        = string
  default     = "10.0.0.0/16"
}

//subnet of the developers team
variable "subnet_cidr_block" {
  description = "cidr_block for the developers subnet"
  type        = string
  default     = "10.0.1.0/24"
}

//ip_group of the developers team
variable "ip_group_source" {
  description = "cidr_block that define where users will connect from"
  type        = string
  default     = "10.10.10.10/16"
}

//ip_group_contractors of the developers team
variable "ip_group_contractors_source" {
  description = "id of the vpc"
  type        = string
  default     = "11.11.11.11/16"
}