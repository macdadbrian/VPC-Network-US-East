resource "aws_route_table" "private-routes-region_1" {
    vpc_id     = "${aws_vpc.vpc.id}"

   route {
       cidr_block     = "0.0.0.0/0"
       nat_gateway_id = "${aws_nat_gateway.nat-region_1.id}"
    }

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "private-routes-${var.environment}-${var.aws_region_1}"
        "Environment" = "${var.environment}"
    }
}

resource "aws_route_table" "private-routes-region_2" {
    vpc_id     = "${aws_vpc.vpc.id}"

    route {
        cidr_block     = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.nat-region_2.id}"
    }

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "private-routes-${var.environment}-${var.aws_region_2}"
        "Environment" = "${var.environment}"
    }
}

resource "aws_route_table" "private-routes-region_3" {
    vpc_id     = "${aws_vpc.vpc.id}"

    route {
        cidr_block     = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.nat-region_3.id}"
    }

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "private-routes-${var.environment}-${var.aws_region_3}"
        "Environment" = "${var.environment}"
    }
}

