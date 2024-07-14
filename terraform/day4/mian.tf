provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "yash" {
  instance_type = "t2.micro"
  ami = ""
  subnet_id = ""
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "yash-s3-demo-terraform"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}