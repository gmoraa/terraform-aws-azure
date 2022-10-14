# Gather Windows AMI id
data "aws_ami" "WindowsServer2022" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-2022.*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}