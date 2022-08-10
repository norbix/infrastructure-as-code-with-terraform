resource "aws_route_table_association" "prefix-11-norbix-repository-0-route-association" {
  subnet_id      = aws_subnet.prefix-11-norbix-repository-subnet-0.id
  route_table_id = aws_route_table.prefix-11-norbix-route-table.id
}
