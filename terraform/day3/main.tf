provider "aws" {
  region = ""
}

module "ec2_instance" {
  source = "./module/ec2_instance"
  ami_value = ""
  instance_type_value = ""
  subnet_id_value = ""
}