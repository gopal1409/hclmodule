variable "environment" {
    default = "stg"
}
variable "vpc_id" {
    description = "provide vpc_id"
}
variable "location" {
    description = "it will define the aws region"
    type = string
}
variable "http_port" {
    default = "80"
}
variable "ssh_port" {
    default = "22"
}
variable "instance_type" {
    default = "t2.micro"
}

variable "my_system" {
    default = "98.79.79.1/32"
}

variable "ami" {
    default = "ami-013f17f36f8b1fefb"
}

variable "azs" {
    default = ["us-east-1a", "us-east-1b", "us-east-1c" ]
}