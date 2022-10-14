# If the variable 'vpc_cidr' is empty, then a default VPC is created.
locals {
  vpc_cidr = var.vpc_cidr != "" ? var.vpc_cidr : "10.0.0.0/16"
}