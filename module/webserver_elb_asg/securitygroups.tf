resource "aws_security_group" "webserver_sg" {
    name = "webserversg-${var.environment}"
}
resource "aws_security_group_rule" "allow_http" {
    type = "ingress"
    security_group_id = aws_security_group.webserver_sg.id
    from_port = var.http_port
    to_port = var.http_port
    protocol = "tcp"
    cidr_block = [var.my_system]
}
resource "aws_security_group" "webserver_sg" {
     ingress {
        from_port = var.server_port
        to_port = var.server_port
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
}