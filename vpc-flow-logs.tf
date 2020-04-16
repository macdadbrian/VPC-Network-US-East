resource "aws_cloudwatch_log_group" "vpc_cloudwatch_group" {
  name = "vpc-flow-logs"
}

resource "aws_flow_log" "vpc_flow_logs" {
  iam_role_arn    = "${aws_iam_role.vpc_flow_role.arn}"
  log_group_name  = "${aws_cloudwatch_log_group.vpc_cloudwatch_group.name}"
  traffic_type    = "ALL"
  vpc_id          = "${aws_vpc.vpc.id}"
}

resource "aws_iam_role" "vpc_flow_role" {
  name = "vpc-flow-logs-${var.environment}"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "vpc-flow-logs.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "vpc_flow_role_policy" {
  name = "vpc-flow-logs-${var.environment}"
  role = "${aws_iam_role.vpc_flow_role.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}
