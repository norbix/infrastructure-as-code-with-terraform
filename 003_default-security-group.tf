resource "aws_default_security_group" "default-security-group" {
  vpc_id = aws_vpc.prefix-11-norbix-vpc.id

  tags = {
    cluster_name    = "11-norbix"
    cluster_version = "2.0.1dev"
    Name            = "default-security-group"
  }


  ingress {
    protocol    = "tcp"
    from_port   = 2049
    to_port     = 2049
    cidr_blocks = ["10.1.1.0/24"]

  }
}
