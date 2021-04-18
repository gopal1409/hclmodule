resource "aws_elb" "my_first_elb" {
    name = "terraform-elb-gopal"
    availability_zones = var.azs
    security_groups = [aws_security_group.elb_sg.id]
     listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = var.server_port
    lb_protocol       = "http"
  }
   health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:${var.server_port}/"
    interval            = 30
  }
}