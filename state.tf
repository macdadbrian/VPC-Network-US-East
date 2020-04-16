#define the S3 bucket where the terraform state will be saved
terraform {
  backend "s3" {
    bucket = "tf-state"
    key    = "vpc/us-east-1"
    region = "us-east-1"
    encrypt = true
  }
}
