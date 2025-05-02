resource "aws_security_group" "allow_ssh" {
  name        = "allow-ssh"
  description = "Allow ssh traffic"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_ssh"
  }
}

# resource "aws_vpc_security_group_ingress_rule" "allow_sh_ipv4" {
#   security_group_id = aws_security_group.allow_ssh.id
#   cidr_ipv4         = var.ssh_sg_cidr_block
#   from_port         = 22
#   ip_protocol       = "tcp"
#   to_port           = 22
# }

resource "aws_vpc_security_group_ingress_rule" "allow_ports" {
    for_each = { for port in var.ports : port => port }
    security_group_id = aws_security_group.allow_ssh.id
    cidr_ipv4         = var.ssh_sg_cidr_block
    from_port         = each.value
    ip_protocol       = "tcp"
    to_port           = each.value
}
