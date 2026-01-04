resource "aws_lb" "this" {
  name               = "web-alb"
  load_balancer_type = "application"
  internal           = false

  subnets         = var.subnets
  security_groups = [var.sg]
}

resource "aws_lb_target_group" "web" {
  name     = "three-tier-target-webapp"
  port     = 80
  protocol = "HTTP"
  vpc_id  = var.vpc_id

  health_check {
    path = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2

  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.this.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web.arn
  }
}
