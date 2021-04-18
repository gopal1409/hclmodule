module "webserver" {
    source = "git::https://https://github.com/gopal1409/hclmodule.git
    source = "../../module/webserver-elb-asg"
    instance_type = "t2.micro"
    environment = "stage"
    vpc_id = var.vpc_id
    cluster = "stage"
}

resource "aws_security_group_rule" "allow_mytest" {
    type = "ingress"
    security_group_id = module.webservers.my_module_sg_id
    from_port = "443"
    to_port = "443"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0]
}