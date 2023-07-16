variable "vpc_id" {
  description = "ID of the VPC."
}

variable "public_subnet_id" {
  description = "ID of the public subnet."
}

variable "public_security_group_id" {
  description = "ID of the VPC security group associated with the public subnet."
}

variable "private_subnet_id" {
  description = "ID of the private subnet."
}
