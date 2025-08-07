resource "aws_lb_target_group" "this" {
  name        = var.name
  port        = var.port
  protocol    = var.protocol
  vpc_id      = var.vpc_id
  target_type = var.target_type

  health_check {
    interval            = var.health_check_interval
    path                = var.health_check_path
    healthy_threshold   = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [lambda_multi_value_headers_enabled, proxy_protocol_v2]
  }
}
