# Terraform AWS VPC Module customised

This module is going to create following resources.

* VPC
* internet gateway associated with vpc
* 2 public subnets
* 2 private subnets
* 2 database subnets
* Database subnet group
* EIP
* NAT Gateway
* Public Route table
* private Route table
* database Route table
* Routes
* Route table associated with subnets
* Peering with default VPC(if requried)
* Peering routes in acceptor and requester routes tables

#Inputs
project_name (Mandatory): User must supply their project name.
environment (Mandatory): User must supply their environment name.
vpc_cidr (Mandatory): User must supply their VPC CIDR.
enable_dns_hostnames (Optional): defaults to true.
common_tags (Optional): Default is empty. User can supply tags in map(string) format.
vpc_tags (Optional): Default is empty. User can supply tags in map(string) format.
igw_tags (Optional): Default is empty. User can supply tags in map(string) format.
public_subnet_cidrs (Mandatory): User must supply only 2 valid public subnet CIDR.
public_subnet_tags (Optional): Default is empty. User can supply tags in map(string) format.
private_subnet_cidrs (Mandatory): User must supply only 2 valid private subnet CIDR.
private_subnet_tags (Optional): Default is empty. User can supply tags in map(string) format.
database_subnet_cidrs (Mandatory): User must supply only 2 valid database subnet CIDR.
database_subnet_tags (Optional): Default is empty. User can supply tags in map(string) format.
db_subnet_group_tags (Optional): Default is empty. User can supply tags in map(string) format.
nat_gateway_tags (Optional): Default is empty. User can supply tags in map(string) format.
public_route_table_tags (Optional): Default is empty. User can supply tags in map(string) format.
private_route_table_tags (Optional): Default is empty. User can supply tags in map(string) format.
database_route_table_tags (Optional): Default is empty. User can supply tags in map(string) format.
is_peering_required (Optional): defaults to false
vpc_peering_tags (Optional): Default is empty. User can supply tags in map(string) format.


#Outputs
vpc_id: VPC ID created
public_subnet_ids: list of 2 public subnet ids created
private_subnet_ids: list of 2 private subnet ids created
database_subnet_ids: list of 2 database subnet ids created