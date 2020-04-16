### Specify Region ex. default = "us-east-1" ###

variable "aws_region" {
        type = "string"
        default ="us-east-1"
}

### Account ID ####
## ex. default = "1234235455654" ##

variable "account_id" {}

### Add Access Key, should be IAM user with Admin Privileges ###
## ex. "JHVGYGKLHIUUIIUGBUBYF" ##

variable "aws_access_key" {}

### Add Secret Key ###
## ex. "SDdadfsdafa34234234jhukjhjk0/sdaf234" ##

variable "aws_secret_key" {}

### Added Assumed Role when deploying to another AWS Account ###
## Current DevAccount ex. default = "arn:aws:iam::146161242903:role/DevAdmin" ##
## default can be left empty ##

variable "role_arn" {
        type ="string"
        default = ""
}

## The bucket where you will keep the tf state files
variable "tf_bucket" {
  default = "tf-state"
}

### ENV ex. uat,testing,development,staging,production ###
## default = "testing" ##

variable "environment" {}

### Define the Regions our subnet will be deployed to ex. us-east-1a, us-east-1b, us-east-1c ###
## default = "us-east-1a" ##
## default = "us-east-1b" ##
## default = "us-east-1c" ##

variable "aws_region_1" {
        type = "string"
        default = "us-east-1a"
}

variable "aws_region_2" {
        type = "string"
        default = "us-east-1b"
}

variable "aws_region_3" {
        type = "string"
        default = "us-east-1c"
}

### Specify VPC ex. default = "10.16.0.0/21" ###

variable "vpc_block" {
	type = "string"
	default = "10.16.0.0/21"
}

### Define the Public subnets ex. 10.16.0.0/24, 10.16.1.0/24, 10.16.2.0/24 ###
## default = "10.16.0.0/24" ##
## default = "10.16.1.0/24" ##
## default = "10.16.2.0/24" ##

variable "aws_public_subnet_block_1" {
	type = "string"
	default = "10.16.0.0/24"
}

variable "aws_public_subnet_block_2" {
        type = "string"
        default = "10.16.1.0/24"
}

variable "aws_public_subnet_block_3" {
        type = "string"
        default = "10.16.2.0/24"
}

### Define the Private subnets ex. 10.16.4.0/24, 10.16.5.0/24, 10.16.6.0/24 ###
## default = "10.16.4.0/24" ##
## default = "10.16.5.0/24" ##
## default = "10.16.6.0/24" ##

variable "aws_private_subnet_block_1" {
        type = "string"
        default = "10.16.4.0/24"
}

variable "aws_private_subnet_block_2" {
        type = "string"
        default = "10.16.5.0/24"
}

variable "aws_private_subnet_block_3" {
        type = "string"
        default = "10.16.6.0/24"
}

