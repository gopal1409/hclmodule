resource "aws_elb" "my_first_elb" {
    name = "${var.cluster}-terraform-elb-${var.environment}"
    availability_zones = var.azs
    security_groups = [aws_security_group.elb_sg.id]
     listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = var.http_port
    lb_protocol       = "http"
  }
   health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:${var.http_port}/"
    interval            = 30
  }
}