resource "aws_eip" "nat-region_1" {
  vpc = true
}

resource "aws_nat_gateway" "nat-region_1" {
  allocation_id = "${aws_eip.nat-region_1.id}"
  subnet_id     = "${aws_subnet.public-region_1.id}"

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "nat-${var.environment}-${var.aws_region_1}"
        "Environment" = "${var.environment}"
    }
}

resource "aws_eip" "nat-region_2" {           
  vpc = true
}

resource "aws_nat_gateway" "nat-region_2" {
  allocation_id = "${aws_eip.nat-region_2.id}"
  subnet_id     = "${aws_subnet.public-region_2.id}"

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "nat-${var.environment}-${var.aws_region_2}"
        "Environment" = "${var.environment}"
    }
}

resource "aws_eip" "nat-region_3" {           
  vpc = true
}

resource "aws_nat_gateway" "nat-region_3" {
  allocation_id = "${aws_eip.nat-region_3.id}"
  subnet_id     = "${aws_subnet.public-region_3.id}"

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "nat-${var.environment}-${var.aws_region_3}"
        "Environment" = "${var.environment}"
    }
}
