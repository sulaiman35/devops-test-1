module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.7.0"

  name                   = var.vpc_name
  cidr                   = var.cidr
  azs                    = var.azs

  public_subnets         = var.public_subnets  
  private_subnets        = var.private_subnets 

  enable_dns_hostnames   = var.enable_dns_hostnames
  enable_dns_support     = var.enable_dns_support   

  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  enable_vpn_gateway     = var.enable_vpn_gateway  
  enable_dhcp_options    = var.enable_dhcp_options 

  tags = merge(
    { for k, v in local.tags : k => v if k != "Name" },
    {
      Purpose = "${var.vpc_name}"
  })

  public_subnet_tags = merge(local.tags, {
    "Name" = "${var.vpc_name}-public"
  })

  private_subnet_tags = merge(local.tags, {
    "Name" = "${var.vpc_name}-private"
  })
}
