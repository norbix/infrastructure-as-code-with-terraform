resource "aws_internet_gateway" "prefix-11-norbix-internet-gateway" {
  vpc_id = aws_vpc.prefix-11-norbix-vpc.id

  tags = {
    Name            = "prefix-11-norbix-internet-gateway"
    cluster_name    = "11-norbix"
    cluster_version = "2.0.1dev"
  }
}
