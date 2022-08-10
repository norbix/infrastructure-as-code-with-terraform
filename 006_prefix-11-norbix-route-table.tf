resource "aws_route_table" "prefix-11-norbix-route-table" {
  vpc_id = aws_vpc.prefix-11-norbix-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prefix-11-norbix-internet-gateway.id
  }

  tags = {
    cluster_name    = "11-norbix"
    cluster_version = "2.0.1dev"
    Name            = "prefix-11-norbix-route-table"
  }
}
