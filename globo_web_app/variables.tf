variable "naming_prefix" {
  type        = string
  description = "Naming prefix for all resources"
  default     = "globoweb"
}

variable "aws_region" {
  type        = string
  description = "AWS region to use for resources"
  default     = "us-east-1"
}

variable "vpc_subnets_cidr_block" {
  type        = list(string)
  description = "CIDR block for Subnets in VPC"
  default     = ["10.0.0.0/24", "10.0.0.0/24"]
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_subnet_count" {
  type        = number
  description = "Number of subnets to create"
  default     = 2
}

variable "ngix_count" {
  type        = number
  description = "Number of ngix instances to create"
  default     = 2
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
  type        = string
  description = "Project name"
}

variable "billing_code" {
  type        = string
  description = "Billing code"
}
