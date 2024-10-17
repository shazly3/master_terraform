variable ansible_cidr_blocks {
    description = "cidr blocks and name tags for vpc, subnets& route table"
    type        = list(object({
        cidr_block = string 
        name = string
    }))
    
}

variable ansible_avail_zone {}
variable ansible_igw {}
variable ansible_vpc_id {}
