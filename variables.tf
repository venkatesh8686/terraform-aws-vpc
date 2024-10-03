variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "ip create 256 servers ips"
}


variable "enable_dns_hostnames" {

      default = true
}

variable "project_name" {
      type = string
}

variable "environmemt"  {
      type = string

}

#optinal
variable "tags" {
  default  =  {}  
}
variable "comman_tags"{
  default = {}

}

variable "vpc_tags" {
  default = {}
}

variable "igw_tags" {
  default = {}
}

variable "public_subnets_cidrs" {

  type = list
  validation {
    condition = length(var.public_subnets_cidrs) == 2
    error_message = "please provied 2 valid public subnets dirs"
  }

}

variable "public_subnet_tags" {
    default = {}
}


variable "private_subnets_cidrs" {

  type = list
  validation {
    condition = length(var.private_subnets_cidrs) == 2
    error_message = "please provied 2 valid private subnets dirs"
  }

}

variable "private_subnet_tags" {
    default = {}
}


variable "database_subnets_cidrs" {

  type = list
  validation {
    condition = length(var.database_subnets_cidrs) == 2
    error_message = "please provied 2 valid database subnets dirs"
  }

}

variable "database_subnet_tags" {
    default = {}
}

variable "db_subnet_group_tags" {
  default = {}
}

variable "aws_eip_tags" {
  default = {}
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_requried" {
    type = bool
    default = false
}

variable "peerring_tags" {
  default = {}
}