resource "aws_vpc" "prefix-11-norbix-vpc" {
  cidr_block           = "10.1.0.0/20"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name            = "prefix-11-norbix-vpc"
    cluster_name    = "11-norbix"
    cluster_version = "2.0.1dev"
  }
}
