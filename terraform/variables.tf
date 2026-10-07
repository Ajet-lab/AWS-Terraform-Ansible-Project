variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed."
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Name used to identify project resources."
  type        = string
  default     = "terraform-ansible-project"
}

variable "instance_type" {
  description = "EC2 instance type used for the servers."
  type        = string
  default     = "t3.micro"
}

variable "vpc_cidr" {
  description = "CIDR block for the project VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the project subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "ssh_key_name" {
  description = "Name of the existing AWS EC2 key pair."
  type        = string
}

variable "admin_ip_cidr" {
  description = "Your public IP address in CIDR notation for SSH access."
  type        = string
}