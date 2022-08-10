resource "aws_subnet" "prefix-11-norbix-repository-subnet-0" {
  vpc_id            = aws_vpc.prefix-11-norbix-vpc.id
  cidr_block        = "10.1.11.0/24"
  availability_zone = "eu-west-2a"

  tags = {
    cluster_name    = "11-norbix"
    cluster_version = "2.0.1dev"
    Name            = "prefix-11-norbix-repository-subnet-0"
  }
}
