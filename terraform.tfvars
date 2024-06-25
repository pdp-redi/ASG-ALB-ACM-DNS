aws_region          = "ap-south-1"
env                 = "demo"
ami                 = "ami-0f58b397bc5c1f2e8"
instance_type       = "t2.micro"
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
domain_name         = "abcdfg.com"