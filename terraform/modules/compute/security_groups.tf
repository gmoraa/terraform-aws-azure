resource "aws_security_group" "rdp" {
  description       = "SG to RDP"
  name              = "rdp"
  vpc_id            = var.vpc_id
  ingress {
    cidr_blocks     = ["0.0.0.0/0"]
    from_port       = 3389
    protocol        = "tcp"
    to_port         = 3389
  }
  egress {
    from_port       = 0
    to_port         = 0
    cidr_blocks     = ["0.0.0.0/0"]
    protocol        = "-1"
  }
}