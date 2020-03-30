
module "network" {
  source = "github.com/insight-w3f/terraform-polkadot-aws-network.git?ref=master"
}

module "defaults" {
  source     = "../.."
  subnet_ids = module.network.public_subnets
  vpc_id     = module.network.vpc_id
}
