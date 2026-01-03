resource "aws_lb" "this" {
  name               = "web-alb"
  load_balancer_type = "application"
  internal           = false

  subnets         = var.subnets
  security_groups = [var.sg]
}

resource "aws_lb_target_group" "web" {
  name     = "web-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id  = var.vpc_id

  health_check {
    path = "/"
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
