# If the variable 'ami' is empty, then Windows Server 2022 Full Base is selected.
locals {
  ami = var.ami != "" ? var.ami : data.aws_ami.WindowsServer2022.id
}