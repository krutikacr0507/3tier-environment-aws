variable "aws_region" {
  description = "AWS region for the resources."
  default     = "us-west-2"
}

variable "aws_accesskey" {
  description = "AWS access key for the resources."
  default     = "<my-access-key>"
}

variable "aws_secretkey" {
  description = "AWS secret key for the resources."
  default     = "<my-secret-key>"
}

variable "aws_profile" {
  description = "AWS secret key for the resources."
  default     = "<aws-profile>"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

