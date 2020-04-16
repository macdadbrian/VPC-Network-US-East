resource "aws_security_group" "all-internal" {
    name        = "all-internal-${var.environment}"
    description = "all-internal-${var.environment}"
    vpc_id      = "${aws_vpc.vpc.id}"

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["${var.vpc_block}"]
    }

    ingress {
        from_port       = 8
        to_port         = -1
        protocol        = "icmp"
        cidr_blocks     = ["${var.vpc_block}"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "Use" = "Networking-${var.environment}"
        "Name" = "all-internal-${var.environment}"
        "Environment" = "${var.environment}"
    }
}


