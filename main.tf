
data "aws_region" "this" {}


resource "aws_eip" "this" {
  count = length(var.subnet_ids)
}

# Network Load Balancer for apiservers and ingress
resource "aws_lb" "this" {
  name = var.id

  load_balancer_type = "network"

  internal = false

  dynamic "subnet_mapping" {
    for_each = var.subnet_ids

    content {
      subnet_id     = subnet_mapping.value
      allocation_id = aws_eip.this.*.id[subnet_mapping.key]
    }
  }

  enable_cross_zone_load_balancing = true
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  protocol          = "TCP"
  port              = 9933

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}

resource "aws_lb_target_group" "this" {
  name        = var.id
  vpc_id      = var.vpc_id
  target_type = "instance"

  protocol = "TCP"
  port     = 9933

  health_check {
    protocol = "TCP"
    port     = 5500

    # NLBs required to use same healthy and unhealthy thresholds
    healthy_threshold   = 3
    unhealthy_threshold = 3

    # Interval between health checks required to be 10 or 30
    interval = 10
  }
}

//resource "aws_autoscaling_attachment" "this" {
//  autoscaling_group_name = var.autoscaling_group_name
//  alb_target_group_arn = aws_lb_target_group.this.arn
//}

