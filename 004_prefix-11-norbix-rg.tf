resource "aws_resourcegroups_group" "prefix-11-norbix-rg" {
  name = "prefix-11-norbix-rg"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::DynamoDB::Table",
    "AWS::EC2::CustomerGateway",
    "AWS::EC2::DHCPOptions",
    "AWS::EC2::EIP",
    "AWS::EC2::Image",
    "AWS::EC2::Instance",
    "AWS::EC2::InternetGateway",
    "AWS::EC2::NetworkAcl",
    "AWS::EC2::NetworkInterface",
    "AWS::EC2::ReservedInstance",
    "AWS::EC2::RouteTable",
    "AWS::EC2::SecurityGroup",
    "AWS::EC2::Snapshot",
    "AWS::EC2::SpotInstanceRequest",
    "AWS::EC2::Subnet",
    "AWS::EC2::VPC",
    "AWS::EC2::VPNConnection",
    "AWS::EC2::VPNGateway",
    "AWS::EC2::Volume",
    "AWS::EMR::Cluster",
    "AWS::ElastiCache::CacheCluster",
    "AWS::ElastiCache::Snapshot",
    "AWS::ElasticLoadBalancing::LoadBalancer",
    "AWS::Glacier::Vault",
    "AWS::Kinesis::Stream",
    "AWS::Lambda::Function",
    "AWS::RDS::DBInstance",
    "AWS::RDS::DBParameterGroup",
    "AWS::RDS::DBSecurityGroup",
    "AWS::RDS::DBSnapshot",
    "AWS::RDS::DBSubnetGroup",
    "AWS::RDS::EventSubscription",
    "AWS::RDS::OptionGroup",
    "AWS::RDS::ReservedDBInstance",
    "AWS::Redshift::Cluster",
    "AWS::Redshift::ClusterParameterGroup",
    "AWS::Redshift::ClusterSubnetGroup",
    "AWS::Redshift::HSMClientCertificate",
    "AWS::ResourceGroups::Group",
    "AWS::S3::Bucket",
    "AWS::StorageGateway::Gateway"
  ],
  "TagFilters": [
    {
      "Key": "cluster_name",
      "Values": ["11-norbix"]
    }
  ]
}
JSON
  }
}
