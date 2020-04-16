resource "aws_route_table" "public-routes" {
    vpc_id     = "${aws_vpc.vpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw.id}"
    }

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "public-routes-${var.environment}"
        "Environment" = "${var.environment}"
    }
}
