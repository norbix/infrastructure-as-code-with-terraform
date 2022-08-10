resource "aws_security_group" "prefix-11-norbix-repository-security-group-0" {
  name   = "prefix-11-norbix-repository-security-group-0"
  vpc_id = aws_vpc.prefix-11-norbix-vpc.id

  tags = {
    cluster_name    = "11-norbix"
    cluster_version = "2.0.1dev"
    Name            = "prefix-11-norbix-repository-security-group-0"
  }

  ingress {
    description = "1 - Allow SSH"
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "2 - Allow node_exporter traffic"
    protocol    = "tcp"
    from_port   = 9100
    to_port     = 9100
    cidr_blocks = ["10.1.0.0/20"]
  }
  egress {
    description = "3 - Allow out"
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "4 - Allow repository traffic"
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["10.1.0.0/20"]
  }
  ingress {
    description = "5 - Allow image registry traffic"
    protocol    = "tcp"
    from_port   = 5000
    to_port     = 5000
    cidr_blocks = ["10.1.0.0/20"]
  }
}
