variable "aws_access_key" {
  type        = string
  description = "AWS access key"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
  sensitive   = true
}

variable "aws_region" {
  type        = string
  description = "AWS region to use for resources"
  default     = "us-east-1"
}

variable "vpc_subnet_cidr_block" {
  type        = lis(string)
  description = "CIDR block for Subnets in VPC"
  default     = ["10.0.0.0/16", "10.0.0.0/24"]
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames"
  default     = true
}

variable "company" {
  type        = string
  description = "Company name"
  default     = "Globomantics"
}

variable "project" {
  type       = string
  desciption = "Project name"
}

variable "billing_code" {
  type        = string
  description = "Billing code"
}
