terraform {
  backend "s3" {
    bucket = "yash-s3-demo-terraform"
    key = "us-east-1"
    region = "yash/terraform.tfstate"
    dynamodb_table = "terraform_lock"
  }
}