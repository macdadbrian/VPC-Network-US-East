resource "aws_route_table_association" "public-routes-region_1" {
    route_table_id = "${aws_route_table.public-routes.id}"
    subnet_id = "${aws_subnet.public-region_1.id}"
}

resource "aws_route_table_association" "public-routes-region_2" {
    route_table_id = "${aws_route_table.public-routes.id}"
    subnet_id = "${aws_subnet.public-region_2.id}"
}

resource "aws_route_table_association" "public-routes-region_3" {
    route_table_id = "${aws_route_table.public-routes.id}"
    subnet_id = "${aws_subnet.public-region_3.id}"
}

resource "aws_route_table_association" "private-routes-region_1" {
    route_table_id = "${aws_route_table.private-routes-region_1.id}"
    subnet_id = "${aws_subnet.private-region_1.id}"
}

resource "aws_route_table_association" "private-routes-region_2" {
    route_table_id = "${aws_route_table.private-routes-region_2.id}"
    subnet_id = "${aws_subnet.private-region_2.id}"
}

resource "aws_route_table_association" "private-routes-region_3" {
    route_table_id = "${aws_route_table.private-routes-region_3.id}"
    subnet_id = "${aws_subnet.private-region_3.id}"
}

