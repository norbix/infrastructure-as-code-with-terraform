resource "aws_instance" "prefix-11-norbix-kubernetes-master-vm-0" {
  ami                         = "ami-0b71c8653cfc800db"
  instance_type               = "t3.medium"
  associate_public_ip_address = "true"
  key_name                    = "ec2-user-87b7a238-00eb-4696-ad6e-b4aa376f8429"
  subnet_id                   = aws_subnet.prefix-11-norbix-kubernetes-master-subnet-0.id
  vpc_security_group_ids      = [aws_security_group.prefix-11-norbix-kubernetes-master-security-group-0.id]
  availability_zone           = "eu-west-2a"

  # storage
  ebs_optimized = "false"
  root_block_device {
    volume_type           = "gp2"
    volume_size           = "30"
    delete_on_termination = "true"
    encrypted             = "true"
    tags = {
      cluster_name        = "11-norbix"
      cluster_version     = "2.0.1dev"
      Name                = "prefix-11-norbix-kubernetes-master-vm-0-os-disk"
    }
  }



  tags = {
    cluster_name    = "11-norbix"
    cluster_version = "2.0.1dev"
    component_key   = "kubernetes_master"
    Name            = "prefix-11-norbix-kubernetes-master-vm-0"
  }
}
