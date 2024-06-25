# 🎯 VPC, EC2 Auto Scaling, Application Load Balancer, ACM(certificate manager) & Route53(dns) using terraform

![Architecture of the application](architecture.gif) 

- In this project we are going provision a VPC with 2 pubic subnets & 2 private subnets, Internet Gateway, EIP & NAT gateway, Route table(public & private) and its association.

- auto scaling using launch template(ec2)

- Application Load balancer(listeners, target groups)

- Security groups for Application load balancer and auto scaling.

- ACM(certificate manager) to make the applocation secure.

- Route53(DNS) it will map the loadbalancer to domain name.