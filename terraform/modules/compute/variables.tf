variable "ami" {
  type          = string
  default       = ""
  description   = "Amazon Machine Image, operating system for the server."
}

variable "ec2_type" {
  type          = string
  default       = "t2.medium"
  description   = "Instace types, combination of CPU, memory, storage and network capacity."
}

variable "security_groups" {
  type          = list(string)
  default       = ["default"]
  description   = "Security groups to access server ports."
}

variable "root_size" {
  type          = string
  default       = "30"
  description   = "Root disk space size."
}

variable "server_name" {
  type          = string
  default       = ""
  description   = "Server name."
}

variable "vpc_id" {
  type          = string
  description   = "VPC id."
}

variable "subnet_id" {
  type          = string
  description   = "Server subnet id."
}