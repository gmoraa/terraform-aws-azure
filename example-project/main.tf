module "network" {
  source            = "../terraform/modules/network"
}

module "compute" {
  source            = "../terraform/modules/compute"
  subnet_id         = module.network.public_subnet_id
  vpc_id            = module.network.vpc_id
}