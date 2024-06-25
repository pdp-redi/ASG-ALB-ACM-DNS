variable "aws_region" {
  description = "region name"
  type        = string
  #default     = "ap-south-1"
}

variable "env" {
  description = "demo-asg-alb-acm-route53"
  type        = string
  #default     = "demo"
}

variable "ami" {
  description = "ami of ec2 instance"
  type        = string
  #default     = "ami-0f58b397bc5c1f2e8" # ap-south-1(ubuntu 24.04 LTS)
}


variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  #default     = "t2.micro"
}


variable "vpc_cidr" {
  description = "vpc cidr block"
  type        = string
  #default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "public subnet cidr block"
  type        = list(string)
  #default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr" {
  description = "private subnet cidr block"
  type        = list(string)
  #default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "domain_name" {
  description = "domain_name"
  type        = string
  #default     = "google.com" #eg:domain
}