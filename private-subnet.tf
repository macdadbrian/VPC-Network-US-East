resource "aws_subnet" "private-region_1" {
    vpc_id                  = "${aws_vpc.vpc.id}"
    cidr_block              = "${var.aws_private_subnet_block_1}"
    availability_zone       = "${var.aws_region_1}"
    map_public_ip_on_launch = false

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "private-${var.environment}-${var.aws_region_1}"
        "Environment" = "${var.celltrak_environment}"
    }
}

resource "aws_subnet" "private-region_2" {
    vpc_id                  = "${aws_vpc.vpc.id}"
    cidr_block              = "${var.aws_private_subnet_block_2}"
    availability_zone       = "${var.aws_region_2}"
    map_public_ip_on_launch = false

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "private-${var.environment}-${var.aws_region_2}"
        "Environment" = "${var.environment}"
    }
}

resource "aws_subnet" "private-region_3" {
    vpc_id                  = "${aws_vpc.vpc.id}"
    cidr_block              = "${var.aws_private_subnet_block_3}"
    availability_zone       = "${var.aws_region_3}"
    map_public_ip_on_launch = false

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "private-${var.environment}-${var.aws_region_3}"
        "Environment" = "${var.environment}"
    }
}

