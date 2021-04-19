module "webserver" {
    #source = "git::https://https://github.com/gopal1409/hclmodule.git
    source = "../../module/webserver-elb-asg"
    instance_type = "t2.micro"
    environment = "prod"
    vpc_id = var.vpc_id
    cluster = "prod"
}

resource "aws_security_group_rule" "allow_mytest" {
    type = "ingress"
    security_group_id = module.webservers.my_module_sg_id
    from_port = "8080"
    to_port = "8080"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0]
}