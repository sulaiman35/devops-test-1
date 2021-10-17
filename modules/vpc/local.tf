locals {
  default_tags = {
    Name         = var.vpc_name
    IACTool      = "terraform"
    Environment  = var.environment
    BillingGroup = "DevOps-Testing"
    Service      = var.vpc_name
  }

  tags            = merge(local.default_tags, var.tags)
  service_tags        = merge(local.tags, { IACTool = "terraform" })

  private_zone_subnets = [
    # module.vpc.private_subnets will be empty if already destroyed, unlike var.availability_zones.
    for i in range(length(module.vpc.private_subnets)) :
    {
      zone   = var.azs[i],
      subnet = module.vpc.private_subnets[i],
    }
  ]

  public_zone_subnets = [
    # module.vpc.public_subnets will be empty if already destroyed, unlike var.availability_zones.
    for i in range(length(module.vpc.public_subnets)) :
    {
      zone   = var.azs[i],
      subnet = module.vpc.public_subnets[i],
    }
  ]
}
