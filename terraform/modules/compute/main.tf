# Main Windows server.
resource "aws_instance" "ec2_server" {
  ami                   = local.ami
  instance_type         = var.ec2_type
  subnet_id             = var.subnet_id
  key_name              = aws_key_pair.ec2.key_name
  security_groups       = [ aws_security_group.rdp.id ]
  metadata_options {
    http_endpoint       = "enabled"
    http_tokens         = "required"
  }

  root_block_device {
    volume_size         = var.root_size
  }
  tags = {
    Name                = var.server_name
  }
}