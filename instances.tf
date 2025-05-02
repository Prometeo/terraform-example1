# resource "aws_instance" "simple_instance" {
#     count = 2
#     ami                     = var.ami
#     instance_type           = var.instance_type
#     disable_api_termination = false
#     key_name                = var.key_name
#     vpc_security_group_ids  = [aws_security_group.allow_ssh.id]
#     subnet_id = "subnet-07be2627e17f60c12"
#     associate_public_ip_address = false
#     private_ip = var.ips[count.index]
#     tags = {
#         Name        = "Simple instance-{count.index}"
#         Environment = "dev"
#     }
# }
