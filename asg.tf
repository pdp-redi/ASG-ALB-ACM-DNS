# template for ec2 
resource "aws_launch_template" "launch_template" {
  name          = "${var.env}-launch-template"
  image_id      = var.ami
  instance_type = var.instance_type
  network_interfaces {
    device_index    = 0
    security_groups = [aws_security_group.asg_security_group.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "${var.env}-asg-ec2"
    }
  }
  user_data = filebase64("user_data.sh")
}

# auto scaling group
resource "aws_autoscaling_group" "auto_scaling_group" {
  name             = "my-autoscaling-group"
  desired_capacity = 4
  max_size         = 5
  min_size         = 3
  vpc_zone_identifier = flatten([
    aws_subnet.private_subnet.*.id,
  ])
  target_group_arns = [
    aws_lb_target_group.target_group.arn,
  ]
  launch_template {
    id      = aws_launch_template.launch_template.id
    version = "$Latest"
  }
}