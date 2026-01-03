resource "aws_launch_template" "this" {
  name_prefix   = "asg-lt-"
  image_id      = data.aws_ami.amazon_linux_arm.id
  instance_type = var.instance_type

  vpc_security_group_ids = [var.sg]

  user_data = base64encode(var.user_data)

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "this" {
  min_size         = var.min
  max_size         = var.max
  desired_capacity = var.desired
  vpc_zone_identifier = var.subnets

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }

  lifecycle {
    create_before_destroy = true
  }
}



