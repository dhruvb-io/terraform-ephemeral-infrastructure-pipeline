provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "remote-backend-s3-dhruv"
    key = "terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}
resource "aws_instance" "test" {
  ami = "ami-0b6c6ebed2801a5cb"
  instance_type= "t3.micro"

  tags = {
    Name = "myapp-test"
  }
}