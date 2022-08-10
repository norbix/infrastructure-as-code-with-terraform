resource "aws_efs_file_system" "prefix-11-norbix-efs" {
  creation_token   = "aws-efs-token-11-norbix"
  encrypted        = "true"
  performance_mode = "generalPurpose"
  throughput_mode  = "bursting"



  tags = {
    cluster_name    = "11-norbix"
    cluster_version = "2.0.1dev"
    Name            = "prefix-11-norbix-efs"
  }
}
resource "aws_efs_mount_target" "efs-prefix-11-norbix-kubernetes-master-subnet-0-mount" {
  file_system_id = aws_efs_file_system.prefix-11-norbix-efs.id
  subnet_id      = aws_subnet.prefix-11-norbix-kubernetes-master-subnet-0.id
}
