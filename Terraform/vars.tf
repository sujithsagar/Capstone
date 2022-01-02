variable "region" {
    type = string
    description = "Region for VPC creation"
    default = "us-east-1"
}

variable "VPC_Name" {
    type = string
    description = "Name of the VPC"
    default = "Capstone_Project"
}

variable "CIDR" {
  type = string
  description = "VPC CIDR for the capstone project"
  default = "10.0.0.0/16"
}

variable "Private_Subnet_a" {
  type = string
  description = "Private subnet CIDR for availability zone a"
  default = "10.0.1.0/24"
}

variable "Private_Subnet_b" {
  type = string
  description = "Private subnet CIDR for availability zone b"
  default = "10.0.2.0/24"
}

variable "Public_Subnet_a" {
  type = string
  description = "Public subnet CIDR for availability zone a"
  default = "10.0.3.0/24"
}

variable "Public_Subnet_b" {
  type = string
  description = "Public subnet CIDR for availability zone b"
  default = "10.0.4.0/24"
}
