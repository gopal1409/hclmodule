output "public_ip" {
    value = ["${aws_elb.my_first_elb.dns_name}"]
}