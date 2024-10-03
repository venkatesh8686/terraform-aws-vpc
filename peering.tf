resource "aws_vpc_peering_connection" "peering" {
    count = var.is_peering_requried ? 1 : 0 
    vpc_id        = aws_vpc.main.id #requster
    # peer_owner_id = var.peer_owner_id
    peer_vpc_id   = data.aws_vpc.default.id
  
  auto_accept   = true

  tags = merge(
            var.comman_tags,
            var.peerring_tags,

            {
                Name = "${local.resource_name}-default"
            }
        )
}


resource "aws_route" "public_peering" {
  count = var.is_peering_requried ? 1 : 0 
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id

}

resource "aws_route" "private_peering" {
  count = var.is_peering_requried ? 1 : 0 
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id

}

resource "aws_route" "database_peering" {
  count = var.is_peering_requried ? 1 : 0 
  route_table_id            = aws_route_table.database.id
  destination_cidr_block    = data.aws_vpc.default.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id

}

resource "aws_route" "default_peering" {
  count = var.is_peering_requried ? 1 : 0 
  route_table_id            = data.aws_route_table.main.route_table_id
  destination_cidr_block    = var.vpc_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[count.index].id

}