provider "aws" {
    region = "us-east-1"  # set your desired AWS region
}

resource "aws_instance" "example" {
    ami  = "ami-04a81a99f5ec58529" # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-0a419e375575439cf"
    key_name = "terraform-login"
} 