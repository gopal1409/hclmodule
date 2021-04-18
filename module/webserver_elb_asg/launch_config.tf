resource "aws_launch_configuration" "my-first-launch-conf" {
   name = "{var.cluster}-webserver-launch
   image_id = var.ami 
   instance_type = var.instance_type 
   security_groups = ["${aws_security_group.webserver_sg.id}"]
   key_name =  "terraform"
   lifecycle {
      create_before_destory = true
   }
   user_data = file(${path.module}/user_data.sh)
}