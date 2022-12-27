module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr

  azs             = [var.ZONE1, var.ZONE2, var.ZONE3]
  private_subnets = [var.PrivSub1, var.PrivSub2, var.PrivSub3]
  public_subnets  = [var.PubSub1, var.PubSub2, var.PubSub3]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}