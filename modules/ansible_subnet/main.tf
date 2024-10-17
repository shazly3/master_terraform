resource "aws_subnet" "ansible_subnet" {
    vpc_id = var.ansible_vpc_id
    cidr_block = var.ansible_cidr_blocks[1].cidr_block
    availability_zone = var.ansible_avail_zone
    tags = {
        Name = var.ansible_cidr_blocks[1].name
    }
}

resource "aws_route_table" "route_table"{
    vpc_id = var.ansible_vpc_id
    
    route {
        cidr_block = var.ansible_cidr_blocks[2].cidr_block
        gateway_id = aws_internet_gateway.gateway.id
    }

    tags = {
        Name = var.ansible_cidr_blocks[2].name
    }

}

resource "aws_internet_gateway" "gateway" {
    vpc_id = var.ansible_vpc_id

    tags = {
        Name = var.ansible_igw
    }
}

resource "aws_route_table_association" "a_rtb_subnet" {
    subnet_id = aws_subnet.ansible_subnet.id
    route_table_id = aws_route_table.route_table.id
}